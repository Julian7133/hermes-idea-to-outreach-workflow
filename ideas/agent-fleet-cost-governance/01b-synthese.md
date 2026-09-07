# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Generische Gateways (Portkey $49/Mo, Helicone, LiteLLM, TrueFoundry) bieten Budgets/Circuit Breakers bereits — kein Alleinstellungsmerkmal | **Weich** | Wettbewerb vorhanden, aber kein openclaw-Lokallog + CI-Kill + Slack-Resume in einem Schmalprodukt für DACH-Teams ohne Platform-Team. Gateways sind Enterprise-/Plattform-Schiene, nicht Fleet-Guard für 5–25 Devs. |
| TAM zu klein / zu früh — Teams mit 3–8 Agents in CI sind 2026 Minderheit (DACH ~600–1.200) | **Weich** | Nischen-TAM, solo tragbar, aber kein Massenmarkt. Zuspitzbar (siehe überarbeiteter Plan), nicht widerlegbar als "kein Käufer". |
| Cold-Outreach-Kanal ungeeignet — Eng-Leads über E-Mail schwer skalierbar erreichbar (3/10) | **Weich** | Kanal-Einwand, nicht Produkt-Einwand. Wechsel zu Community/Content/Slack-Inbound löst ihn, bestätigt aber das NO-GO für Hermes Stage 3 — genau der K4-Split. |
| Gratis-Alternative: lokale openclaw-Dashboards (0-Star-GitHub) zeigen Kosten gratis | **Weich** | Belegt nur Anzeige, kein Enforcement/Forecast/Slack/Team-Cap. K3: Gratis ist Preisanker, kein Todesurteil — Support/Haftung/SLA/Audit fehlen. |
| Enforcement-Vertrauen: falscher Kill in CI schadet mehr als er spart | **Weich** | Architekturfrage (Pause statt Hard-Block, Erklärung + Resume). Überarbeitbar via Schnittwechsel. |
| Rechtlich/technisch unmöglich oder kein denkbarer Käufer | **Hart — nicht vorhanden** | Kein harter Einwand: Slack-App + Billing-API + Log-Shim sind trivial; zahlender Käufer (Platform-Lead mit Budgetrisiko) ist benennbar. |

## Harte Einwände
keine — kein Abbruch. Alle Einwände sind weich oder unbelegt. Idee darf genau eine Überarbeitungsrunde bekommen.

## Überarbeiteter Plan
Gegenüber 00c ändert sich nicht die Funktion, sondern **Schnitt + Kanal + Käufer-Präzisierung** (erlaubte Züge: Zuspitzung, Kanalwechsel, Schnittwechsel):

1. **Schnittwechsel: "Pause statt Kill".** Primärer Eingriff wird **Pausieren** (CI-Workflow/Queue pausieren, Agent-Run suspendieren) mit erklärendem Thread (Kostenkurve, Loop-Verdacht, betroffener Step) und 1-Klick-Resume — kein irreversibler Kill. Der harte Cap bleibt optional, default ist Soft-Pause. Antwort auf Vertrauens-Einwand; reduziert False-Positive-Schaden und damit Churn-Risiko.

2. **Kanalwechsel: Community-/Content-first statt Cold Email.** Validierung und Akquise laufen über **openclaw-Discord, bb-Community, Claude-Code-Slacks, GitHub-Signal ("hat .openclaw/ + Actions") + Content** ("€6k-Overnight-Loop — so stoppst du ihn in 10 min"), nicht über Hermes-Cold-Outreach. Die 10 Pilot-Teams werden **aktiv** in Communities rekrutiert (DM + Loom), der Convert passiert nach erlebtem Loop-Event. Das bestätigt das Outreach-NO-GO, entwertet aber nicht das Produkt.

3. **Zuspitzung: "openclaw-first, Claude Code zweit".** MVP liest **primär openclaw-Lokallogs** (eigene Semantik: Run-ID, Dauer, Repo/Workflow) + sekundär Anthropic/OpenAI Billing API. Das grenzt gegen Portkey/TrueFoundry ab, die generische LLM-Provider routen, nicht lokale Agent-Semantik verstehen. Marketing: "Das einzige Team-Budget-Tool, das deinen openclaw-Loop erkennt, bevor die Anthropic-Rechnung kommt."

4. **Käufer bleibt Eng-/Platform-Lead, aber mit CFO-Artefakt.** Wöchentlicher Forecast-Bericht (Markdown/PDF) explizit als **CFO-Forwardable** gebaut — das macht den Kauf zum Budgetschutz, nicht zum Dev-Nice-to-have, und rechtfertigt €149/Mo im Vergleich zu $49 Gateway.

Verworfenes aus 00b bleibt Reserve: Ausprägung B (Setup-Service €390–990) wird Onboarding-Option falls Self-Service hakt; Ausprägung C (DACH-Compliance, EU-Host, Revision) wird zweite Zuspitzung, falls generische Gateways den Wedge kopieren.

## Neue Bewertung
- outreach_score: 3/10 (vorher 3) — Kanalwechsel bestätigt: Cold Outreach bleibt NO-GO, und soll es auch bleiben. Kein Schönrechnen. Produkt braucht anderen Kanal.
- product_score: 6/10 (vorher 6) — Wedge (openclaw-Lokallog + Pause+Sack + Slack-Resume + Forecast für kleine DACH-Teams) hält nach aktiver Wedge-Suche (Gateway-Preise, Torii-Enterprise, Gratis-Dashboards, AgentWatch) stand; solo 12–18 Tage, Schmerz wiederkehrend, Julian-Vorteil hoch. Anker K5: "klarer Wedge, benennbarer Käufer, solo baubar — normales gutes Geschäft mit Wettbewerb" = 6. Kein unfairer Vorteil über das schon eingerechnete hinaus (keine 8), keine strukturelle Zwangslage (keine 8–9).
- buildable: yes (product ≥6)

## Ehrliches Fazit
Die Überarbeitung hat den **Kanal-Einwand nicht gelöst, sondern anerkannt** — das ist korrekt: gutes Produkt, falscher Vertriebskanal für Hermes ist ein gültiges Ergebnis (K4). Produktseitig löst "Pause statt Kill + openclaw-first + CFO-Bericht" die schärfsten weichen Einwände (Vertrauen, Gateway-Parität, Preisanker) ohne den Plan zu verwässern. Risiko bleibt die **TAM-Enge**: Selbst mit sauberer Community-Akquise braucht die Idee 5–13% eines noch kleinen DACH-Markts für €50–140k ARR — machbar solo, aber langwierig und abhängig davon, dass Agent-Fleet-Adoption 2026/27 wirklich von "Power-User" zu "Team-Standard" kippt. Das ist die Wette.
