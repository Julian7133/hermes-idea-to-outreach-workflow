# Hermes — Idea-to-Outreach Workflow

A gated pipeline that takes a raw product idea and, only if it survives desk
devalidation, turns it into a small **validation send** with closed-loop
diagnostics.

- **Stages 0–2** are Markdown **skills** run by an agent (Claude Code / Cursor /
  Codex). They devalidate the idea and produce outreach assets for validation.
- **Stage 3** is **n8n → Mailgun → Postgres** (in `n8n/`). It enrolls up to 30
  leads, sends a 1–2 touch validation sequence, ingests events, stops on reply,
  and reports PASS/FAIL.

Pipeline v2: [`IMPLEMENTATION-PLAN-v2.md`](IMPLEMENTATION-PLAN-v2.md). Infra and
legal: [`IMPLEMENTATION-PLAN.md`](IMPLEMENTATION-PLAN.md). Agent behaviour is
routed by [`CLAUDE.md`](CLAUDE.md) / [`AGENTS.md`](AGENTS.md).

## Quick start (agent side)

```bash
cp -r ideas/_TEMPLATE ideas/my-idea-slug
# Fill ideas/my-idea-slug/00-idea-capture.md, then ask the agent:
#   "Run the devalidation workflow on my-idea-slug"
```

The agent follows `workflows/1-devalidation.md` → `2-outreach-prep.md`, pausing
at each human gate. Say **`GREENLIGHT NEXT STAGE`** to advance.

## Quick start (execution side)

```bash
cd n8n
cp .env.example .env      # fill in Mailgun keys, DB password, signing key
docker compose up -d      # n8n + Postgres 16; schema auto-applied from sql/
```

Import workflow JSONs, paste the Offer/CTA/Voice block from `04-outreach-plan.md`
into the 4b-sender config node, upload `leads.csv` via Workflow 0 (config is
auto-created — **no SQL**). See [`n8n/README.md`](n8n/README.md).

## Pipeline at a glance (v2)

```
00 idea → 01 devalidation ─(≥4/10 + PASS + GREENLIGHT)→ 03 ICP + positioning
      → 04 outreach plan + leads.csv ─(GREENLIGHT)→ n8n validation send → 05 diagnostics
```

Validation target: **≥ 1 positive reply OR ≥ 3 human clicks** after ≤ 30 sends.

## Before the first real send

Cold e-mail to German/EU recipients without prior consent is restricted under
**UWG §7(2)** and the **GDPR**. Read [`IMPLEMENTATION-PLAN.md` §7](IMPLEMENTATION-PLAN.md)
and `n8n/README.md`. This repo defaults to small, hand-picked, 1:1 outreach —
not bulk mail — and is not legal advice.

## Repository layout

See [`IMPLEMENTATION-PLAN.md` §2](IMPLEMENTATION-PLAN.md) for the annotated tree.
Landing-page artifacts (`02`) and skills are archived under `_deprecated/`.
