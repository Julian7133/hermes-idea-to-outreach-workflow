# 01b — Synthese (eine Überarbeitungsrunde)

> Walt-Disney-Synthese: Kritiker-Einwände aus 01 gegen Realisten-Plan 00c prüfen, genau eine Überarbeitungsrunde.

## Einwände sortiert

| # | Einwand aus 01 | Klasse | Begründung + Antwort |
|---|---|---|---|
| 1 | Schnittmenge "Linear/Jira + Agent-Markdown" heute schmal (Power-User-Nische, TAM 200–1.000 Teams DACH) → Risiko, 30 Kunden im Jahr 1 zu verfehlen | **Weich** | Marktbreite ist kein K.o., sondern Fokus-Frage. Überarbeitbar durch Zuspitzen auf Linear-first (größte Agent-Affinität) + Nische, in der der Schmerz am akutesten ist (Teams mit striker Trennung Dev↔Stakeholder). |
| 2 | Gratis-Anker: `jira-markdown`, `JiraBridge` (Jira, gratis), Obsidian-Plugins (Linear, gratis) senken Zahlungsbereitschaft; "bauen wir intern in 1 Tag" | **Weich** | Nach K3: Gratis ist Preisanker, kein Todesurteil. Behebbar durch Differenzierung, die Gratis nicht bietet: Linear+Jira-Abdeckung in einem Tool, agent-Konvention statt generisches Markdown, konfliktsichere Audit-Spur. Kritiker selbst nennt genau diese Lücke als Wedge. |
| 3 | Outreach-Liste klein und erklärungsbedürftig ("Board und Agent laufen auseinander" muss erst verstanden werden) | **Weich** | Kanal-/Formulierungsproblem, nicht fehlender Käufer. Überarbeitbar durch Kanalwechsel: Community/Content-Pull (bb/Discord, Demo-Video) ergänzt Cold-Outreach statt ihn zu ersetzen — genau der Realisten-Plan sieht beides vor. |
| 4 | Plattform-Risiko: Linear/Jira API-Brüche, Custom-Status-Mapping, Jira on-prem | **Weich** | Technisches Risiko, aber nicht unmöglich; Linear/Jira-APIs sind public und stabil, Jira on-prem wird bewusst aus MVP-Schnitt ausgeklammert. |
| 5 | Retention gebunden an Agent-Praxis-Kontinuität (bricht das Team die Markdown-Planung ab, bricht der Nutzen) | **Weich** | Nutzungsrisiko, aber 2026-Trend zeigt wachsende, nicht schrumpfende Agent-Adoption (AGENTS.md >60k Repos, planning-with-files 70+ Agents). Außerdem Habit-Moat: Wer die Konvention einmal etabliert, kehrt seltener zurück. |
| 6 | — | **Hart — keiner** | Kein Einwand ist rechtlich/technisch unmöglich oder belegt, dass kein Käufer existiert. BMAD #666 und Wettbewerber-Existenz belegen Gegenteil: Schmerz und Teil-Lösungen existieren, Lücke ist benennbar. |
| 7 | — | **Unbelegt — keiner** | Alle Einwände sind belegt und greifen den Realisten-Plan an, nicht eine erfundene Prämisse (K1 sauber). Keine Streichung nötig. |

## Harte Einwände
Keine — Abbruch nicht gerechtfertigt. Ein einziger harter Einwand hätte beendet; hier liegt nur ein Bündel weicher Einwände vor, die eine Überarbeitung erlauben.

## Überarbeiteter Plan (genau eine Runde)

**Was unverändert bleibt:** CLI `planning-sync` mit `.planning/*.md` ↔ Linear, lokaler Sync-State, konfliktsichere Marker, Git-Hook, Fixpreis €49/€199, Dogfooding im Hermes-Repo. Das ist der bewiesene Kern.

**Änderungen gegen die weichen Einwände:**

1. **Zuspitzen — Linear-first, Jira als Phase 2 (gegen Einwand 1+4):** 00c nannte Linear+Jira parallel; überarbeitet: MVP ist **ausschließlich Linear**. Begründung: Linear-Teams sind 2026 agent-affiner (enger Fit zum bb/Claude-Code-Ökosystem), API einfacher, Doku besser, Auth trivial. Jira (schwieriger: Custom-Status, on-prem) kommt erst nach 10 zahlenden Linear-Teams. Das halbiert Build-Risiko und schärft ICP ("Linear + Agents" ist suchbar, "Jira + Agents" ist breiter und verwässerter). TAM wird ehrlich kleiner, aber der Weg zu 30 Kunden wird kürzer.

2. **Rollen-Schärfung — "CLI, nicht Obsidian, nicht Confluence" (gegen Einwand 2):** Explizit als **git-nativer CLI** positionieren, nicht als Vault-Plugin oder Wiki-Sync. Marketing-Satz: "Obsidian-Plugins syncen Vaults, wir syncen Repos." Das trennt den Wedge vom validierten Gratis-Wettbewerb (Obsidian) und vom Jira-only-CLI und macht "internes Skript" schwerer: Konfliktstrategie + State + Hook sind mehr als `parse → POST`.

3. **Kanalwechsel — Pull vor Push (gegen Einwand 3):** Cold-Outreach bleibt im Plan, aber nicht als Hauptkanal. Primär: **Community-Pull** — Demo-Video "Vorher: Montags-Drift, Nachher: Sync" in bb/openclaw-Discord + berlow.de-Artikel + Verteilung als `agent-planning-sync`-Skill (ClawHub/bb-Skill-Registry). Sekundär: 20–30 handverlesene Cold-Mails mit demselben Video als Anhang (Reply-Rate-Test). Damit wird die erklärungsbedürftige Idee **gezeigt statt erklärt** — CAC sinkt, und der enge Liste-Nachteil wird durch Pull kompensiert.

4. **Käufer bleibt, Preisanker adressiert (gegen Einwand 2, K3):** Tim (EM, Linear, 9 Devs) bleibt erster Käufer. Gegen "gratis reicht": Pitch betont, was Gratis nicht bietet — **bidirektional Linear + Konfliktaudit + Support/SLA-light + DACH-Support auf Deutsch**. Jahresplan €490 (€49×10) als Anker gegen "einmaliges Skript" (ROI <1 Woche EM-Zeit). Setup-Alternative €990 fängt Skeptiker ab, die SaaS scheuen.

5. **Schnitt unverändert, Risiko benannt:** Kein Feature-Creep. Überarbeitung verwässert nicht. Jira, Dashboard, Auto-Plan bleiben draußen. Risiko "Agent-Praxis bricht ab" wird im Marketing ehrlich adressiert: Tool verkauft sich nur an Teams, die Markdown-als-Source-of-Truth bereits leben (BMAD-Prinzip) — genau diese Teams sind die Zielgruppe, nicht "alle Jira-Nutzer".

## Neue Bewertung

| Score | Vorher (Kritiker 01) | Nachher (Synthese) | Begründung der Änderung |
|---|---|---|---|
| **outreach_score** | 4/10 | **5/10** | Linear-first schärft die Suchbarkeit (Stack-Signal "Linear" ist eindeutig), Kanalmix Pull+Push senkt Erklärungsaufwand (Video zeigt statt erklärt). Bleibt schmal, aber von "knapp GO" zu "solides GO" — Ausgang offen, aber plausibler Wedge benennbar (K5: 4–5). |
| **product_score** | 6/10 | **6/10** | Unverändert: Klarer Wedge (agent-Konvention + Linear, git-nativ, konfliktsicher), benennbarer Zahler (Tim), solo baubar in 12–18 Tagen, Julian-Vorteil bleibt, alternativer Weg zum Kunden (Community/Content + Cold-Mail) existiert. K5-Definition 6 ("Klarer Wedge, benennbarer Käufer, solo baubar — normales gutes Geschäft mit Wettbewerb") trifft weiter exakt. Kein Anlass für 7 (dazu fehlte regulatorischer Zwang oder struktureller unfairer Vorteil über K6 hinaus). |
| **buildable** | yes | **yes** | product_score 6 ≥ 6 |

## Ehrliches Fazit
Die Überarbeitung hat den engsten Einwand (schmale Schnittmenge) nicht wegdefiniert, sondern **zuspitzt**: Linear-first macht die Nische kleiner, aber suchbarer und billiger zu bedienen — das ist ein echter Trade-off, kein Verschieben. Der Gratis-Einwand bleibt der härteste Gegner; er ist nach K3 kein K.o., aber der Pitch muss ihn jedes Mal aktiv gewinnen (Konfliktstrategie + Support). Insgesamt: Die Idee hat ihre Anpassungsrunde genutzt und steht danach **nicht gerettet, sondern präzisiert** da — tragfähig für einen Solo-MVP, aber kein Selbstläufer; der nächste Prüfschritt ist nicht mehr Desk, sondern 10 Problem-Interviews mit dem Fake-Screenshot.
