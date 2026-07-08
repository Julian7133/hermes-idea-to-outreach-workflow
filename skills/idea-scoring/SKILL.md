---
name: idea-scoring
description: >-
  Stage 1 scoring. Aggregates the dimension files produced earlier in the chain
  (desire, competitors, pricing, distribution, retention, cac, boring_trends)
  into a single 0–100 score and a verdict (pursue/test/pivot/drop) using a
  multiplicative-floor algorithm and a Riskiest Assumption Test. Refuses to score
  with fewer than 3 of 7 dimensions. Use when the user wants to score an idea,
  compute the devalidation verdict, or decide go/no-go.
stage: 1
reads: ideas/<slug>/desire_scores.json, ideas/<slug>/competitors.json, ideas/<slug>/pricing.json, ideas/<slug>/distribution.json, ideas/<slug>/retention.json, ideas/<slug>/cac.json, ideas/<slug>/boring_trends.json, memory/user_profile.md
writes: ideas/<slug>/scores.json
---

# Skill: Idea Scoring

You are a skeptical operator producing a single, defensible verdict on a B2B
micro-SaaS idea. The default answer is "no"; the idea must earn a "maybe". You
aggregate the dimension files the orchestrator has already produced — you do not
re-research anything. A single catastrophic weakness must crush the score, just
as it kills a real company: brilliant distribution cannot save a product nobody
will pay for. No invented facts — if a dimension file is missing, treat it as
missing, do not fabricate a sub-score. Any estimate you make is labelled
`ASSUMPTION:`.

## Input

Read the idea slug and whichever of these exist in `ideas/<slug>/`:

- `desire_scores.json` → **Demand**
- `competitors.json` → **Competition**
- `pricing.json` + `cac.json` → **Monetization**
- `distribution.json` → **Distribution**
- `retention.json` → **Retention**
- `boring_trends.json` → **Boring/Trends**
- `memory/user_profile.md` → **Founder-Market Fit**

### Minimum-data rule (hard stop)

At least **3 of the 7 dimensions** must have real source data. **Demand and
Distribution are mandatory** — without evidence of a real, paid-for problem and a
reachable path to buyers, a score is meaningless for a cold-outreach pipeline. If
Demand or Distribution is missing, or fewer than 3 dimensions are present:
**refuse to score**, write nothing to `scores.json`, and tell the orchestrator
exactly which mandatory inputs are missing.

## Scoring dimensions

| Dimension | Weight | Source | What it measures (B2B micro-SaaS) |
|---|---|---|---|
| Demand | 0.20 | `desire_scores.json` + market signals in `00`/`memory/market_insights` | Real, acute business pain + validated demand signal (G2/Capterra/Reddit/job boards) |
| Monetization | 0.20 | `pricing.json` + `cac.json` | Unit economics: **LTV:CAC per channel, payback**, WTP per seat/account, indie-realistic **SOM** |
| Distribution | 0.20 | `distribution.json` | Reachability of the ICP via SEO, cold outbound, communities, partnerships, paid search |
| Retention | 0.15 | `retention.json` | Logo churn, net revenue retention, workflow embeddedness |
| Competition | 0.10 | `competitors.json` | Positioning gaps and defensibility (saturation from G2/Capterra) |
| Founder-Market Fit | 0.10 | `memory/user_profile.md` + domain overlap | Builder's edge, domain expertise, distribution advantage |
| Boring/Trends | 0.05 | `boring_trends.json` | Boring/unsexy niche (defensible) + ≥2 supporting macro trends (1 sociological + 1 technological) |

Weights sum to 1.00. SOM (not TAM) is the primary market-size number for
Monetization — absolute TAM is context only.

## Dimension sub-score rubrics (each maps to 0–100)

### Demand
| Condition | Score |
|---|---|
| `desire_strength_label` = "strong" AND `pain_intensity` = "acute" AND ≥1 validated demand signal | 80–100 |
| "strong" OR ("moderate" + validated signal) | 60–79 |
| "moderate", pain "nagging", weak/indirect signal | 40–59 |
| "weak" OR pain "latent" OR speculation only | 15–39 |
| No desire data | 0–14 |

Adjust: +5 if a specific, quantified demand signal exists (e.g. G2 category with
N reviews, a subreddit thread count, job-posting volume). Never credit platitudes.

### Monetization
| Condition | Score |
|---|---|
| LTV:CAC ≥ 3:1 on ≥2 channels, WTP defensible, SOM supports a viable micro-SaaS | 80–100 |
| LTV:CAC ≥ 3:1 on 1 channel, payback ≤ 6 mo | 60–79 |
| LTV:CAC 2:1–3:1, marginal unit economics | 35–59 |
| LTV:CAC < 2:1 OR `viability_verdict` = "not-viable" | 10–34 |
| No pricing or CAC data | 0–9 |

Adjust: +5 if SOM is comfortably above a solo-viable revenue floor
(`ASSUMPTION:` state the floor). −10 if the only positive channel is paid search
with thin margin.

### Distribution
| Condition | Score |
|---|---|
| `distribution_verdict` = "strong": ICP highly reachable, ≥2 viable non-paid channels incl. cold outbound | 80–100 |
| "strong" on one channel, or "moderate" with cold outbound clearly viable | 60–79 |
| "moderate": at least one viable channel, reachability workable | 40–59 |
| "weak": paid-only or hard-to-reach ICP | 15–39 |
| No viable channel identified | 0–14 |

Adjust: +10 if founder has an existing audience/community edge (`user_profile.md`).
This dimension is weighted heavily because the whole pipeline is cold outreach —
an unreachable ICP is close to fatal.

### Retention
| Condition | Score |
|---|---|
| `retention_verdict` = "sticky": embedded in core workflow, monthly logo churn ≤ 3%, NRR ≥ 100% | 80–100 |
| "sticky" OR (churn ≤ 5% AND high switching cost) | 60–79 |
| "moderate": churn ~5–8%, adjacent-workflow tool | 40–59 |
| "disposable" OR churn > 8% | 15–39 |
| `churn_risk` = "high" AND no habit/embedding | 0–14 |

Adjust: +5 if `natural_usage_frequency` is daily/multiple-daily. −10 if monthly-
or-less usage with no external trigger.

### Competition
Higher = more favourable landscape (an "opportunity score").
| Condition | Score |
|---|---|
| `market_saturation` = "low", clear positioning gaps, no dominant incumbent | 75–100 |
| "medium", 1–2 positioning gaps identified | 50–74 |
| "high" but a defensible gap (philosophy/trust) exists | 25–49 |
| "high", no differentiation, entrenched incumbents | 0–24 |

Adjust: +10 if a complaint shared across ≥2 competitors reveals an unserved pain.
−15 if a well-funded platform owns the category.

### Founder-Market Fit
| Condition | Score |
|---|---|
| Strong domain match, distribution edge aligns | 75–100 |
| Moderate domain overlap or adjacent experience | 50–74 |
| Little overlap but high commitment (≥ 20 hrs/wk) | 30–49 |
| No overlap, low commitment | 0–29 |

If `user_profile.md` is unavailable, default to 50 (neutral) and flag as missing.

### Boring/Trends
Boring/unsexy is *positive* — it means well-funded competitors find the niche
unattractive. A hyped/sexy space is a *risk* (draws funded competition).
| Condition | Score |
|---|---|
| Unsexy + narrow-but-viable niche AND ≥2 named trends (1 sociological + 1 technological), each linked to this idea | 80–100 |
| Boring/defensible AND 1 strong named trend (or 2 with one weak) | 55–79 |
| Neutral sexiness OR trends are platitudes/unnamed | 30–54 |
| Sexy/hyped niche (funded-competition magnet) OR no real trend | 0–29 |

Read `boring_trends_verdict` and the two trend objects from `boring_trends.json`.
The dimension requires ≥2 supporting macro trends (1 sociological + 1
technological) to score above 55.

## Scoring algorithm

### Step 1 — sub-scores
Apply the rubrics. Record each present dimension as `d_i` (0–100).

### Step 2 — floor penalty ("killer dimension" rule)
Any present dimension below **25** is a potential company-killer:
```
floor_penalty = 1.0
for each present dimension d_i:
    if d_i < 25:
        floor_penalty *= (d_i / 25)
```
One catastrophic weakness (score 0–10) can halve or destroy the final score
regardless of the other dimensions.

### Step 3 — weighted base score
```
weights = { demand:0.20, monetization:0.20, distribution:0.20,
            retention:0.15, competition:0.10, founder_market_fit:0.10,
            boring_trends:0.05 }
base_score = sum(d_i * w_i for each PRESENT dimension)
```
Do not renormalise weights for missing dimensions — the missing-input discount
(Step 4) handles incompleteness so partial analyses can't reach "pursue".

### Step 4 — floor penalty + missing-input discount
```
missing_discount = present_dimensions / 7
adjusted_score = base_score * floor_penalty * missing_discount
final_score = round(clamp(adjusted_score, 0, 100))
```

### Step 5 — confidence
| Present dimensions | Confidence |
|---|---|
| 6–7 | high |
| 4–5 | medium |
| 3 | low |

### Step 6 — verdict
| Score | Verdict | Meaning |
|---|---|---|
| 75–100 | **pursue** | Strong across dimensions. Proceed to the RAT / Stage 2. |
| 55–74 | **test** | Promising but unproven. Run the RAT before building. |
| 40–54 | **pivot** | Structural weakness. Run weakness-detection + pivot-engine. |
| 0–39 | **drop** | Fatal flaws. Mark the idea `dropped`, stop. |

**Abort rule:** verdict `drop` (score < 40) → the orchestrator sets
`00-idea-capture.md` frontmatter `status: dropped` and stops the chain. Never
delete the folder.

## Riskiest Assumption Test (RAT)

1. **List the assumptions** embedded in the idea, drawn from the dimension files:
   - Demand: "This ICP has this pain acutely enough to pay to fix it."
   - Monetization: "They will pay ~$X/seat (or /account) for it."
   - Distribution: "We can reach them via cold outbound / SEO / community at
     acceptable cost."
   - Retention: "They keep paying past the first billing cycle."
   - Competition: "Our wedge matters to the buyer."
   - Founder fit: "I can build and sell this with my current skills."
2. **Rank** each on Criticality (1–5, 5 = instant kill) × Uncertainty (1–5,
   5 = pure speculation). RAT = highest product; ties broken by Criticality.
3. **Design the experiment** (≤ 2 weeks, ≤ $100, behavioral signal):

| Assumption category | Default B2B experiment |
|---|---|
| Demand exists | Landing-page smoke test with email capture (see below). Pass: cost per collected email < $8. |
| WTP is real | Landing page showing price + "request access / buy" step. Pass: ≥ 3% of qualified visitors start checkout/booking. |
| Distribution works | Send 20–50 hand-picked cold 1:1 emails for one week. Pass: ≥ 10% positive-reply rate. |
| Differentiator matters | Show competitor vs. your concept to 15–20 target buyers. Pass: ≥ 60% prefer yours for the stated job. |
| Retention holds | Concierge/manual pilot with 3–10 accounts for 14 days. Pass: majority complete the core job ≥ 2×. |

**Default RAT = the Stage 2 landing-page smoke test** (`workflows/2-landing-page-test.md`:
Carrd landing page + ~$50 Google Ads; kill threshold: cost per collected email
> $8). Only substitute a different RAT if a cheaper/faster idea-specific test
exists — say why. Downstream presales KPIs stay: 30 discovery calls, ≥1 preorder.

Thresholds must be specific, time-bound, and binary. Write them into
`scores.json` so they can be evaluated later.

## Process

1. Load every available dimension file from `ideas/<slug>/`.
2. Apply the minimum-data rule. If unmet, refuse and list missing mandatory inputs.
3. Map each present dimension to a 0–100 sub-score.
4. Compute `floor_penalty`, `base_score`, `missing_discount`, `final_score`.
5. Determine `score_confidence` and `verdict`.
6. Identify `top_strengths` (top 2 present dims) and `top_weaknesses` (bottom 2).
7. Run RAT identification and experiment design.
8. Write `scores.json`.

## Output

Write to `ideas/<slug>/scores.json`:

```json
{
  "dimension_scores": {
    "demand": 0,
    "monetization": 0,
    "distribution": 0,
    "retention": 0,
    "competition": 0,
    "founder_market_fit": 0,
    "boring_trends": 0
  },
  "weights_applied": {
    "demand": 0.20,
    "monetization": 0.20,
    "distribution": 0.20,
    "retention": 0.15,
    "competition": 0.10,
    "founder_market_fit": 0.10,
    "boring_trends": 0.05
  },
  "present_dimensions": 0,
  "floor_penalty": 1.0,
  "base_score": 0,
  "missing_discount": 1.0,
  "final_score": 0,
  "verdict": "pursue | test | pivot | drop",
  "score_confidence": "high | medium | low",
  "missing_inputs": [],
  "top_strengths": [
    { "dimension": "", "score": 0, "reason": "" }
  ],
  "top_weaknesses": [
    { "dimension": "", "score": 0, "reason": "" }
  ],
  "killer_dimensions": [],
  "riskiest_assumption_test": {
    "assumption": "",
    "category": "demand | monetization | distribution | retention | competition | founder_fit",
    "criticality": 0,
    "uncertainty": 0,
    "rat_score": 0,
    "experiment": {
      "type": "",
      "description": "",
      "duration": "",
      "estimated_cost": "",
      "pass_threshold": "",
      "references_stage2": true,
      "fail_action": "pivot | drop | re-test with different channel"
    },
    "all_assumptions_ranked": [
      { "assumption": "", "criticality": 0, "uncertainty": 0, "rat_score": 0 }
    ]
  }
}
```

## Hard rules

- **Skills never call other skills.** Read the dimension files, write `scores.json`.
- **No invented facts.** Missing dimension = missing, not a guessed number. Label
  any estimate `ASSUMPTION:`.
- **Refuse to score** below the minimum-data rule (≥3 of 7; Demand + Distribution
  mandatory).
- **Never advance the human gate.** The orchestrator does that.
- **Only write `scores.json`.**
