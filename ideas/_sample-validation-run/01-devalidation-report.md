---
idea_slug: reptile-store-inventory
verdict: test
final_score: 72
score_confidence: high
stage: 1
---

# 01 — Devalidation Report: Inventory management for reptile stores

## Verdict: TEST

**Score: 72/100** | Confidence: high

---

## Why This Score

The idea clears unit economics and reachability: cold outbound to named reptile shops
looks viable (`distribution_verdict`: strong; cold_outbound LTV:CAC 25.6:1,
payback ~1.3 months), retention is sticky in a core daily workflow (3% monthly logo
churn), and the niche is defensibly boring with whitespace on G2/Capterra. What has
not been earned is **paid demand** — pain is nagging not acute, and
`monetization_validated` is false. The score says "run the test," not "build the
product."

## Top 3 Strengths

1. **Retention** (85/100): `retention_verdict` sticky with 3% estimated monthly logo
   churn and daily usage tied to feeding schedules and stock counts.
2. **Distribution** (82/100): `icp_reachability` high; 20–200 shops list-buildable
   via expo rosters and directories; `cold_outbound_viability` viable.
3. **Boring/Trends** (88/100): `boring_trends_verdict` defensible — unsexy vertical
   with two named macro trends (post-2020 shop professionalisation + commoditised
   vertical-SaaS stacks).

## Top 3 Risks

1. **Demand** (52/100): `pain_intensity` is nagging and `desire_strength_label`
   moderate — owners stay on spreadsheets until a costly mortality or mis-order
   event. Without acute pain, demos stall at "interesting."
2. **Monetization** (70/100): `monetization_validated` false despite a $69/mo target
   anchored to adjacent tools ($40–$120/mo). Healthy LTV:CAC on paper does not
   prove anyone will pay this price for reptile-specific inventory.
3. **Founder-Market Fit** (62/100): No reptile-retail domain edge documented;
   `founder_edge_type` none. Sales conversations may lack credibility against
   shop owners who live the problem daily.

## Riskiest Assumption

> "Independent reptile-shop owners will pay ~$69/mo for livestock-native inventory
> software instead of free spreadsheets."

**Test it before building anything.** Run the Stage 2 landing-page smoke test per
[`workflows/2-landing-page-test.md`](../../workflows/2-landing-page-test.md): Carrd
page showing the $69/mo price and value prop, ~$50 Google Ads, 2-week window.
**Pass:** cost per collected email < $8. **Fail:** pivot to a sharper ICP slice
(e.g. multi-location shops only) or drop.

## Pre-mortem: If This Fails in 12 Months

1. **SOM ceiling** — only a few thousand shops globally; even perfect conversion
   cannot fund a solo business at target ARPU.
2. **WTP never materialises** — nagging pain never converts; owners revert after
   onboarding friction because spreadsheets are "free enough."
3. **Incumbent wedge closure** — Square/Lightspeed or MorphMarket adds
   livestock-native fields, collapsing the positioning gap.

---

## What To Do Now

Run the Stage 2 landing-page smoke test within **2 weeks** (~$50 ad spend + Carrd).
Do not write product code until email capture clears the $8/email bar.

**Kill criteria:** cost per collected email > $8 after the planned ad spend, or zero
emails with ≥500 impressions. Downstream presales KPI remains: 30 discovery calls,
≥1 preorder.

## If That Doesn't Work

Pivot to breeder-only livestock record-keeping (smaller pool, sharper daily pain)
or archive the idea — the distribution motion works, but this wedge may not pull
paid demand.
