# n8n workflow spec (Stage 3 validation send)

Schema: [`../sql/outbound.sql`](../sql/outbound.sql). Pipeline:
[`../../IMPLEMENTATION-PLAN-v2.md`](../../IMPLEMENTATION-PLAN-v2.md).

**No SQL required for operators.** Workflow 0 auto-creates `outreach_config` on
CSV import. Enrollment capped at 30 leads per campaign (hard limit in 4a).

---

## 0-lead-import.json — Lead Import
**Trigger:** Form upload of `leads.csv`.
1. Parse + normalize rows; filter suppressed e-mails.
2. **Auto-provision config** — for each distinct `campaign` in CSV:
   `INSERT INTO outreach_config (campaign, max_new_per_day, daily_send_cap)
   VALUES ($slug, 30, 10) ON CONFLICT DO NOTHING`.
3. Insert into `leads`; report counts.

## 4a-enroller.json — Enroller
**Trigger:** Hourly.
1. Read `outreach_config` per campaign.
2. Select eligible leads (not suppressed, not enrolled, **total enrolled < 30**),
   ordered by `icp_score DESC`, limit `max_new_per_day`.
3. Insert `outreach_state` at step 0, `next_send_at = now()`.

## 4b-sender.json — Sender
**Trigger:** Every 15 min (send window guard).
1. Config node: Offer/CTA/Voice + **3 drip angles** (steps 0/1/2) from `04`.
2. LLM writes `{subject, body}`; send via Mailgun; log send.
3. Advance: step 0 → +7 days → step 1 → +7 days → step 2 → completed.
   Reply-stop via 4c sets `status='replied'` (no further sends).

## 4c-events.json — Events + Reply-Stop
Mailgun webhooks (bot-flagged) + IMAP reply detection → suppression.

## 5-diagnostics.json — Diagnostics
Funnel + diagnosis (plan §6) + **Validation verdict**:
- **PASS (early):** ≥1 reply OR ≥3 human clicks.
- **FAIL:** all enrolled leads finished sequence, 0 replies, <3 clicks.
- **INCOMPLETE:** sequence still running.
