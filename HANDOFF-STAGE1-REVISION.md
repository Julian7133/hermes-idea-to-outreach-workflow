# Implementation Handoff: Rebuild Stage 1 on the Validation Skill Chain

You are taking over an existing repository. Read this file completely, then execute
the task list at the bottom. Work on a feature branch, never directly on `main`.

## Context

This repo ("Hermes") is a skill-based agent pipeline that takes a raw business idea
through devalidation (Stage 1), a landing-page smoke test (Stage 2), outreach asset
generation (Stage 3), and an n8n/Mailgun cold-email campaign with granular tracking
(Stage 4). Skills are self-contained `SKILL.md` files run by Claude Code / Cursor /
Codex; `AGENTS.md` and `CLAUDE.md` are the intent routers; `workflows/*.md` are the
stage orchestrators; artifacts live in `ideas/<idea-slug>/` as numbered Markdown
files (`00-idea-capture.md` … `05-campaign-diagnostics.md`). Human gates between
stages use the phrase `GREENLIGHT NEXT STAGE` and a `PASS / PASS WITH CHANGES /
FAIL` review model. Full architecture: `IMPLEMENTATION-PLAN.md`.

The current `main` implements Stage 1 as a 1:1 port of six hand-written prompts
("WEG Quick Devalidation", the `clearframe-devalidation` skill and friends). A
review found that the open-source repo `Julian7133/idea-validation-agents` (fork of
`MaxKmet/idea-validation-agents`) has a substantially more rigorous validation
methodology. Your job is to rebuild Stage 1 on that repo's architecture,
recalibrated for B2B micro-SaaS, while keeping the parts of the current
implementation that the reference repo lacks.

## Source material

Fetch skill definitions from `github.com/Julian7133/idea-validation-agents`
(public; use `gh api` or clone). Relevant paths:

- `workflows/idea-validation.md` — the 9-step skill chain to adapt
- `skills/<name>/SKILL.md` — canonical skill definitions
- `AGENTS.md` — routing and skill-behavior conventions

## Target Stage 1 design

Replace the current single-shot devalidation with this chain (orchestrated by a
rewritten `workflows/1-devalidation.md`; skills never call each other, the
orchestrator passes artifacts):

```
1. trend-analysis            → memory/market_insights/<niche>-<YYYY>-<MM>.md
2. competitor-mapper         → ideas/<slug>/competitors.json
3. desire-evaluator          → ideas/<slug>/desire_scores.json
4. pricing-and-wtp           → ideas/<slug>/pricing.json
5. distribution-analysis     → ideas/<slug>/distribution.json
6. cac-modeler               → ideas/<slug>/cac.json
7. boring-and-trends-check   → ideas/<slug>/boring_trends.json   (KEEP, already in repo)
8. idea-scoring              → ideas/<slug>/scores.json
9. gtm-mode-selector         → ideas/<slug>/gtm_mode.json        (KEEP, run after 8)
10. decision-memo            → ideas/<slug>/01-devalidation-report.md
```

Port `retention-predictor`, `weakness-detection`, and `pivot-engine` too;
weakness-detection + pivot-engine run only when the verdict is `pivot`.

### Mandatory B2B micro-SaaS recalibration

The reference repo is tuned for indie B2C mobile apps. Adjust every ported skill:

- **Evidence sources:** G2, Capterra, Reddit (r/SaaS, niche subreddits), LinkedIn,
  IndieHackers, job boards — NOT App Store reviews or TikTok Creative Center.
  Keep the 1-star/3-star review-mining method, applied to G2/Capterra.
- **Market size:** report SOM with indie-realistic capture rates as the primary
  number; TAM is context only. (Owner's explicit position: absolute TAM size is
  not the key criterion for micro-SaaS.)
- **Unit economics:** LTV:CAC per channel and payback period are the primary
  monetization signals. Drop k-factor/virality and freemium-conversion emphasis;
  distribution channels to evaluate are SEO, cold outbound, communities,
  partnerships, paid search.
- **Scoring dimensions:** keep the multiplicative-floor 0–100 algorithm, the
  minimum-data rule (refuse to score with fewer than 3 of 7 dimensions; Demand and
  Distribution mandatory) and the confidence watermark. Add **Boring/Trends** as a
  7th dimension fed by `boring_trends.json` (boring/unsexy niche = positive;
  requires ≥2 supporting macro trends, 1 sociological + 1 technological).

### Keep from the current implementation (do not lose these)

1. **Gate mechanics** unchanged: `GREENLIGHT NEXT STAGE`, PASS/FAIL reviews,
   abort rule (final verdict `drop` or score equivalent below ~40/100 → mark idea
   `status: dropped`, stop, never delete the folder).
2. **`01-devalidation-report.md` stays the Stage 1 exit artifact.** Use the
   reference repo's decision-memo format inside it: verdict (pursue/test/pivot/
   drop), score + confidence, top 3 strengths/risks with data points, RAT,
   pre-mortem (3 causes), kill criteria, one next step, ~400–600 words.
3. **RAT → Stage 2 wiring:** the default Riskiest Assumption Test is the existing
   landing-page smoke test (Carrd + $50 Google Ads, kill threshold: cost per
   collected email > $8). The decision-memo's RAT section must reference
   `workflows/2-landing-page-test.md` unless a cheaper/faster idea-specific test
   exists. Presales KPIs downstream stay: 30 discovery calls, ≥1 preorder.
4. **CLEARFRAME tone, condensed:** keep the anti-sycophancy rules already in
   `AGENTS.md`/`CLAUDE.md` (assertive, no hedging, challenge assumptions, no
   invented facts, label `ASSUMPTION:`). Do NOT port the long persona prompt or
   any "recursion integrity" style jargon.
5. **Stage 2–4 untouched:** `landing-page-brief`, `icp-profiler`, `value-props`,
   `competitive-wedge` (Stage 3 positioning), `gtm-mode-selector` (moves into the
   chain as step 9 but its content stays), `outreach-assets`, `lead-list-builder`,
   `campaign-diagnostics`, everything under `n8n/`, and `workflows/2..4-*.md`
   except where they reference renamed Stage 1 outputs.

### Deletions / replacements

- `skills/clearframe-devalidation/` is replaced by the chain above. Delete it
  after its useful fragments (tone rules, abort rule) are relocated.
- Update the routing tables in `AGENTS.md` and `CLAUDE.md`, `README.md`, and
  `skills/_AUTHORING.md` conventions if new output types (JSON per skill) need
  documenting.

## Conventions

- Language: English, matching the existing repo.
- One skill = one folder = one `SKILL.md` with YAML frontmatter (`name`,
  `description`), explicit Input / Process / Output sections, and structured
  output written to `ideas/<slug>/` or `memory/` (follow `skills/_AUTHORING.md`).
- Cursor: add one `.cursor/rules/<skill>.mdc` pointer per new skill, same pattern
  as the existing ones.
- No code execution is involved; this is a prompt/skill engineering task.

## Task list (in order)

1. Create branch `stage1-validation-chain` from `main`.
2. Fetch the reference skills from `Julian7133/idea-validation-agents`.
3. Port + recalibrate the skills listed above into `skills/`.
4. Add the Boring/Trends dimension to `idea-scoring`; wire `gtm-mode-selector`
   and `boring-and-trends-check` into the chain.
5. Rewrite `workflows/1-devalidation.md` as the chain orchestrator (state-flow
   table, per-step "present to user" lines, gate + abort rules).
6. Update `AGENTS.md`, `CLAUDE.md`, `README.md`, `.cursor/rules/`.
7. Delete `skills/clearframe-devalidation/`.
8. Dry-run acceptance test: run one sample idea (e.g. "inventory management for
   reptile stores") through the full chain. Verify: every step writes its file,
   scoring refuses when given <3 dimensions, the final
   `01-devalidation-report.md` matches the format above, and the RAT references
   the Stage 2 landing-page test. Commit the sample run under
   `ideas/_sample-validation-run/` as documentation.
9. Commit in logical chunks; do not merge to `main`.

## Acceptance criteria

- All new skills self-contained and B2B-recalibrated (no App Store / TikTok /
  k-factor language left).
- Chain runs end-to-end on the sample idea with structured artifacts.
- Gates, abort rule, artifact numbering (`00`–`05`) unchanged.
- Stage 2–4 files byte-identical except for updated references to Stage 1 outputs.
