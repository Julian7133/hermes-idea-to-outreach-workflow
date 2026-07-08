# Workflow 3 — Validation Send (Stage 3)

**Goal:** behavioural devalidation via founder-led 3-touch weekly cold e-mail
(n8n + Mailgun + Postgres), then diagnostics with PASS/FAIL.

**Reads:** `ideas/<slug>/04-outreach-plan.md`, `ideas/<slug>/leads.csv`, Postgres
**Writes:** `ideas/<slug>/05-campaign-diagnostics.md`

> Pipeline v2: [`IMPLEMENTATION-PLAN-v2.md`](../IMPLEMENTATION-PLAN-v2.md)

## Operator setup (no SQL)

1. **Infra:** `cd n8n && docker compose up -d` — schema auto-applies.
2. **Import workflows** into n8n from `n8n/workflows/`.
3. **Paste config** from `04-outreach-plan.md` into the **Outreach Config** Set node
   in workflow 4b-sender (offer, CTA, voice, 3 angles).
4. **Set campaign slug** in workflow 5-diagnostics **Campaign Slug** node to match
   the `campaign` column in `leads.csv`.
5. **Upload CSV** via n8n Workflow 0 form — config row is **created automatically**
   (max 30 enrollments, 10 sends/day).

## Run order

1. **Workflow 0 — Lead Import** — upload `leads.csv`; auto-provisions
   `outreach_config` for the campaign slug.
2. **Workflow 4a — Enroller** — enrolls up to **30** leads (highest `icp_score`).
3. **Workflow 4b — Sender** — 3-step drip, **7 days** between touches; Reply-Stop
   on reply.
4. **Workflow 4c — Events** — webhooks + IMAP reply-stop.
5. **Workflow 5 / `campaign-diagnostics`** — funnel + validation verdict.

## Validation gate

| Signal | Threshold |
|---|---|
| Reply (hard) | ≥ 1 substantive reply |
| Click (soft) | ≥ 3 human clicks (`is_bot = false`) |

**Verdict:**

- **PASS (early):** ≥1 reply OR ≥3 clicks — anytime during the sequence.
- **FAIL:** full 3-touch sequence complete for all enrolled leads, still 0 replies
  AND <3 clicks → `status: validation-failed` in `00`.
- **INCOMPLETE:** sequence still running, thresholds not met.
- **Stop:** complaint rate > 0.1%.

Up to **90 sends** max (30 leads × 3 touches); Reply-Stop reduces actual volume.

## Preconditions

Mailgun + DNS per [`n8n/README.md`](../n8n/README.md). Legal checklist before
first real send (UWG §7(2) / GDPR).
