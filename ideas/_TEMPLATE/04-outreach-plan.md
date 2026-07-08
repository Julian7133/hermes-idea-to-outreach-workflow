# 04 — Outreach Plan

> Filled by `outreach-assets` + `lead-list-builder`.
> 3-step weekly drip (Week 0 / 1 / 2). Founder-validation tone on Touch 0.

## Avatar
> Vivid named composite of the ICP, written from inside their head. Derived from
> the ICP section of `03-icp-and-positioning.md` and used as the basis for the
> outreach copy.

- **Name:** <…>
- **Role / title:** <…>
- **Company context:** <…>
- **What keeps them awake at night:** <…>
- **What they crave / desire:** <…>
- **Where they get information:** <…>
- **Why this avatar matters:** <…>

## 1-Page Marketing Plan (1PMP)

### Before (Prospect)

#### 1. Target market
- **Niche:** <inch-wide, mile-deep definition>
- **PVP score (Personal / Value / Profitability):** <…>
- **Why this segment now:** <…>

#### 2. Message
- **USP:** <specific, defensible reason to buy>
- **Elevator pitch:** <problem, solution, proof in 30–90 seconds>
- **Core offer:** <what the market already wants, with lower friction>
- **Headline / hook:** <stop-the-reader line>
- **Enemy in common (optional):** <what you and the prospect both blame>

#### 3. Media
- **Primary channel for validation send:** <LinkedIn / email / community / …>
- **Other channels to test later:** <≥5 sources over time>
- **ROI tracking:** <what we measure>

### During (Lead)

#### 4. Lead capture
- **Ethical bribe / lead magnet:** <…>
- **Capture mechanism:** <…>
- **CRM / follow-up system:** <…>

#### 5. Lead nurturing
- **Nurture rhythm:** <…>
- **Value-to-offer ratio:** <e.g. 3:1>
- **Key nurture themes:** <…>

#### 6. Sales conversion
- **Trust reversal / guarantee:** <reverses risk to you, not the prospect>
- **Pricing strategy:** <standard + premium + ultra-high-ticket anchors>
- **Friction removal:** <roadblocks removed between interest and purchase>

### After (Customer)

#### 7. World-class experience
- **Wow / systemization:** <how delivery becomes remarkable and repeatable>
- **Theater / delivery innovation:** <…>

#### 8. Lifetime value
- **Ascension / upsell:** <…>
- **Frequency / reactivation:** <…>
- **Raising prices:** <…>

#### 9. Referrals
- **Referral ask:** <specific, non-vague>
- **JV / complementary partners:** <who has your clients before you>

## Drip angles (3-step, Reply-Stop, weekly)
| Step | Week | Angle | Goal |
|---|---|---|---|
| 0 | 0 | <Liege ich daneben? pain + solution sketch + validation ask> | <expertise reply / 15-min call> |
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
