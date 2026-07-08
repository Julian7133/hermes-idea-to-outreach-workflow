# 04 — Outreach Plan

> Filled by `outreach-assets` + `lead-list-builder`.
> 3-step weekly drip (Week 0 / 1 / 2). Founder-validation tone on Touch 0.

## 1-Page Marketing Plan (1PMP)
- **Target market:** <…>
- **Message:** <…>
- **Media:** <…>
- **Lead capture / nurture:** <…>
- **Sales conversion:** <…>
- **Lifetime value / referral:** <…>

## Drip angles (3-step, Reply-Stop, weekly)
| Step | Week | Angle | Goal |
|---|---|---|---|
| 0 | 0 | <Liege ich daneben? pain + product sketch + validation ask> | <expertise reply / 15-min call> |
| 1 | 1 | <reframe pain or mini proof> | <short reply> |
| 2 | 2 | <reply-stop / easy out> | <graceful close> |

## Offer / CTA / Voice config block  ← copied verbatim into n8n 4b-sender config node
```json
{
  "campaign": "<slug>",
  "offer": "<validation ask — expertise call, not a sale>",
  "cta": "<e.g. Wäre das hilfreich? Eine Zeile genügt.>",
  "voice": "<peer-to-peer; touch 0 MUST include validation disclaimer>",
  "constraints": ["no invented facts", "<=120 words", "one CTA only", "validation disclaimer on touch 0"],
  "sender_name": "<name>",
  "sender_signature": "<name, company, domain, unsubscribe note>"
}
```

## Lead sourcing (lead-list-builder)
- **Search strategy:** <where + how the 20–50 contacts were found>
- **CSV:** see `leads.csv` (schema matches `n8n/sql/outbound.sql` `leads` table)
- **Legal basis note (per contact class):** <…>
