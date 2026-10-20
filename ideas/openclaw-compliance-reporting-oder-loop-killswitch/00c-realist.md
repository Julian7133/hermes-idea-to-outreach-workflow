# 00c — Realist

## Gewählte Ausprägung

**A — Werkzeug (mit Fokus-Reihenfolge: zuerst (b) Loop/Kosten-Kill-Switch, dann (a) Compliance-Reporting als Aufpreis-Modul)** — Begründung: (b) hat den klareren Erst-Käufer (Solo-Dev zahlt selbst, Kreditkarte, kein Gremium), den bewiesenen Preisanker ($39) und den schmerzhaftesten Trigger (eigene Rechnung). (a) ist der natürliche Upsell, sobald der Agent im Unternehmen angekommen ist — dann braucht es den DSB-Bericht. Solo am schnellsten zu Geld führt der Dev, nicht der DSB.

Verworfen, aber aufgehoben: **B — Dienstleistung** bleibt als €490-Erst-Audit + Retainer für Kanzleien/KMU ohne Agent-Know-how verfügbar, wenn Self-Serve nicht trägt. **C — Nische (Art. 14 Hochrisiko)** ist regulatorisch zu eng für den Start — nur relevant, falls Art. 14-Nachweis wirklich als eigenständiger Budgetposten entsteht.

## Der erste zahlende Kunde

**Rolle:** Solo-Freelancer / Kleinstunternehmer (1–3 Personen), DACH, Full-Stack- oder Automatisierungs-Freelancer, nutzt Claude Code oder openclaw seit 1–6 Monaten produktiv für Kundenprojekte.

**Auslöser:** Hat bereits einen Loop/Runaway erlebt (4-stellige Token-Rechnung oder 2-stündiger Endlos-Lauf, den er manuell abgebrochen hat) und babysittet seitdem jeden Run — genau der Moment, in dem er nach "claude code loop kill" oder "agentwatch alternative" sucht.

**Moment des Bedarfs:** Startet einen längeren Agent-Run (z. B. "refactor dieses Modul") und will nicht daneben sitzen. Will ein Budget-Cap setzen (€15) und eine Loop-Heuristik (z. B. 30 identische Tool-Calls) aktivieren — dann weggehen können.

**Erreichbar über:** SEO/Content ("Claude Code Kosten begrenzen", "Agent Loop stoppen"), Community (Claude Code Discord, openclaw Discord, Reddit r/ClaudeAI), Marktplatz (ClawHub/openclaw Skill). **Nicht** Cold Outreach — der Käufer ist Solo-Dev, kein Unternehmen mit Firmenadresse und "zuständiger Person" i.S.d. UWG §7(2). Zweiter Kanal später: Empfehlung/Mundpropaganda unter Freelancern.

Für das Compliance-Modul (a) wäre der Erst-Käufer anders: externe DSBs, die 5–15 KMU betreuen, als Multiplikator — erreichbar über DSB-Netzwerke/Verbände, nicht kalt. Aber erst nach dem Dev-Traktionssignal.

## Der kleinste Beweis

**Eingabe:** Pfad zu einer Agent-Logdatei (Claude Code JSONL oder openclaw Tool-Call-Log) + zwei Schwellen: Budget-Cap (€) und Loop-Schwelle (N identische Tool-Calls in M Sekunden). Optional: Baseline aus bisherigen Läufen.

**Verarbeitung:** (1) Token-/Kosten-Schätzung pro Tool-Call (Modellpreis × Tokens, lokale Heuristik, kein API-Call nötig für MVP), laufende Summe gegen Cap. (2) Loop-Heuristik: gleitendes Fenster, erkennt N identische Tool+Target-Kombinationen in kurzer Folge (einfache Zählung, kein ML). Bei Überschreiten: Kill-Signal (SIGTERM an Agent-PID oder `pkill` + Marker-Datei) + Alert. Parallel: Audit-Log schreiben (jede Aktion mit Timestamp).

**Ausgabe:** stdout-Alert + `state/audit_log.jsonl` + optional einseitiges Tages-PDF ("Agent lief 47 Min, 312 Tool-Calls, €8,40, 1 Loop gekillt bei Call 189"). Daten bleiben lokal.

**Bewusst nicht drin:** Keine Cloud, kein Dashboard, keine echte Firewall-Isolation, kein "menschliche Aufsicht"-Rechtsgutachten (nur technischer Bericht + Disclaimer), keine Multi-Agent-Fleet-Übersicht, keine Benachrichtigung per Slack/E-Mail im MVP (nur stdout + Log).

## Weg zum ersten Euro

**Preis:** €29/Mo Solo (Loop/Kosten-Kill + Audit-Log), €49/Mo Pro (+ Wochen-PDF + Baseline-Lernen). Begründung: unter AgentWatch-Anker ($39), über CC-Switch ($29), aber DACH-Support/DSGVO-lokal als Differenzierer — Solo-Dev vergleicht gegen die letzte Runaway-Rechnung (€80–240), nicht gegen Enterprise-Security-Budgets.

1. Log-Adapter für Claude Code + openclaw bauen (ein Schema, zwei Parser — 2 Tage).
2. Kosten-/Loop-Detector + Kill-Mechanik + Audit-Log implementieren, mit Fixture-Logs testen (2 Tage).
3. CLI + Menüleisten-Widget (Anschluss an vorhandenes osx-menulet) verpacken, Tages-PDF generieren (1 Tag).
4. Auf ClawHub/openclaw-Skills + Reddit/Discord als "Claude Code Budget Guard — lokal, €29" vorstellen, 10 Design-Partner aus Community gewinnen.
5. Ersten zahlenden Kunden aus Design-Partnern konvertieren — Kreditkarte, kein Sales-Call.

Für (a) später: PDF-Vorlage um "Art. 14 Nachweis"-Kapitel erweitern, DSB-Disclaimer ergänzen, über externe DSBs als Reseller skalieren.

## Aufwand und Abhängigkeiten

**Aufwand kleinster Beweis:** 4–6 Tage solo. Log-Adapter + Detector + Kill + Audit-Log + PDF sind alles lokale Datei-/Prozess-Operationen, kein ML, kein Backend.

**Fehlende Zugänge:** Keine — Claude Code/openclaw Logs sind lokal verfügbar, Modellpreise sind öffentlich, Kill via PID ist OS-Standard. Kein externer API-Key nötig.

**Drittabhängigkeiten:** Claude Code/openclaw Log-Format (undokumentiert, aber lokal beobachtbar — Fixture-Schicht wie beim Watchdog-MVP löst das). OS-Signal-Handling (macOS/Linux). Keine Cloud-Abhängigkeit, keine Rechtsberatung nötig für (b); für (a) später Disclaimer/Ampel statt Rechtsurteil.

## Riskanteste Annahme

**Annahme:** DACH-Freelancer mit Claude Code/openclaw erleben Budget-Runaway häufig genug, um €29/Monat als Versicherung zu zahlen — und sie finden das Tool ohne Cold Outreach (SEO/Community/Marktplatz).

**Billiger Test (vor dem Bauen):** 10 kurze Interviews + ein Post in Claude Code Discord / Reddit r/ClaudeAI: "Hattest du schon mal einen Loop/Runaway mit Claude Code — was hat er gekostet, was hast du danach geändert?" Wenn <3 von 10 sagen "ja, hat mich Geld/Zeit gekostet und ich würde dafür zahlen", ist die Prämisse tot bevor Code entsteht. Parallel: Suchvolumen/Posts zu "agentwatch", "claude code loop", "openclaw cost" zählen — gibt es überhaupt chatter?
