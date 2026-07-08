# Workflow 1 — Desk Devalidation (Stage 1)

**Goal:** kill weak ideas cheaply before spending outreach effort or tokens. This is a
*devalidation* pass — the default answer is "no", and the idea must earn a
"maybe".

**Reads:** `ideas/<slug>/00-idea-capture.md`
**Writes:** `ideas/<slug>/01-devalidation-report.md`
**Gate out:** devalidation score **≥ 4/10**, human `PASS`, then
`GREENLIGHT NEXT STAGE` before any Stage 2 (outreach prep) work.

> Pipeline v2: [`IMPLEMENTATION-PLAN-v2.md`](../IMPLEMENTATION-PLAN-v2.md)

## Steps (orchestrator passes artifacts; skills never call each other)

1. **Precondition.** Confirm `00-idea-capture.md` exists and has a monetization
   assumption and a micro-SaaS-fit note. If not, stop and ask the user to fill it.
2. **Run `clearframe-devalidation`.** Input: `00`. It produces CLEARFRAME +
   Market Reality Evaluator output: TAM, saturation, CAC/CLV sanity, difficulty
   score, and a Go/No-Go with a **0–10 score**.
3. **Auto-abort (no human gate).** If the score is `< 4/10`: write
   `01-devalidation-report.md` with the verdict `NO-GO`, set `00`'s frontmatter
   `status: dropped`, and **stop immediately**. Do not run the trends check. Do
   **not** ask for `GREENLIGHT`. Report the kill reason in one line.
4. **Run `boring-and-trends-check`.** Input: `00` + the `clearframe` output.
   Confirms the idea is "boring/niche enough to be defensible" and backs it with
   **two independent trends** (one sociological, one technological).
5. **Assemble `01-devalidation-report.md`** from both skill outputs, following
   the artifact template. Include the final score, Go/No-Go, and the two trends.

## Gate review (score ≥ 4/10 only)

Present the report and ask for a review verdict:

- **`FAIL`** → mark idea `status: dropped`, stop.
- **`PASS WITH CHANGES`** → apply the requested edits to `01`, re-present.
- **`PASS`** → wait for the reviewer to type `GREENLIGHT NEXT STAGE`, then
  proceed to `workflows/2-outreach-prep.md` (Stage 2 outreach prep).

Never advance on a `PASS` alone — the override phrase is required before any
behavioural work (lead list, outreach copy, or send).
