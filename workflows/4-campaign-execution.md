# Workflow 4 — Campaign Execution (Stage 4)

**Goal:** run the drip through n8n + Mailgun + Postgres, then close the loop with
a diagnostics report. This stage is **not** an agent job except for import prep
and diagnostics; the sending logic lives in n8n.

**Reads:** `ideas/<slug>/04-outreach-plan.md`, `ideas/<slug>/leads.csv`, Postgres
**Writes:** `ideas/<slug>/05-campaign-diagnostics.md`
**Gate out:** KPI check — **30 discovery calls / ≥ 1 preorder**.

## Preconditions (one-time infra)

1. `n8n/` is up (`docker compose up -d`), schema from `sql/outbound.sql` applied.
2. Mailgun + DNS done per `n8n/README.md` (SPF/DKIM/DMARC, tracking CNAME, EU
   region, webhooks registered). AUP checked for cold outreach.
3. The Offer/CTA/Voice config block from `04-outreach-plan.md` is pasted into the
   Sender config node.

## Run order (n8n)

1. **Workflow 0 — Lead Import.** Upload `leads.csv`. It validates e-mail syntax,
   dedupes against `leads` + `suppression`, inserts into `leads`.
2. **Workflow 4a — Enroller** (hourly). Selects eligible leads, respects
   `max_new_per_day`, inserts `outreach_state` at step 0.
3. **Workflow 4b — Sender** (every 15 min in send window). LLM writes
   `{subject, body}` from lead facts + the step angle, sends via Mailgun,
   advances the drip (Day 0/3/5), logs to `outreach_sends`.
4. **Workflow 4c — Events + Reply-Stop.** Mailgun webhooks (signature-verified)
   → `outreach_events` with bot-flagging; IMAP replies → `status='replied'`,
   stop sequence, add to `suppression`.

Start conservative: daily cap 10, warm up over 2–3 weeks toward max 40
(`outreach_config`).

## Diagnostics (agent job)

5. **Run `campaign-diagnostics`** (or n8n Workflow 5). It executes the
   aggregation queries (plan §6), applies bot-filtering (Apple MPP / scanner
   heuristics — opens are soft signals, clicks/replies are hard), and writes
   `05-campaign-diagnostics.md`: funnel table, per-recipient opens-without-click
   table, diagnosis, recommendation (Iterate Subject / Iterate Copy / Pivot
   Offer), and the manually-maintained KPI line.

## Gate review

Check the KPI line against **30 discovery calls / ≥ 1 preorder**. Decide:
continue, iterate one variable (subject → copy → offer, in that order), or stop.
If complaint-rate > 0.1 %, **stop immediately**.
