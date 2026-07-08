# Stage 4 — n8n + Mailgun + Postgres setup

Runs the drip campaign: enroll leads, LLM-write each mail, send via Mailgun,
ingest events, stop on reply, report. Rationale in
[`../IMPLEMENTATION-PLAN.md` §5](../IMPLEMENTATION-PLAN.md).

## 1. Bring up the stack

```bash
cd n8n
cp .env.example .env         # fill EVERY value (see comments in the file)
docker compose up -d         # starts Postgres 16 + n8n
docker compose logs -f n8n   # wait for "Editor is now accessible"
```

`sql/outbound.sql` runs automatically on Postgres' first init, creating schema
`hermes_outreach`. To (re-)apply by hand:

```bash
docker compose exec -T postgres \
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" < sql/outbound.sql
```

Open n8n at http://localhost:5678 (basic-auth from `.env`) and **import** each
file in `workflows/` (Workflows → Import from File).

### n8n Postgres credential
The workflows expect a Postgres credential named **`Hermes Postgres`**. Create it
once (Credentials → New → Postgres): host `postgres`, port `5432`, database/user/
password from `.env`. Mailgun/Anthropic/IMAP secrets are read from environment
variables via `$env(...)`, so no extra credentials are needed for those.

## 2. Mailgun + DNS (do this early — DNS propagation takes hours)

Sending domain: **`out.berlow.de`** (dedicated subdomain — never the root domain).

1. **Add the domain in Mailgun**, EU region (`https://api.eu.mailgun.net`), so
   data stays in the EU (GDPR). Sign the **DPA/AVV** with Mailgun.
2. **DNS records** at your DNS provider for `out.berlow.de`:

   | Type | Host | Value | Purpose |
   |---|---|---|---|
   | TXT | `out.berlow.de` | `v=spf1 include:eu.mailgun.org ~all` | SPF |
   | TXT | `smtp._domainkey.out.berlow.de` | (DKIM value from Mailgun) | DKIM |
   | TXT | `_dmarc.out.berlow.de` | `v=DMARC1; p=none; rua=mailto:dmarc@berlow.de` | DMARC (start observe-only) |
   | MX | `out.berlow.de` | `mxa.eu.mailgun.org` (10), `mxb.eu.mailgun.org` (10) | bounce handling |
   | CNAME | `email.out.berlow.de` | `eu.mailgun.org` | custom tracking domain |

   Verify all records show green in Mailgun before sending. After a clean warm-up,
   tighten DMARC to `p=quarantine`.
3. **Tracking:** enable open + click tracking in Mailgun, using the custom
   tracking domain `email.out.berlow.de`. (Note: open-pixel tracking is
   privacy-sensitive — see plan §7; treat opens as a soft signal only.)
4. **Webhook signing key:** Mailgun → Settings → Webhooks → copy the signing key
   into `MAILGUN_WEBHOOK_SIGNING_KEY` in `.env`. Workflow 4c rejects any webhook
   whose HMAC does not verify.
5. **Register webhooks** → all pointing at the 4c webhook URL
   (`$WEBHOOK_URL` + `/webhook/mailgun-events`):
   `delivered`, `opened`, `clicked`, `permanent_fail`, `temporary_fail`,
   `complained`, `unsubscribed`.
   In local dev, expose n8n with a tunnel (cloudflared/ngrok) and set
   `WEBHOOK_URL` to that HTTPS URL.
6. **Check Mailgun's AUP for cold outreach** on your plan *before* the first real
   send — some plans restrict it.

## 3. Per-campaign config

Insert a config row for the real campaign slug (defaults are conservative):

```sql
INSERT INTO hermes_outreach.outreach_config (campaign, daily_send_cap, max_new_per_day)
VALUES ('my-idea-slug', 10, 10);
```

Warm up `daily_send_cap` over 2–3 weeks toward ~40. Paste the Offer/CTA/Voice
config block from the idea's `04-outreach-plan.md` into the Sender workflow's
**Config** node.

## 4. Run order & seed test

1. **Workflow 0 — Lead Import**: upload `ideas/<slug>/leads.csv`.
2. **Workflow 4a — Enroller** (activate; hourly).
3. **Workflow 4b — Sender** (activate; every 15 min in the send window).
4. **Workflow 4c — Events + Reply-Stop** (activate; webhook + IMAP).
5. **Workflow 5 — Diagnostics** (manual/daily) → writes
   `ideas/<slug>/05-campaign-diagnostics.md`.

**Seed test first:** import 3 of your own addresses, watch a full send →
delivered/opened/clicked webhooks → reply-stop → suppression → unsubscribe link,
before pointing it at real leads.

## 5. GDPR / UWG guardrails (see plan §7)

- Legitimate-interest assessment noted in the idea folder.
- Footer in every mail: unsubscribe (`%unsubscribe_url%`), Impressum, privacy link.
- 4c normalizer **drops IPs** from webhook payloads before storing.
- Retention: purge `leads` + `outreach_events` 90 days after a campaign ends;
  keep `suppression` forever.
