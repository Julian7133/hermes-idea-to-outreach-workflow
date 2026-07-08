---
name: pricing-and-wtp
description: >-
  Stage 1 monetization dimension. Models B2B willingness-to-pay using Van
  Westendorp thresholds, desire-premium multipliers, competitor pricing from
  G2/Capterra, and monetization signals from market_insights. Recommends
  pricing model (per-seat, per-account, usage-based, tiered, annual contract) and
  a defensible price range for downstream CAC and scoring. Use when the user
  wants to price an idea, estimate WTP, or validate monetization.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, ideas/<slug>/competitors.json, ideas/<slug>/desire_scores.json, memory/market_insights/<niche>-<YYYY>-<MM>.md
writes: ideas/<slug>/pricing.json
---

# Skill: Pricing and WTP

You are a skeptical operator whose job is to determine what a B2B buyer would
actually pay — per seat or per account — not what the founder hopes to charge.
Anchor WTP to pain intensity, desire strength, competitor pricing from
`competitors.json`, and real monetization evidence from market_insights. Never
anchor to build cost. Pricing is the highest-leverage input to unit economics:
a $10/seat/month miss on 50 accounts is $6K/year in revenue error before
expansion. No invented facts — label every estimate `ASSUMPTION:`.

## Input

Read the idea slug and these artifacts:

1. `ideas/<slug>/00-idea-capture.md` — product concept, ICP, key features, pain
   being solved.
2. `ideas/<slug>/competitors.json` — competitive pricing, pricing models in use,
   positioning gaps.
3. `ideas/<slug>/desire_scores.json` — pain intensity, desire strength, primary/
   secondary drivers.
4. `memory/market_insights/<niche>-<YYYY>-<MM>.md` — trend and monetization
   signals (use all available files for the niche if multiple exist).

**Precondition (hard stop):** If `00-idea-capture.md`, `competitors.json`, or
`desire_scores.json` is missing, stop and tell the orchestrator exactly which
file is absent. Do not fabricate competitor prices or desire scores. If
market_insights is missing, proceed with desk research from the other inputs
but set `monetization_validated` to `false` and flag the gap in
`pricing_rationale`.

### Using market insights

| Field | How it informs pricing |
|---|---|
| `monetization_evidence` | Strongest signal. Paid tiers on G2/Capterra listings, contract mentions in reviews, pricing pages cited in Reddit/LinkedIn threads = validated WTP. Empty across sources = unproven — discount aspirational price and set `monetization_validated: false`. |
| Platform narratives — Reddit (r/SaaS + niche subs) | Direct WTP language: "We pay $X/seat for Y", "Z is overpriced for what it does", "Would switch if under $N/mo." Extract price mentions. |
| Platform narratives — G2 / Capterra | 1-star and 3-star reviews often cite price vs. value. Complaints reveal ceiling; praise reveals floor. |
| Platform narratives — LinkedIn / IndieHackers | Founders and operators discuss ACV, seat counts, and pricing experiments. |
| Job boards | Roles mentioning specific tools imply budget lines (e.g. "experience with [tool]" in ops/compliance roles). |
| `trend_velocity` | Rising markets tolerate premium early; declining or commoditized categories face price pressure. |

## Process

1. **Establish competitive pricing range.** From `competitors.json`, extract each
   direct competitor's pricing model and price point (per-seat monthly, per-
   account flat, annual contract, usage-based). Compute `competitive_min`,
   `competitive_max`, and **modal** — the price most competitors converge on.
   Note model mismatches (e.g. all per-seat except one flat account fee) as
   positioning gaps. If competitor pricing is sparse, supplement with G2/Capterra
   listing prices and `monetization_evidence` from market_insights. Label inferred
   prices `ASSUMPTION:`.

2. **Run Van Westendorp Price Sensitivity Analysis.** Estimate four thresholds
   from available data (no live survey):

   | Threshold | Conceptual question | Estimation rule |
   |---|---|---|
   | **Too cheap** (floor) | Below this, buyers suspect low quality or missing enterprise basics | Half the cheapest competitor's comparable tier. If category has free tiers, floor may be $0 for a limited free plan only — not the paid WTP floor. |
   | **Cheap but acceptable** (low) | Feels like a good deal | Competitive minimum for a comparable tier. Discount if the idea ships fewer core jobs than the cheapest competitor. |
   | **Getting expensive** (target) | Fair price — buyer evaluates but proceeds | Competitive modal price, before desire adjustment. |
   | **Too expensive** (ceiling) | Above this, buyer won't consider regardless of features | Competitive maximum × 1.2, capped by category pain threshold (max observed in G2/review complaints). |

   Derive WTP range:
   - `wtp_low` = cheap_but_acceptable
   - `wtp_target` = getting_expensive × desire multiplier (Step 3)
   - `wtp_aspirational` = midpoint between getting_expensive and too_expensive

   Set `unit` (`per-seat` or `per-account`) and `period` (`monthly`, `annual`, or
   `one-time`) to match how competitors and the ICP in `00` actually buy.

3. **Apply desire-premium multiplier.** From `desire_scores.json`, map primary
   desire driver to pricing power for B2B buyers:

   | Primary driver | Multiplier | B2B rationale |
   |---|---|---|
   | **Survival** (compliance, security, revenue-critical ops) | 1.3–1.8× | Budget exists when failure is costly (fines, downtime, lost revenue). |
   | **Control** (workflow, chaos reduction, operational mastery) | 1.2–1.5× | Moderate premium when the alternative is manual spreadsheets and errors. |
   | **Status** (reporting to leadership, vendor credibility) | 1.1–1.4× | Buyers pay for tools that make them look competent to executives. |
   | **Belonging** (team coordination, shared workspace) | 1.0–1.2× | Collaboration tools face "good enough" free alternatives — premium only with clear ROI. |
   | **Curiosity** (analytics, exploration, nice-to-have insights) | 0.8–1.1× | Lowest premium; competes with dashboards already in the stack. |

   Apply: `desire_adjusted_target = competitive_modal × desire_multiplier`.
   If `desire_strength_label` = "weak", use multiplier 1.0 — no emotional pull
   to justify premium. If secondary driver differs from primary and scores ≥ 3,
   add +10% and note in `desire_premium_rationale`.

4. **Sanity-check against B2B category benchmarks.** Match the idea to the
   closest category below. All ranges are `ASSUMPTION:` desk estimates for
   micro-SaaS sold to SMB/mid-market unless evidence says otherwise.

   | B2B SaaS category | Per-seat monthly (USD) | Per-account flat monthly (USD) | Annual discount sweet spot |
   |---|---|---|---|
   | **SMB ops / back-office** (invoicing, scheduling, inventory) | $15–$49 | $49–$199 | 15–20% off monthly |
   | **Vertical SaaS** (industry-specific workflow) | $29–$99 | $99–$399 | 15–25% off monthly |
   | **Developer tools / API infra** | $19–$79 | $99–$499 | 10–20% off monthly |
   | **Compliance / security / audit** | $49–$149 | $199–$799 | 10–15% off monthly |
   | **Analytics / BI / reporting** | $25–$79 | $79–$299 | 15–20% off monthly |
   | **Sales / marketing automation (SMB)** | $29–$99 | $99–$399 | 15–25% off monthly |
   | **HR / payroll adjacency** | $8–$25 | $49–$199 | 15–20% off monthly |
   | **Customer support / success** | $19–$59 | $79–$249 | 15–20% off monthly |
   | **AI-powered workflow (B2B)** | $39–$149 | $149–$599 | 10–20% off monthly |

   If Van Westendorp + desire-adjusted target exceeds 2× the category max, it is
   likely too optimistic — pull back and explain. If below category min, flag
   sustainability risk unless the wedge is intentionally disruptive.

5. **Evaluate pricing models.** Consider at least three models. Freemium is a
   minor option only — not the default for B2B micro-SaaS.

   | Model | Best for | Risk |
   |---|---|---|
   | **Per-seat subscription** | Team tools where value scales with headcount | Seat expansion required for growth; buyers optimize seats |
   | **Per-account / flat subscription** | Single-workflow tools, small teams, predictable ops cost | Revenue caps unless tier upgrades exist |
   | **Usage-based** | Variable volume (API calls, documents processed, records) | Unpredictable revenue; buyers fear bill shock |
   | **Tiered** (Good/Better/Best) | Clear feature gates, land-and-expand | Complexity; wrong tier boundaries confuse buyers |
   | **Annual contract** | Higher ACV, lower churn, compliance buyers | Longer sales cycle; needs proof before commit |
   | **One-time** | Templates, audits, implementation-heavy utilities | No recurring revenue — only if distribution supports constant new logos |
   | **Freemium → paid** (optional) | PLG wedge with obvious upgrade path | Low conversion; support burden on free users |

   **Selection criteria:**

   | If the product... | Lean toward |
   |---|---|
   | Embeds in daily team workflow with per-user login | Per-seat subscription |
   | Serves one account regardless of team size (e.g. single-location ops) | Per-account flat |
   | Cost scales with usage volume (API, storage, transactions) | Usage-based or hybrid |
   | Has clear good/better feature splits competitors use | Tiered per-seat or per-account |
   | Buyer expects annual budget approval (compliance, enterprise-adjacent) | Annual contract as default offer |
   | Delivers one-time outcome (report, migration, audit) | One-time or project fee |

   Record each considered model in `pricing_models_considered` with fit and risk.
   Set `recommended_pricing_model` to the best fit for this ICP and competitive
   landscape.

6. **Set recommended price and annual strategy.** Populate `recommended_price`:
   - `monthly_per_seat` / `annual_per_seat` when model is per-seat or tiered.
   - `flat_monthly` when model is per-account.
   - `annual_discount_pct` — B2B sweet spot is typically 15–25%; deeper discounts
     (>30%) signal weak monthly value. Annual price = monthly × 12 × (1 − discount).
   - `one_time` only if one-time model is recommended.

   Primary output for downstream skills (`cac-modeler`, `idea-scoring`) is
   `wtp_range.target` — get this right or LTV:CAC and payback calculations fail.

7. **Assess expansion potential.** Set `expansion_potential.exists` true if natural
   paths exist: seat growth, tier upgrades, usage overages, add-on modules, multi-
   location accounts. Expansion is how micro-SaaS reaches viable ACV — a flat
   $29/mo account with no expansion path is a red flag unless volume is high.

8. **Validate monetization and collect pricing signals.** Set
   `monetization_validated: true` only if ≥1 concrete signal exists: competitor
   paid tiers with known prices, G2/Capterra reviews mentioning paid contracts,
   Reddit/LinkedIn price discussions, or explicit `monetization_evidence` in
   market_insights. Otherwise `false`. Populate `market_insights_pricing_signals`
   with short, cited strings (source + price mention). Write `pricing_rationale`
   synthesizing competitive range, Van Westendorp, desire multiplier, category
   benchmark, model choice, and validation status. Flag if market_insights files
   are stale (`stale_after` passed) — competitive pricing may have shifted.

9. **Write `pricing.json`.** Only this file.

## Output

Write to `ideas/<slug>/pricing.json`:

```json
{
  "wtp_range": { "low": 0, "target": 0, "aspirational": 0, "currency": "USD", "unit": "per-seat | per-account", "period": "monthly | annual | one-time" },
  "van_westendorp": { "too_cheap": 0, "cheap_but_acceptable": 0, "getting_expensive": 0, "too_expensive": 0 },
  "desire_premium_multiplier": 0,
  "desire_premium_rationale": "",
  "recommended_pricing_model": "per-seat | per-account | usage-based | tiered | annual-contract | one-time",
  "pricing_models_considered": [ { "model": "", "fit_rationale": "", "risk": "" } ],
  "recommended_price": { "monthly_per_seat": 0, "annual_per_seat": 0, "flat_monthly": 0, "annual_discount_pct": 0, "one_time": 0 },
  "competitive_pricing_range": { "min": 0, "max": 0, "modal": 0 },
  "category_benchmark_range": { "min": 0, "max": 0 },
  "expansion_potential": { "exists": false, "rationale": "" },
  "monetization_validated": false,
  "market_insights_pricing_signals": [],
  "pricing_rationale": ""
}
```

## Hard rules

- **Skills never call other skills.** Read the inputs, write `pricing.json`.
- **No invented facts.** Missing competitor price = gap, not a guess — use
  `ASSUMPTION:` for any estimate and keep ranges conservative when evidence is thin.
- **Never anchor to build cost.** WTP comes from pain, desire, competitors, and
  market signals only.
- **Never advance the human gate.** The orchestrator handles stage progression.
- **Only write `pricing.json`.**
