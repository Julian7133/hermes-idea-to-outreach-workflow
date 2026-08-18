# 01 — Devalidation Report

> **REVISION 2026-08-18** — ersetzt das Urteil aus
> [PR #2](https://github.com/Julian7133/hermes-idea-to-outreach-workflow/pull/2)
> (`outreach_score` 1/10, NO-GO, 18.08.2026). Requeue-Grund: fehlkalibrierter
> Maßstab — Wettbewerb wurde als automatischer Kill gewertet statt als
> Ausgangspunkt einer Wedge-Suche (K2), Gratis-Konkurrenz als Todesurteil statt
> Preisanker (K3), Julians laufender Code in `osx-menulet-subscription-usage`
> nicht als unfairer Vorteil verrechnet (K6). Dieser Lauf wiederholt Part 0
> (Live-Recherche) mit expliziter Wedge-Suche nach K2/K3 und wendet K4–K6 an.
> `boring-and-trends-check` entfällt weiterhin, da `outreach_score` erneut
> < 4/10 ist (siehe unten) — diesmal jedoch mit dokumentiertem Nachweis der
> Suche statt eines unbelegten Kills.

## Verdict
- **Outreach-Score:** 2/10
- **Produkt-Score:** 3/10
- **Go/No-Go (Outreach):** NO-GO
- **One-line reason:** Die Kernkombination (openclaw + Claude Code + Cursor/opencode in einer Ansicht, inkl. proaktiver Schwellwert-Alerts und nativer macOS-Menu-Bar-UI) existiert **mehrfach kostenlos** — die gezielte Wedge-Suche nach K2 fand keinen unbedienten Rand: weder DACH-Sprache, noch Team-/Ops-Governance (das übernimmt bereits Anthropics eigenes Team-Dashboard bzw. das bezahlte Torii), noch proaktive Alerts (das bieten mind. 6 Gratis-Tools bereits).

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Entwickler/kleine Teams, die ≥2 KI-Coding-Agenten parallel nutzen (Claude Code, Cursor, opencode, openclaw) und Verbrauch/Limits im Blick behalten wollen. |
| **L**onging/Job | Eine Ansicht statt N Einzelanzeigen; proaktiv gewarnt werden, bevor ein Limit greift. |
| **E**xisting solution | **Bereits gelöst, kostenlos, mit genau denselben Zusatzfunktionen**, die als Wedge geprüft wurden (siehe Cited market signals): Multi-Tool-Kombination, proaktive Schwellwert-Notifications, native macOS-Menu-Bar-Apps — alle drei Differenzierungsversuche sind bereits besetzt. |
| **A**lternative cost | Praktisch null: `npx codeburn` oder ein Homebrew-/GitHub-Release-Install dauert Minuten. |
| **R**eachability | Zielgruppe ist über GitHub/Dev-Communities technisch erreichbar, aber jeder erreichte Lead findet in Sekunden ein kostenloses, funktional gleichwertiges Tool. |
| **F**requency | Täglich (Menu-Bar) — gute Retention-Eigenschaft, spricht aber für die Gratis-Konkurrenz genauso wie für ein bezahltes Produkt. |
| **R**evenue | ASSUMPTION aus `00`: €9–15/Mo. Nach K3-Prüfung (siehe unten): kein belastbarer Zusatznutzen identifiziert, für den ein Geschäftskunde über die Gratis-Tools hinaus zahlen würde. |
| **A**dvantage | Nach K6: Julians laufender Code (`osx-menulet-subscription-usage`) ist ein **echter** unfairer Vorteil — Credential-Resolution (Keychain-OAuth für Claude, Session-Cookie für Cursor), Provider-Abstraktion und Rate-Limit-Handling sind bereits gelöst. Das verkürzt die Time-to-MVP drastisch, ändert aber nichts an der Nachfrageseite: der Vorteil senkt Bauaufwand, nicht Marktsättigung. |
| **M**oat-later | Keiner ersichtlich: alle geprüften Differenzierungsachsen (Multi-Tool, Alerts, native App, Team-Dashboard) sind bei Konkurrenten bereits vorhanden oder beim Provider selbst gebündelt. |
| **E**ffort | 2–3/10 solo (Kernlogik existiert bereits) — niedriger Effort ist hier aber irrelevant, weil die Nachfrageseite fehlt. |

## Wedge-Suche nach K2 (dokumentiert)

Drei konkrete Wedge-Hypothesen wurden geprüft, alle drei widerlegt:

1. **Osx-menulet-Ansatz (native Swift/SwiftUI-App statt Web/CLI):** Widerlegt.
   `Claude Toolbar`, `Claude Usage Tracker` (hamed-elfayome, Swift/SwiftUI),
   `ClaudeUsageBar`, `Claude Tracker` sind **ebenfalls native macOS-Menu-Bar-
   Apps** — kein technischer Alleinstellungsvorteil.
2. **Proaktive Schwellwert-Alerts (Julians Plan: Notifications bei Limit-
   Nähe):** Widerlegt. Mindestens 6 Gratis-Tools bieten das bereits:
   `claude-toolbar` (Alerts bei 70 %/90 %), `ClaudeUsageBar` (25/50/75/90 %),
   `Claude Tracker`, `Claude Usage Widget` (Windows, 25/50/75/90/95/100 %),
   `Usage Monitor for Claude` (konfigurierbare Schwellwerte, zeitbewusster
   Modus). Das war die konkreteste Differenzierungsidee aus `00` — sie ist
   bereits mehrfach kostenlos gebaut.
3. **DACH-Nische / deutschsprachiges Onboarding:** Kein deutschsprachiges
   Konkurrenzprodukt gefunden — aber auch keine deutschsprachige Nachfrage-
   Evidenz. Die deutschen Suchergebnisse liefern ausschließlich Ratgeber-
   Blogartikel (claude-os.de, pexon-consulting.de, antonioagudo.com) über
   *Anthropics eigene* Kostenkontrolle, nicht über Wettbewerbsprodukte. Da
   Entwickler-Tooling durchgehend englischsprachig konsumiert wird (alle
   gefundenen Tools sind EN-only und werden offenbar klaglos von DACH-Devs
   genutzt), ist "deutsche Sprache" kein belastbarer Kaufgrund — eher eine
   ASSUMPTION ohne Nachfragesignal.
4. **Multi-Agent-Support über Einzeltools hinaus (openclaw + Claude Code +
   Cursor + opencode in einer Ansicht):** Weiterhin widerlegt wie im
   Ursprungsbericht — `claude-usage-tracker` (658jjh) deckt exakt diese
   Kombination inkl. OpenClaw bereits kostenlos ab.
5. **Team-/Org-Governance als B2B-Wedge (K3-Ansatz: zahlt ein Geschäftskunde
   für mehr als die Einzelanzeige?):** Geprüft und **teilweise vielversprechend,
   aber bereits besetzt.** Anthropics eigenes Team-Dashboard (im Team-Plan ab
   ~$25–30/Nutzer/Monat enthalten) liefert bereits Spend-per-User, Spend-per-
   Model, Top-Spenders, Cost-per-PR mit CSV-Export. Zusätzlich launchte im Mai
   2026 **Torii** eine bezahlte "AI Management Platform", die Seat- und
   Token-Spend geräte-/anbieterübergreifend aufschlüsselt und Overages
   vorhersagt — das ist der einzige gefundene **zahlungspflichtige**
   Wettbewerber im gesamten Suchfeld, aber Enterprise-/IT-Ops-positioniert,
   nicht Solo-Dev-Cold-Outreach-tauglich.

**Ergebnis der Suche:** Nach fünf geprüften Wedge-Hypothesen bleibt kein
unbedienter Rand für ein Solo-Cold-Outreach-Produkt übrig. Die einzige
Kategorie mit echter Zahlungsbereitschaft (Team-/Ops-Governance) ist bereits
vom Provider selbst (Anthropic) gebündelt und von einem VC-finanzierten
Player (Torii) bedient — kein Segment, das ein Solo-Gründer per Cold Email an
20–50 Leads erschließt.

## K3 — Prüfung "Gratis ist Preisanker, kein Todesurteil"

Konkret geprüft, wofür ein Geschäftskunde zusätzlich zu den Gratis-Tools
zahlen würde:
- **Support/SLA:** Keine Nachfrage-Evidenz — die Gratis-Tools sind reine
  Read-only-Widgets ohne Betriebsrisiko, für das ein SLA nötig wäre.
- **Datenschutz/Compliance:** Nicht relevant — die Tools lesen nur lokal
  vorhandene Credentials/Usage-Daten, es gibt keinen DSGVO-Auftragsverarbeiter-
  Bedarf, der ein Gratis-Tool ausschließen würde.
- **Integration (Slack/Team-Alerts, zentrale Budgetsteuerung):** Der einzige
  Bereich mit echtem B2B-Zahlungssignal — aber bereits durch Anthropics
  eigenes Team-Dashboard **und** Torii besetzt (siehe oben).
- **Onboarding:** Alle gefundenen Tools sind One-Command-Installs
  (`npx codeburn`, Homebrew) — kein Onboarding-Aufwand, den ein bezahltes
  Produkt wegnehmen könnte.

Ergebnis: K3 bestätigt, dass Gratis-Konkurrenz allein kein Kill ist — aber die
konkrete Prüfung findet keinen Zusatznutzen, für den in diesem Fall bezahlt
würde. Der Kill steht damit nicht mehr auf "Gratis existiert", sondern auf
"gezielt gesucht und keinen zahlungsfähigen Zusatznutzen gefunden".

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: mehrere Zehntausend Entwickler nutzen ≥2
  KI-Coding-Agenten parallel — Zielgruppe existiert, zahlt aber nachweislich
  nicht: alle Referenzimplementierungen (inkl. der drei geprüften
  Differenzierungsachsen) sind kostenlos.
- **Saturation / competition:** **Verifiziert extrem gesättigt, tiefer als im
  Erstbericht.** Neben den 6 bereits bekannten Tools (ClaudeBar, CodexBar,
  CodeBurn, claude-usage-tracker, TokenTracker, claude-token-tracker) kommen
  mindestens 6 weitere native Menu-Bar/Tray-Apps mit Alert-Funktion hinzu:
  Claude Toolbar, Claude Usage Tracker (hamed-elfayome), ClaudeUsageBar,
  Claude Tracker, Claude Usage Widget (Windows), Usage Monitor for Claude
  (Windows). Alle Gratis, alle 2026 aktiv gepflegt.
- **Category maturity & growth:** **Plateau**, tendenziell übersättigt in
  Richtung Konsolidierung — Anthropic selbst baut die Governance-Features
  (Team-Dashboard, Cost-per-PR) direkt in sein eigenes Produkt, was das
  Dritt-Tool-Segment strukturell auf "Gratis-Widget für Individuen" begrenzt.
- **CAC vs CLV sanity:** Strukturell unterwater — unverändert zum
  Erstbericht, jetzt mit dokumentiertem Nachweis: jede der drei geprüften
  Differenzierungsideen kann der Lead in Minuten kostenlos beziehen.
- **Difficulty score:** 3/10 technisch (Code existiert teilweise), aber
  Go-to-Market-Schwierigkeit weiterhin 9/10.
- **Key risks:**
  1. **Alle drei geprüften Wedge-Hypothesen widerlegt** (native App, proaktive
     Alerts, Multi-Agent-Kombination) — nicht nur die ursprüngliche Prämisse.
  2. **Der einzig plausible B2B-Wedge (Team-Governance) ist vom Provider
     selbst gebündelt** — Anthropic hat keinen Anreiz, das an Dritte
     abzugeben, und Torii bedient das Enterprise-Ende bereits.
  3. Julians realer technischer Vorteil (K6) senkt Bauaufwand, aber löst kein
     Nachfrageproblem — der Code ist eher für privaten Gebrauch wertvoll als
     für ein kommerzielles Produkt.

## Cited market signals (researched 2026-08-18)
- Proaktive Alerts bereits gratis verfügbar: [claude-toolbar](https://github.com/beejeke/claude-toolbar) (Alerts bei 70 %/90 %), [ClaudeUsageBar](https://www.claudeusagebar.com/) (25/50/75/90 %), [claudetracker.com](https://claudetracker.com/), [Claude Usage Widget (Windows)](https://github.com/niccolo-sabato/claude-usage-widget) (25/50/75/90/95/100 %), [Usage Monitor for Claude](https://github.com/jens-duttke/usage-monitor-for-claude) (konfigurierbare, zeitbewusste Schwellwerte).
- Native macOS-Menu-Bar-Apps bereits gratis verfügbar: [Claude Usage Tracker (hamed-elfayome)](https://github.com/hamed-elfayome/Claude-Usage-Tracker), [Fazm.ai Blog-Vergleich macOS-Menu-Bar-Tracker](https://fazm.ai/blog/macos-menu-bar-track-claude-code-usage).
- Team-/Org-Governance bereits vom Provider gebündelt: Anthropics eigenes Analytics-Dashboard (Spend-per-User, Cost-per-PR, CSV-Export) im Team-Plan ab ~$25–30/Nutzer/Monat ([claude-os.de Kostenübersicht](https://claude-os.de/ratgeber/claude-code-kosten), [antonioagudo.com Team-Guide](https://antonioagudo.com/blog/claude-code-im-team-kosten-datenschutz-grenzen/)).
- Einziger bezahlter Wettbewerber im Suchfeld, aber Enterprise-positioniert: Torii AI Management Platform (Mai 2026), Seat-/Token-Spend geräteübergreifend, Overage-Forecasting ([PointFive AI Coding Agent Cost Tools 2026](https://www.pointfive.co/blog/ai-coding-agent-cost-tools-2026), [Torii-Artikel](https://www.toriihq.com/articles/five-claude-code-usage-dashboards-and-monitoring-tools)).
- CodeBurn bleibt kostenlos ohne Team-/Paid-Tier: [github.com/getagentseal/codeburn](https://github.com/getagentseal/codeburn) — 41 Tools, lokal, MIT-Lizenz.
- Keine deutschsprachige Konkurrenzevidenz gefunden (nur EN-Tools + DE-Ratgeberartikel über Anthropics eigene Kostenkontrolle) — Sprache damit als Wedge nicht belastbar.

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht über diese Pipeline empfohlen.* Falls Julian
  dennoch weitermachen will: 5–10 Gespräche mit Eng-Leads, die bereits
  Anthropics Team-Dashboard nutzen — Frage: "Was fehlt Ihnen daran gegenüber
  Torii oder einem Custom-Tool?" Nur wenn dort eine konkrete, unbediente
  Lücke auftaucht, lohnt eine zweite Runde.
- **Kill signal:** N/A — bereits im Desk-Stage gekillt.

## Produktkern für den MVP

*Entfällt — `product_score` (3/10) liegt unter dem Schwellenwert 4/10, ab dem
dieser Abschnitt Pflicht ist. Das Kernproblem ist real, aber es gibt nach
dokumentierter Suche keinen unbedienten Rand, der ein eigenständiges Produkt
rechtfertigt.*

## Pivot-Signal

Der einzig gefundene **zahlungspflichtige** Wettbewerber (Torii) positioniert
sich nicht auf Einzel-Devs, sondern auf **Ops-Governance für Teams, die
autonome Agenten-Flotten betreiben** — Budget-Überwachung, Overage-Forecast,
Anomalie-Alerts. Das deckt sich mit einer Lücke, die die Suche tatsächlich
offenließ: für **openclaw** speziell (im Gegensatz zu Claude Code/Cursor)
existiert kaum dediziertes Drittanbieter-Tooling, und die Zielgruppe
"Engineering-Lead, der mehrere autonome openclaw-Agenten gleichzeitig laufen
lässt und Kostenüberläufe fürchtet" ist eine andere als "Solo-Dev mit
Menu-Bar-Widget" — sie hat ein echtes Budget-Risiko (nicht nur Neugier) und
ist über Slack-/Ops-Kanäle statt Cold Email erreichbar. Pivot-Idee-Vorschlag:
`agent-fleet-cost-governance` — Slack-Bot/Alerting-Layer für Teams, die
mehrere openclaw-/Claude-Code-Agenten in CI oder autonom laufen lassen, mit
Budget-Cap-Enforcement statt reiner Anzeige. Nicht verifiziert, ob dafür
Cold-Outreach-fähige Leads existieren — eigene Devalidierung nötig.

## Notes / assumptions
- ASSUMPTION: TAM-Größenordnung ("mehrere Zehntausend Entwickler mit ≥2
  parallelen Agenten") nicht quellenbelegt, nur plausibilisiert aus der
  Verbreitung der gefundenen Gratis-Tools (mehrfache aktive Repos, 150k+
  Nutzer bei CodeBurn allein).
- Der bestehende Code in `osx-menulet-subscription-usage` bleibt technisch
  valide (Keychain-/Cookie-Credential-Resolution, Provider-Protokoll) und ist
  für **privaten Gebrauch** oder als technischer Baustein für die
  Pivot-Idee (`agent-fleet-cost-governance`) weiterhin wertvoll — das ändert
  nichts am Marktbefund für das ursprüngliche Solo-Cold-Outreach-Produkt.
- Alle drei in dieser Revision geprüften Wedge-Hypothesen (native App,
  proaktive Alerts, DACH-Sprache) stammen aus dem Auftrag dieses Laufs, nicht
  aus `00` — die Suche ging damit über eine reine Bestätigung des Erstberichts
  hinaus.
