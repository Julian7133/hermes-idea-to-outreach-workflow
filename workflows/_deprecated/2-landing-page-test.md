> **DEPRECATED (v2).** Landing-page smoke test removed from pipeline.
> See [`IMPLEMENTATION-PLAN-v2.md`](../../IMPLEMENTATION-PLAN-v2.md).
> Kept for reference only — do not run in v2.

# Workflow 2 — Landing-Page Smoke Test (Stage 2, v1 only)

**Goal:** buy the cheapest possible evidence that strangers will give an e-mail
address for this promise. This stage produces a brief to *run*, then records the
real result.

**Reads:** `ideas/<slug>/01-devalidation-report.md`
**Writes:** `ideas/<slug>/02-landing-page-test.md`
**Gate out:** measured **cost per e-mail < 8 USD** → PASS; otherwise FAIL/pivot.

## Steps

1. **Precondition.** `01-devalidation-report.md` exists and passed Gate 1.
2. **Run `landing-page-brief`.** Input: `01`. It generates:
   - Carrd landing-page copy (headline, subhead, 3 bullets, CTA), derived from
     the value promise and ICP hints in `01`.
   - A Google Ads funnel plan with a **50 USD** test budget (keywords, audience,
     one ad variant, negative keywords).
   - A measurement plan: conversion event = e-mail submit, target
     **cost per e-mail < 8 USD**, minimum sample before deciding.
   - The required legal footer notes (Impressum, privacy, consent for Ads
     conversion tracking) — see `IMPLEMENTATION-PLAN.md` §7.
3. **Human runs the test** (outside the repo): publish Carrd, run the 50 USD Ads
   test, collect results.
4. **Record the result** back into `02-landing-page-test.md`: impressions,
   clicks, e-mails, spend, computed cost per e-mail, verdict.

## Gate review

- **Cost per e-mail < 8 USD** → PASS. (v1 only — deprecated.)
- **≥ 8 USD** → FAIL. Either pivot the promise/ICP and re-test, or drop the idea.

This gate is a number, not a phrase — but still record the reviewer's decision
(`PASS` / `FAIL` / `PASS WITH CHANGES`) in the artifact.
