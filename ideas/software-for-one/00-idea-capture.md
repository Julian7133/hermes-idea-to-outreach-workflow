---
slug: software-for-one
title: Software for One — Apps, die sich per Feature-Flag an den einzelnen Nutzer anpassen
status: active
created: 2026-08-19
stage: 0
---

# 00 — Idea Capture

## Raw idea
Eine App mit einem Chatfeld, über das ein Nutzer eine Änderung seiner
individuellen Erfahrung vorschlägt ("ich hätte gern X anders"). Der Vorschlag
wird gegen die Produktvision/Constraints geprüft (durch einen Agenten oder den
Betreiber), dem Nutzer zur Bestätigung vorgelegt, dann gebaut und **nur für
diesen einen Nutzer** per Feature-Flag ausgeliefert — die App bleibt für alle
anderen unverändert. Wertversprechen: Software, die sich real an genau eine
Person anpasst, statt dass die Person sich an die Software anpasst — ohne dass
jeder Nutzer eine eigene Codebasis bekommt.

## Monetization assumption
ASSUMPTION: Premium-/Power-User-Tier auf Basis einer bestehenden oder neu
gebauten SaaS-App, z. B. 19–39 €/Monat Aufpreis für "personalisiert nach deinen
Wünschen" gegenüber dem Standard-Tier, plus ggf. Einmalgebühr von 49–99 € pro
umgesetztem individuellem Feature-Wunsch (nutzungsabhängig, da jeder Wunsch
Build-Aufwand verursacht — auch wenn per LLM-Agent stark automatisiert). Kein
belastbarer Preispunkt aus Marktbeobachtung, reine Kalkulation aus Aufwand.

## Solo fit
Solo baubar als Aufsatz auf eine bestehende Codebasis (Feature-Flags,
Chat-Interface, Agent-Pipeline für Vorschlag→Prüfung→Build sind alles Muster,
die mit Claude-Code-artigen Agenten machbar sind). Schlechter Fit: jeder
individuelle Wunsch ist im Kern ein Custom-Software-Auftrag mit Prüf- und
Freigabeschritt — das skaliert nicht linear mit Nutzerzahl, sondern mit
Wunschzahl. Ohne harte Grenzen (welche Flags sind änderbar) wird der
Prüfaufwand pro Nutzer schnell zum Vollzeitjob.

## Trigger / why now
BACKLOG.md Tier C6 nennt explizit einen möglichen Store-Policy-Konflikt als zu
prüfenden Punkt, keinen automatischen Killgrund — das ist der Auftrag für
diese Devalidierung: prüfen, ob und wie ein Store-Konflikt umgehbar ist (Web-App
statt nativer App-Store-Distribution). Kein weiteres explizites Why-Now-Signal
in der Notiz; als Prämisse gilt nur, dass Julian diese Ausprägung von
Personalisierung für vielversprechend hält — keine Lückenbehauptung ("niemand
bietet das") wird hier unterstellt, das ist selbst zu prüfen (K1).

## Open questions
- Store-Policy: Verstößt Nutzer-individueller Code/Feature-Flag-Verhalten gegen
  Apple/Google Review-Richtlinien (dynamischer Code, Remote-Config-Missbrauch),
  und lässt sich das durch Web-App-Distribution umgehen?
- Wer prüft den Vorschlag gegen die Produktvision — ein Agent (skalierbar,
  aber Fehlerrisiko) oder Julian selbst (Qualität, aber Bottleneck)?
- Gibt es bereits Produkte/Patterns, die "Personalisierung per Feature-Flag
  auf Zuruf" anbieten (No-Code-Tools, interne Feature-Flag-Plattformen,
  AI-Website-Builder mit Custom-Requests)?
- Wie hoch ist der reale Prüf- und Build-Aufwand pro Wunsch, wenn ein Agent
  den Großteil übernimmt — realistisch genug Marge für 19–39 €/Monat?
