# 00c — Realist

## Gewählte Ausprägung
A — Werkzeug (Fleet-Guard Slack-Bot + Budget-Engine SaaS) — führt solo am schnellsten zu einem zahlenden Kunden: 100% Software, schmaler Schnitt (Ingest → Cap-Engine → Slack), kein Vor-Ort, sofortiges Wertversprechen ("stoppt bevor die Rechnung kommt"), Julians Vorteil (bb/openclaw/Usage-Tracking) voll einsetzbar. Dienstleistung (B) verlangt Vertriebsgespräche, Nische (C) verlangt Rechts-/Compliance-Sign-off — beides langsamer zum ersten Euro.
Verworfen, aber aufgehoben: B (Setup-Service) bleibt als Onboarding-Option für €490–990, falls Self-Service zu erklärungsbedürftig; C (DACH-Compliance-Fokus) bleibt als Zuspitzung, falls generische Governance nicht sticht — beide liegen bereit für die Synthese.

## Der erste zahlende Kunde
**Mira, Platform-Lead, 12–25 Devs, B2B-SaaS/Tech-Scaleup DACH, Slack + GitHub/GitLab CI, betreibt 3–8 openclaw-/Claude-Code-Agenten (teils in CI, teils autonom für Repo-Triage/Docs/Support-Triage).** Auslöser: Letzte Monatsrechnung €800–2.000 über Plan durch ungesteuerte Loop-/Parallel-Runs; CFO/Head of Eng fordert Cap und Bericht. Moment: Nach dem Schock, vor dem nächsten Sprint — sie sucht nicht "Dashboard", sondern "wer stoppt das automatisch und sagt mir vorher Bescheid?". Budget €99–199/Mo liegt unter ihrer Freigabe-Grenze.

**Erreichbar über:** **Slack-Community / CI-/Agent-Community + Empfehlung, nicht klassisches Cold Email.** Konkret: Slack-Community der Agent-Stacks (openclaw Discord/Slack, bb-Community), Claude Code-Community, Product-/Platform-Lead-Slacks (z. B. eng-managers DACH), plus **GitHub** (erkennbar an Repos mit `.openclaw/` / bb-Config / Claude Code Actions). Cold Email ist Sekundärkanal (erkennbar über Stack-Signale, aber an Eng-Lead mit niedriger Cold-Response). Besser: Content-gestützter Inbound (Blogpost "Wir drosseln openclaw-Loops automatisch") + Community-Sonde.

## Der kleinste Beweis
**Eingabe:** Ingest aus (1) Anthropic/OpenAI Billing-/Usage-API (team/org-weit) + (2) lightweight Ingest-Shim für openclaw-/Claude-Code-Local-Logs (pro Agent-Job: Run-ID, Tokens, Cost, Duration, Repo/Workflow) + (3) im Bot definierte Policies (`team_cap`, `agent_cap`, `forecast_threshold`). **Verarbeitung:** Stündliche Aggregation pro Agent/Team, Forecast (linear + 7-Tage-Slope), Schwellprüfung; bei Cap: `pause`/`kill` via CI-Gate (z. B. Workflow-Disable, Queue-Pause) + Slack-Alert mit Thread (Kostenkurve, Grund, 1-Klick "Resume / Cap erhöhen"). **Ausgabe:** In Slack: `/fleet status`, Alert-Thread, täglicher Digest + wöchentlicher Forecast-Bericht (ADS: Budget vs. Forecast vs. Burn-Rate). Audit-Log (wer setzte welches Cap, wann griff welcher Stop) als Export (CSV/Markdown).

**Bewusst nicht drin:** Feingranulare Attribution über alle LLMs/Tools hinweg, echte Abrechnung/Billing (nur Own-Data + API-Ingest), Multi-Cloud-FinOps, SOC2, Self-Hosted, feingranulare RBAC. Nur Slack + openclaw/Claude Code, nur Budget-Governance, kein generisches LLM-Gateway.

## Weg zum ersten Euro
**Preis:** **€149/Monat pro Team (bis 8 Agents)**, €19/Agent/Monat darüber, inkl. Caps/Forecast/Kill-Switch/Slack-Bot; Setup €390 (Connect + erste 3 Policies). Begründung: Zahlt für vermiedenes Budget-Risiko (€500–2.000/Monat Schaden), nicht für ein Widget — Preis ankert am **verhinderten Schaden**, nicht an Gratis-Monitoring.
1. Landing/Docs + 3-minütiges Loom ("Loop frisst €200 — so stoppt Fleet-Guard ihn") — 2 Tage.
2. Ingest-Shim für openclaw+Claude Code + Cap-Engine + Slack-Bot (Status/Alert/Resume) — 10–16 Tage.
3. 10 Pilot-Teams aus Community (Discord/Slack) mit Freimonat gegen echter Cost-Curve — 1 Woche Rekrutierung.
4. Erster zahlender Convert nach 14–30 Tagen, wenn ein Pilot einen Loop-Stopp erlebt und den Report an den CFO weiterleitet.
5. Case Study ("Wie Team X €1.200 spart") als Inbound-Magnet.

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis: 12–18 Tage solo** (Slack-Bot 4d, Ingest 4d, Cap-Engine+Forecast 3d, Alert/Resume-Flow 2d, Polish/Digest 2d). Fehlende Zugänge: Slack App-Review (trivial), Anthropic/OpenAI Billing-APIs stabil, openclaw Log-Schema (lokal, änderbar). Drittabhängigkeiten: Slack-API, Anthropic/OpenAI Billing-Endpoint (Quota/Rate), CI-Provider für Kill (GitHub Actions/GitLab — per Token, reversible). Kein Modell-/LLM-Abhängigkeit im Kern.

## Riskanteste Annahme
**Annahme:** Eng-/Platform-Leads mit mehreren Agenten empfinden **ungesteuerte Kosten** als wiederkehrenden, bezahlpflichtigen Schmerz (nicht als einmaligen "ups") und wollen **Enforcement** (Auto-Stop), nicht nur Anzeige. **Billiger Test (vor Bau):** 12–15 Kurzinterviews (15 min) in openclaw/bb/Claude-Code-Communities + 3 Slack-Lead-Slacks: "Hattet ihr letzten Monat ungeplante Agent-Kosten? Was habt ihr danach geändert — Dashboard, Cap, oder nichts?" — plus Screen eines Mock-Alerts ("Agent X gestoppt bei €47 — Resume?"). Zahlt erst, wer nach dem Mock sagt "das hätte ich letzte Woche gebraucht".
