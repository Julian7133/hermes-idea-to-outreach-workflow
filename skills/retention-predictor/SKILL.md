---
name: retention-predictor
description: >-
  Stage 1 retention dimension. Evaluates how sticky a micro-SaaS idea is
  structurally — usage frequency, workflow embeddedness, switching cost, and data
  lock-in — and produces a churn-risk estimate that feeds into idea-scoring. Use
  when the user wants to assess retention, churn risk, or whether the idea is
  sticky enough to justify building.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, ideas/<slug>/desire_scores.json
writes: ideas/<slug>/retention.json
---

# Skill: Retention Predictor

You are a skeptical operator whose job is to **predict whether businesses will
keep paying for this micro-SaaS month over month**. SaaS retention is not about
habit formation the way mobile apps are — it is about workflow embeddedness, data
lock-in, switching cost, and whether the tool becomes indispensable to how a
team operates. Do not cheerlead. Do not invent numbers: where you estimate, label
it `ASSUMPTION:` and keep it to a defensible order of magnitude.

## Input

Read `ideas/<slug>/00-idea-capture.md` and
`ideas/<slug>/desire_scores.json`. Both must exist. If `00-idea-capture.md` is
missing, stop and ask the user to capture the idea first — there is nothing to
evaluate. If `desire_scores.json` is missing, proceed without it but note the
absence in the output.

## Evaluation Factors

| Factor | High Retention Signal | Low Retention Signal |
|---|---|---|
| Usage frequency | Daily or multiple times/day | Weekly or less |
| External trigger | Clear business event triggers usage (invoice due, report deadline, payroll date) | No natural trigger |
| Workflow embeddedness | Core operational workflow, tied to SLAs or compliance | Adjacent or nice-to-have |
| Data lock-in | User data accumulates and becomes more valuable over time | Nothing to lose by leaving |
| Switching cost | High (data migration, team retraining, process rework) | Low (one-click export, no consequences) |
| Seat expansion | Teams add seats/organizations naturally | Single-user, no expansion path |

## Process

1. **Estimate natural usage frequency.** Based on the problem the idea solves,
   determine whether a business would need it multiple times per day, daily,
   weekly, monthly, or infrequently. Ground this in the job-to-be-done from
   `00-idea-capture.md`. Do not inflate — if the pain recurs monthly, so does
   the usage. ASSUMPTION: if you cannot determine frequency from the capture
   doc alone, state your assumption explicitly.

2. **Identify external triggers.** What business event cues usage? Payroll dates,
   compliance deadlines, month-end close, client onboarding, hiring spikes,
   product launches. Name the specific trigger. If there is none, flag it.

3. **Score workflow embeddedness (1–5).** Is this core to how the customer
   operates (e.g., billing, invoicing, payroll, compliance reporting) or
   adjacent (e.g., team morale, optional analytics)? Core workflow = higher
   retention. Map across: core-workflow, adjacent-workflow, occasional-tool.

4. **Assess switching cost (low / medium / high).** Could they cancel and
   immediately switch to an alternative with no friction? High switching cost
   means data migration pain, team retraining, process rework, or contractual
   entanglement. Low = one-click export, no consequences.

5. **Evaluate data lock-in.** Does user data accumulate and become more valuable
   over time (historical trends, audit trails, accumulated configurations,
   integrations)? Or is everything reversible on exit?

6. **Estimate monthly logo churn % and net revenue retention (NRR) %.** Logo
   churn = percentage of paying accounts that cancel. NRR = revenue retained
   from existing customers net of churn, upsell, and down-sell. For B2B
   micro-SaaS, ASSUMPTION: typical ranges are 1.5–3.5% monthly logo churn for
   well-positioned products; NRR of 100–115% is strong (above 100% means
   expansion offsets churn). Flag if your estimate falls outside these ranges
   and justify why.

7. **Score habit_formation_score (1–5).** Adapt the mobile-app habit model to
   B2B SaaS: does the tool create repeated, automatic workflow behaviors within
   the organization? Factors: frequency of use, embeddedness in team process,
   data accumulation that rewards continuity, and whether cancelling creates
   operational friction (not just inconvenience).

8. **Flag churn-risk factors.** Any factor that makes logo churn likely: low
   embeddedness, low switching cost, no data lock-in, replaceable by a cheaper
   alternative or a spreadsheet, single-point-of-use with no expansion path.

9. **Assign churn_risk and retention_verdict.** Based on the above:
   - `churn_risk: low` if embeddedness is core-workflow, switching cost is high,
     and data lock-in is strong → `retention_verdict: sticky`
   - `churn_risk: medium` if 2 of 3 factors are present → `retention_verdict: moderate`
   - `churn_risk: high` if fewer than 2 factors are present → `retention_verdict: disposable`

10. **Cross-reference desire_scores.json.** If desire data exists, check whether
    the desire dimensions (survival, control, status, loss-avoidance) align with
    the retention signals. Survival/control desires mapped to a core-workflow
    tool = higher retention confidence. Status/novelty desires mapped to an
    occasional-tool = lower retention confidence. Note the alignment (or lack
    thereof) in the churn_risk_factors array.

## Output

Write EXACTLY this JSON to `ideas/<slug>/retention.json`:

```json
{
  "natural_usage_frequency": "multiple-daily | daily | weekly | monthly | infrequent",
  "external_trigger": "",
  "embeddedness": "core-workflow | adjacent-workflow | occasional-tool",
  "switching_cost": "low | medium | high",
  "habit_formation_score": 0,
  "churn_risk_factors": [],
  "estimated_monthly_logo_churn_pct": 0,
  "estimated_net_revenue_retention_pct": 0,
  "churn_risk": "low | medium | high",
  "retention_verdict": "sticky | moderate | disposable"
}
```

## Hard rules

- Skills never call other skills. This skill reads artifacts only; it does not
  invoke `clearframe-devalidation`, `icp-profiler`, or any other skill.
- No invented facts. Where you estimate, label it `ASSUMPTION:` and keep it to
  a defensible order of magnitude.
- Only write this one file: `ideas/<slug>/retention.json`. Nothing else.
- Never advance the human gate. The orchestrator owns that.
