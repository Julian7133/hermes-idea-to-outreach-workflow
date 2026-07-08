# n8n workflow spec (Stage 4)

Authoritative behaviour spec for the five workflow JSON files in this folder.
Schema reference: [`../sql/outbound.sql`](../sql/outbound.sql) (schema
`hermes_outreach`). Design rationale: [`../../IMPLEMENTATION-PLAN.md` §5–6](../../IMPLEMENTATION-PLAN.md).

Conventions for every workflow:
- Postgres nodes use the credential **`Hermes Postgres`**; always
  `SET search_path TO hermes_outreach` or fully-qualify table names.
- Secrets come from env via `={{ $env.MAILGUN_API_KEY }}` etc. — never hard-coded.
- Mailgun base URL: `={{ $env.MAILGUN_BASE_URL }}/{{ $env.MAILGUN_DOMAIN }}` (EU).
- Keep parameterized SQL (query parameters), not string-concatenated values.

---

## 0-lead-import.json — Lead Import
**Trigger:** Manual / Form (file upload of `leads.csv`).
1. Read CSV → parse rows (columns: `campaign,email,first_name,company,title,domain,source,icp_score,notes`).
2. Normalize: trim, lower-case email; drop rows failing a basic e-mail regex.
3. Filter out any email present in `suppression`.
4. Insert into `leads` with `INSERT ... ON CONFLICT (campaign, lower(email)) DO NOTHING`
   (targets `leads_campaign_email_key`). Report inserted / skipped counts.

## 4a-enroller.json — Enroller
**Trigger:** Schedule, hourly.
1. For each campaign in `outreach_config`, read its config row.
2. Select eligible leads:
   ```sql
   SELECT l.* FROM hermes_outreach.leads l
   WHERE l.campaign = $1
     AND lower(l.email) NOT IN (SELECT lower(email) FROM hermes_outreach.suppression)
     AND l.id NOT IN (SELECT lead_id FROM hermes_outreach.outreach_state)
     -- optional: AND coalesce(l.icp_score,0) >= $min_score
   ORDER BY coalesce(l.icp_score,0) DESC, l.created_at ASC
   LIMIT $max_new_per_day;
   ```
3. Insert one `outreach_state` row per selected lead: `sequence_step = 0`,
   `status = 'in_sequence'`, `next_send_at = now()`, `campaign = l.campaign`.

## 4b-sender.json — Sender
**Trigger:** Schedule, every 15 min. Guard: only proceed if current local time is
within `[send_window_start, send_window_end]` in `outreach_config.timezone`.
1. **Config node** (Set node) holding the Offer/CTA/Voice block from
   `04-outreach-plan.md` (offer, cta, voice, constraints, sender_name,
   sender_signature) + the 3 drip angles keyed by step 0/1/2.
2. Fetch due leads (respect daily cap + min gap):
   ```sql
   SELECT s.id AS state_id, s.lead_id, s.sequence_step, s.campaign,
          l.email, l.first_name, l.company, l.title, l.domain
   FROM hermes_outreach.outreach_state s
   JOIN hermes_outreach.leads l ON l.id = s.lead_id
   WHERE s.status = 'in_sequence' AND s.next_send_at <= now()
     AND s.campaign = $1
     AND (SELECT count(*) FROM hermes_outreach.outreach_sends
          WHERE campaign = $1 AND sent_at::date = now()::date) < $daily_send_cap
   ORDER BY s.next_send_at ASC
   LIMIT 1;   -- one per run keeps min_gap_seconds trivially satisfied
   ```
3. **LLM copy** — HTTP Request to Anthropic Messages API
   (`https://api.anthropic.com/v1/messages`, header `x-api-key: ={{ $env.ANTHROPIC_API_KEY }}`,
   `anthropic-version: 2023-06-01`, model `={{ $env.OUTREACH_LLM_MODEL }}`).
   System prompt: write a short 1:1 cold e-mail from the lead facts + the step
   angle; **must** return strict JSON `{"subject": "...", "body": "..."}`; forbid
   invented facts; ≤120 words; one CTA. Parse the JSON.
   **Fallback:** if parsing fails, use a deterministic template
   (`subject`/`body` built from config + angle). Never send raw model errors.
4. **Send** — HTTP Request `POST {{$env.MAILGUN_BASE_URL}}/{{$env.MAILGUN_DOMAIN}}/messages`
   (Basic auth: user `api`, pass `={{ $env.MAILGUN_API_KEY }}`), form fields:
   `from` = `"{{sender_name}} <hello@{{$env.MAILGUN_DOMAIN}}>"`, `to` = lead email,
   `subject`, `html` = body + footer (`%unsubscribe_url%`, Impressum/address line),
   `o:tracking=yes`, `o:tag={{campaign}}`, `v:lead_id={{lead_id}}`,
   `v:state_id={{state_id}}`, `v:step={{sequence_step}}`.
5. **Persist**: insert `outreach_sends` (state_id, lead_id, campaign, sequence_step,
   provider_message_id = Mailgun response `id`, recipient, subject, body). Then
   advance state:
   - if `sequence_step < 2`: `sequence_step + 1`,
     `next_send_at = now() + (step→interval)` where step 0→+3 days, 1→+2 days
     (Day 0 / 3 / 5), keep `status='in_sequence'`.
   - if `sequence_step = 2`: `status='completed'`, `next_send_at = NULL`.

## 4c-events.json — Events + Reply-Stop
Two independent trigger branches in one workflow.

**Branch A — Mailgun webhook** (`Webhook` node, path `mailgun-events`, POST):
1. **Verify signature FIRST**: Mailgun sends `signature.{timestamp,token,signature}`.
   Compute HMAC-SHA256 over `timestamp+token` with `MAILGUN_WEBHOOK_SIGNING_KEY`;
   if it ≠ `signature`, respond **406** and stop. (Crypto in a Code node.)
2. Normalize the event → `{event, recipient, url, client_name, device_type,
   occurred_at, message_id (from v:… or Message-Id), send_id (lookup), raw}`.
   **Drop IP fields** from the payload before building `raw` (GDPR).
3. **Bot flag** (plan §6): set `is_bot=true` when
   - `opened` and (`client_name` matches Apple/proxy signatures OR the open is
     `< 60s` after `delivered`), or
   - `clicked` `< 30s` after delivered on all links at once.
4. Look up `send_id` from `outreach_sends` by `provider_message_id`/`v:state_id`.
   Insert into `outreach_events` (`ON CONFLICT DO NOTHING` on the dedupe key).
5. On `permanent_fail` → state `bounced` + suppression(`bounced`);
   `complained` → `suppressed` + suppression(`complaint`);
   `unsubscribed` → `unsubscribed` + suppression(`unsubscribed`).

**Branch B — IMAP reply-stop** (`Email Read (IMAP)` node on the sender mailbox):
1. On a new message, match the sender/`In-Reply-To` back to a lead
   (via recipient email or the `v:state_id`/Message-Id).
2. Set that lead's `outreach_state.status='replied'`, `next_send_at=NULL`
   (sequence stops immediately) and insert `suppression(email, 'replied')`.
   No CRM promotion — replies just show up in the diagnostics report + your inbox.

## 5-diagnostics.json — Diagnostics
**Trigger:** Manual / daily schedule.
1. Run the aggregation queries (funnel; opens-without-click per recipient;
   delivered/open/click/reply/complaint rates) counting **human** opens only
   (`is_bot = false`).
2. Apply the diagnosis rules from plan §6 to pick the recommendation.
3. Render a Markdown report matching `ideas/_TEMPLATE/05-campaign-diagnostics.md`
   and write it to `ideas/<slug>/05-campaign-diagnostics.md` (Write Binary/File
   node, path parameterized by campaign slug).
