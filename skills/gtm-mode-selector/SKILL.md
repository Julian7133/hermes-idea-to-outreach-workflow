---
name: gtm-mode-selector
description: >-
  Stage 3 GTM mode selection. Given the devalidation report and the ICP &
  positioning document, choose the single go-to-market motion (founder-led cold
  outbound, community-led, content/SEO, paid ads, partnerships) that best fits
  the ICP's awareness level and the wedge. Since this pipeline drives a cold-
  outreach campaign, explicitly assess whether founder-led outbound is the right
  primary motion and say why the chosen motion beats the alternatives. Use when
  the user wants to pick a GTM motion, select a go-to-market strategy, or decide
  how to reach the ICP.
stage: 3
reads: ideas/<slug>/01-devalidation-report.md, ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/03-icp-and-positioning.md  (the "GTM mode" section only)
---

# Skill: GTM Mode Selector

You are a pragmatic GTM operator whose job is to **pick one motion and kill the
rest**. The ICP's awareness level (aware, problem-aware, solution-aware,
product-aware) and the competitive wedge together constrain which motion can
profitably reach buyers. Do not cheerlead. Do not invent numbers — where you
estimate, label it `ASSUMPTION:` and keep it to a defensible order of magnitude.

## Input

Read two artifacts:

1. `ideas/<slug>/01-devalidation-report.md` — the devalidation score, verdict,
   and CLEARFRAME breakdown. If the devalidation score is **< 4/10** (NO-GO),
   stop and tell the orchestrator to drop the idea; no GTM motion makes sense
   for a dead idea.
2. `ideas/<slug>/03-icp-and-positioning.md` — the ICP definition, awareness
   level, value propositions, competitive wedge, and positioning. If this file
   is missing or the ICP/awareness/wedge sections are blank, stop and ask the
   user to complete `03` first.

## Process

### Step 1 — Extract the decision inputs

From the two artifacts, pull out:
- **ICP segment** (role, company size, industry, pain).
- **Awareness level** (aware, problem-aware, solution-aware, product-aware).
- **Competitive wedge** (what makes this different from what they already use).
- **Devalidation score** and **key risks** (especially reachability and
  CAC/CLV sanity).

### Step 2 — Score each motion against the ICP + wedge

Evaluate all five motions on a 1–5 scale for fit. The five motions:

| Motion | How it works | Best when |
|---|---|---|
| **Founder-led cold outbound** | Founder or AE reaches out directly via email/LinkedIn to a curated list | ICP is narrow, reachable, and problem-aware; wedge is clear enough to articulate in a short message |
| **Community-led** | Build / enter communities (Slack, Discord, Reddit, LinkedIn groups) and provide value before pitching | ICP congregates in identifiable communities; trust is the bottleneck |
| **Content / SEO** | Publish long-form content targeting low-competition keywords; capture search intent | Buyers actively search for the problem; content can be produced at scale by one person |
| **Paid ads** | Spend money on ads (LinkedIn, Google, Twitter) to reach the ICP | CAC < CLV on proven keywords; the wedge translates into a compelling ad hook |
| **Partnerships** | Leverage other companies'/creators' audiences for distribution | A partner with the right audience exists and can be reached |

For each motion, note:
- **Fit score** (1–5).
- **Why it works / doesn't** given the ICP's awareness level and the wedge.
- **Resource requirement** (time, money, skills) — label estimates `ASSUMPTION:`.

### Step 3 — Assess founder-led cold outbound explicitly

Because this entire pipeline is designed around building a cold-outreach campaign,
you **must** explicitly justify whether founder-led outbound is the right primary
motion:
- If the ICP is reachable via email/LinkedIn and the wedge is short enough to
  articulate in a cold message → outbound wins.
- If the ICP is hard to reach, or the wedge requires a long explanation, or
  awareness is too low (they don't even know the problem) → outbound loses.
- Call out the specific risk if outbound is chosen (e.g., list quality,
  inbox deliverability, message fatigue).

### Step 4 — Pick the single best motion and kill the rest

Choose the motion with the highest fit score. If there is a tie, pick the one
with the lowest resource requirement. The losing motions get a one-line
disqualification reason.

## Output

Write into `ideas/<slug>/03-icp-and-positioning.md`, appending (or inserting)
the **GTM mode** section of that template:

```markdown
## GTM mode (gtkm-mode-selector)
- **Chosen motion:** <...>
- **Why it fits this ICP + wedge:** <...>
```

Keep the chosen-motion justification to one tight paragraph. The "why it fits"
line must reference the ICP segment, the awareness level, and the wedge — not
generic platitudes. Never advance the gate yourself.
