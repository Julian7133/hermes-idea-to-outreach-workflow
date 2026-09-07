---
slug: cross-agent-fleet-dashboard
title: Werkzeugneutrales Fleet-Board für bb + Claude Code CLI + Codex CLI + Cursor
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea
Ein werkzeugneutrales Fleet-Board, das den Status paralleler KI-Agenten über mehrere Orchestrierungstools hinweg in einer Ansicht vereint. Adapter lesen Status aus bb (Threads/Environments), roher Claude-Code-CLI, Codex-CLI und Cursor aus und normalisieren ihn in ein gemeinsames Modell (Agent, Eltern-Kind-Beziehung, Status: läuft/wartet/blockiert/fertig). Pivot aus `project-status-mindmap` (NO-GO outreach 2/10, product 6/10, PR #23): alle gefundenen Fleet-Dashboards (Claude-Code-Agent-Monitor & Co., Cursor Teams, Devin Teams) sind an genau ein Tool gebunden — niemand bedient Nutzer, die mehrere Tools parallel einsetzen (wie Julian selbst); für sie bleibt jedes bestehende Dashboard ein Silo.

Wertversprechen (K1-konform, nicht als Lückenbehauptung): Wer täglich 3–8 Agenten über 2–3 verschiedene Tools parallel laufen lässt, sieht auf einen Blick wer hängt, wer auf Review wartet und wo die Eltern-Kind-Kette blockiert — ohne zwischen vier getrennten Dashboards/Terminals zu springen.

## Monetization assumption
Solo-SaaS/Plugin-Hybrid, zwei Stufen:
- **Solo-Tier: €19/Mo** (oder €190/Jahr) — lokale Installation, bis 20 gleichzeitige Agenten, alle Adapter, tägliche Zusammenfassung.
- **Team-Tier: €49/Mo** (bis 5 Nutzer, geteilte Fleet-Ansicht, einfache Freigabe-Links).
ASSUMPTION: Zahler ist der Solo-Dev/bbschwerer Freelancer oder das 2–5-Personen-Agent-Team, das bereits für Claude Pro/Team ($20–40), Cursor Pro ($20), Codex/ChatGPT Plus ($20) und bb zahlt und für Übersicht + Kontext-Wechsel-Ersparnis zusätzlich zahlt. Abrechnung als normales SaaS-Abo (kein Marketplace-Provisionsmodell). Kein Enterprise-Tier im Scope.

## Solo fit
Sehr hoch (Julian-Vorteil K6): Julian nutzt bb + Claude Code + Codex + Cursor tatsächlich parallel, hat `project-status-mindmap` bereits als bb-natives MVP gebaut (PR #23), kennt das bb-Datenmodell (Eltern-Kind-Threads, Environments) aus erster Hand und hat laufende Builds für Agent-Tooling. Scope ist eng (vier Adapter + ein Board), keine Team-Logins/SSO/Audit-Log im MVP, rein lokale Auslesung + statische Board-Ansicht — solo in 2–4 Wochen baubar. Delivery: lokales Tool/Plugin, kein Hosted-Backend nötig.

## Trigger / why now
Pivot-Signal aus `project-status-mindmap`-Recherche (19.08.2026): Die Recherche fand 5+ OSS-Dashboards für rohe Claude-Code-Sessions, aber keines deckt bb ab und keines ist werkzeugübergreifend. Parallel explodiert die parallele Agent-Nutzung (Claude Code Subagents seit 2025, Cursor Agent seit 2024, Codex seit 2025, bb seit 2025) — der Multi-Tool-Anwender existiert jetzt, ist aber von jedem Einzel-Tool-Dashboard ausgeschlossen. bb selbst hat keinen eingebauten Fleet-Überblick über mehrere Provider hinweg.

## Open questions
- Wie stabil sind die Status-Quellen je Adapter (bb: `bb thread show --json`, Claude/Codex-CLI: Log/JSONL-Protokoll, Cursor: Extension-API/SQLite) — welche sind ohne offizielle API fragil?
- Reicht "Status + Eltern-Kind" als Kernnutzen oder braucht es zusätzlich Token-/Kosten-Sicht (Overlap mit `agent-usage-dashboard`, dort NO-GO)?
- Ist die Zielgruppe groß genug, um 200 zahlende Kunden zu finden, oder ist es ein reines Julian-N=1-Problem?
- Distribution: bb-Plugin-Marktplatz vs. Standalone-Binary vs. VS-Code-Extension — wo findet der Käufer es?
