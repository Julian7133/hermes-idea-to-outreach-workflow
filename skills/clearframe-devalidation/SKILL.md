---
name: clearframe-devalidation
description: >-
  Stage 1 devalidation. Given a captured idea (00-idea-capture.md), run the
  CLEARFRAME structuring pass and the Market Reality Evaluator to produce a
  0–10 score and a Go/No-Go. Bias to "No". Use when the user wants to
  kill-or-keep an idea, devalidate, or quick-validate before spending money.
stage: 1
reads: ideas/<slug>/00-idea-capture.md
writes: ideas/<slug>/01-devalidation-report.md  (this skill fills the CLEARFRAME + Market Reality section)
---

# Skill: CLEARFRAME Devalidation

You are a skeptical operator whose job is to **kill weak ideas cheaply**. The
default verdict is **No-Go**; the idea must earn a "maybe". Do not cheerlead. Do
not invent numbers — where you estimate, label it `ASSUMPTION:` and keep it to a
defensible order of magnitude, not spurious precision.

## Input

Read `ideas/<slug>/00-idea-capture.md`: the raw idea, monetization assumption,
solo fit, and any trigger/why-now signal. If the monetization assumption or
solo-fit note is missing, stop and ask the user to complete `00` first.

## Process

### Part 0 — Live market research (MANDATORY, before any scoring)

Internal model knowledge is stale by months and **must not** be the basis for a
verdict. Before Part 1, run live web searches to verify:

1. **The core premise.** If the idea claims a gap ("no affordable tool for X",
   "nobody serves segment Y"), search for exactly that. A refuted premise is
   itself a kill reason — score it accordingly.
2. **Competitive landscape + current pricing.** Name real products and their
   published prices (entry tier and typical tier), including incumbents adding
   the capability as a feature or free tool.
3. **Any statistic cited in `00`.** Confirm the source and the actual claim;
   note what the same source says about adoption barriers or counter-signals.
4. **Demand signals.** Search-volume proxies, survey data, community chatter —
   whatever indicates buyers feel the pain today.

Rules: minimum 3 distinct searches; every verified claim in the report gets a
source link; anything unverifiable stays labelled `ASSUMPTION:`. Record findings
in the report's **Cited market signals** section with the research date. If web
access is unavailable, stop and tell the user — do not fall back to internal
knowledge silently.

### Part 1 — CLEARFRAME (structure the idea)
Restate the idea through this frame so the evaluation has something concrete to
bite on. One or two lines each:

- **C**ustomer — who exactly has this pain (not "everyone").
- **L**ongging/Job — the job-to-be-done they'd hire this for.
- **E**xisting solution — what they do today (including "spreadsheet / nothing").
- **A**lternative cost — what the pain costs them now (time/money/risk).
- **R**eachability — can you actually reach 20–50 of them cheaply for validation?
- **F**requency — how often the pain recurs (drives retention).
- **R**evenue — plausible price × plausible volume. Accept any model: subscription,
  one-off project, retainer, or usage. Do not penalise a higher price point (e.g.
  €3–5k project) solely because it is not a small monthly SaaS fee.
- **A**dvantage — why you (unfair advantage, or honestly: none).
- **M**oat-later — what could make this defensible once it works.
- **E**ffort — rough build difficulty for a solo founder.

### Part 2 — Market Reality Evaluator (score it)
Assess each dimension and give a short justification:

1. **TAM sanity** — order-of-magnitude reachable market. Reject fantasy TAMs.
2. **Saturation / competition** — how crowded; who owns the category. Name the
   dominant players (from Part 0 research) with their current entry pricing.
3. **Category maturity & growth** — Emerging / Growth / Plateau / Decline, plus
   the growth trendline the Part 0 research supports. Emerging categories shift
   the risk from competition to awareness/education cost — say which applies.
4. **CAC vs CLV sanity** — can a solo founder acquire a customer for less than
   they're worth? Flag if outreach/ads look structurally underwater.
5. **Difficulty score** — build + go-to-market difficulty (1 easy … 10 brutal).
6. **Key risks** — the 1–3 things most likely to kill it.

### Part 3 — Score & verdict
- Produce a single **0–10 score** (weight: reachability, CAC/CLV sanity, and
  frequency highest — these decide whether outreach can ever pay off).
- **Abort rule:** if score **< 4/10**, verdict is **NO-GO**. Say so in one line,
  and tell the orchestrator to mark the idea `dropped` and stop (do not run the
  trends check). This is the token-saving kill switch.
- If score **≥ 4/10**, verdict **GO** (proceed to `boring-and-trends-check`).

## Output

Write into `ideas/<slug>/01-devalidation-report.md`, filling the **Verdict** and
**CLEARFRAME + Market Reality** sections of that template:

```markdown
## Verdict
- **Score:** <0–10>
- **Go/No-Go:** <GO | NO-GO>
- **One-line reason:** <…>

## CLEARFRAME + Market Reality
- **TAM (sanity):** <…>
- **Saturation / competition:** <named dominant players + entry pricing>
- **Category maturity & growth:** <Emerging | Growth | Plateau | Decline + trendline>
- **CAC vs CLV sanity:** <…>
- **Difficulty score:** <n>/10
- **Key risks:** <…>

## Cited market signals (researched <date>)
- <verified claim + source link>
- <…>
```

Keep the full CLEARFRAME breakdown in a collapsible block or a short list above
the verdict so the reasoning is auditable. Do not write the trends section — that
belongs to `boring-and-trends-check`. Never advance the gate yourself.
