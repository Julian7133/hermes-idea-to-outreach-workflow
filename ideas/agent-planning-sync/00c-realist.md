# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug (CLI + Git-Hook/GitHub App).** Solo am schnellsten zu einem zahlenden Kunden: verkauft sich als konkretes, installierbares Artefakt mit klarem Demo-Effekt ("vorher Drift, nachher konsistent") und benötigt keine wiederkehrende Dienstleistungszeit. B und C bleiben als Ausbau/Nische erreichbar, aber A liefert den kleinsten beweisbaren Kern und die beste Distribution über Agent-Ökosysteme (bb, Claude Code Skills).

Verworfen, aber aufgehoben: **B — Dienstleistung** als Premium-Onboarding (€990 Setup) ergänzt Werkzeug A ideal, steht aber nicht im MVP-Schnitt; **C — Jira-on-Prem-Nische** ist wertvoll, aber Markt kleiner und Sales-Zyklus länger — gut als Wedge später, nicht als erster Schritt.

## Der erste zahlende Kunde
**Tim, Tech-Lead (Team 9 Devs, B2B-SaaS Startup, DACH/Remote, Linear-Nutzer)**, dessen Team seit Q2 2026 Features über `bb`-Workflows und Claude-Code-Pläne (`STATE.md`, `ROADMAP.md`) orchestriert. Auslöser: Im Sprint-Review fällt auf, dass Linear zwei Wochen hinter dem Agent-Plan zurückhängt — Stakeholder fragen "wo steht Phase X?", er muss 90 Minuten manuell abgleichen. Er merkt den Schmerz **montags vor dem Planning** und erneut **freitags beim Reporting**. Budgethoheit für Tooling bis ~€200/Mo ohne Procurement.

**Erreichbar über:** Enge Schnittmenge finden: Linear-Nutzer + Agent-Nutzer. Kanäle: (1) **GitHub/Linear-Community** (Linear Slack, bb/openclaw Discord, Claude Code Community) — dort sprechen genau die Power-User, die das Drift-Problem haben; (2) **Content + Demo-Video** ("Wie wir Linear ↔ Markdown ohne Doppelpflege halten") über berlow.de / Substack — zieht Pull-Interesse; (3) **Kaltakquise als Ergänzung:** 30 handverlesene EMs/TLs aus DACH-SaaS mit Linear-Profil (z. B. über Tech-Stack-Signale: Linear public changelog, Hiring "Linear" auf LinkedIn) per 1:1 Mail mit harter Drift-Formulierung: "Laufen bei euch Board und Agent-Pläne auseinander?" — genau das konkrete Ops-Problem, das sonst niemand benennt.

## Der kleinste Beweis
**Eingabe:** Ein Repo mit `.planning/*.md` (z. B. `ROADMAP.md` mit Tasks: Titel, Owner, Status, Dependencies als Frontmatter/Markdown-Konvention). Konfig `planning-sync.yml` mappt Markdown-Felder → Linear-Team/Issue-Felder.

**Verarbeitung:** CLI `planning-sync push` parst Markdown (frontmatter + Headings + Checkboxen), diffed gegen letztem Sync-State (`.planning/.sync-state.json`), erzeugt/aktualisiert Linear-Issues via API (idempotent, kein Duplikat). `planning-sync pull` holt Issue-Status/Kommentare → schreibt sie als Annotations/Status-Badges zurück ins Markdown (konfliktsicher: bei beidseitiger Änderung seit letztem Sync wird ein Markdown-Konfliktmarker + Linear-Kommentar erzeugt, stilles Überschreiben verboten).

**Ausgabe:** Linear-Issues spiegeln Markdown-Plan 1:1; Markdown spiegelt Linear-Kommentare/Status zurück. Audit-Spur: Git-Diff zeigt, was sich wann änderte.

**Bewusst nicht drin:** Jira-Support, Canvas/Board-UI, automatische Plan-Generierung, Multi-Repo-Federation, Web-Dashboard. Nur Linear, nur CLI + lokaler State, ein Team/Workspace.

## Weg zum ersten Euro
**Preis:** **€49/Mo** (Linear-only, CLI) und **€199/Mo** (Jira+Linear, GitHub App). Begründung: Nutzen ist ersparte Manager-Stunde pro Woche (EM-Stundensatz ~€90–120 → ROI in <1 Woche) plus vermiedenes Reporting-Risiko; Fixpreis pro Workspace statt per-Seat umgeht Linear/Jira-per-Seat-Preisanker und ist für Teams <20 psychologisch günstig. Alternativ €990 Setup für Skeptiker.

1. MVP bauen (CLI + Linear-API + lokaler Sync-State, 10–15 Tage) und im Hermes-Repo selbst dogfooden (`.planning` ↔ Linear-Demo-Workspace) mit Vorher/Nachher-Demo.
2. 10 Design-Partner-Talks führen (aus eigenem Netzwerk + 30er-Kaltliste) mit konkreter Drift-Frage, nicht Feature-Pitch — 3 davon als Beta gegen €0, aber mit Commitment für Case-Study.
3. Öffentlicher Demo-Schnitt (5-Min-Video + berlow.de-Artikel + bb/openclaw-Skill-Package) live stellen, der genau den Montags-Drift zeigt und löst.
4. Beta → Paid konvertieren: nach 2 Wochen Beta 1:1-Call "Was hat euch die Doppelpflege vorher gekostet?", Angebot €49/Mo bzw. €490/Jahr; wer zögert, bekommt das €990-Setup als Alternative.
5. 20 weitere Teams per gezielter 1:1-Ansprache (Linear + Agent-Signal) mit Beta-Case-Study anschreiben — Pipeline mit <30 Leads im Hermes-Limit.

## Aufwand und Abhängigkeiten
**Aufwand:** ~12–18 Tage für CLI-MVP (Parser 3d, Linear-API + State 5d, Konfliktstrategie + Hooks 4d, Doku/Demo 3d). Solo machbar ohne Fremdcode beyond API-Clients.

**Fehlende Zugänge:** Kein Linear-Partnerstatus nötig (public API reicht); für Jira später OAuth/Connect-App erforderlich. Kein Kapitalbedarf.

**Drittabhängigkeiten:** Linear API (public, stabil, gut dokumentiert) — Risiko niedrig; Jira Cloud API (komplexer, aber ebenfalls public) — Risiko mittel; Markdown-Konvention (eigene Festlegung, kein externes Schema) — Risiko gering, aber Adoptionsfrage.

## Riskanteste Annahme
**Annahme:** Das Drift-Problem ist häufig und schmerzhaft genug, dass ein EM dafür €49/Mo zahlt — und nicht als "15-Minuten-Skript, das ein Dev intern baut" abtut.
**Billiger Test:** 10 × 20-minütige Problem-Interviews mit TLs/EMs, die Linear + Claude Code/bb nutzen (aus Community + LinkedIn-Signal) mit genau einer Frage: "Wie haltet ihr Board und Agent-Pläne heute konsistent — und was kostet euch das pro Woche?" + zeigen eines Fake-Screenshots (Markdown ↔ Linear Sync) und fragen: "Würdet ihr dafür €49/Mo zahlen, wenn es morgen funktioniert?" <3 × "Ja, sofort" → Annahme wackelt vor jedem Code.
