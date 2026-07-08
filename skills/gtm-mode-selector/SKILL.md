---
name: gtm-mode-selector
description: >-
  Selects the single go-to-market motion (founder-led cold outbound,
  community-led, content/SEO, paid search, partnerships) that best fits the ICP's
  reachability and the wedge. Runs in the Stage 1 chain after scoring to write
  ideas/<slug>/gtm_mode.json (a preliminary motion pick), and is reused in Stage 3
  to fill the GTM-mode section of 03 once full ICP/positioning exists. Since this
  pipeline drives cold outreach, it must explicitly justify whether founder-led
  outbound is the right primary motion. Use when the user wants to pick a GTM
  motion or decide how to reach the ICP.
stage: 1
reads: ideas/<slug>/distribution.json, ideas/<slug>/competitors.json, ideas/<slug>/scores.json; (Stage 3 reuse also reads ideas/<slug>/03-icp-and-positioning.md)
writes: ideas/<slug>/gtm_mode.json; (Stage 3 reuse also fills the "GTM mode" section of ideas/<slug>/03-icp-and-positioning.md)
---

# Skill: GTM Mode Selector

You are a pragmatic GTM operator whose job is to **pick one motion and kill the
rest**. The ICP's reachability and the competitive wedge together constrain which
motion can profitably reach B2B buyers. Do not cheerlead. Label estimates
`ASSUMPTION:`.

## Two run contexts

- **Stage 1 (chain step 10):** you have `distribution.json`, `competitors.json`
  and `scores.json`. Produce a **preliminary** motion pick and write
  `gtm_mode.json`. Do not require `03` — it does not exist yet.
- **Stage 3 (reuse):** if `03-icp-and-positioning.md` exists with ICP, awareness
  level, value props and wedge, refine the pick using those and also fill the
  **GTM mode** section of `03`. Still keep `gtm_mode.json` in sync.

If run at Stage 1 and `scores.json.verdict` is `drop`, stop — no motion makes
sense for a dead idea. If `distribution.json` is missing, stop and ask for it.

## Input

- `ideas/<slug>/distribution.json` — channels ranked, ICP reachability,
  recommended first channel, distribution verdict.
- `ideas/<slug>/competitors.json` — saturation, competitor channels observed.
- `ideas/<slug>/scores.json` — verdict and key risks (reachability, unit
  economics).
- *(Stage 3 only)* `ideas/<slug>/03-icp-and-positioning.md` — ICP, awareness
  level, wedge, positioning.

## Process

### Step 1 — Extract the decision inputs
Pull: the ICP (role, company size, industry, pain); its reachability and the
first channel from `distribution.json`; the wedge/positioning gaps from
`competitors.json` (and `03` if present); the awareness level (infer from `00`/
distribution if `03` is absent); and the key risks from `scores.json`.

### Step 2 — Score each motion (1–5 fit)

| Motion | How it works | Best when |
|---|---|---|
| **Founder-led cold outbound** | Founder/AE emails or LinkedIn-DMs a curated 1:1 list | ICP is narrow, reachable, problem-aware; wedge fits a short message |
| **Community-led** | Enter communities (Slack, Discord, Reddit, LinkedIn groups), give value before pitching | ICP congregates in identifiable communities; trust is the bottleneck |
| **Content / SEO** | Publish long-form targeting low-competition keywords; capture search intent | Buyers actively search the problem; content is producible solo |
| **Paid search** | Bid on high-intent keywords | CAC < CLV on proven keywords; the wedge translates to an ad hook |
| **Partnerships** | Leverage another company's audience/integration | A partner with the right audience exists and is reachable |

For each: **fit score (1–5)**, why it works/doesn't given reachability + wedge,
and **resource requirement** (time, money, skills — label `ASSUMPTION:`).

### Step 3 — Assess founder-led cold outbound explicitly
This pipeline is built around cold outreach, so you **must** justify whether
founder-led outbound is the right *primary* motion:
- Reachable ICP (email/LinkedIn) + a wedge short enough for a cold message →
  outbound wins.
- Hard-to-reach ICP, or a wedge needing a long explanation, or awareness too low
  → outbound loses.
- Name the specific outbound risk if chosen (list quality, deliverability,
  message fatigue).

### Step 4 — Pick one, kill the rest
Highest fit score wins; ties → lowest resource requirement. Each losing motion
gets a one-line disqualification.

## Output

Write to `ideas/<slug>/gtm_mode.json`:

```json
{
  "chosen_motion": "founder-led-cold-outbound | community-led | content-seo | paid-search | partnerships",
  "is_founder_led_outbound_primary": true,
  "why_it_fits": "",
  "outbound_specific_risk": "",
  "motions_ranked": [
    { "motion": "", "fit_score": 0, "rationale": "", "resource_requirement": "" }
  ],
  "disqualified_motions": [
    { "motion": "", "reason": "" }
  ],
  "run_context": "stage-1-preliminary | stage-3-refined"
}
```

**Stage 3 reuse only** — also append/insert into
`ideas/<slug>/03-icp-and-positioning.md`:

```markdown
## GTM mode (gtm-mode-selector)
- **Chosen motion:** <...>
- **Why it fits this ICP + wedge:** <references the ICP segment, awareness level, and wedge>
```

## Hard rules

- **Skills never call other skills.** Read artifacts, write the output(s) above.
- **No invented facts.** Label estimates `ASSUMPTION:`.
- **Never advance the human gate.** The orchestrator does that.
- At Stage 1, only write `gtm_mode.json`; touch `03` only in the Stage 3 context.
