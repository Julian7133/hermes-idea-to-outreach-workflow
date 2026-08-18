---
slug: ai-cost-optimizer
title: AI Cost Optimizer — Workflow-Kostenoptimierung als Service
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein Service (eher als Produkt) für Teams, die bereits produktive LLM-Workflows
betreiben (Prompt-Chains, Agenten, RAG-Pipelines) und dabei mehr für Inference
bezahlen als nötig. Der Kunde lädt seinen Ablauf hoch (Prompts, Modellwahl,
Traffic-Profil, ggf. bestehende Evals); der Service ermittelt drei alternative
Konfigurationen (z. B. günstigeres Modell, Caching/Batching, Routing zwischen
Modellen je nach Query-Komplexität) und testet sie gegen die vorhandenen Evals
des Kunden, um Kostenersparnis bei gleichbleibender Qualität nachzuweisen.
Zielgruppe: technische Teams (2–50 Personen) mit spürbaren monatlichen LLM-API-
Kosten, die eine Zweitmeinung zur Kostenstruktur wollen, ohne selbst Zeit in
Eval-Aufbau und Modellvergleich zu stecken.

## Monetization assumption

Einmaliges Audit/Projekt: **€2.000–4.000** pro Engagement (1–2 Wochen,
Analyse + 3 getestete Varianten + Umsetzungsempfehlung), optional monatliches
Monitoring-Retainer **€300–600/Monat** danach (ASSUMPTION: Nachfrage nach
laufendem Monitoring unbestätigt — im Rahmen dieses Devalidation-Passes nicht
verifizierbar). Kein Self-Serve-SaaS in v1; das Produkt ist im Kern eine
Dienstleistung mit Tooling-Unterbau, kein Abo-Produkt mit breiter Zielgruppe.

## Solo fit

**Pro:** Hochpreisiges Projektgeschäft statt Volumen — passt zu Solo-Kapazität
(wenige Kunden, hoher Wert pro Engagement). Technisch nah an vorhandenem
LLM-Ops-Wissen; kein Vertriebsapparat nötig, da B2B-Direktverkauf an technische
Entscheider. Deliverable ist klar abgrenzbar (Vorher/Nachher-Kostenvergleich +
Eval-Score).

**Contra:** Beratungslastig — jedes Engagement braucht Zugriff auf Kundendaten
(Prompts, Logs, ggf. proprietäre Evals), was Vertrauen und Sales-Zyklus
verlängert. Skaliert schlecht ohne Produktisierung (jeder Kunde hat andere
Stacks: LangChain, eigene Orchestrierung, verschiedene Modellanbieter).
Erfordert, dass der Kunde überhaupt Evals hat — viele produktive Teams haben
keine belastbaren Evals, was die Ausgangsbasis des Pitches untergräbt.

## Trigger / why now

- LLM-API-Preise sind 2025/2026 stark gefallen (Modellwettbewerb, neue
  günstigere Modell-Generationen), gleichzeitig steigen viele Teams von
  Prototyp auf Produktions-Traffic — Kostenvolumen wird erstmals spürbar.
  ASSUMPTION: konkretes Ausmaß nicht verifiziert, siehe Recherche unten.
- Gründer-Hypothese: Teams optimieren selten aktiv Modellwahl/Routing, weil es
  Eval-Aufwand erfordert, den niemand nebenbei leistet.

## Open questions

- Gibt es bereits Tools/Plattformen (z. B. LLM-Gateways mit eingebautem
  Kosten-Routing), die dieses Problem automatisiert lösen, statt als Service?
- Wie viele Zielkunden haben überhaupt produktionsreife Evals, die man als
  Testgrundlage nutzen kann — ist das die Minderheit?
- Ist der Wedge „Kostenoptimierung" groß genug für ein eigenständiges Angebot,
  oder ist es ein Feature, das Beobachtungs-/Eval-Plattformen ohnehin schon
  mitliefern?
