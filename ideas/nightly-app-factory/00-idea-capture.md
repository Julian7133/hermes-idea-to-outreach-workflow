---
slug: nightly-app-factory
title: Nightly App Factory — pro Nacht eine App aus Content-Gap / OpenClaw-Wedge
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea
Nightly App Factory: Jede Nacht erzeugt ein Agenten-Workflow autonom eine kleine, lauffähige App — Idee entweder über **Content-Gap-Strategie** (wonach wird gesucht, aber nicht befriedigend bedient) oder über die Frage **"welche Top-Apps sind für den Einbau von openclaw am anfälligsten / wo ersetzt ein Agent das bestehende Tool?"**. Output ist kein Pitchdeck, sondern ein deployfähiges Mini-Produkt inkl. Landingpage und kurzer Distribution. Zielkunde ist nicht Endnutzer der einzelnen App, sondern jemand der den Strom an Mikro-Produkten monetarisieren will.

Wertversprechen (K1-konform, nicht als Lückenbehauptung): Für einen solo Builder / Micro-SaaS-Betreiber, der systematisch viele kleine Wetten platzieren will, liefert die Factory **täglich einen neuen, testbaren Produktkeim mit echter Code-Basis** — statt alle 3 Monate eine Idee manuell zu bauen.

## Monetization assumption
Nicht als Tool für den Massenmarkt, sondern als **Factory-as-a-Service / Dealflow**:

- **Variante A (Service/Abo):** €199–399/Monat für 10–20 App-Keime/Monat inkl. Repo, Demo-Link und 1-Sentence Distribution-Angle. Käufer ist Indie-Hacker/Micro-PE, der die besten 1–2 weiterführt. ASSUMPTION: 20 Käufer × €199 = ~€4k MRR; churn hoch, deshalb eher projectized.
- **Variante B (Portfolio-Ansatz, eigentliches Modell):** Julian betreibt die Factory selbst, publiziert 30 Apps/Monat, behält die 3 mit Traction, verkauft/verschenkt den Rest. Monetarisierung indirekt über Treffer (à la TinyLaunch / Pieter Levels), nicht über Factory-Abo. Wert hier = Pipeline, nicht Produkt.

Fürs Hermes-Rating: **€290/Monat Abo** als Anker — was ein Indie-Hacker für "30 Ideen auf Knopfdruck, jede als lauffähiger Code" zahlen würde, wenn eine davon €500–2k MRR tragen kann.

## Solo fit
Sehr hoher Solo-Fit auf der **Bau-Seite**: Julians Stärken (bb-Orchestrierung, openclaw, Claude Code, Multi-Agent-Workflows, ~20 Repos, eigene Marke) sind exakt die Factory-Kompetenz. Eine Nacht = ein bb-Workflow-Run mit Claude Code. Kein Team nötig, kein Vertrieb für die Factory selbst nötig wenn als Eigen-Portfolio betrieben. Haken: Betrieb der Factory ist trivial — **Distribution/Validierung jeder einzelnen App bleibt das echte Problem** und skaliert nicht automatisch mit dem Build. Solo-Grenze liegt bei Review/Selection, nicht beim Generieren.

## Trigger / why now
Zwei Trigger aus Julians Notizen: (1) Content-Gap als systematische Ideenquelle (was wird gesucht, aber schlecht beantwortet?) und (2) "welche Top-Apps sind für openclaw-Ablösung anfällig?" — beides ist erst seit 2025/2026 operationalisierbar, weil Agenten erstmals echte Apps end-to-end bauen können (Claude Code, openclaw, bb-Orchestrierung) und LLM-APIs billig genug sind, um nightly builds zu fahren. Zusätzlich: TinyLaunch-/Micro-SaaS-Welle zeigt, dass viele kleine Apps statt einer großen funktionieren können — wenn man die Erzeugungskosten gegen null drückt.

## Open questions
- Wer ist der zahlende Käufer der Factory (Factory-Abo vs. Portfolio-Eigentümer) — und ist er kalt erreichbar?
- Wie viel echte Distribution steckt in "eine App pro Nacht", wenn jede App trotzdem 20–50 Outreach-Kontakte braucht — hebt sich der Skaleneffekt auf?
- Content-Gap vs. OpenClaw-Wedge: welcher Ideenkanal liefert tatsächlich zahlungsbereite Nischen vs. nur Klicks?
- App-Store-/Play-Store-Policy: automatisiert generierte Massenapps riskieren Bans — reine Web-Apps?
- Wie verhindert man Qualitätsverfall bei wahllos/nightly generierten Apps (Evals, Runbook)?
