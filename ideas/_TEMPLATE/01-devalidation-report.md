---
idea_slug: ""
verdict: "pursue | test | pivot | drop"
final_score: 0
score_confidence: "high | medium | low"
stage: 1
---

# 01 — Devalidation Report: <Idea Name>

> Assembled by the Stage 1 chain (`workflows/1-devalidation.md`). `decision-memo`
> writes this file from `scores.json` + the dimension JSONs.
> **Abort rule:** verdict `drop` (score < 40/100) → mark `00` `status: dropped`,
> stop, never delete the folder.

## Verdict: <PURSUE / TEST / PIVOT / DROP>

**Score: X/100** | Confidence: <high / medium / low>

<Validation watermark — only if confidence is medium or low>

---

## Why This Score

<2–3 sentences on what the analysis revealed about viability.>

## Top 3 Strengths

1. **<Dimension>** (<score>/100): <one sentence with a specific data point>
2. **<Dimension>** (<score>/100): <one sentence with a specific data point>
3. **<Dimension>** (<score>/100): <one sentence with a specific data point>

## Top 3 Risks

1. **<Dimension>** (<score>/100): <the risk>. <failure mode if ignored.>
2. **<Dimension>** (<score>/100): <the risk>. <failure mode if ignored.>
3. **<Dimension>** (<score>/100): <the risk>. <failure mode if ignored.>

## Riskiest Assumption

> "<the assumption, stated plainly>"

**Test it before building anything.** <Restate the RAT. Default RAT = the Stage 2
landing-page smoke test — see `workflows/2-landing-page-test.md` (Carrd + ~$50
Google Ads; kill threshold: cost per collected email > $8).>

## Pre-mortem: If This Fails in 12 Months

1. <Most likely cause — specific, tied to a dimension>
2. <Second most likely cause>
3. <Third most likely cause>

---

## What To Do Now

<The one recommended next step — concrete, with timeline and cost.>

**Kill criteria:** <the specific outcome that means stop. Downstream presales KPI:
30 discovery calls, ≥1 preorder.>

## If That Doesn't Work

<Alternative path — one sentence.>
