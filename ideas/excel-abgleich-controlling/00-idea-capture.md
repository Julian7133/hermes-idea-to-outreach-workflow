---
slug: excel-abgleich-controlling
title: Lokaler Assistent für wiederkehrende Excel-Abgleiche
status: active
created: 2026-10-17
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein lokal betreibbarer Automationsassistent gleicht wiederkehrende Excel-Dateien ab, markiert Abweichungen und erstellt ein prüfbares Ausnahmeprotokoll für Sales Controlling und ähnliche Backoffice-Prozesse. Regeln und Ergebnisse bleiben für Fachanwender nachvollziehbar; sensible Rohdaten müssen nicht an einen externen KI-Dienst übertragen werden.

## Monetization assumption
ASSUMPTION: Ein abgegrenzter 2-Tage-MVP mit Beispieldateien, Abgleichsregeln, lokalem Lauf und Übergabe kostet 1.600–2.500 € einmalig; weitere Dateien/Regeln werden als Folgepaket für 1.000–3.000 € oder mit kleinem Wartungsbudget ergänzt. Die Spanne orientiert sich am im Kontext für WWK genannten 1.600 € bis 16.000 € Angebot, nicht an einer bestätigten Bestellung.

## Solo fit
Ein einzelner Dateiabgleich ist als Festpreisprojekt gut eingrenzbar und mit Python/Excel-Automation lieferbar. Wiederholbarkeit ist hoch, sofern Datenmodelle nicht stark variieren. Lokale Installation, Berechtigungen und revisionssichere fachliche Abnahme erhöhen den Aufwand; generative KI ist für exakte Zahlenvergleiche nicht der Kern.

## Trigger / why now
WWK Lebensversicherung: Sales Controlling gleicht laut Kontext manuell zwei Excel-Dateien ab, Aufwand ca. 1,5 Personentage pro Monat, fehleranfällig; Datenschutz verlangt lokale KI. Im Kontext wurden 1.600 € (2-Tage-MVP) bis 16.000 € als Angebotsspanne genannt. Dies ist ein konkreter Problem-/Budgethinweis, aber keine Zusage oder Bestätigung eines Auftrags. Beleg: bereitgestellter Gesprächskontext, Stand 2026-10-17.

## Open questions
- Sind Spalten/Schlüssel stabil, und wie werden Ausnahmen fachlich entschieden?
- Kann die WWK einen anonymisierten Beispieldatensatz und eine lokale Laufzeitumgebung bereitstellen?
- Welche Protokollierung und Freigabe erwartet Revision/Datenschutz?
