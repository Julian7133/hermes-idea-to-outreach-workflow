---
name: cac-modeler
description: >-
  Stage 1 unit-economics dimension. Computes LTV from pricing and retention,
  estimates CAC and LTV:CAC ratios for B2B channels (SEO/content, cold outbound,
  communities, partnerships, paid search), payback period, and a viability verdict
  that feeds idea-scoring. Reads pricing, retention, distribution, competitors, and
  market_insights. Use when the user wants CAC modeling, LTV:CAC analysis, payback
  period, or monetization viability.
stage: 1
reads: ideas/<slug>/pricing.json, ideas/<slug>/retention.json, ideas/<slug>/distribution.json, ideas/<slug>/competitors.json, memory/user_profile.md, memory/market_insights/<niche>-<YYYY>-<MM>.md
writes: ideas/<slug>/cac.json
---

# Skill: CAC Modeler

You are a skeptical operator whose job is to determine whether this B2B micro-SaaS
idea can acquire paying accounts profitably at indie scale. Most ideas fail not on
product quality but on unit economics: CAC exceeds LTV before payback. Build a
complete picture — LTV from pricing and retention, per-channel CAC calibrated by
market_insights and distribution signals, LTV:CAC classification, and payback
months — then deliver a blunt viability verdict. No invented facts: label every
estimate `ASSUMPTION:`. Do not model consumer channels (paid social, TikTok,
influencer, ASO, virality).

## Input

Read the idea slug and these artifacts:

1. `ideas/<slug>/pricing.json` — `wtp_range.target`, `recommended_price`
   (per-seat or per-account), pricing model.
2. `ideas/<slug>/retention.json` — `estimated_monthly_logo_churn_pct`,
   `estimated_net_revenue_retention_pct`, `retention_verdict`.
3. `ideas/<slug>/distribution.json` — viable channels, ICP reachability,
   recommended first channel, distribution verdict.
4. `ideas/<slug>/competitors.json` — competitor scale, saturation, observed
   channels (optional but improves calibration).
5. `memory/user_profile.md` — budget constraint, distribution advantages, hours
   available for outbound/content.
6. `memory/market_insights/<niche>-<YYYY>-<MM>.md` — use all available files
   for the niche (trend velocity, monetization evidence, platform narratives).

**Precondition (hard stop):** If `pricing.json` or `distribution.json` is missing,
stop and tell the orchestrator exactly which file is absent. Do not fabricate ARPU
or channel viability. If `retention.json` is missing, proceed but cap
`ltv_confidence` at **medium** at best and flag the gap prominently — LTV:CAC
ratios are only as good as the lifespan estimate.

### Using market insights

| Field | How it informs CAC |
|---|---|
| `trend_velocity` | Rising markets: lower organic CAC (more search/community activity) but higher paid-search CAC (more bidders). Declining markets: inverse. |
| Platform narratives — Reddit, LinkedIn, IndieHackers | Active pain threads = lower community/outbound CAC (buyers already discussing the problem). |
| G2 / Capterra review volume & complaints | High review velocity + price objections = competitive paid keywords; low-quality incumbents = SEO opportunity. |
| `monetization_evidence` | Competitors visibly running ads or hiring growth roles → adjust paid-search CAC upward. |
| Google Trends / SEO signals | Rising search interest lowers content/SEO effective CAC; saturated SERPs raise it. |
| Job boards | Hiring for outbound/SDR roles in the category signals elevated CAC benchmarks. |

If all market_insights files are past `stale_after`, note that benchmarks may have
shifted and recommend refreshing trend analysis in `market_insights_adjustments`.

## Process

1. **Load inputs.** Read every file listed above. Note which are present and which
   are missing.

2. **Compute ARPU_monthly.** From `pricing.json`:
   - Per-seat / tiered: use `recommended_price.monthly_per_seat`, or
     `wtp_range.target` when seat price is unset.
   - Per-account / flat: use `recommended_price.flat_monthly`, or
     `wtp_range.target`.
   - If only annual pricing exists, divide by 12. Label inferred values
     `ASSUMPTION:`.

3. **Compute average_lifespan_months.** From `retention.json` when available:
   ```
   average_lifespan_months ≈ 1 / (estimated_monthly_logo_churn_pct / 100)
   ```
   Round to one decimal. If `estimated_net_revenue_retention_pct` > 100%, note
   that expansion extends effective revenue life — you may add up to 20% to
   lifespan when NRR ≥ 110% and embeddedness is `core-workflow`; label
   `ASSUMPTION:`.

   If `retention.json` is missing, use category benchmarks and cap confidence:

   | `retention_verdict` or category signal | Estimated lifespan (months) |
   |---|---|
   | sticky / core-workflow tool | 24–36 |
   | moderate / adjacent-workflow | 12–18 |
   | disposable / occasional-tool | 4–8 |

   Without retention data, default to **moderate** (12 months) only if
   `00-idea-capture.md` strongly implies core-workflow embedding; otherwise use
   8 months. Always label `ASSUMPTION:`.

4. **Compute LTV and confidence.**
   ```
   LTV = ARPU_monthly × average_lifespan_months
   ```
   Populate `ltv_assumptions` with every input used and any `ASSUMPTION:` labels.

   | Data available | `ltv_confidence` |
   |---|---|
   | `pricing.json` + `retention.json` with churn estimate | high |
   | `pricing.json` + category benchmark lifespan | medium |
   | Thin pricing evidence or heavy assumptions | low |

   Without `retention.json`, confidence is **medium at best** — never high.

5. **Determine founder budget context.** From `user_profile.md` map budget to
   channel feasibility (label `ASSUMPTION:` if budget is unstated):

   | Tier | Monthly marketing spend | Implication |
   |---|---|---|
   | Bootstrap | $0–$200/mo | Paid search off the table unless micro-test budget exists. Organic + outbound only. |
   | Lean | $200–$1,000/mo | Can test paid search on narrow keywords. |
   | Moderate | $1,000–$5,000/mo | Sustained paid search + content promotion viable. |

6. **Apply channel relevance filter.** Model CAC **only** for these five channels.
   Cross-reference `distribution.json` — skip channels marked not viable or not
   applicable for this ICP:

   | Channel key | Skip when |
   |---|---|
   | `seo_content` | No search intent for the problem; ICP does not Google solutions; distribution marks SEO weak |
   | `cold_outbound` | ICP unreachable by email/LinkedIn; no list path; distribution marks outbound weak |
   | `communities` | No identifiable communities (Slack, Discord, Reddit, LinkedIn groups); distribution marks communities weak |
   | `partnerships` | No plausible integration or audience partner; category has no partner ecosystem |
   | `paid_search` | Bootstrap tier with no ad budget; keywords are prohibitively expensive; distribution marks paid weak |

   Skipped channels get `"classification": "n/a"` and `"cac": 0`; list the channel
   key and reason in `skipped_channels`.

7. **Estimate CAC per applicable channel.** Use B2B micro-SaaS benchmark ranges,
   then adjust with market_insights, `distribution.json`, and `competitors.json`:

   | Channel | Base CAC range (USD per paying logo) | Estimation method |
   |---|---|---|
   | `seo_content` | $80–$600 | Content hours × effective hourly rate ÷ logos attributed over 12 mo; lower if low-competition keywords and rising search intent |
   | `cold_outbound` | $150–$900 | Founder/AE time: `(hours/week × weeks) × hourly rate ÷ meetings held × close rate`. **Effective CAC** — label `ASSUMPTION:` |
   | `communities` | $50–$400 | Time to establish presence ÷ logos from community over 6–12 mo; lower if active niche communities in market_insights |
   | `partnerships` | $100–$500 | Integration/co-marketing effort ÷ referred logos; lower if clear integration partners exist |
   | `paid_search` | $200–$1,200+ | CPC ÷ (CTR × landing conversion × trial-to-paid). Adjust up if competitors bid aggressively |

   Adjust down when: `trend_velocity` is rising, distribution marks channel strong,
   founder has existing audience edge (`user_profile.md`). Adjust up when:
   `market_saturation` is high, paid competition visible in market_insights, or
   ICP is hard to reach.

   Record each adjustment as a short string in `market_insights_adjustments`.

8. **Compute LTV:CAC ratio and classification per channel.**
   ```
   ltv_cac_ratio = estimated_ltv / cac   (round to 1 decimal)
   payback_months = cac / ARPU_monthly   (round to 1 decimal)
   ```

   | LTV:CAC ratio | `classification` |
   |---|---|
   | ≥ 5:1 | excellent |
   | 3:1–5:1 | healthy |
   | 2:1–3:1 | marginal |
   | 1:1–2:1 | unprofitable |
   | < 1:1 | cash-burn |

9. **Rank channels and select recommended first channel.** Sort applicable
   channels by LTV:CAC ratio (tie-break: lower payback, then alignment with
   `distribution.json` recommended first channel, then founder feasibility from
   `user_profile.md`). The recommended channel must be executable at the founder's
   budget tier — do not recommend paid search to a Bootstrap founder with no ad
   budget. Write `recommended_first_channel` (use the channel key, e.g.
   `cold_outbound`) and a one-paragraph `recommended_first_channel_rationale`.

10. **Set payback_period_months.** Use the payback for the recommended first
    channel. Also note payback for every channel with LTV:CAC ≥ 3:1 in rationale
    if multiple exist.

11. **Populate viable_channels.** List every channel key with classification
    `excellent` or `healthy` (LTV:CAC ≥ 3:1).

12. **Determine viability_verdict.**

    | Condition | `viability_verdict` |
    |---|---|
    | ≥ 1 channel with LTV:CAC ≥ 3:1 AND recommended channel payback ≤ 12 months | **viable** |
    | Exactly 1 channel at 2:1–3:1, OR one channel ≥ 3:1 but payback > 12 months, OR only marginal economics with clear optimization path | **marginal** |
    | No channel achieves LTV:CAC ≥ 2:1, OR all potentially viable channels skipped due to budget/reachability | **not-viable** |

    Write a blunt `viability_verdict_rationale` citing the best LTV:CAC ratio,
    the limiting channel, and the retention/pricing confidence level.

13. **Write `cac.json`.** Only this file.

## Output

Write to `ideas/<slug>/cac.json`:

```json
{
  "ltv": { "estimated_ltv": 0, "arpu_monthly": 0, "average_lifespan_months": 0, "ltv_confidence": "high | medium | low", "ltv_assumptions": [] },
  "cac_by_channel": {
    "seo_content":  { "cac": 0, "ltv_cac_ratio": 0, "classification": "excellent | healthy | marginal | unprofitable | cash-burn | n/a", "payback_months": 0 },
    "cold_outbound":{ "cac": 0, "ltv_cac_ratio": 0, "classification": "excellent | healthy | marginal | unprofitable | cash-burn | n/a", "payback_months": 0 },
    "communities":  { "cac": 0, "ltv_cac_ratio": 0, "classification": "excellent | healthy | marginal | unprofitable | cash-burn | n/a", "payback_months": 0 },
    "partnerships": { "cac": 0, "ltv_cac_ratio": 0, "classification": "excellent | healthy | marginal | unprofitable | cash-burn | n/a", "payback_months": 0 },
    "paid_search":  { "cac": 0, "ltv_cac_ratio": 0, "classification": "excellent | healthy | marginal | unprofitable | cash-burn | n/a", "payback_months": 0 }
  },
  "skipped_channels": [],
  "viable_channels": [],
  "recommended_first_channel": "",
  "recommended_first_channel_rationale": "",
  "payback_period_months": 0,
  "market_insights_adjustments": [],
  "viability_verdict": "viable | marginal | not-viable",
  "viability_verdict_rationale": ""
}
```

## Hard rules

- **Skills never call other skills.** Read the dimension files, write `cac.json`.
- **No invented facts.** Missing retention = lower confidence, not fabricated D30
  metrics. Label every estimate `ASSUMPTION:`.
- **B2B channels only.** Model `seo_content`, `cold_outbound`, `communities`,
  `partnerships`, `paid_search` — never paid social, TikTok, influencer, ASO, or
  viral/referral loops.
- **Never advance the human gate.** The orchestrator owns stage progression.
- **Only write `cac.json`.**
