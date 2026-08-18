---
slug: project-status-mindmap
title: Project Status Mindmap — KI-strukturierter Weekly-Overview zu Mindmap/Board
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein Tool, das aus einem bereits existierenden **Weekly Overview** (Textzusammenfassung
des Projektstands, wie sie z. B. Standup-Notes, Status-Updates oder ein Wochenreport
liefern — in `bb` bereits als Feature implementiert) automatisch eine **KI-strukturierte
Mindmap oder ein Trello-artiges Board** erzeugt: Themen, offene Punkte, Risiken und
Next Steps werden aus Freitext extrahiert und visuell gruppiert. Das System lernt
laufend dazu, was aktuell als Projektmanagement-Best-Practice gilt (z. B. wie man
Status-Updates strukturiert, welche Kategorien üblich sind), und passt die
Strukturierung entsprechend an. Zielgruppe: kleine Teams/Solo-Freelancer, die Status-
Updates schreiben, aber keine Zeit haben, sie manuell in ein Board zu überführen.

## Monetization assumption

Subscription **€15–25/Monat pro Nutzer** (ASSUMPTION: Preisanker an bestehenden
Mindmap-/leichte PM-Tools wie Miro, Whimsical, Tability), self-serve Signup, ggf.
Team-Tier mit mehreren Sitzen. Alternative: einmaliger Kauf/Lifetime-Deal für
Solo-Nutzer (~€99). Kein Retainer/Projektmodell — Werkzeug, kein Service.

## Solo fit

**Pro:** Enger Scope möglich (Weekly-Text → strukturierte Ansicht), wiederkehrender
Nutzungsanlass (wöchentlich), technisch mit LLM-APIs + einfachem
Visualisierungs-Frontend solo baubar.

**Contra:** Abhängig vom Vorhandensein eines "Weekly Overview" als Input — die
Zielgruppe muss diese Gewohnheit bereits haben oder neu erlernen; das
Kernversprechen ("Text → Mindmap") ist ein Feature, kein eigenständiges Produkt,
und wird von etablierten PM-Tools (Notion AI, ClickUp, Miro AI) als Zusatzfunktion
mitgeliefert — Differenzierung unklar. Kategorie ist bereits stark besetzt.

## Trigger / why now

- Der Weekly-Overview-Baustein existiert in `bb` bereits als Nebenprodukt der
  täglichen Nutzung — die Idee ist ein spekulativer Re-Use dieses Outputs als
  eigenständiges Produkt für Dritte.
- ASSUMPTION: KI-gestützte Auto-Strukturierung (Text-zu-Mindmap/Board) ist durch
  günstigere LLM-APIs technisch leichter geworden als noch vor 1–2 Jahren.
- Kein extern beobachtetes Nachfragesignal — reine Gründerhypothese basierend auf
  eigenem Tool-Nebenprodukt.

## Open questions

- Ist "Weekly Overview → Mindmap" ein eigenständiges Kaufmotiv oder nur ein
  Feature, das Nutzer in ihrem bestehenden PM-Tool erwarten?
- Wer schreibt heute überhaupt strukturierte Weekly Overviews außerhalb von bb —
  gibt es genug potenzielle Käufer mit diesem Workflow?
- Was genau bedeutet "lernt laufend, was aktuelle Best Practice ist" operational —
  woher kommt das Trainings-/Referenzsignal, und ist das technisch/rechtlich
  sauber umsetzbar?
- Tier B (laut Vorgabe) — was unterscheidet dies von Tier-A-Ideen im Portfolio,
  und rechtfertigt das einen niedrigeren Recherche-/Beweisaufwand?
