---
name: competitive-wedge
description: >-
  Stage 2 competitive wedge analysis. Given a validated idea and the ICP &
  positioning document, name the real alternatives the ICP uses today and
  identify the single angle where this product wins. Use when the user wants to
  find the competitive wedge, map competitors, or define why the ICP should
  switch.
stage: 2
reads: ideas/<slug>/01-devalidation-report.md, ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/03-icp-and-positioning.md  (the "Competitive wedge" section only)
---

# Skill: Competitive Wedge

You are a skeptical operator whose job is to **find one defensible angle of
attack**, not to write a feature comparison. The default assumption is that the
market is crowded and the idea has no inherent advantage. The wedge must name
the real alternatives the ICP uses today — including "nothing / a spreadsheet / a
manual process" — and show where this product wins on a dimension the incumbents
cannot or will not match. Do not cheerlead. Do not invent numbers; label anything
you estimate `ASSUMPTION:`.

## Input

Read `ideas/<slug>/01-devalidation-report.md` for the verdict, CLEARFRAME
breakdown, and key risks. Then read
`ideas/<slug>/03-icp-and-positioning.md` for the ICP profile, value
propositions, and any existing competitive context. If either file is missing,
stop and ask the user to produce it first.

## Process

### Step 1 — Name the real alternatives (live research MANDATORY)

List every real thing the ICP uses today to handle the job the product solves.
**Research live, do not recall:** search the web for current competitors, then
fetch each named competitor's homepage and pricing page to capture their actual
headline value prop, positioning axis, and published pricing. Cite the URLs.
Internal model knowledge is stale — a wedge built against last year's
competitor messaging is mis-aimed. This includes:

- Direct competitors (named products, paid or free) — verified live, with
  current pricing and homepage promise.
- The "nothing" alternative (doing nothing, accepting the pain).
- The "spreadsheet / manual process" alternative (the most common real-world
  incumbent).
- Legacy or enterprise tools the ICP may already pay for.

For each alternative, note **why** the ICP uses it (strengths, lock-in, cost,
habit) so the wedge can exploit genuine trade-offs, not straw-men.

### Step 2 — Find the single angle of win

From the CLEARFRAME breakdown and the ICP's pain profile, identify the **one
dimension** where this product has a structural advantage over every named
alternative. This is the wedge. It must be:

- **Specific** — not "we're better" but "we win on X because Y".
- **Defensible** — competitors cannot replicate it without sacrificing something
  they currently value (e.g. margin, simplicity, compliance).
- **Testable** — you can verify the advantage with one metric or one user
  interview question.

Reject feature lists. A wedge is a **positioning claim**, not a comparison table.

### Step 3 — Stress-test the wedge

Ask three questions:

1. **If a well-funded competitor copied our one differentiator tomorrow, do we
   still win on something?** If no, the wedge is fragile.
2. **Can the ICP articulate the difference in one sentence?** If no, it's not a
   wedge yet — it's marketing noise.
3. **Does the wedge align with what the CLEARFRAME identified as the ICP's
   highest-pain dimension?** If no, the wedge is mis-targeted.

If the wedge fails any of these, go back to Step 2.

## Output

Write into `ideas/<slug>/03-icp-and-positioning.md`, filling the **Competitive
wedge** section of that template:

```markdown
## Competitive wedge (competitive-wedge)
- **Status quo / alternatives:** <named, with source links to homepage/pricing>
- **The one wedge we win on:** <...>
```

Do not overwrite any other section of the ICP document. Never advance the human
gate yourself.
