# Hermes — Idea-to-Outreach Workflow

A gated pipeline that takes a raw product idea and, only if it survives, turns it
into a small, compliant cold-outreach campaign with closed-loop diagnostics.

- **Stages 0–3** are Markdown **skills** run by an agent (Claude Code / Cursor /
  Codex). They devalidate the idea, smoke-test demand, and produce outreach
  assets.
- **Stage 4** is **n8n → Mailgun → Postgres** (in `n8n/`). It enrolls leads,
  writes and sends a 3-step drip, ingests events, stops on reply, and reports.

The design decisions behind every choice live in
[`IMPLEMENTATION-PLAN.md`](IMPLEMENTATION-PLAN.md). Agent behaviour is routed by
[`CLAUDE.md`](CLAUDE.md) / [`AGENTS.md`](AGENTS.md).

## Quick start (agent side)

```bash
cp -r ideas/_TEMPLATE ideas/my-idea-slug
# Fill ideas/my-idea-slug/00-idea-capture.md, then ask the agent:
#   "Run the devalidation workflow on my-idea-slug"
```

The agent follows `workflows/1-devalidation.md` → `2` → `3`, pausing at each
human gate. Say **`GREENLIGHT NEXT STAGE`** to advance.

Stage 1 is a **skill chain** (not a single prompt): `trend-analysis` →
`competitor-mapper` → `desire-evaluator` → `pricing-and-wtp` →
`distribution-analysis` → `retention-predictor` → `cac-modeler` →
`boring-and-trends-check` → `idea-scoring` → `gtm-mode-selector` →
`decision-memo`. Each step writes a structured JSON file under
`ideas/<slug>/` (plus one `memory/market_insights/` brief); the chain assembles
`01-devalidation-report.md`. Verdict `drop` (score < 40/100) aborts the idea.
See [`workflows/1-devalidation.md`](workflows/1-devalidation.md) and a filled
example in [`ideas/_sample-validation-run/`](ideas/_sample-validation-run/).

## Quick start (execution side)

```bash
cd n8n
cp .env.example .env      # fill in Mailgun keys, DB password, signing key
docker compose up -d      # n8n + Postgres 16; schema auto-applied from sql/
```

Then import the workflow JSONs from `n8n/workflows/` into n8n and complete the
Mailgun + DNS setup in [`n8n/README.md`](n8n/README.md).

## Pipeline at a glance

```
00 idea → 01 devalidation ─(gate)→ 02 landing test ─(gate)→ 03 ICP+positioning
      → 04 outreach plan + leads.csv ─(GREENLIGHT)→ n8n campaign → 05 diagnostics
```

KPI target: **30 discovery calls / ≥ 1 preorder** per idea that reaches Stage 4.

## ⚠️ Before the first real send

Cold e-mail to German/EU recipients without prior consent is restricted under
**UWG §7(2)** and the **GDPR**. Read [`IMPLEMENTATION-PLAN.md` §7](IMPLEMENTATION-PLAN.md)
and `n8n/README.md`. This repo defaults to small, hand-picked, 1:1 outreach —
not bulk mail — and is not legal advice.

## Repository layout

See [`IMPLEMENTATION-PLAN.md` §2](IMPLEMENTATION-PLAN.md) for the annotated tree.
