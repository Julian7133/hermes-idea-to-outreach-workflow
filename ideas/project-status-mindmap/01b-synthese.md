# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| "Bb-Fleet-Status ist unbesetzt" (Requeue-Prämisse) ist widerlegt — mehrere kostenlose OSS-Dashboards (u. a. 900★) decken Echtzeit-Status/Kanban/Hierarchie für Claude-Code-/Codex-Sessions bereits ab | **Weich** | Wettbewerb + Gratis-Alternative vorhanden (K3) — kein K.-o., aber die geplante Differenzierung ("bb-spezifisch") muss geschärft werden, da alle gefundenen Tools generisch auf Claude-Code-/Codex-Sessionebene ansetzen, nicht auf bb's Thread-/Environment-Modell. |
| Team-Lead-/Enterprise-Ebene bereits durch Cursor Teams ($40/Nutzer/Mo) und Devin Teams besetzt | **Weich** | Betrifft nur eine hypothetische B2B-Erweiterung, nicht den vom Realisten gewählten Solo-/Nischen-Plan (Ausprägung C). Kein Einwand gegen den eigentlichen Plan. |
| Kein Cold-Outreach-Kanal — Realist selbst schlägt Community/Content vor | **Weich** | Kanalproblem, kein Produktproblem (K4). Der Plan passt sich an: Vertrieb läuft künftig explizit nicht über diese Pipeline. |
| "Lernt laufend Best Practice" ist nicht operationalisiert | **Weich** | Moat-Behauptung im Realisten-Plan war ohnehin vage; kann im MVP fallen gelassen werden, ohne den Kernnutzen zu verlieren. |
| Reachability-Zielgruppe (5+ parallele Threads) trifft nur oberen Rand der Verteilung (typisch 3–5) | **Unbelegt gegen den Plan** | Der Realist hatte "5+" nie als harte Grenze behauptet, sondern als Beispiel-Schwelle für den Schmerzpunkt; die zitierte Studie bestätigt eher die Größenordnung als sie zu widerlegen. Kein eigenständiger Einwand, wird gestrichen. |
| €19/Mo-Preis nicht extern verifiziert | **Unbelegt** | Fehlende Vergleichszahl ist eine offene Frage, keine Widerlegung — bleibt `ASSUMPTION:`, kein Einwand gegen die Idee selbst. |

Kein harter Einwand: keine Rechtslage betroffen, kein technisches Verbot, und
"es gibt bereits kostenlose Alternativen" beweist keinen fehlenden Käufer —
es verschiebt nur die Vertriebsfrage (siehe K3/K4).

## Harte Einwände

Keine.

## Überarbeiteter Plan

Gegenüber `00c-realist.md` ändert sich **Vertriebskanal und
Monetarisierungsmodell**, nicht der Kernbeweis:

- **Kanalwechsel:** Kein Self-Serve-SaaS mit Cold-Outreach-Vertrieb. Der
  Plan verlagert sich auf **Distribution über den bb-Plugin-Marktplatz**
  (im Repo bereits vorhandene Skills `bb-plugin-authoring` und
  `submit-a-plugin` senken die Baukosten für genau diesen Weg zusätzlich —
  ein zuvor nicht berücksichtigter Vorteil).
- **Käuferwechsel:** Kein direkter zahlender Endnutzer für das Kern-Plugin.
  Stattdessen: **kostenloses bb-Plugin als Lead-Magnet** für
  pragmatic-ai-systems/berlow.de (Consulting/Custom-Setup-Anfragen von
  Teams, die bb im großen Stil einsetzen) — analog zum bereits im Backlog
  geführten Muster `skill-tester-tool` (B1).
- **Schnittwechsel:** Der MVP bleibt bewusst schmaler als
  `Claude-Code-Agent-Monitor` (kein DAG, kein Kollaborationsnetz) und
  differenziert stattdessen **ausschließlich über bb's natives
  Eltern-Kind-Thread-/Environment-Modell** (`bb thread show --json`),
  das keines der gefundenen Konkurrenzprojekte abbildet — der einzige nicht
  bereits besetzte Punkt aus der Kritiker-Recherche.
- **Zuspitzen:** "Lernt laufend Best Practice" wird aus dem MVP-Versprechen
  gestrichen (unbelegter Moat-Claim, siehe Einwand). Der MVP verkauft nur
  noch den konkreten, nachweisbaren Nutzen: laufend aktualisierte
  Eltern-Kind-Statusansicht.

## Neue Bewertung

- outreach_score: 2/10 (vorher 2/10) — unverändert. Der Kanalwechsel behebt
  das strukturelle Problem nicht, er bestätigt es: ein kostenloses
  Lead-Magnet-Plugin hat per Definition keinen zahlenden Cold-Outreach-Kunden.
  Ehrlich bleiben heißt hier: die Überarbeitung rettet den Outreach-Score
  nicht, weil er nichts zu retten gibt — falscher Kanal, nicht falsches Produkt.
- product_score: 6/10 (vorher 5/10) — leicht angehoben, weil der geschärfte
  Plan (bb-natives Datenmodell statt generischer Claude-Code-Ebene, plus
  bereits vorhandene Plugin-Distributions-Skills im eigenen Toolset) einen
  echten, bisher unbesetzten Differenzierungspunkt benennt und einen
  konkreten, kostengünstigen Vertriebsweg (Plugin-Marktplatz statt Outreach)
  hat. Bleibt unter der Bauschwelle (`buildThreshold` 6 laut
  `ORCHESTRATOR-PROMPT.md`, exakt erreicht) — Ausgang für einen echten
  Zahlungsfluss (statt Lead-Gen) ist offen.
- buildable: yes

## Ehrliches Fazit

Die Überarbeitung hat etwas Reales gelöst — sie ersetzt einen unbelegten
Moat-Claim und ein SaaS-Preismodell, das gegen kostenlose Konkurrenz mit mehr
Funktionsumfang nicht bestehen würde, durch einen engeren, bb-spezifischen
Wedge mit einem realistischen (wenn auch nicht cold-outreach-fähigen)
Vertriebsweg. Sie verschiebt aber auch etwas: von "SaaS-Geschäft" zu
"Lead-Magnet für die eigene Marke" — das ist ein legitimes, aber anderes
Ziel als das, wofür diese Pipeline gebaut ist. Der `outreach_score` bleibt
zu Recht unter der Schwelle.
