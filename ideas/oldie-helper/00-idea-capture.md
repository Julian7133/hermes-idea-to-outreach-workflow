---
slug: oldie-helper
title: Oldie-Helper — stark eingeschränkter Assistenz-Agent für Senioren
status: active
created: 2026-08-19
stage: 1
---

# 00 — Idea Capture

## Raw idea
Ein auf openclaw-Basis gebauter Computer-Use-/Assistenz-Agent, der auf ein
festes, sehr kleines Set an Funktionen beschränkt ist — genau die, die ältere
Menschen im Alltag tatsächlich brauchen (Videoanruf mit Angehörigen starten,
an Medikamente/Termine erinnern, Behörden-/Versicherungsbriefe vorlesen und
einfach erklären, vor Enkeltrick-/Callcenter-Betrug warnen, im Notfall eine
hinterlegte Kontaktperson anrufen). Bewusst **kein** offenes Interface wie bei
openclaw selbst — jede Aktion läuft über ein festes, geprüftes Funktionsset,
damit ein 78-Jähriger nichts falsch bedienen und der Agent nichts Unvorhersehbares
tun kann. Zielgruppe: Senioren, die (noch) alleine leben, aber bei digitalen
Behördenwegen und Betrugserkennung überfordert sind — gekauft und eingerichtet
von den erwachsenen Kindern oder von einem Pflegedienst/einer Senioreneinrichtung.

## Monetization assumption
Zwei Kanäle, ein Produkt:
- **B2C2C:** Erwachsenes Kind least/abonniert für Elternteil, €14,90/Monat pro
  Senioren-Haushalt (Tablet/Gerät + Software), jährlich kündbar. ASSUMPTION:
  Zahlungsbereitschaft der Kinder liegt über der der Senioren selbst, da sie das
  eigene Sorgenlevel reduzieren, nicht nur ein Feature kaufen.
- **B2B2C:** Direktvertrieb an Pflegedienste/Betreutes-Wohnen-Träger, die es als
  Zusatzleistung an Bewohner/Klienten weitergeben, ASSUMPTION €8–12/Bett/Monat
  im Volumen ab 20 Einheiten.

## Solo fit
Software-Teil (Agent-Orchestrierung, eingeschränktes Funktionsset, Prompting)
liegt genau in Julians Kernkompetenz und ist solo baubar. Schwachpunkt: Hardware
(Tablet-Auslieferung, Ersteinrichtung beim Senioren zuhause, Vor-Ort-Support bei
Problemen) ist **kein** klassisches Solo-Software-Geschäft — das treibt Aufwand
und Fixkosten, die eine Ein-Personen-Firma strukturell schlecht trägt, wenn es
über Pilotkunden hinausgeht. Denkbarer Ausweg: reine Software auf vorhandener
Hardware (bestehendes Tablet der Familie) statt eigenem Gerät — reduziert Aufwand,
aber auch Kontrolle über die Nutzererfahrung.

## Trigger / why now
- Demografie: Deutschland altert sichtbar, der Anteil alleinlebender Senioren
  wächst; Pflegekräftemangel verschärft sich.
- LLM-Agenten sind inzwischen zuverlässig genug für eng geführte,
  aufgabenspezifische Interaktionen (nicht für offenes Chatten) — das war vor
  1–2 Jahren technisch noch nicht robust genug für eine sicherheitskritische
  Zielgruppe.
- ASSUMPTION: Betrugsfälle gegen Senioren (Enkeltrick, Fake-Callcenter) nehmen
  zu und sind medial präsent — noch nicht mit Zahlen verifiziert.

## Open questions
- Trägt ein Kind wirklich den Kauf/die Einrichtung für die Eltern, oder bleibt
  es bei guten Absichten ohne Kaufabschluss (bekanntes Problem bei
  Senioren-Tech)?
- Wie hoch ist der reale Vor-Ort-Support-Aufwand pro Kunde, und lässt er sich
  solo überhaupt skalieren?
- Ist "openclaw"-Basis (Computer-Use-Agent) für diese Zielgruppe technisch
  sinnvoll, oder overengineered gegenüber einer simplen App mit Sprachsteuerung?
- Gibt es bereits Senioren-Assistenzsysteme, die genau dieses eingeschränkte
  Funktionsset abdecken?
