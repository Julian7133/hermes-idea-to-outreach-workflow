---
name: weakness-detection
description: >-
  Stage 1 pivot branch. Runs only when idea-scoring returns verdict `pivot`.
  Reads scores.json and dimension files to classify weak dimensions by root cause
  (structural, situational, knowledge-gap, addressable) and name the failure mode
  if the idea were pursued unchanged. Writes ideas/<slug>/weaknesses.json. Use
  when the user wants weakness analysis before pivot-engine or to diagnose why
  an idea scored pivot.
stage: 1
reads: ideas/<slug>/scores.json, ideas/<slug>/00-idea-capture.md, and all dimension JSONs in ideas/<slug>/
writes: ideas/<slug>/weaknesses.json
---

# Skill: Weakness Detection

Before the pivot engine proposes fixes, you diagnose **why** dimensions scored low.
A weak Distribution score might mean "ICP is unreachable" (structural) or "founder
hasn't tried cold outbound yet" (addressable). Surface root causes and failure
modes — not just the symptom numbers from `scores.json`. No invented facts; label
estimates `ASSUMPTION:`.

## Input

Read the idea slug and these artifacts from `ideas/<slug>/`:

- `scores.json` (**required** — dimension sub-scores, verdict, top weaknesses).
  If missing, stop — run `idea-scoring` first.
- `00-idea-capture.md` (concept, ICP, monetization assumption).
- All available dimension JSONs (`desire_scores.json`, `competitors.json`,
  `pricing.json`, `distribution.json`, `retention.json`, `cac.json`,
  `boring_trends.json`).

### Run gate (hard stop)

This skill runs **only** when `scores.json.verdict` is **`pivot`**. If the verdict
is `pursue`, `test`, or `drop`, stop — no weakness analysis is needed (or the idea
is already dead).

## Weakness threshold

A dimension is **weak** when its sub-score in `scores.json.dimension_scores` is
**below 40**. Also treat any dimension listed in `killer_dimensions` as weak
regardless of score.

## Root-cause taxonomy

| Root cause type | Description | Typical fix |
|---|---|---|
| **structural** | Inherent to the idea or market; cannot be fixed with a tweak | Major pivot or drop |
| **situational** | Weak because of founder constraints (time, budget, geography) | Fixable with more resources |
| **knowledge-gap** | Weak because research is missing or thin | Run more research, then re-score |
| **addressable** | Weak but has a clear, bounded fix (ICP, pricing, channel, wedge) | Targeted pivot on 1–2 variables |

## Process

1. **Load `scores.json`.** Confirm verdict is `pivot`. If not, stop.
2. **Identify weak dimensions** — every sub-score < 40 and every entry in
   `killer_dimensions`.
3. **For each weak dimension**, read its source file and answer:
   - What specific evidence drove the low score? (quote a field/value.)
   - What is the root cause type?
   - What happens if the founder builds and sells anyway without fixing this?
4. **Classify severity:**
   - **fatal** — ≥1 structural weakness on Demand, Distribution, or Monetization,
     OR any killer dimension with score < 15.
   - **major** — ≥2 weak dimensions, or one structural weakness on a non-core
     dimension.
   - **minor** — only addressable/situational weaknesses; pivot likely succeeds.
5. **Split lists:** `critical_weaknesses` (structural + fatal drivers) vs
   `addressable_weaknesses` (addressable + situational + knowledge-gap).
6. **Write `weaknesses.json`.** Do not propose pivot options — that is
   `pivot-engine`'s job.

### Failure-mode prompts (B2B micro-SaaS)

Use these when describing `failure_mode`:

| Dimension | Example failure mode |
|---|---|
| Demand | ICP keeps using spreadsheets; demos get polite interest but no urgency |
| Monetization | Unit economics look fine on paper but nobody pays the target ARPU |
| Distribution | Cold outbound bounces; list quality poor; CAC blows past 3:1 |
| Retention | Tool used once after onboarding; logo churn > 8% within 90 days |
| Competition | Incumbent ships the wedge feature; positioning gap closes |
| Founder-Market Fit | Build stalls; sales conversations lack credibility |
| Boring/Trends | Sexy niche attracts funded entrant; or trends don't lift this buyer |

## Output

Write to `ideas/<slug>/weaknesses.json`:

```json
{
  "verdict_at_analysis": "pivot",
  "weakness_threshold": 40,
  "weak_dimensions": [
    {
      "dimension": "demand | monetization | distribution | retention | competition | founder_market_fit | boring_trends",
      "score": 0,
      "source_field": "",
      "root_cause_type": "structural | situational | knowledge-gap | addressable",
      "root_cause_description": "",
      "failure_mode": ""
    }
  ],
  "critical_weaknesses": [],
  "addressable_weaknesses": [],
  "overall_weakness_severity": "fatal | major | minor"
}
```

## Hard rules

- **Runs only on `pivot` verdict**, after `idea-scoring`, before `pivot-engine`.
- **Skills never call other skills.** Read artifacts, write `weaknesses.json`.
- **No invented facts.** Ground every root cause in a cited field from a dimension
  file or `scores.json`.
- **Never advance the human gate.** The orchestrator does that.
- **Only write `weaknesses.json`.** Do not write pivot options or the `01` report.
