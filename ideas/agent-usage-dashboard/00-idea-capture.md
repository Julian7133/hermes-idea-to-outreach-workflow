---
slug: agent-usage-dashboard
title: Agent Usage Dashboard — Self-reporting KI-Agenten (Zeit, Tokens, Context)
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein Dashboard, in das sich KI-Coding-Agenten selbst eintragen: Laufzeit,
Token-Usage, Context-Window-Auslastung — für mehrere Tools (openclaw,
Claude Code, ggf. Cursor/opencode) in **einer** gemeinsamen Ansicht statt in
den getrennten, tool-eigenen Usage-Anzeigen. Zielgruppe: Entwickler/Teams,
die mehrere Agenten/Tools parallel laufen lassen und den Überblick über
Verbrauch/Kosten/Limits verlieren.

## Monetization assumption

Subscription **€9–15/Monat** pro Nutzer (ASSUMPTION: Preisanker analog
Menübar-/Devtools-Utilities wie Bartender, CleanMyMac Mini-Tools), self-serve
Signup, evtl. Team-Tier später. Kein Enterprise-Preismodell in v1 — Zielgruppe
ist Solo-Devs/kleine Teams, kein Konzern-Procurement. Zahlpunkt ist bewusst
niedrig angesetzt, weil es sich gegen kostenlose, tool-eigene Anzeigen
behaupten muss (Differenzierung ist "eine Ansicht für alle Tools", nicht
"überhaupt eine Anzeige").

## Solo fit

**Pro:** Julian hat mit `osx-menulet-subscription-usage` (dev/osx-menulet-subscription-usage)
bereits laufenden Code für exakt dieses Problem — native Swift/SwiftUI
Menulet, das Claude Code (OAuth-Token aus Keychain), Cursor (Session-Cookie)
und opencode Go (manuelle Eingabe, da keine öffentliche API) ausliest und in
einem einheitlichen `UsageSnapshot`-Modell normalisiert (Provider-Protokoll,
siehe `PLAN.md`). Das ist ein echter unfairer Vorteil: kein Kaltstart, die
schwierigste technische Frage (Credential-Resolution pro Provider, Rate-Limit-
Handling bei Claude) ist bereits gelöst. Narrow scope (Menu-Bar-Widget +
optional Web-Dashboard), solo buildbar, wiederkehrende Nutzung (täglich offen).

**Contra:** Abhängigkeit von inoffiziellen/undokumentierten Endpoints (Cursor-
Cookie, opencode ohne öffentliche API) — Breaking-Change-Risiko pro Provider-
Update, das der Solo-Gründer allein tragen muss. "openclaw" als explizit
genannter Provider ist im bestehenden Code nicht vorhanden und müsste neu
recherchiert/gebaut werden.

## Trigger / why now

- Julian nutzt selbst mehrere Agenten parallel (Claude Code, Cursor, opencode,
  bb) und hat den Schmerz am eigenen Leib erfahren — daher der bereits
  gebaute Menulet-Prototyp.
- Wachsende Verbreitung von KI-Coding-Agenten mit nutzungsbasierten/limitierten
  Plänen (Claude Code Session-/Wochenlimits, Cursor-Quotas, opencode-Dollar-
  Budget) macht Verbrauchs-Tracking zu einem echten, wiederkehrenden Problem.
- ASSUMPTION: "openclaw" ist ein weiteres Agenten-Tool, dessen Nutzungsmodell
  noch nicht recherchiert wurde — offene Frage für Stage 1.

## Open questions

- Was ist "openclaw" genau (Produktname, Anbieter, API-Verfügbarkeit für
  Usage-Daten)? Muss in der Live-Recherche geklärt werden.
- Gibt es bereits dedizierte Multi-Tool-Usage-Dashboards am Markt (nicht nur
  Single-Tool-Anzeigen)?
- Reicht "eine Ansicht für mehrere Tools" als Kaufgrund, wenn jedes Tool
  bereits eine kostenlose eigene Anzeige hat?
- Ist die Zielgruppe groß genug für Cold Outreach (20–50 erreichbare Leads),
  oder ist es zu sehr ein Nischenwerkzeug für Julian selbst?
