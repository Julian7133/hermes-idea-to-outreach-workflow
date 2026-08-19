---
slug: smartwatch-agent-input
title: Smartwatch-Eingabe für Hintergrund-Agenten (openclaw)
status: dropped
created: 2026-08-19
stage: 1
---

# 00 — Idea Capture

## Raw idea
Eine Smartwatch-App/-Companion, mit der man einem im Hintergrund laufenden
Agenten (openclaw) Eingaben gibt, ohne zum Rechner oder Handy zu greifen —
kurze Sprachnotizen, Tap-Bestätigungen ("Ja/Nein/Später"), oder vordefinierte
Kurzbefehle, die der Agent dann ausführt oder in eine Aufgabenwarteschlange
einreiht. Zielgruppe: Personen, die bereits einen persönlichen KI-Agenten
(openclaw, Claude Code, o.ä.) im Dauerbetrieb haben und unterwegs oder am
Rechner beschäftigt kurz eingreifen wollen, ohne den Kontext zu wechseln.

## Monetization assumption
ASSUMPTION: Einmalzahlung oder kleines Abo für die Companion-App/den
Smartwatch-Companion-Service, z. B. 9–15 €/Monat oder 79 € Einmalkauf
(Analogie zu bestehenden Watch-Utility-Apps). Kein belastbarer Preispunkt aus
Julians Notiz ableitbar — reine Schätzung, im Bericht als ASSUMPTION markiert
und in der Recherche zu prüfen.

## Solo fit
Kleiner Funktionsumfang (Watch-App + ein Kommunikationskanal zum Agenten),
Zielgruppe eng (Power-User von openclaw/Agent-Setups — eine sehr kleine,
technisch versierte Nische). Julian hat direkten Zugriff auf die
Referenzimplementierung (openclaw) und Erfahrung mit Agent-Orchestrierung.
Schwacher Punkt: Watch-OS-/Wear-OS-Entwicklung ist nicht Teil des bisher
demonstrierten Stacks (Python/TS, Agent-Tooling) — zusätzliche Lernkurve für
eine solo Umsetzung.

## Trigger / why now
Aus Julians eigener Ideenliste (BACKLOG.md Tier C4: „Smartwatch-basierte
Eingabe, openclaw im Hintergrund"). Kein explizites Marktsignal in der Notiz
genannt — wird in Part 0 der Recherche geprüft (Wearable-Interesse an
KI-Agenten, bestehende Produkte in dieser Nische).

## Open questions
- Wie viele Menschen betreiben überhaupt einen dauerhaft laufenden
  persönlichen Agenten (openclaw-Klasse), der eine Watch-Eingabe rechtfertigt?
- Reicht eine bestehende Notification-/Shortcut-App (Apple Watch Shortcuts,
  Wear OS Tiles) bereits aus, ohne dass es ein eigenes Produkt braucht?
- Ist der Käufer identisch mit dem Nutzer, oder ist das ein Feature, das in
  ein bestehendes Produkt (z. B. openclaw selbst) gehört statt ein eigenes zu
  rechtfertigen?
