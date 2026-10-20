---
slug: one-day-challenge-skills
title: 1-Tages-Challenge-Skills (Prototyp → Production → Workshop)
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein produktisiertes Ein-Tages-Angebot für KMU/Solo-Teams, die eine konkrete
Automatisierungs- oder AI-Skill-Idee (z. B. "Rechnungsprüfung mit LLM",
"Support-Ticket-Triage-Agent") schnell greifbar machen wollen. In einem
Tages-Sprint baut der Anbieter live einen funktionierenden Prototyp
(Claude/GPT-Agent oder Skill) auf Basis eines konkreten Kundenworkflows. Der
Kunde bucht dann optional den Ausbau zu Production-Qualität (inkl. Evals und
Modellwahl-Begründung) und optional einen Schulungsworkshop, damit das Team den
Skill selbst weiterpflegen kann.

## Monetization assumption
Dreistufiges Projekt-Pricing, pro Buchung (kein Abo):
- **Tier 1 — Prototyp:** 50 € für einen Ein-Tages-Prototyp-Sprint (Proof of
  concept, ein Workflow, kein Production-Deploy).
- **Tier 2 — Production:** 500 € für Production-Reife desselben Skills
  inkl. Evals (Testfälle, Fehlerraten-Messung) und begründeter Modellwahl
  (welches LLM/welche Konfiguration und warum).
- **Tier 3 — Production + Workshop:** 2.000 € für Tier 2 plus einen
  Schulungsworkshop für das Kundenteam (Wartung, Prompt-Iteration, Monitoring).
ASSUMPTION: Tier 1 ist ein Lead-Magnet/Türöffner mit niedriger Marge; die
Zahlungsbereitschaft konzentriert sich auf Tier 2/3. Ohne Conversion von
Tier 1 → Tier 2/3 trägt sich das Geschäft nicht (50 € deckt kaum einen
Arbeitstag).

## Solo fit
Eng umrissener Lieferumfang pro Engagement (ein Workflow, ein Tag), passt zu
einer Person mit AI-Engineering-Hintergrund. Kein Dauerbetrieb/Support
notwendig bei Tier 1/2 (Projekt, kein SaaS). Schwachpunkt: Auslastung ist
linear zur eigenen Zeit (kein Skalierungshebel ohne Produktisierung/Team);
Tier 3 (Workshop) bindet zusätzlich Zeit für Vorbereitung und Session.

## Trigger / why now
ASSUMPTION: Der Nutzer geht davon aus, dass "AI Skills"/Agenten-Bausteine
(Claude Skills, GPT Actions, n8n-Agentenflows) 2026 in aller Munde sind und
viele KMU eine konkrete Idee haben, aber keinen Weg, sie schnell und günstig
zu testen, bevor sie in ein größeres Projekt investieren. Kein bereits
recherchiertes Signal in der Rohidee — muss in Part 0 verifiziert werden
(existiert eine Preislücke zwischen kostenlosem Ausprobieren und
Vollprojekt-Consulting?).

## Open questions
- Wer genau ist der Käufer: Solo-Founder, KMU-Geschäftsführung oder
  Team-Lead/IT-Verantwortliche:r? ("KMU" ist noch zu breit für Reachability.)
- Gibt es bereits produktisierte "AI-Sprint"/"Prototyp-in-einem-Tag"-Angebote
  am Markt, und zu welchem Preis?
- Ist 50 € für einen Ein-Tages-Sprint überhaupt kostendeckend, oder ist es
  bewusst als verlustführender Funnel-Einstieg gedacht?
- Wie wird der Prototyp technisch abgegrenzt (Sandbox/Demo vs. echte
  Kundendaten) — Haftungs-/Datenschutzfragen bei Tier 1 ungeklärt.
