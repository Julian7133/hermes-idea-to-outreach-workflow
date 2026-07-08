# Stage 3 — n8n + Mailgun + Postgres setup (validation send)

Pipeline v2: [`../IMPLEMENTATION-PLAN-v2.md`](../IMPLEMENTATION-PLAN-v2.md).

## 1. Bring up the stack

```bash
cd n8n
cp .env.example .env
docker compose up -d
```

Open n8n at http://localhost:5678 and import each file in `workflows/`.

Create Postgres credential **`Hermes Postgres`**: host `postgres`, port `5432`,
credentials from `.env`.

## 2. Mailgun + DNS

See existing checklist in this file (SPF/DKIM/DMARC, EU region, webhooks). Do
this before the first real send.

## 3. Per-campaign setup (no SQL)

1. Paste the **Offer/CTA/Voice config block** from `04-outreach-plan.md` into
   the **Outreach Config** Set node in workflow **4b-sender**.
2. Set **campaign slug** in workflow **5-diagnostics** Campaign Slug node to
   match the `campaign` column in `leads.csv`.
3. **Upload `leads.csv`** via workflow **0 — Lead Import** (n8n form).

That is all. Workflow 0 **auto-creates** the `outreach_config` row (30 enrollment
cap, 10 sends/day). The enroller enrolls up to **30** leads by `icp_score`.

## 4. Run order

1. Workflow **0** — import CSV (auto-config).
2. Activate **4a** (hourly enroller), **4b** (sender), **4c** (events).
3. Run **5** manually or on schedule → writes `05-campaign-diagnostics.md`.

**Seed test:** import 3 of your own addresses first; verify send → webhook →
reply-stop before real leads.

## 5. Sequence timing

3 touches, **one per week** (7-day gap): Week 0 → Week 1 → Week 2. Reply-stop
ends the sequence immediately on human reply.

## 6. GDPR / UWG

See [`../IMPLEMENTATION-PLAN.md` §7](../IMPLEMENTATION-PLAN.md). Footer in every
mail; 4c drops IPs from webhook payloads.
