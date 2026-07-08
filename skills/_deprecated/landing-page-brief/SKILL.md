---
name: landing-page-brief
description: >-
  DEPRECATED (v2). Stage 2 smoke-test brief — removed from pipeline. Kept in
  _deprecated/ for reference only. Do not use in v2; behavioural validation
  replaces landing-page test.
stage: 2
reads: ideas/<slug>/01-devalidation-report.md
writes: ideas/<slug>/02-landing-page-test.md
deprecated: true
---

> **DEPRECATED (v2).** See [`../../IMPLEMENTATION-PLAN-v2.md`](../../IMPLEMENTATION-PLAN-v2.md).

# Skill: Landing-Page Brief (v1 only)

You are a skeptical operator whose job is to **build the cheapest possible
validation signal** — a Carrd landing page with Google Ads driving traffic to an
email capture. The idea must have already scored ≥ 4/10 in devalidation; if it
did not, stop. Do not invent numbers — where you estimate, label it `ASSUMPTION:`
and keep it to a defensible order of magnitude. This skill reads only the
devalidation report and writes the smoke-test brief. Nothing else.

## Input

Read `ideas/<slug>/01-devalidation-report.md`. Extract: the value promise
(CLEARFRAME Advantage / Revenue lines), the target customer (CLEARFRAME Customer
line), and any ICP hints that survived devalidation. If the devalidation report
is missing or the score is < 4/10, stop and ask the user to complete stage 1
first.

## Process

### Step 1 — Anchor on the promise

Restate the value promise in one sentence: who gets what outcome, in what
context. This sentence drives every line of copy below. Do not add features or
benefits not supported by the devalidation report.

### Step 2 — Carrd landing-page copy

Produce the four required elements. Each must be derived from the promise and
ICP hints in 01; if a piece cannot be grounded in the report, label it
`ASSUMPTION:`.

- **Headline** — one line, ≤ 12 words, states the core outcome without jargon.
- **Subhead** — one line, ≤ 20 words, adds the "how" or "for whom" that makes
  the headline credible.
- **Bullets** — exactly three, each ≤ 18 words, each describing a concrete
  capability or outcome the target customer cares about.
- **CTA** — one line, action-oriented, ≤ 8 words (e.g. "Get early access").

### Step 3 — Google Ads funnel (50 USD budget)

Design a lean funnel that funnels 50 USD into email captures. Derive keywords
and audience targeting from the ICP in 01.

- **Keywords / audience** — list 5–10 keyword phrases (match phrase or exact)
  plus 2–4 audience signals (in-market, affinity, or remarketing). If the idea
  is B2B, lean on LinkedIn-style audience signals rather than broad search.
  Label any keyword volume or CPC estimate `ASSUMPTION:`.
- **Ad variant** — write ONE ad variant (headline ≤ 30 chars, description ≤ 90
  chars, display path ≤ 15 chars). Keep it aligned with the Carrd copy.
- **Negative keywords** — list 8–12 negative keywords to avoid wasted spend
  (e.g. "free", "job", "salary", "course", "template", "download", "pdf").

### Step 4 — Measurement plan

Define how success is measured. The conversion event is an email submit.

- **Conversion event** — email address capture on the Carrd page.
- **Target** — cost per email < 8 USD. State this explicitly.
- **Minimum sample before deciding** — compute the minimum clicks needed to
  make a statistically meaningful decision. Use a rule of thumb: at least
  100 clicks and at least 10 email captures before calling PASS or FAIL.
  Label any assumed conversion-rate range `ASSUMPTION:`.

### Step 5 — Legal footer checklist

List the compliance items required before running Ads conversion tracking in the
EU/DE market. Check every box; do not skip.

- [ ] Impressum
- [ ] Datenschutzerklärung
- [ ] Cookie/consent banner for Ads conversion tracking (GTM / Ads API)

## Output

Write into `ideas/<slug>/02-landing-page-test.md`, filling every section of that
template. Leave the RESULT table blank — it is for the human to fill after
running the test.

```markdown
## Carrd copy
- **Headline:** <…>
- **Subhead:** <…>
- **Bullets:** <3>
- **CTA:** <…>

## Google Ads funnel (50 USD test)
- **Keywords / audience:** <…>
- **Ad variant:** <…>
- **Negative keywords:** <…>

## Measurement plan
- **Conversion event:** e-mail submit
- **Target:** cost per e-mail < 8 USD
- **Minimum sample before deciding:** <…>

## Legal footer checklist
- [ ] Impressum
- [ ] Datenschutzerklärung
- [ ] Cookie/consent for Ads conversion tracking

## RESULT (fill after running)
| Impressions | Clicks | E-mails | Spend | Cost/e-mail | Verdict |
|---|---|---|---|---|---|
|  |  |  |  |  | PASS / FAIL |
```

Never advance the gate yourself. The human must type `GREENLIGHT NEXT STAGE`
to proceed.
