# 00c — Realist

## Gewählte Ausprägung

**A — Werkzeug** — Führt solo am schnellsten zum ersten Euro, weil es direkt verkaufbar ist (99–199 €, Stripe, sofortiger Report), keine Kalender-Abhängigkeit wie B und keinen regulatorischen Vertriebszyklus wie C. Der Wedge aus PR #21 (Runbook-Spezifität) bleibt erhalten, aber ohne Funnel-Kette — genau das behebt den alten CAC/CLV-Kill.

Verworfen, aber aufgehoben: **B — Dienstleistung** liegt als Upsell-CTA im Report bereit (48h-Audit + Loom), falls Self-Service allein nicht konvertiert. **C — Nische (reguliert)** bleibt als Zuspitzungsoption, falls generische Teams den Audit nicht als "Pflicht" empfinden.

## Der erste zahlende Kunde

Platform-/AI-Lead (oder Senior Engineer mit Prompt-Verantwortung) in einem **15–80-Personen-Produktteam (DACH, B2B-SaaS/Agentur/Tech-Beratung)**, das in den letzten 3–9 Monaten 10–50 Prompts/Skills in Produktion oder kurz davor aufgebaut hat — Auslöser ist ein konkreter Vorfall ("Prompt X hat im Staging Unsinn produziert, keiner weiß warum") oder ein bevorstehender Rollout/Freigabe-Termin, bei dem der Lead gegenüber CTO/Geschäftsführung nachweisen muss, dass die Runbooks belastbar sind. Der Moment: Er sucht vor dem Merge/Go-Live nach einem externen Check, der schneller ist als interne Review-Runden.

**Erreichbar über:** Cold Outreach ist hier **passend** (anders als bei `skill-tester-tool`): 1:1-Anschreiben an eine Rolle mit klarem Job-to-be-Done, verknüpft mit einem direkt kaufbaren Produkt — kein Gratis-Klick-Funnel. Auffindbar über LinkedIn-Rollentitel (Platform Engineer, AI Engineer, Engineering Manager) + Signale (Stellenausschreibungen "Prompt Engineer"/"AI Engineer", GitHub-Aktivität zu Agent-Frameworks, Posts über LLM-Runbooks). Fallback-Kanäle: Agent-Communities (openclaw-Discord, Claude Code-Community), Content auf berlow.de.

## Der kleinste Beweis

**Eingabe:** Batch von 5–30 Prompts (Paste, Markdown/JSON-Upload oder GitHub-Ordner-Link) + optional kurzer Kontext ("Wofür wird dieser Runbook eingesetzt?").

**Verarbeitung:** Je Prompt strukturierte Bewertung entlang 5 Dimensionen (Schritte-Klarheit, Guardrails, Fehlerfälle, Reproduzierbarkeit, Drift-/Debug-Risiko) — Kombination aus LLM-Judge (gleicher Scoring-Prompt je Dimension) + 3–5 deterministische Regel-Checks (z. B. fehlende Rollen-Trennung, keine Output-Schema-Vorgabe). Aggregation teamweit: häufigste Lückenmuster + priorisierte Fix-Liste.

**Ausgabe:** Sofortiger Report (PDF + Markdown): je Prompt Score/Kurzbefund, teamweites Musterbild, Top-3-Fixes mit Beispiel-Umformulierung, CI-Flag-Empfehlung (Schwelle). CTA: "Fix-Sprint buchen" nur als Link, kein Zwang.

**Bewusst nicht drin:** Kein dauerhaftes Hosting/Monitoring, keine CI-Pipeline-Integration v1 (nur Empfehlung + Badge), kein automatisches Rewriting der Prompts, keine Nutzerverwaltung/Team-Accounts, keine Langzeit-Speicherung außer Report-Download.

## Weg zum ersten Euro

**Preis:** 99 € (≤10 Prompts) / 199 € (≤50 Prompts + Repo-Link) — Einmalzahlung, Begründung: Team kauft einen **Befund mit Entscheidungsnutzen** (Go/No-Go vor Rollout), nicht Minuten. Preis liegt unter Enterprise-Eval-Suiten (€500+/Mo) und oberhalb Gratis-Gradern, deckt LLM-Kosten (<€2 je Audit) und Signalwirkung ("bezahlt = ernst genommen").

1. Landing + Stripe-Checkout + Upload-Form bauen (ein Pfad, keine Accounts).
2. Scoring-Prompt + Regel-Checks an 10–15 echten Runbook-Beispielen kalibrieren, zwei Beispiel-Reports als Referenz erzeugen.
3. 30 handverlesene Leads (Platform/AI-Leads DACH mit Prompt-Schmerz) per 1:1-Cold-Outreach anschreiben — Pitch: "Audit deiner Runbooks vor dem Rollout, 99 €, Report in Minuten".
4. Ersten bezahlten Audit durchführen, Report zustellen, Feedback + Testimonial einsammeln und als Beleg für die nächsten Sends nutzen.
5. Bei Conversion <5 % nach 30 Sends: auf Ausprägung B schwenken (Audit als Dienstleistung für denselben Lead, gleicher Preis als Einstieg).

## Aufwand und Abhängigkeiten

**Aufwand kleinster Beweis:** 4–6 Tage solo (Frontend Upload/Report, LLM-Judge-Prompt, Regel-Checks, Stripe, PDF-Rendering). Kein Daten-Backend nötig (Session + File).

**Fehlende Zugänge:** Kalibrierungs-Set echter Runbook-Prompts aus unterschiedlichen Teams (kann initial mit eigenen/beispielhaften Prompts + 2–3 Freiwilligen aus Community bootstrapped werden).

**Drittabhängigkeiten:** LLM-API (z. B. Claude/GPT) für Scoring — Kosten und Latenz, aber kein Lock-in; Stripe für Zahlung; optional GitHub API für Repo-Import (nur lesend).

## Riskanteste Annahme

**Annahme:** Teams zahlen 99–199 € für einen **einmaligen Befund** statt (a) den Prompt kostenlos durch einen Gratis-Grader zu jagen oder (b) intern zu reviewen / gar nichts zu tun — d. h. der Audit wird als "Pflichtschritt vor Rollout" statt als "Nice-to-have" wahrgenommen.

**Billiger Test (vor dem Bau):** 10–15 Kurzinterviews mit Platform-/AI-Leads: "Würdet ihr vor dem nächsten Rollout 99 € für einen externen Runbook-Check zahlen, der euch einen Go/No-Go-Befund liefert? Was müsste drinstehen, damit ihr das als Audit akzeptiert?" — plus ein Fake-Checkout (Landing mit Beispiel-Report, Stripe im Testmodus) als Klick-Validierung, bevor Scoring-Logik gebaut wird.
