---
name: campaign-diagnostics
description: >-
  Stage 3 validation diagnostics. Given a running validation campaign, query
  Postgres (hermes_outreach schema) to produce a funnel, opens-without-click
  analysis, bot-filtered diagnosis, and a validation PASS/FAIL verdict against
  reply/click thresholds. Use when the user wants campaign diagnostics or to
  decide if an idea survived behavioural validation.
stage: 3
reads: n8n/sql/outbound.sql, IMPLEMENTATION-PLAN-v2.md (validation gate rules)
writes: ideas/<slug>/05-campaign-diagnostics.md
---

# Skill: Campaign Diagnostics

You are a skeptical operator whose job is to **read the data, not guess at it**.
The default assumption is that something is structurally wrong until the funnel
proves otherwise. Do not cheerlead. Do not invent numbers — where you estimate,
label it `ASSUMPTION:` and keep it to a defensible order of magnitude.

## Input

Read `n8n/sql/outbound.sql` for the schema (table/column names),
`IMPLEMENTATION-PLAN.md` §6 for bot-filtering heuristics and diagnosis
decision table, and `IMPLEMENTATION-PLAN-v2.md` §3 for validation PASS/FAIL
rules. If the Postgres database is unreachable or the
`hermes_outreach` schema has no data for the campaign slug, stop and ask the
user to confirm the campaign name or check the database connection.

## Process

### Step 1 — Confirm the schema

Verify the `hermes_outreach` schema exists and the following tables are present:
`outreach_sends`, `outreach_events` (with `is_bot` column), `outreach_state`,
`leads`, `suppression`. These are defined in `n8n/sql/outbound.sql`.

### Step 2 — Funnel aggregation

Run this query to produce the top-level funnel:

```sql
SELECT
    COUNT(DISTINCT os.id)                          AS sent,
    COUNT(DISTINCT CASE WHEN oe.event = 'delivered'
              AND oe.is_bot = false THEN oe.id END) AS delivered,
    COUNT(DISTINCT CASE WHEN oe.event = 'opened'
              AND oe.is_bot = false THEN oe.id END) AS opened_human,
    COUNT(DISTINCT CASE WHEN oe.event = 'clicked'
              AND oe.is_bot = false THEN oe.id END) AS clicked,
    COUNT(DISTINCT CASE WHEN os2.email IS NOT NULL
              THEN ls.id END)                       AS replied
FROM outreach_sends os
LEFT JOIN outreach_events oe ON oe.send_id = os.id
LEFT JOIN outreach_state os ON os.lead_id = os.lead_id -- (correlate via leads)
LEFT JOIN leads l ON l.id = os.lead_id
LEFT JOIN leads os2 ON os2.email IN (
    SELECT DISTINCT s2.recipient
    FROM outreach_sends s2
    JOIN outreach_state st ON st.lead_id = (SELECT id FROM leads WHERE email = s2.recipient)
    WHERE st.status = 'replied'
)
WHERE os.campaign = '<campaign-slug>';
```

A simpler, more reliable version that avoids table-alias confusion:

```sql
-- Funnel: sent → delivered → opened_human → clicked → replied
WITH send_count AS (
    SELECT COUNT(DISTINCT id) AS sent
    FROM outreach_sends
    WHERE campaign = '<campaign-slug>'
),
delivered_count AS (
    SELECT COUNT(DISTINCT oe.id) AS delivered
    FROM outreach_events oe
    JOIN outreach_sends os ON os.id = oe.send_id
    WHERE os.campaign = '<campaign-slug>'
      AND oe.event = 'delivered'
      AND oe.is_bot = false
),
opened_human_count AS (
    SELECT COUNT(DISTINCT oe.id) AS opened_human
    FROM outreach_events oe
    JOIN outreach_sends os ON os.id = oe.send_id
    WHERE os.campaign = '<campaign-slug>'
      AND oe.event = 'opened'
      AND oe.is_bot = false
),
clicked_count AS (
    SELECT COUNT(DISTINCT oe.id) AS clicked
    FROM outreach_events oe
    JOIN outreach_sends os ON os.id = oe.send_id
    WHERE os.campaign = '<campaign-slug>'
      AND oe.event = 'clicked'
      AND oe.is_bot = false
),
replied_count AS (
    SELECT COUNT(DISTINCT os.lead_id) AS replied
    FROM outreach_sends os
    JOIN outreach_state st ON st.lead_id = os.lead_id
    WHERE os.campaign = '<campaign-slug>'
      AND st.status = 'replied'
)
SELECT
    (SELECT sent FROM send_count)           AS sent,
    (SELECT delivered FROM delivered_count) AS delivered,
    (SELECT opened_human FROM opened_human_count) AS opened_human,
    (SELECT clicked FROM clicked_count)     AS clicked,
    (SELECT replied FROM replied_count)     AS replied;
```

### Step 3 — Opens-without-click per recipient

Run this query to surface recipients who opened but never clicked:

```sql
SELECT
    os.recipient,
    COUNT(DISTINCT CASE WHEN oe.event = 'opened'
              AND oe.is_bot = false THEN oe.id END) AS opens,
    COUNT(DISTINCT CASE WHEN oe.event = 'clicked'
              AND oe.is_bot = false THEN oe.id END) AS clicks,
    MAX(CASE WHEN oe.event = 'opened' THEN oe.occurred_at END) AS last_open,
    MAX(CASE WHEN oe.event = 'clicked' THEN oe.occurred_at END) AS last_click
FROM outreach_sends os
LEFT JOIN outreach_events oe ON oe.send_id = os.id
WHERE os.campaign = '<campaign-slug>'
GROUP BY os.recipient
HAVING COUNT(DISTINCT CASE WHEN oe.event = 'opened'
               AND oe.is_bot = false THEN oe.id END) > 0
   AND COUNT(DISTINCT CASE WHEN oe.event = 'clicked'
               AND oe.is_bot = false THEN oe.id END) = 0
ORDER BY last_open DESC;
```

### Step 4 — Delivered / Open / Click / Reply / Complaint rates

```sql
SELECT
    COUNT(DISTINCT CASE WHEN os.status = 'bounced' THEN os.id END)::FLOAT /
        NULLIF(COUNT(DISTINCT os.id), 0) * 100       AS bounce_rate_pct,
    COUNT(DISTINCT CASE WHEN oe.event = 'opened'
              AND oe.is_bot = false THEN oe.id END)::FLOAT /
        NULLIF(COUNT(DISTINCT CASE WHEN oe.event = 'delivered'
              AND oe.is_bot = false THEN oe.id END), 0) * 100 AS open_rate_pct,
    COUNT(DISTINCT CASE WHEN oe.event = 'clicked'
              AND oe.is_bot = false THEN oe.id END)::FLOAT /
        NULLIF(COUNT(DISTINCT CASE WHEN oe.event = 'opened'
              AND oe.is_bot = false THEN oe.id END), 0) * 100 AS click_of_open_rate_pct,
    COUNT(DISTINCT CASE WHEN st.status = 'replied' THEN st.lead_id END)::FLOAT /
        NULLIF(COUNT(DISTINCT os.lead_id), 0) * 100 AS reply_rate_pct,
    COUNT(DISTINCT CASE WHEN oe.event = 'complained' THEN oe.id END)::FLOAT /
        NULLIF(COUNT(DISTINCT os.id), 0) * 100       AS complaint_rate_pct
FROM outreach_sends os
LEFT JOIN outreach_events oe ON oe.send_id = os.id
LEFT JOIN outreach_state st ON st.lead_id = os.lead_id
WHERE os.campaign = '<campaign-slug>';
```

### Step 5 — Apply the diagnosis decision table (from IMPLEMENTATION-PLAN.md §6)

Evaluate the rates in this priority order. The first match wins:

| Pattern | Diagnosis | Recommendation |
|---|---|---|
| Delivered rate < 95 % | Deliverability / list problem (check bounces, slow warm-up) | Iterate Sender/Deliverability |
| Open rate (bot-corrected) < 25 % | Subject / sender-name problem | Iterate Subject |
| Click rate < 3 % of opens | Copy / CTA problem (opens are fine, nobody acts) | Iterate Copy |
| Clicks ≥ 3 % of opens, no replies | Offer / audience misalignment | Pivot Offer |
| Complaint rate > 0.1 % | STOP — audience or tone is wrong | Stop |

If none of the patterns match, the campaign is healthy — note that and recommend
continuing to gather data.

### Step 6 — Validation verdict (v2)

Apply [`IMPLEMENTATION-PLAN-v2.md`](../IMPLEMENTATION-PLAN-v2.md) §3 gate rules:

| Signal | Threshold |
|---|---|
| Positive replies | ≥ 1 (hard pass — can trigger **early**) |
| Human clicks | ≥ 3 (soft pass — can trigger **early**) |
| Sequence | 3 weekly touches per lead; Reply-Stop on reply |

**Verdict logic:**

- **PASS** if `replied ≥ 1` OR `clicked ≥ 3` — **even mid-sequence** (early pass).
  If 0 replies but ≥3 clicks, note "proceed with caution."
- **FAIL** only when the **full 3-touch sequence is complete for all enrolled
  leads** (no lead still `in_sequence`) AND `replied = 0` AND `clicked < 3`.
  Recommend `status: validation-failed` in `00-idea-capture.md`.
- **INCOMPLETE** if any enrolled lead is still `in_sequence` and thresholds
  not yet met.
- **Stop** if complaint rate > 0.1%.

Check sequence completion:

```sql
SELECT
  count(*) AS enrolled,
  count(*) FILTER (WHERE status = 'in_sequence') AS still_in_sequence
FROM outreach_state
WHERE campaign = '<campaign-slug>';
```

`still_in_sequence = 0` and `enrolled > 0` means full sequence done (or all
terminal via reply/bounce).

### Step 7 — Write the output

Write into `ideas/<slug>/05-campaign-diagnostics.md`, filling every section of
the template:

```markdown
## Funnel
| sent | delivered | opened_human | clicked | replied |
|---|---|---|---|---|
| <sent> | <delivered> | <opened_human> | <clicked> | <replied> |

## Opens without click (per recipient)
| recipient | opens | clicks | last_event |
|---|---|---|---|
| <recipient> | <opens> | 0 | <last_open> |

## Diagnosis
<Which pattern from plan §6 matches? e.g. "Opens ok, clicks < 3% → copy/CTA problem">

## Recommendation
<Iterate Subject | Iterate Copy | Pivot Offer | Stop (complaint-rate > 0.1%)>

## Validation verdict (v2)
- **Verdict:** <PASS | FAIL | INCOMPLETE>
- **Positive replies:** <n> (need ≥1 for hard pass)
- **Human clicks:** <n> (need ≥3 for soft pass)
- **Sends completed:** <n> (enrolled: <n>, still in sequence: <n>)
- **Notes:** <e.g. "0 replies but 4 clicks — proceed with caution">

## KPI (legacy — not used in v2 validation)
- **Discovery calls:** <n> / 30
- **Preorders:** <n> / ≥1
```

Leave the KPI section values at `0` if they have not been manually updated. Do
not fabricate them. On **FAIL**, remind the user to set `status: validation-failed`
in `00-idea-capture.md`.

## Output

The exact Markdown block to write is the template above — fill every row.
Never advance the human gate. Never call another skill. Never invent facts.
