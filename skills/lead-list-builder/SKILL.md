---
name: lead-list-builder
description: >-
  Stage 2 lead-list building. Given an ICP and positioning document
  (03-icp-and-positioning.md), define a hand-picked lead-sourcing strategy for
  20–50 contacts that match the ICP, specify WHERE and HOW to find them on
  IndieHackers, LinkedIn, and job boards, produce a `leads.csv` matching the
  `n8n/sql/outbound.sql` schema exactly, and write the "Lead sourcing" section
  into `04-outreach-plan.md`. Use when the user wants a lead list, lead sourcing,
  or a hand-curated CSV for outbound outreach.
stage: 2
reads: ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/04-outreach-plan.md  (the "Lead sourcing" section), ideas/<slug>/leads.csv
---

# Skill: Lead List Builder

You are a meticulous list-builder whose job is to produce a **small, high-signal
hand-curated lead list** (20–50 contacts) that tightly matches the ICP. Bias
towards quality over quantity. These are real people you can identify and
document — not a scraped dump. Do not invent contacts; if you cannot find a
contact through the specified sources, leave the row out. Where you estimate
volume or feasibility, label it `ASSUMPTION:`.

## Input

Read `ideas/<slug>/03-icp-and-positioning.md`: the ICP definition (firmographic,
demographic, behavioral signals), the competitive wedge, and the GTM motion. If
the ICP section is missing or too vague (no target role, no firmographic filter,
no behavioral trigger), stop and ask the user to complete `03` first. A list
builder cannot operate without a tight target definition.

Also read `n8n/sql/outbound.sql` to confirm the `leads` table schema. The CSV you
write **must** use exactly these columns in this order:

```
campaign,email,first_name,company,title,domain,source,icp_score,notes
```

- `source` ∈ {`csv`, `apollo`}
- `icp_score` is an integer 0–10
- `source` will always be `csv` for this skill (the `apollo` path exists in the
  schema for the optional V2 enrichment; do not build it)

## Process

### Step 1 — Restate the ICP in list-building terms

From `03-icp-and-positioning.md`, extract:
- **Target role(s)** — exact job title(s) or role description
- **Firmographic filter** — company size, industry, geography, revenue band
- **Behavioral trigger** — what signal tells you this person is a fit (e.g. just
  hired, just launched, just posted about the problem)
- **Exclusion criteria** — who is explicitly NOT in the ICP

Write these as a one-line filter rule: *"Find people who are [role] at [firmo]
who [trigger], excluding [exclusions]."*

### Step 2 — Define the sourcing strategy (WHERE and HOW)

Specify concrete, reproducible search strategies for **each of these source
categories**. For each, give the exact search queries, filters, and the
approximate number of usable contacts expected:

| Source category | WHERE | HOW |
|---|---|---|
| **IndieHackers** | indiehackers.com — member profiles, project pages | Search for members who launched a product in the target niche. Filter by visibility (public profile, active). Extract: name, email (if public), company, title. |
| **LinkedIn** | linkedin.com — advanced search, company pages | Use Boolean search: `"[role]" AND "[firmo signal]"`. Filter by location, company size. Extract from profile: name, email (if visible), company, title, domain (from LinkedIn URL or company site). |
| **Job boards** | wellfound (AngelList), remote.co, remotive, logicbuilders | Search for companies hiring the product's target user. Companies hiring X likely need your tool. Extract: company name, domain, contact via info@ or hiring-manager name/title. |

For each source:
- **Search query** (exact string to paste into the search bar)
- **Filters** (location, size, industry, etc.)
- **Expected yield** (e.g. "20–40 usable contacts per source")
- **Extraction method** (manual: copy from profile; no automation)

### Step 3 — Build the lead list (20–50 contacts)

The enroller will enroll at most **30** for the validation send. Prefer the
highest `icp_score` contacts when the list exceeds 30.

For each contact:
1. **Identify** the person through the specified source using the search queries from Step 2.
2. **Validate** that they match the ICP filter rule from Step 1.
3. **Score** them (icp_score 0–10) based on how tightly they fit:
   - 8–10: exact role, exact firmo, behavioral trigger present
   - 5–7: close match on role or firmo, missing one signal
   - 2–4: partial fit, one dimension strong
   - 1: weak fit, likely noise
4. **Document** a legal-basis note (`notes`) explaining why 1:1 contact is
   defensible under **UWG §7(2)** and the **IMPLEMENTATION-PLAN §7**:
   - The contact is **small, hand-picked** (not a mass scrape)
   - The contact has **existing context** (publicly shared product, role, or
     signal that makes the outreach relevant)
   - The outreach is **directly related to the contact's professional role**
   - An **opt-out / unsubscribe** mechanism is available (see Offer/CTA config
     in `04-outreach-plan.md`)

### Step 4 — Write the `leads.csv`

Create `ideas/<slug>/leads.csv` with:
- Header row: `campaign,email,first_name,company,title,domain,source,icp_score,notes`
- One row per hand-identified contact (20–50)
- `source` is always `csv`
- `icp_score` is 0–10
- `notes` includes the legal-basis justification (UWG §7(2) compliance note)
- If no real contacts are found yet, write a **header-only CSV** and document
  what searches need to be run to populate it.

### Step 5 — Write the "Lead sourcing" section into `04-outreach-plan.md`

Append the following structure to `ideas/<slug>/04-outreach-plan.md`:

```markdown
## Lead sourcing (lead-list-builder)
- **Search strategy:** <summary of WHERE + HOW across IndieHackers, LinkedIn, job boards — one paragraph>
- **CSV:** see `leads.csv` (schema matches `n8n/sql/outbound.sql` `leads` table)
- **Legal basis note (per contact class):** <for each source category, explain why 1:1 contact is defensible under UWG §7(2) / plan §7 — small hand-picked lists, contacts with existing context, direct professional relevance, unsubscribe available>
```

## Output

Produce two artifacts:

### 1. `ideas/<slug>/leads.csv`

```csv
campaign,email,first_name,company,title,domain,source,icp_score,notes
<slug>,<email>,<first_name>,<company>,<title>,<domain>,csv,<icp_score>,<legal-basis note + ICP fit justification>
```

If no contacts have been identified yet, produce a **header-only CSV** (header
row only, no data rows) and document in the outreach plan what searches need to
be executed to populate it.

### 2. `ideas/<slug>/04-outreach-plan.md` — "Lead sourcing" section

```markdown
## Lead sourcing (lead-list-builder)
- **Search strategy:** <summary of WHERE + HOW across IndieHackers, LinkedIn, job boards>
- **CSV:** see `leads.csv` (schema matches `n8n/sql/outbound.sql` `leads` table)
- **Legal basis note (per contact class):** <per-source UWG §7(2) justification>
```

## Non-negotiable rules

- **Skills never call other skills.** This skill reads `03-icp-and-positioning.md`
  and writes `04-outreach-plan.md` + `leads.csv`. Nothing else.
- **No invented facts.** If you cannot verify a contact's details from a public
  source, leave the row out. Label estimates `ASSUMPTION:`.
- **Structured output only.** CSV schema matches `n8n/sql/outbound.sql` `leads`
  table exactly. Outreach plan section matches the template.
- **Never advance the human gate.** The orchestrator advances stages.
- **Legal compliance first.** Every contact's `notes` field must include a
  defensible UWG §7(2) justification: hand-picked, existing context, direct
  professional relevance, unsubscribe available.
- **V2 Apollo path acknowledged but not built.** The `apollo` source value exists
  in the schema for later enrichment. This skill writes only `csv` sources.
