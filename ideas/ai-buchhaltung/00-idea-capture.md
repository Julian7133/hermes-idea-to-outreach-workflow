---
slug: ai-buchhaltung
title: AI-gestützte Buchhaltung für den DACH-Mittelstand
status: dropped           # active | dropped | shipped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein KI-gestützter Buchhaltungsservice für kleine bis mittlere Unternehmen im
DACH-Mittelstand: Kunde lädt Belege hoch oder verknüpft sein Geschäftskonto, ein
KI-Modell übernimmt OCR + automatische Kontierung der laufenden Geschäftsvorfälle,
ein Mensch prüft/gibt frei, und die fertig kontierten Daten werden per DATEV-Export
an den bestehenden Steuerberater des Kunden übergeben (kein eigener Jahresabschluss/
keine eigene Steuererklärung). Zielgruppe: Geschäftsführer:innen kleiner GmbHs/UGs,
die ihre laufende Buchführung heute manuell, per reiner Software (ohne Service) oder
über einen überlasteten Steuerberater erledigen.

## Monetization assumption
€500 einmaliges Setup (Onboarding, Kontenrahmen-Übernahme, Bank-/DATEV-Schnittstelle,
Migration bestehender Daten) + €200/Monat Flatrate für laufende Belegverarbeitung und
Kontierung. ASSUMPTION: Flatrate deckt bis ca. 100–150 Belege/Monat, darüber
Staffelpreis. Monatliche, wiederkehrende Abrechnung, kein Vertragsminimum genannt.

## Solo fit
Auf den ersten Blick attraktiv: kleiner, klar abgegrenzter Leistungsumfang, wieder-
kehrender Umsatz, monatliche Kundenberührung. Vorbehalt (siehe Open questions):
laufende Buchhaltung ist in Deutschland ein regulierter Bereich (§6 StBerG) — nicht
jede Tätigkeit darf ohne einschlägige Qualifikation oder Kooperation mit einem
Steuerberater angeboten werden. Zusätzlich ist Belegprüfung/-freigabe pro Kunde ein
wiederkehrender manueller Aufwand, der die reine "Software"-Skalierbarkeit einschränkt.

## Trigger / why now
KI-OCR- und LLM-gestützte Kontierung ist inzwischen technisch reif und günstig
verfügbar (Grundlage vieler bestehender AI-Buchhaltungstools). Gleichzeitig verschärft
sich der Fachkräftemangel bei Steuerberatern/Buchhaltern in Deutschland spürbar, was
Mittelständler zunehmend nach Alternativen zur klassischen Steuerkanzlei suchen lässt.
Tier A: klares Preismodell, Referenzartikel vorhanden (extern zitiert, nicht Teil
dieses Repos).

## Open questions
- Ist der/die Gründer:in selbst nach §6 Nr. 4 StBerG qualifiziert (kaufmännische
  Ausbildung + 3 Jahre einschlägige Praxis, ≥16 Std./Woche), oder wird eine
  Kooperation mit einer/einem Steuerberater:in benötigt, um den Service legal
  anzubieten?
- Wie viel manuelle Prüf-/Freigabezeit bleibt pro Kunde trotz KI-Kontierung
  realistisch übrig — reicht das für solo-Delivery bei >10 zahlenden Kunden?
- Wie unterscheidet sich das Angebot greifbar von bestehenden Vollservice-
  Buchhaltungsanbietern im selben Preisband (siehe 01)?
