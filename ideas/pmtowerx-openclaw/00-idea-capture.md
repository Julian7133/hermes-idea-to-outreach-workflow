---
slug: pmtowerx-openclaw
title: PmTowerX auf openclaw-Basis — PM Command Tower als agentenlesbarer Workspace
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea
PmTowerX auf openclaw-Basis: Ein kuratierter, sofort lauffähiger **PM Tower** — ein openclaw-Workspace, der die verstreuten PM-Skills (Discovery, Priorisierung RICE/MoSCoW, Roadmapping Now/Next/Later, PRD/User-Stories, Stakeholder-Updates, VoC-Synthese) zu einem zusammenhängenden Agenten-Turm stapelt. Statt 10 Tools + 5 Prompt-Libraries zu verdrahten, bekommt ein Solo-PM / kleines Produktteam **einen** openclaw-Agenten, der jede Woche automatisch Competitor- + VoC-Signale einsammelt, als priorisierten Vorschlag stapelt und als PRD-Draft ausspielt — mit eigener `AGENTS.md`/`SOUL.md`-Kontextschicht, nicht als weitere SaaS.

Backlog-Kurzform `PmTowerX auf openclaw-Basis` (Tier C) wird hier als Wertversprechen für einen konkreten Kunden interpretiert, nicht als Lückenbehauptung „es gibt noch kein Tool für PM" (K1).

## Monetization assumption
**Modell A — Skill-Pack + Setup (primär, solo-freundlich):** €149 einmalig für den kuratierten Workspace (inkl. 243-ähnlichem Skill-Curriculum, Templates, Harness-Adapter für openclaw/Codex/Cursor) + optional €49/Monat **Managed OpenClaw Run** (Fly.io/Cloud-Hosting, Updates, Cron für wöchentlichen Intel-Report) — Begründung: spart 4–6 h/Woche Recherche + Drafting (hellopm.co: 4 h/Woche manuell → Montag-Bericht). Vergleich: Productboard Essentials $19/maker/Monat ($228/Jahr) und Pro $59/maker/Monat, AI PM OS $99 einmalig (prodmgmt.world) — der Tower liegt preislich dazwischen, aber mit eigenem Hosting-Kontrollversprechen.

**Modell B — Boutique Service (Fallback):** €290 Setup + €190/Monat für Solo-PM/Founder, die den Tower nicht selbst betreiben wollen: Julian richtet openclaw + Tower ein, pflegt 1×/Quartal Context + Skill-Updates. Nur wenn Managed-Run allein nicht zieht.

**ASSUMPTION:** 30 Käufer × €149 + 15 × €49/Monat × 8 Monate = ~€10.400 im ersten Halbjahr — konservativ, rein DACH-Solo-PMs/Founder. Volume via ClawHub-Distribution (5.700+ Skills, kostenloser Discovery-Kanal).

## Solo fit
**Sehr gut — Kernvorteil greift (K6):** Tiefe praktische Erfahrung mit Agent-Orchestrierung (bb, openclaw, Multi-Agent-Workflows), ~20 eigene Repos, bestehende Sendeinfrastruktur. PmTowerX ist genau ein **agentenlesbarer Workspace** — also Markdown-Files + SLASH-Skills + openclaw-Gateway-Schicht, kein schweres SaaS-Backend. Solo baubar: 1 kuratierter Repo-Tower, 1 Fly.io-Deploy-Skript, Docs. Kein Sales-Team nötig — ClawHub + Community + Content (PM-Playbook-Posts) reichen als Kanal. Risk: Support-Last bei openclaw-Upstream-Breaks (alle 2–3 Wochen Release) — durch pin-bare Skill-Version + `openclaw doctor --fix` migrierbar.

## Trigger / why now
**OpenClaw 2.0 (31.08.2026)** hat aus dem Solo-Harness ein Multiplayer-Team-OS gemacht (16k PRs, 933 Contributor, shared cloud sessions, Skill Workshop, per-request Approvals) — venturebeat.com/siliconangle/cellcog.ai Coverage. Gleichzeitig ist **ClawHub auf >5.700 Skills** gewachsen, aber PM-Skills sind fragmentiert: `product-manager`, `pm-agent`, `afrexai-product-manager` liegen unverbunden nebeneinander, kein kuratierter End-to-End-Tower. **Productboard** hat mit Spark ($15/maker/Monat, 250 Credits — 1 PRD = 85–95 Credits) die AI-PRD-Erstellung kreditisiert — genau die Lücke für einen flat-fee, self-hosted Tower, den der PM besitzt statt mietet. EU-AI-Act + DSGVO-Druck erhöht Nachfrage nach EU-hostbaren PM-Workspaces (Regolio, PathHub, Varna werben alle mit DE-Hosting) — openclaw self-host erfüllt das ohne US-SaaS.

## Open questions
- Ist der Käufer Solo-Indie-PM/Founder (1–3 Maker) oder ein 5+-Maker Mid-Market-Team (Productboard-Ziel)? Preis-Anchor hängt daran.
- Welcher Harness trägt: reiner openclaw-Runtime oder zusätzlich Codex/Cursor-Adapter (AI PM OS macht genau das — Pflegeaufwand ×3)?
- Wie viel Weekly-Intel ist wirklich automatisierbar ohne teures Scraping (Firecrawl/Puppeteer $→ API-Kosten) vs. manuell kuratierte Quellenliste, die der PM selbst pflegt?
- ClawHub-Monetarisierung: 20 % Platform-Fee, $20 Payout-Threshold — trägt das Solo, oder ist Direktvertrieb (Gumroad/Polar) besser?
