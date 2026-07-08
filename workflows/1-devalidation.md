# Workflow 1 — Devalidation (Stage 1)

**Goal:** kill weak ideas cheaply before spending money or tokens. This is a
*devalidation* pass — the default answer is "no"; the idea must earn a "maybe".
Stage 1 is now a **skill chain**: each skill reads the artifacts of the previous
steps and writes one structured file. The orchestrator (this file) passes
artifacts between skills — **skills never call each other**.

**Reads:** `ideas/<slug>/00-idea-capture.md`
**Writes:** `ideas/<slug>/01-devalidation-report.md` (+ the intermediate JSON
files listed below, all under `ideas/<slug>/`, and one `memory/market_insights/`
file).
**Gate out:** verdict is **not `drop`** (final score ≥ 40/100) AND the reviewer
types `GREENLIGHT NEXT STAGE`.

## Precondition

Confirm `ideas/<slug>/00-idea-capture.md` exists and has a monetization
assumption and a micro-SaaS-fit note. If not, stop and ask the user to complete
`00` first. Derive `<niche>` (kebab-case) and the current `<YYYY>-<MM>` for the
market-insights filename.

## Chain (orchestrator passes artifacts; skills never call each other)

| # | Skill | Reads | Writes | Present to the user |
|---|---|---|---|---|
| 1 | `trend-analysis` | `00`, existing `memory/market_insights/` | `memory/market_insights/<niche>-<YYYY>-<MM>.md` | Top 3 demand signals (G2/Reddit/job boards), trend velocity, hot/warm/cool/cold verdict |
| 2 | `competitor-mapper` | `00`, market_insights | `ideas/<slug>/competitors.json` | Top 3 competitors (pricing + top complaint), market saturation |
| 3 | `desire-evaluator` | `00`, `memory/extra-context/core-human-desires.md` | `ideas/<slug>/desire_scores.json` | Primary buyer desire, desire-strength label, pain intensity |
| 4 | `pricing-and-wtp` | `00`, `competitors.json`, `desire_scores.json`, market_insights | `ideas/<slug>/pricing.json` | Recommended pricing model, target WTP per seat/account |
| 5 | `distribution-analysis` | `00`, `competitors.json`, `memory/user_profile.md` | `ideas/<slug>/distribution.json` | Distribution verdict, recommended first channel, ICP reachability |
| 6 | `retention-predictor` | `00`, `desire_scores.json` | `ideas/<slug>/retention.json` | Retention verdict, usage frequency, top churn-risk factor |
| 7 | `cac-modeler` | `pricing.json`, `retention.json`, `distribution.json`, `competitors.json`, market_insights | `ideas/<slug>/cac.json` | Viability verdict, best LTV:CAC ratio + channel, payback months |
| 8 | `boring-and-trends-check` | `00`, `competitors.json` | `ideas/<slug>/boring_trends.json` | Boring/defensible verdict + the 2 named trends (1 sociological, 1 technological) |
| 9 | `idea-scoring` | all dimension JSONs + `user_profile.md` | `ideas/<slug>/scores.json` | Final score X/100, verdict, top strength + weakness |
| 10 | `gtm-mode-selector` | `01`-signals so far, `distribution.json`, `competitors.json` | `ideas/<slug>/gtm_mode.json` | Chosen GTM motion; whether founder-led cold outbound is the primary motion |
| 11 | `decision-memo` | `scores.json` + all dimension JSONs | `ideas/<slug>/01-devalidation-report.md` | The full decision brief |

> **Reconciliation note:** the handoff's numbered chain lists `cac-modeler`
> before `retention-predictor` implicitly and omits retention's slot. Because
> `cac-modeler` computes LTV from retention (lifespan/churn), `retention-predictor`
> **must run before** `cac-modeler`. It is inserted here as step 6. This is the
> only ordering change from the handoff and it is required for correctness.

### Conditional branch — verdict = `pivot`

After step 9 (`idea-scoring`), if `scores.json.verdict` is **`pivot`**, run these
two before step 10, so the decision memo can cite them:

- `weakness-detection` → `ideas/<slug>/weaknesses.json` (reads `scores.json` + dims)
- `pivot-engine` → `ideas/<slug>/pivot_options.json` + `pivot_report.md`
  (reads `weaknesses.json`, `scores.json`, dims, market_insights)

They run **only** for a `pivot` verdict. For `pursue`/`test`/`drop`, skip them.

## Abort rule (token-saving kill switch)

The canonical kill is at scoring. When `idea-scoring` returns verdict **`drop`**
(final score **< 40/100**):

1. `decision-memo` still writes `01-devalidation-report.md` with the `drop`
   verdict and the one-line kill reason (so the devalidation history survives).
2. Set `00-idea-capture.md` frontmatter `status: dropped`.
3. **Stop.** Do not run `gtm-mode-selector`, the pivot branch, or any later
   stage. **Never delete the idea folder.**

**Early exit (optional):** if step 1 or 2 surfaces a fatal, unambiguous problem
(no demand signal anywhere, or a free/entrenched platform owns the exact job),
present it and offer the user an early `drop` rather than spending tokens on the
rest of the chain. Requires the same `status: dropped` bookkeeping. Do not
early-exit on a merely weak signal — that is what scoring is for.

Also: if `idea-scoring` refuses (fewer than 3 of 7 dimensions, or Demand/
Distribution missing), stop and report which mandatory inputs are missing —
do not fabricate a score.

## Gate review

Present `01-devalidation-report.md` and ask for a review verdict:

- **`FAIL`** → mark idea `dropped`, stop.
- **`PASS WITH CHANGES`** → apply the requested edits to `01`, re-present.
- **`PASS`** → wait for the reviewer to type `GREENLIGHT NEXT STAGE`, then proceed
  to `workflows/2-landing-page-test.md`.

Never advance on a `PASS` alone — the override phrase `GREENLIGHT NEXT STAGE` is
required. A `pivot`/`drop` verdict does not advance; a `pivot` offers the
`pivot_report.md` as the next move, a `drop` ends the idea.
