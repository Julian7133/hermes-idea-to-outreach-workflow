# 04 — Outreach Plan

> Filled by `outreach-assets` + `lead-list-builder`.

## 1-Page Marketing Plan (1PMP)
- **Target market:** <…>
- **Message:** <…>
- **Media:** <…>
- **Lead capture / nurture:** <…>
- **Sales conversion:** <…>
- **Lifetime value / referral:** <…>

## Drip angles (3-step, Reply-Stop)
| Step | Day | Angle | Goal |
|---|---|---|---|
| 0 | 0 | <…> | <…> |
| 1 | 3 | <…> | <…> |
| 2 | 5 | <…> | <…> |

## Offer / CTA / Voice config block  ← copied verbatim into n8n 4b-sender config node
```json
{
  "campaign": "<slug>",
  "offer": "<the concrete offer / ask>",
  "cta": "<single clear call to action>",
  "voice": "<tone rules: e.g. plain, peer-to-peer, no hype, German/English>",
  "constraints": ["no invented facts", "<=120 words", "one CTA only"],
  "sender_name": "<name>",
  "sender_signature": "<name, company, address line, unsubscribe note>"
}
```

## Lead sourcing (lead-list-builder)
- **Search strategy:** <where + how the 20–200 contacts were found>
- **CSV:** see `leads.csv` (schema matches `n8n/sql/outbound.sql` `leads` table)
- **Legal basis note (per contact class):** <IndieHackers / job-board / etc.>
