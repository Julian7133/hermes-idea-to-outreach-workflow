---
slug: auramindmapper-release
title: auraMindmapper — Agent-first MindMap für Google Workspace + openclaw
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
**auraMindmapper** ist ein bereits gebautes, agent-first Mindmapping-Tool, das
als **Google-Workspace-Add-on** und als **openclaw-Skill** veröffentlicht werden
soll. Statt eines UI-first Mindmap-Editors (klicken, ziehen, verbinden) ist die
Kernidee, dass ein Agent (Claude/Codex/openclaw-Skill) die Map aus Text/Aufgaben
strukturiert aufbaut, aktualisiert und pflegt — der Mensch liest/steuert, der
Agent zeichnet. Zielgruppe: Nutzer, die bereits mit KI-Agenten arbeiten
(openclaw-Nutzer, Google-Workspace-Poweruser) und ihre Denkprozesse/Projekte als
Map statt als Dokument sehen wollen. "Release"-Idee bedeutet: kein neuer Produktbau,
sondern **Distribution** einer vorhandenen Lösung über zwei Kanäle.

## Monetization assumption
Freemium-SaaS mit Sitz im Google Workspace Marketplace: **kostenlose Stufe**
(begrenzte Maps/Knoten) + **Pro-Stufe ASSUMPTION: €9–15/Monat pro Nutzer** oder
**€49–99/Monat pro Team** (Workspace-Marketplace-üblich für Nischen-Add-ons).
Der openclaw-Skill selbst ist vermutlich kostenlos/Open-Source als
Distributions-/Awareness-Kanal — die Monetarisierung läuft über das
Workspace-Add-on-Abo, nicht über den Skill direkt. ASSUMPTION: kein
nutzungsbasiertes Pricing in v1, da Zielgruppe (Solo-/Kleinteam-Poweruser) feste
Monatsraten gewohnt ist.

## Solo fit
**Pro:** Produkt existiert laut Auftrag bereits ("veröffentlichen", kein Bauen),
schmale Distribution über zwei definierte Kanäle statt breitem GTM, Tier B
(sekundäre Priorität, kein Vollzeit-Invest). Google-Workspace-Marketplace und
openclaw-Skill-Verzeichnisse sind bereits vorhandene Vertriebsflächen — kein
eigener Sales-Funnel nötig.

**Contra:** Zwei sehr unterschiedliche Vertriebskanäle (Enterprise-Software-
Marketplace vs. Nischen-Agent-Tool-Ökosystem) bedeuten zwei ICPs, zwei
Onboarding-Flows, zwei Sätze an Approval-/Review-Prozessen (Google-Workspace-
Marketplace-Review ist bekanntlich langsam/streng). "Wenn die Lösung der
openclaw-Standard wird, reicht das" ist eine sehr optimistische Erfolgs-
bedingung, die außerhalb eigener Kontrolle liegt (Community-/Ökosystem-
Entscheidung, nicht Vertriebsleistung).

## Trigger / why now
- openclaw als Agent-Ökosystem ist neu genug, dass es noch keinen etablierten
  "Standard-Mindmap-Skill" gibt — ASSUMPTION: früher Claim auf Kategorie möglich.
- Google Workspace baut aktiv Gemini-Agenten-Integrationen aus — mögliches
  Zeitfenster für Agent-native Add-ons im Marketplace.
- Bestehendes Produkt (auraMindmapper) ist laut Auftrag fertig — Trigger ist
  Verfügbarkeit, nicht Marktsignal.

## Open questions
- Was ist "openclaw" konkret — eigenständiges Ökosystem mit Nutzerzahlen, oder
  ein internes/Nischen-Tool? Recherche in Part 0 muss das klären, sonst ist die
  gesamte Prämisse ("Standard werden reicht") nicht bewertbar.
- Wie groß ist die reale Nutzerbasis von openclaw-Skills heute (Traktion,
  Marktplatz-Downloads)?
- Gibt es im Google Workspace Marketplace bereits etablierte Mindmap-/
  Agent-Notiz-Add-ons, und zu welchen Preisen?
- Was genau bedeutet "Agent-first" für den Endnutzer als Kaufgrund gegenüber
  bestehenden Mindmap-Tools (Miro, MindMeister, Xmind, Whimsical)?
- Ist "der openclaw-Standard werden" überhaupt ein tragfähiges Geschäftsziel für
  Cold-Outreach-Validierung, oder eher ein Community-/Ökosystem-Ziel ohne
  direkten Umsatzpfad?
