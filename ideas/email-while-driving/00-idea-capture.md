---
slug: email-while-driving
title: E-Mails komfortabel während der Autofahrt beantworten
status: active
created: 2026-08-19
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein sprachgesteuerter Assistent, der eingehende E-Mails während der Autofahrt
vorliest, priorisiert und per Diktat beantwortet — freihändig, ohne aufs
Display zu schauen. Zielgruppe: vielfahrende Berufstätige (Außendienst,
Handwerksmeister mit Kundenverkehr, Berater, Führungskräfte mit Pendelstrecke),
die E-Mail-Rückstand als Zeitdruck erleben, aber die Fahrzeit sonst ungenutzt
lässt. Der Wertversprechen-Kern: die tote Fahrzeit wird zu produktiver
Antwortzeit, ohne dass der Nutzer das Auto anhält oder abends nacharbeitet.

## Monetization assumption
ASSUMPTION: Abo-Modell, €9–15/Monat pro Nutzer (B2C/Prosumer-Preispunkt,
vergleichbar mit Voice-Produktivitäts-Apps), oder €25–40/Monat im B2B-Bundle
für kleine Außendienstteams (5–15 Personen) über einen Flottenmanager/Vertriebsleiter
als Käufer statt Einzelnutzer. Nutzung ist täglich (jede Autofahrt mit
E-Mail-Rückstand), damit ist Abo statt Einmalkauf plausibel.

## Solo fit
Kleiner, klar abgegrenzter Funktionsumfang (Sprache → E-Mail-Triage →
Diktat-Antwort), technisch als dünne Schicht auf bestehenden STT/TTS- und
LLM-APIs plus E-Mail-Providern (Gmail/Outlook API) baubar — kein eigenes
Spracherkennungsmodell nötig. Enges ICP (Vielfahrer mit E-Mail-Pflicht).
Schlechte Passform: iOS/Android-App-Store-Vertrieb und CarPlay/Android-Auto-
Zertifizierung sind Plattformabhängigkeiten, die ein Solo-Entwickler nicht
kontrolliert; Datenschutz (E-Mail-Zugriff, Verarbeitung während der Fahrt)
erhöht die Haftungs- und Vertrauensschwelle gegenüber einem Einzelanbieter.

## Trigger / why now
Julians Notiz nennt kein explizites Marktlücken-Argument (kein "es gibt noch
kein Tool dafür"), sondern beschreibt einen Nutzungsmoment. ASSUMPTION: Auslöser
ist die Beobachtung, dass Sprachassistenten (Siri, Google Assistant, Whisper-
basierte Apps) inzwischen gut genug sind, um E-Mail-Text zuverlässig zu
diktieren und vorzulesen — das war vor 2–3 Jahren noch fehleranfällig. Zu
verifizieren in der Recherche.

## Open questions
- Gibt es bereits etablierte Wettbewerber (Autoglass/CarPlay-Mailclients,
  Siri/Google-Assistant-native E-Mail-Diktat, Voice-Produktivitäts-Apps) und zu
  welchem Preis?
- Ist "während der Fahrt E-Mails beantworten" überhaupt rechtlich/regulatorisch
  unproblematisch (Ablenkung am Steuer, §23 StVO Handyverbot — Freisprechnutzung
  vs. Bildschirmnutzung)?
- Wie zuverlässig ist Diktat-zu-strukturierter-E-Mail-Text in der Praxis (Ton,
  Fehlerquote, Nachbearbeitungsaufwand)?
- Ist der Käufer der Einzelfahrer (B2C) oder ein Team-/Flottenverantwortlicher
  (B2B) — das entscheidet Cold-Outreach-Tauglichkeit.
