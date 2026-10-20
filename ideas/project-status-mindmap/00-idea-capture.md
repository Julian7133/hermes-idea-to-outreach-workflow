---
slug: project-status-mindmap
title: Agent-Status-Mindmap — laufend aktualisierte Übersicht über Multi-Agent-/Multi-Thread-Setups
status: dropped
created: 2026-08-19
stage: 0
---

> **Revision 2026-08-19.** Requeued nach Kill vom 2026-08-18 (Score 2/10,
> "Commodity"). Requeue-Grund: die ursprüngliche Bewertung verglich die Idee
> ausschließlich mit generischen Text-zu-Mindmap-Funktionen in PM-Tools
> (Trello, ClickUp, Notion) und prüfte die im Namen der Idee angelegte
> bb-Weekly-Overview-Anbindung — ein agentengesteuertes, laufend
> aktualisiertes Status-Bild für **Multi-Agent-/Multi-Thread-Setups** — gar
> nicht (K2/K6 der Kalibrierung). Diese Revision holt das nach.

# 00 — Idea Capture

## Raw idea

Ein Werkzeug für jemanden, der mit `bb` (oder vergleichbaren
Multi-Agent-Orchestrierungs-Setups: mehrere parallele Claude-Code-/Codex-
Threads, Worktrees, Kind-Agenten) **mehrere Agenten-Threads gleichzeitig
laufen lässt** und dadurch keinen schnellen Überblick mehr hat, welcher
Thread blockiert ist, was als Nächstes ansteht und wo Risiken liegen. Das
Tool liest den bereits vorhandenen **Weekly-Overview-Text** (in `bb` als
Feature bereits implementiert — Freitext-Statuszusammenfassung je
Thread/Projekt), lässt eine KI daraus Themen, offene Punkte, Risiken und
Next Steps extrahieren, und baut daraus laufend eine visuell gruppierte
**Status-Mindmap oder ein Board über alle laufenden Threads hinweg** —
nicht als Einmal-Snapshot, sondern **automatisch nachgeführt bei jedem neuen
Overview**. Das System soll dazulernen, was in Multi-Agent-Orchestrierung
aktuell als sinnvolle Strukturierung gilt (z. B. welche Kategorien bei
Multi-Thread-Status relevant sind: blockiert / wartet auf Review / läuft /
fertig), und sich entsprechend anpassen.

**Wertversprechen für einen konkreten Kunden:** Für einen Solo-Operator oder
ein kleines Team, das 5–20 parallele Agenten-Threads in bb (oder einem
ähnlichen Setup) führt, ersetzt das Tool das manuelle Durchlesen jedes
Thread-Status durch eine einzige, laufend aktuelle visuelle Übersicht.

## Monetization assumption

ASSUMPTION: Subscription €15–29/Monat pro Nutzer (Preisanker an
dediziertem Mindmap-Tooling wie GitMind/Storyflow, siehe Recherche unten),
self-serve, evtl. Team-Tier. Denkbar auch als Zusatzfeature/Add-on in einem
bestehenden Orchestrierungs-Tool statt als Stand-alone-SaaS (siehe
Kritiker-Bewertung).

## Solo fit

**Pro:** Enger Scope möglich (Weekly-Overview-Text mehrerer Threads → eine
strukturierte Ansicht), wiederkehrender Nutzungsanlass (bei jedem
Thread-Update), mit LLM-APIs + einfachem Visualisierungs-Frontend solo
baubar. Julian hat den Input (bb-Weekly-Overview) und die Zielgruppe
(Multi-Agent-Power-User) bereits vor Augen.

**Contra:** Abhängig von einer noch jungen, kleinen Zielgruppe (Nutzer mit
mehreren parallelen Agenten-Threads) — ist diese Gruppe heute schon groß
genug für Cold Outreach? Grenze zur generischen "Text-zu-Mindmap"-Kategorie
ist fließend, wenn die Multi-Agent-Spezifik nicht klar differenziert.

## Trigger / why now

- bb liefert den Weekly-Overview-Baustein bereits als Nebenprodukt der
  eigenen Nutzung.
- ASSUMPTION: Multi-Agent-/Multi-Thread-Orchestrierung (mehrere parallele
  Claude-Code-/Codex-Agenten, Worktrees) ist 2026 ein wachsendes, aber noch
  junges Nutzungsmuster — zu verifizieren.
- Requeue-spezifische Prämisse zu prüfen: Gibt es bereits ein Tool, das
  speziell für Multi-Agent-Orchestrierungs-Setups (nicht generische
  PM-Boards) eine laufend aktualisierte Status-Mindmap/-Board liefert?

## Open questions

- Ist "mehrere Agenten-Threads gleichzeitig orchestrieren" heute schon ein
  Nutzungsmuster mit genug Volumen für Cold Outreach, oder eine Nische von
  wenigen hundert Power-Usern (bb, Claude Code Subagents, LangGraph/CrewAI
  Multi-Agent-Setups, Devin-artige Tools)?
- Bedienen bb selbst oder vergleichbare Orchestrierungs-Tools (LangGraph
  Studio, CrewAI, AutoGen-Dashboards) diese Übersicht bereits nativ oder als
  Roadmap-Feature?
- Wer zahlt: der Multi-Agent-Power-User selbst (B2C/Solo) oder ein Team-Lead,
  der die Agenten-Threads mehrerer Mitarbeiter überwacht (B2B)?
- Tier B (laut BACKLOG.md) — Aufwand/Recherche entsprechend knapp, aber die
  Requeue-Prämisse (bb-Anbindung) verlangt eine gezielte Prüfung dieser
  spezifischen Nische statt der bereits widerlegten generischen Prämisse.
