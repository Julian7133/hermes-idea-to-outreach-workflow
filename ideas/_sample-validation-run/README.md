# Sample Stage 1 validation run — reptile store inventory

Illustrative dry-run of the Stage 1 skill chain
([`workflows/1-devalidation.md`](../../workflows/1-devalidation.md)) on the idea
"inventory management for reptile stores."

**Every figure is labelled `ASSUMPTION:` or marked illustrative.** Replace with
live G2/Capterra/Reddit/LinkedIn research before any real go/no-go decision.

## Artifacts produced

| Step | Skill | Output |
|------|-------|--------|
| 1 | `trend-analysis` | [`memory/market_insights/reptile-store-inventory-2026-07.md`](../../memory/market_insights/reptile-store-inventory-2026-07.md) |
| 2 | `competitor-mapper` | [`competitors.json`](competitors.json) |
| 3 | `desire-evaluator` | [`desire_scores.json`](desire_scores.json) |
| 4 | `pricing-and-wtp` | [`pricing.json`](pricing.json) |
| 5 | `distribution-analysis` | [`distribution.json`](distribution.json) |
| 6 | `retention-predictor` | [`retention.json`](retention.json) |
| 7 | `cac-modeler` | [`cac.json`](cac.json) |
| 8 | `boring-and-trends-check` | [`boring_trends.json`](boring_trends.json) |
| 9 | `idea-scoring` | [`scores.json`](scores.json) |
| 10 | `gtm-mode-selector` | [`gtm_mode.json`](gtm_mode.json) |
| 11 | `decision-memo` | [`01-devalidation-report.md`](01-devalidation-report.md) |

Verdict: **test** (72/100). Pivot branch (`weakness-detection`, `pivot-engine`) was
not run — it triggers only on a `pivot` verdict.

## How to re-run

```bash
cp -r ideas/_TEMPLATE ideas/my-idea-slug
# Fill 00-idea-capture.md, then ask the agent:
#   "Run the devalidation workflow on my-idea-slug"
```
