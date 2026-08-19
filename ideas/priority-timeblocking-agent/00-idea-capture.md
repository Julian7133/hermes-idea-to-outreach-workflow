---
slug: priority-timeblocking-agent
title: Priority Timeblocking Agent
status: active
created: 2026-08-19
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein Agent, der aus den eigenen Prioritäten eines Nutzers automatisch einen
Tagesplan mit Zeitblöcken baut — statt eine leere To-do-Liste zu erwarten,
priorisiert der Agent selbst und blockt Kalenderzeit dafür. Das
Kaltstart-Problem ("was sind meine Prioritäten überhaupt") wird nicht über ein
manuell gepflegtes `soul.md`/Prioritäten-Dokument gelöst, sondern niedrigschwellig:
LinkedIn-Profil (Rolle, Branche, aktuelle Projekte) plus ein kurzer
Onboarding-Dialog liefern dem Agenten 2–3 Prioritätsvorschläge, die der Nutzer
bestätigt oder korrigiert — danach übernimmt Time-Blocking gegen den
bestehenden Kalender.

## Monetization assumption
ASSUMPTION: Subscription, €12–19/Monat pro Nutzer (Solo-Professional-Tier,
angelehnt an Reclaim.ai Starter/Motion-Preisniveau), Kalender-Integration
(Google/Outlook) vorausgesetzt. Alternative: B2B-Team-Tier €8–12/Nutzer/Monat
für kleine Teams (5–20 Personen), verkauft an Team-/Office-Lead statt an
Einzelperson — noch nicht verifiziert, welches Modell trägt.

## Solo fit
Kernfunktion (Prioritäten ableiten + Kalenderblöcke setzen) ist mit
Kalender-API + LLM-Agent solo baubar, kein Team nötig. Enger Scope möglich
(ein Kalenderanbieter zuerst, ein Nutzerprofil-Typ zuerst). Risiko für Solo-Fit:
Kategorie (AI-Scheduling/Timeblocking) hat bereits finanzierte Player
(Reclaim.ai, Motion, Akiflow) — Differenzierung muss eng sein, sonst
Ressourcen-Nachteil gegen VC-finanzierte Konkurrenz.

## Trigger / why now
Julians eigene Notiz (Tier C3, BACKLOG.md): eigener Bedarf an Priorisierung +
Time-Blocking, mit der Beobachtung, dass das Kaltstart-Problem ("was sind
meine Prioritäten") der eigentliche Reibungspunkt ist, nicht das Blocken
selbst. Kein extern belegtes Marktsignal in der Notiz — wird in Part 0 der
Devalidierung geprüft.

## Open questions
- Ist LinkedIn-Profil + Kurzdialog tatsächlich eine belastbare
  Prioritäten-Quelle, oder nur ein Rollenraster (Branche/Titel), das keine
  echten individuellen Prioritäten trifft?
- Reicht Zeitersparnis/Fokus-Nutzen, um gegen etablierte AI-Scheduler mit
  Netzwerkeffekt (Team-Kalender-Sync) zu bestehen?
- Wer ist über Cold Outreach überhaupt kalt anschreibbar — Solo-Professional
  oder eher Team-/Office-Lead?
