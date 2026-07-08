---
name: decision-memo
description: >-
  Stage 1 exit artifact. After idea-scoring, assembles the final devalidation
  report — verdict, score + confidence, top 3 strengths/risks with data points,
  the Riskiest Assumption Test, a pre-mortem, kill criteria and one next step —
  into ideas/<slug>/01-devalidation-report.md. Use when the user wants the
  devalidation decision brief, the Stage 1 report, or the go/no-go write-up.
stage: 1
reads: ideas/<slug>/scores.json, ideas/<slug>/00-idea-capture.md, and all dimension JSONs in ideas/<slug>/
writes: ideas/<slug>/01-devalidation-report.md
---

# Skill: Decision Memo

You write the document the founder actually acts on. This is not a report — it is
a **decision brief**. It surfaces the strongest signals, names the riskiest
assumption, and gives one concrete next action. A good memo makes the reader
slightly uncomfortable — that means it is honest. No hedging ("this might work
if…" is banned), no invented facts (label estimates `ASSUMPTION:`), and every
strength/risk cites a specific data point from a dimension file.

## Input

- `ideas/<slug>/scores.json` (**required** — includes the final score, verdict,
  confidence, strengths/weaknesses and the RAT). If it is missing, stop — scoring
  must run first.
- `ideas/<slug>/00-idea-capture.md` (idea name, monetization assumption).
- All available dimension JSONs in `ideas/<slug>/` (`desire_scores.json`,
  `competitors.json`, `pricing.json`, `distribution.json`, `retention.json`,
  `cac.json`, `boring_trends.json`) for the concrete data points.
- `ideas/<slug>/weaknesses.json` and `pivot_options.json` if the verdict is
  `pivot` and they exist.

## Writing principles

1. **No hedging.** State the verdict and own it.
2. **Evidence over opinion.** Every strength and risk names a number: LTV:CAC
   ratio, payback months, monthly logo churn, WTP per seat, saturation level,
   a G2/Capterra/Reddit signal. "Good economics" is not a data point.
3. **Asymmetric emphasis on risks.** Give risks more detail than strengths.
4. **One clear next action** — not three. The alternative is a contingency only.
5. **~400–600 words.** If longer, cut. Brevity is a feature.

## Process

1. Load `scores.json` and the dimension files.
2. If `score_confidence` ≠ "high", compose the validation watermark (below).
3. Top 3 strengths = the 3 highest present dimensions; pull one concrete data
   point each from the source file.
4. Top 3 risks = the 3 lowest present dimensions; for each, state the risk and
   the failure mode if ignored.
5. Extract the RAT from `scores.json.riskiest_assumption_test`. Frame it as the
   one question to answer before building. If it references the Stage 2 test,
   point explicitly at `workflows/2-landing-page-test.md` and its kill threshold
   (cost per collected email > $8).
6. Pre-mortem: assume the idea failed 12 months out; write the 3 most likely
   causes, each tied to a scored dimension.
7. Recommended next step, by verdict:
   - **pursue** → run the RAT, then scope a thin MVP; name what "thin" means here.
   - **test** → the next step IS the RAT experiment; restate it with specifics
     (channel, spend, threshold, timeline) and point to Stage 2.
   - **pivot** → the recommended pivot from `pivot_options.json` if present, else
     run weakness-detection + pivot-engine.
   - **drop** → archive and move on; name one transferable lesson. (The
     orchestrator marks `00` `status: dropped`.)
8. Kill criteria = the inverse of the RAT pass threshold.
9. One-line alternative path.

### Validation watermark
If `score_confidence` is not "high", insert immediately after the score line:
| Confidence | Watermark |
|---|---|
| medium | "This score rests on incomplete data ({missing dimensions}). Run these before a build/no-build decision." |
| low | "LOW CONFIDENCE — only {N} of 7 dimensions scored. Directional, not conclusive. Required before acting: {missing mandatory analyses}." |

## Output

Write to `ideas/<slug>/01-devalidation-report.md` (this replaces the template
placeholder — it is the Stage 1 exit artifact):

```markdown
---
idea_slug: ""
verdict: "pursue | test | pivot | drop"
final_score: 0
score_confidence: "high | medium | low"
stage: 1
---

# 01 — Devalidation Report: <Idea Name>

## Verdict: <PURSUE / TEST / PIVOT / DROP>

**Score: X/100** | Confidence: <high / medium / low>

<Validation watermark — only if confidence is medium or low>

---

## Why This Score

<2–3 sentences. What the analysis revealed about this idea's viability — not a
recap of methodology.>

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

**Test it before building anything.** <Restate the RAT: what to do, how long,
how much, and what "pass" looks like. Default RAT = the Stage 2 landing-page
smoke test — see `workflows/2-landing-page-test.md` (Carrd + ~$50 Google Ads;
kill threshold: cost per collected email > $8). Substitute only if a
cheaper/faster idea-specific test exists, and say why.>

## Pre-mortem: If This Fails in 12 Months

1. <Most likely cause — specific, tied to a dimension>
2. <Second most likely cause>
3. <Third most likely cause>

---

## What To Do Now

<The one recommended next step — concrete, with timeline and cost.>

**Kill criteria:** <the specific outcome that means stop — inverse of the RAT
pass threshold. Downstream presales KPI stays: 30 discovery calls, ≥1 preorder.>

## If That Doesn't Work

<Alternative path — one sentence.>
```

## Hard rules

- **Skills never call other skills.** Read `scores.json` + dimension files, write
  the report.
- **No invented facts.** Label estimates `ASSUMPTION:`.
- **Never advance the human gate.** The orchestrator collects
  `GREENLIGHT NEXT STAGE`.
- **Only write `01-devalidation-report.md`.**
