---
slug: secure-openclaw-watchdog
title: Secure OpenClaw Watchdog — unabhängiger Kill-Switch-Agent für Agenten-Betrieb
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein zweiter, unabhängiger OpenClaw-Agent, der selbst **keinen Input vom
überwachten Hauptagenten annimmt** (getrennter Vertrauensraum). Er beobachtet
laufend Aktivitätsmuster des Hauptagenten — u. a. via Fourier-Transformation
der Aktivität über die Zeit, um periodische/anomale Verhaltenssignaturen zu
erkennen (z. B. ungewöhnliche Burst-Muster bei Tool-Calls oder Netzwerk-I/O) —
sowie explizit dessen Input-Quellen (welche Tools/MCP-Server/APIs liefern
Daten hinein) und Output-Ziele (wohin sendet der Agent Daten/Requests). Im
Zweifel greift der Watchdog autonom ein: Firewall-Regel setzen (Netzwerksegment
isolieren) oder harten Kill-Switch (Prozess/Container stoppen, "Stecker
ziehen"). Zielgruppe: Teams/Firmen, die autonome Coding- oder Ops-Agenten
(Claude Code, OpenClaw-artige Frameworks, Custom-Agents) produktiv laufen
lassen und eine unabhängige Sicherheitsinstanz brauchen, die nicht vom selben
Modell/Kontext kompromittierbar ist wie der überwachte Agent.

## Monetization assumption
Vermutetes Modell: Self-hosted/On-Prem-Lizenz oder Managed-Watchdog-Service pro
überwachtem Agenten-Host. ASSUMPTION: Preispunkt **€150–400/Monat pro
überwachtem Agenten-Host** (Security-Tooling-Preisniveau, nicht Consumer-SaaS),
alternativ Onboarding-Projekt (€3–5k) für Threat-Modeling + Setup pro Kunde,
gefolgt von einer Monats-Subscription für laufendes Monitoring. Käufer:
Security-/Platform-Engineering-Lead in Firmen mit produktivem Agenten-Einsatz,
zahlt monatlich/jährlich, ASSUMPTION da noch kein Preis öffentlich verglichen.

## Solo fit
**Pro:** Sehr enger, technischer Scope (ein Watchdog-Agent, ein Erkennungsmodell,
zwei Aktionen: Firewall/Kill) — als MVP solo baubar mit bestehenden
Observability-/eBPF-Bausteinen. Zielgruppe ist technisch versiert und über
Security-/AI-Infra-Communities erreichbar (LinkedIn, Slack-Communities, HN).
Wiederkehrender Bedarf, da Monitoring dauerhaft läuft (nicht einmalig).

**Contra:** Security-Produkte erfordern hohes Vertrauen (Referenzen, Audits,
SOC2 o.ä.) — für einen Solo-Gründer ohne Trackrecord ein hoher
Vertrauens-Einstiegsbalken. False-Positives (Kill-Switch feuert bei legitimer
Aktivität) sind ein Produkt-Killer-Risiko und erfordern viel Tuning pro Kunde.
Kategorie "Agentic AI Security" ist noch sehr jung — Nachfrage evtl. noch nicht
budgetiert.

## Trigger / why now
Produktives Deployment autonomer Coding-/Ops-Agenten (Claude Code, Cursor
Background Agents, Devin-artige Systeme, interne Agent-Frameworks) wächst 2025/26
stark; parallel häufen sich Berichte über Prompt-Injection- und
Tool-Missbrauchsfälle bei Agenten mit Netzwerk-/Dateisystemzugriff. Die
Kernannahme ist, dass Firmen, die Agenten produktiv laufen lassen, aktuell
**keine unabhängige, aus demselben Kontext nicht kompromittierbare
Überwachungsinstanz** einsetzen, sondern sich auf Logging oder
Guardrails *innerhalb* desselben Modells/Frameworks verlassen.

## Open questions
- Existiert bereits ein Marktsegment "AI Agent Runtime Security" mit
  benannten, bepreisten Produkten (nicht nur Guardrail-/Prompt-Firewall-Tools)?
- Ist die Fourier-Transformation der Aktivität ein echtes Differenzierungsmerkmal
  oder eine Nice-to-have-Ergänzung zu Standard-Anomalie-Erkennung (die
  Wettbewerber ggf. schon bieten)?
- Wie hoch ist die reale False-Positive-Rate eines solchen Ansatzes — gibt es
  Referenzimplementierungen oder Paper dazu?
- Wer genau trifft die Kaufentscheidung (Security-Team vs. Platform-Team vs.
  Engineering-Leitung) und welches Budget existiert dafür schon?
</content>
