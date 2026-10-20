---
slug: auramindmapper-release
title: auraMindmapper — Sprint-Mindmap-Editor mit OpenClaw-Skill für Agentic-Dev-Teams
status: active
created: 2026-08-19
stage: 0
---

# 00 — Idea Capture

> **Revision 2026-08-19** (K1): Der Erstlauf (2026-08-18, PR #10, Score 2/10)
> formulierte die Prämisse als erfundene Lückenbehauptung ("es gibt kein
> vergleichbares Tool") und wurde dafür zu Recht widerlegt — MindMap AI und
> LLMindMap bieten Chat-natives Mindmapping bereits gratis an. Diese Revision
> beschreibt stattdessen ein konkretes Wertversprechen für einen konkreten
> Kunden, wie in `requeueReason` (K1) gefordert.

## Raw idea
**auraMindmapper** (Repo `sprint-mindmap`, lokal unter
`~/dev/sprint-mindmap`) ist ein **bereits laufender Chrome-Extension-Editor**
(MindElixir-Canvas, Manifest V3, noch **nicht** im Chrome Web Store
veröffentlicht — Store-Listing-Texte und Submission-Checkliste liegen fertig
vor) für **Sprint-/Task-Mindmaps**, deren Datenquelle eine einzelne,
git-diffbare Markdown-Datei ist. Zusätzlich existiert ein funktionierender
**OpenClaw-Skill** (`create-mindmap`), mit dem ein Coding-Agent (Claude Code,
OpenClaw) dieselbe Markdown-Datei direkt aus seiner Arbeit heraus erzeugt und
pflegt — kein manueller Re-Entry in ein separates Board.

**Konkreter Kunde:** Tech Leads / Engineering Manager kleiner Software-Teams
(2–15 Personen), die bereits mit KI-Coding-Agenten arbeiten (Claude Code,
OpenClaw, Cursor) und ihre Sprint-/Roadmap-Pläne heute als lose `.md`-Dateien
im Repo (z. B. `PLAN.md`, `.planning/`-Ordner solcher Agent-Workflows) oder in
einem Board (Jira/Linear/Notion) führen, das der Agent nicht direkt bearbeiten
kann.

**Konkreter Schmerz:** Der Plan lebt an zwei Orten, die auseinanderlaufen —
im Git-Repo, wo der Agent tatsächlich arbeitet, und im Board, das für
Übersicht/Priorisierung gedacht ist, aber manuell nachgepflegt werden muss.
Ergebnis: Boards veralten, oder Teams verzichten auf visuelle Übersicht und
lesen rohe `.md`-Listen. auraMindmapper macht die Markdown-Datei selbst zur
visuellen, priorisierbaren Quelle (Canvas-Editor + Prioritäts-Badges), die der
Agent per Skill direkt mitpflegt.

## Monetization assumption
Aktuell **kein Bezahlmodell im Code implementiert** — die Extension ist frei,
keine Lizenz-/Billing-Infrastruktur vorhanden (verifiziert: `manifest.json`,
`package.json`, kein Payment-Provider im Repo). Monetarisierungspfad daher
**ASSUMPTION**, zwei Optionen:
1. **Team-Tier** (Drive-Sync, Multi-Repo, Priorisierungs-Reports) für
   ASSUMPTION: €15–25/Monat pro Team (Vergleichsanker: Mindomo Premium
   ~€6/Nutzer/Monat, MindMeister Business $12,49/Nutzer/Monat).
2. **Einmaliges Setup/Consulting** (ASSUMPTION: €500–1.500) für Teams, die den
   OpenClaw-Skill in ihre bestehende Agent-Pipeline integriert haben wollen —
   passt zu Julians Freelancer-Modell, ist aber kein wiederkehrender Umsatz.
Kein Preispunkt wurde bisher am Markt getestet.

## Solo fit
**Pro:** Editor + OpenClaw-Skill existieren bereits und laufen (Tests grün im
Repo, `npm run test:all`), verbleibende Arbeit ist primär Distribution (CWS-
Submission) statt Neubau — klassischer Solo-Release-Case. Julian nutzt
OpenClaw/Claude Code selbst professionell und hat mit `sprint-mindmap` bereits
Referenz-Dogfooding.

**Contra:** Zielgruppe "Tech Leads bei Agentic-Dev-Teams, die Sprintpläne als
Markdown führen" ist eng — plausibel einige Tausend Teams weltweit, nicht
Zehntausende. Kein getesteter Preispunkt. Chrome-Web-Store-Distribution ist
Such-/Discovery-getrieben, nicht Cold-Outreach-getrieben; der eigentliche
Absatzkanal für dieses Produkt ist wahrscheinlich Content/SEO/GitHub, nicht
E-Mail-Akquise (siehe `01`, Outreach-Bewertung).

## Trigger / why now
- Coding-Agenten (Claude Code, OpenClaw, Cursor) sind seit 2025/26 im
  professionellen Alltag angekommen — agentische Planungs-Workflows (z. B.
  `.planning/`-Roadmaps, `PLAN.md`-Dateien) sind neu genug, dass es dafür noch
  kein etabliertes visuelles Standardwerkzeug gibt.
- OpenClaw-Skill-Ökosystem ist aktiv, aber jung (ASSUMPTION: 1.700–5.400+
  Skills laut verschiedenen Quellen, keine offizielle Nutzerzahl) — frühes
  Claim-Fenster für eine Nischen-Kategorie ("Sprint-Mindmap-Skill"), aber
  unsicher, ob die Nutzerbasis für Cold Outreach schon groß/reif genug ist.
- Produkt existiert bereits (kein Bauen nötig) — Trigger ist Verfügbarkeit,
  nicht primär ein neues Marktsignal.

## Open questions
- Ist die Zielgruppe (Agentic-Dev-Teams mit git-geführten Sprintplänen) über
  Cold Outreach überhaupt seriös adressierbar, oder eher über GitHub/Content
  (siehe altes Risiko: OpenClaw-Nutzer typischerweise nicht per Kaltakquise
  erreichbar)?
- Welcher Preispunkt ist am Markt durchsetzbar, wenn Kern-Editor gratis bleibt
  (Chrome-Web-Store-Norm für Nischen-Extensions ist meist Freemium/gratis)?
- Wie viele der adressierbaren Teams nutzen bereits git-basierte
  Agent-Planungsdateien (vs. reine Board-Tools) — keine belastbare Zahl
  gefunden, bleibt Schätzung.
