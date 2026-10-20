# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| 5-Domänen-Bundle (Networking, Security, Deployment, Observability, Monitoring) ist zu breit — in jeder Domäne zweitbester vs. Spezialisten (Cilium, Datadog, Langfuse, ArgoCD) und Hyperscaler bundeln gratis | **Weich** | Zuspitzen: Scope radikal verengen statt 5 Domänen gleichgewichtet zu verkaufen. Revision schneidet auf Hetzner-EU + Compliance-Fokus zu. |
| Gratis-OSS-Bundle existiert 1:1 (Kubeply ai-infra-platform: TF + ArgoCD + Traefik/cert-manager/kube-prometheus/Loki/external-secrets/Kyverno + vLLM/Qdrant; llmaker/Atlas/sovereign-stack/self-hosted-ai-stack) — Preis €149–399/Mo nicht tragfähig | **Weich** | Rollenwechsel: Werkzeug → Dienstleistung. Gratis ist Preisanker (K3), aber Support/SLA/Compliance-Zusicherung + "fertig installiert" trägt Service-MRR, nicht Tool-Lizenz. |
| Cold Outreach an Tech-Leads für vertrauenskritische Infra funktioniert strukturell nicht (Cluster-Zugang, Security-Versprechen, lange Evaluierung) — CAC €800–2.000 vs. CLV €4k marginal | **Weich** | Kanalwechsel: Cold Outreach nicht der Kanal. Erreichbar über Suche/Content, CTO-Slacks, Hetzner-/Cloudfleet-Partner, Helm/Terraform Registry, Empfehlung — K4: outreach_score bleibt niedrig, aber Produktkanal existiert. |
| Kein unfairer Vorteil für Julian in Platform-Engineering/K8s-Ops (Vorteil liegt bei Agent-Orchestrierung) — `A`-Lens "keiner" | **Unbelegt** als Kill — K6-Vorteile sind real, nur nicht in dieser breiten Infra-Form verwertbar. Zählen nicht als Tötungsgrund, aber heben Score nicht. | Streichen als Kill-Begründung, vermerken: DACH-Marke + bb/openclaw sind in Nische C/B als Vertriebshebel nutzbar (DACH-Vertrauen), nicht als Tech-Moat. |
| TAM klein (400–900 zahlungsbereite DACH-Kunden) + Kategorie reif/commoditisiert (K8s/GitOps Plateau) | **Weich** | Käuferwechsel + Zuspitzen: Statt "jedes AI-Team" → regulierte DACH-KMU (Kanzlei, Steuerberater, Klinik, Mittelstand mit EU-Datenpflicht) — kleinerer, aber zwanggetriebener TAM (AI-Act/GDPR). |
| Trust-/Haftungsrisiko Solo: SOC2/ISO/Audit-Trail erwartet, On-Call-Erwartung sprengt Solo-Kapazität | **Weich** | Schnittwechsel: Kleinster Beweis wird Service-Playbook (kein 24/7-Produkt-SLA), Audit-Log/report statt Plattform-Versprechen; Haftung via Disclaimer/Partner (Cloudfleet/Hetzner) abfedern. |
| Kategorie-Wachstum liegt bei LLM-Observability/Cost, nicht beim Infra-Bundling — dort bereits Spezialisten (Langfuse $29, Datadog $160, Kumply/Paralleliq) | **Weich** | Zuspitzen bestätigt: Observability-Monitoring als generischer Bundle-Bestandteil ist Commodity — im revidierten Plan nur noch als mitgeliefertes Dashboard, nicht als Differenzierer. |

## Harte Einwände

Keine. Kein Einwand erfüllt **Hart** (rechtlich unmöglich, technisch unmöglich, nachweislich kein Käufer). Alle Einwände sind überarbeitbar — deshalb genau eine Überarbeitungsrunde statt Abbruch.

## Überarbeiteter Plan

**Wechsel: A (Werkzeug, 5 Domänen) → B+C (Dienstleistung, DACH-Compliance-Fokus, Hetzner-EU)**

Was sich gegenüber `00c` ändert (je Änderung mit Begründung):

- **Zuspitzen — von "für jedes AI-Team" auf "regulierte DACH-KMU mit EU-Datenpflicht" (C-Nische):** Statt generisches Bundle wird verkauft: "Dein KI-Agent läuft in DE/FI (Hetzner), Daten verlassen nie den Cluster, jeder LLM-Call geloggt/auditierbar, AI-Act/GDPR-Nachweis per Knopfdruck." Begründung: EU-Souveränität (Hetzner GDPR + BSI C5, kein US CLOUD Act) ist der einzige in der Recherche belegte strukturelle Zwang, der Hyperscaler schwächt und Gratis-Bundles (die nur Technik liefern) nicht abdecken. Schärferer Kaufanlass als "spart DevOps-Zeit".

- **Rollenwechsel — von Tool-Abo (€149/399) auf productized Service (€2.900 Setup + €390/Mo Betrieb/Updates) (B):** Gleiches technisches Bundle (Kubeply/llmaker-artig), aber verkauft als "DONE FOR YOU": Hetzner-Cluster + gehärtetes Bundle installiert, 3 Services onboarded, Dashboards + Alerting + quartalsweises Update. Begründung: Beantwortet K3 (Gratis trägt kein Abo, aber Support/Haftung/SLA trägt Service) und Trust-Einwand (persönlicher Setup statt "installier unser Chart in deinem Cluster"). Solo als Playbook lieferbar, keine 24/7-Plattform-Pflicht.

- **Schnittwechsel — kleinster Beweis schrumpft:** Nicht "CLI installiert 5 Domänen", sondern **ein** Hetzner-Cluster (k3s) + **ein** Demo-Agent + Audit-Log-Export (CSV/PDF: wer, wann, welches Modell, welche Daten) + Grafana-Dashboard (Kosten/Traces) + 2 Alerts. **Bewusst nicht drin:** Multi-Cluster, feingranulares Policy-Engine über Baseline hinaus, Custom UI, Hyperscaler-Support.

- **Kanalwechsel — Cold Outreach → Suche/Content + Partner:** Ziel nicht Kaltmail an CTO, sondern SEO ("KI Agent DSGVO konform betreiben"), CTO-Slacks, Hetzner-/Cloudfleet-Referral, Steuerberater-/Kanzlei-Verbände. Begründung: Kritiker-Einwand "Kanal ungeeignet" war korrekt — neuer Kanal passt zur Person (regulierte KMU suchen Compliance, nicht Kaltmail).

- **Käuferwechsel — CTO 15–60-MA SaaS → Geschäftsführung/IT-Leitung einer 20–80-MA Kanzlei/Steuerkanzlei/Klinik/Mittelständler mit EU-Datenpflicht + externem Datenschutzbeauftragten:** Auslöser ist nicht Kosten-Spike, sondern Kunden-/Mandantenanfrage "Wo laufen eure LLM-Daten?" oder AI-Act-Dokumentationspflicht. Auffindbar über Kammer/Verband, nicht LinkedIn-Blast.

Verworfen bleibt: Breites 5-Domänen-Tool für generisches SaaS-Team — es hatte keinen Wedge nachweisbar.

Nicht erlaubt und nicht getan: Einwand ignoriert oder Plan verwässert ("wir machen alles ein bisschen") — Revision spitzt zu und wechselt Rolle/Kanal, behält aber den Kern (opinionated Bundle für AI-Prod).

## Neue Bewertung

- outreach_score: **3/10** (vorher 2/10) — Dienstleistung + Compliance-Nische hebt Reachability minimal (regulierter Käufer hat Zwang und ist über Verband/Content besser auffindbar als generischer SaaS-CTO per Kaltmail), aber Cold Outreach bleibt falscher Kanal; CAC/CLV und Frequenz bleiben schwach. Auto-Kill-Schwelle <4 weiterhin gerissen → NO-GO für Pipeline, aber ehrlicher als 2.

- product_score: **5/10** (vorher 3/10) — Besetzter Markt, aber nach K2-Suche ist **ein plausibler Wedge benennbar**: productized DACH-Compliance-Service auf Hetzner-EU (GDPR + BSI C5, kein CLOUD Act, flat pricing €184/GEX44 vs. AWS g5.xlarge ~$734/Mo, offline/auditierbar) für regulierte KMU, die Hyperscaler meiden und Gratis-OSS nicht selbst betreiben wollen. Solo baubar als Playbook (12–18 Tage für Beweis, Service nicht Plattform-SLA). Ausgang offen — kein 6 (klarer Wedge + solo baubar + normal gutes Geschäft), weil Sovereign Stack/Cloudfleet/Scaleway denselben EU-Wedge bereits adressieren und Trust/Haftung solo fragil bleibt.

- buildable: **no** (product_score 5 < 6)

## Ehrliches Fazit

Die Überarbeitung löst das Kernproblem (Gratis-Bundle schlägt Tool-Abo, Cold Outreach falscher Kanal) durch Rollen- und Kanalwechsel — aus "Tool für alle" wird "Service für regulierte DACH-KMU auf Hetzner". Das verschiebt die Frage von "warum soll ich für ein Bundle zahlen, das es gratis gibt?" zu "wer haftet und wartet meinen EU-Cluster?". Das ist tragfähiger, aber nicht 6-würdig: Der Wedge ist plausibel, nicht klar; der Markt bleibt von Gratis-OSS (Kubeply/sovereign-stack) und EU-Anbietern (Scaleway/Cloudfleet) flankiert, und Julians Agent-Vorteil greift nur als DACH-Vertrauensmarke, nicht als Tech-Moat. Die Runde hat das Urteil von "tot ohne Wedge" auf "offen, aber schmal" gehoben — und ehrlich bei 5 belassen, statt zu retten um des Rettens willen.
