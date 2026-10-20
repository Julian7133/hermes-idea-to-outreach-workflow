# 01 — Devalidation Report

> Gefüllt durch `clearframe-devalidation` als **Kritiker** (greift Realisten-Plan A — opinionated Werkzeug-Bundle — an, nicht die rohe Idee).
> Live-Recherche: 2026-09-07. **Wedge-Suche nach K2 dokumentiert.** Synthese-Entscheid: siehe `01b-synthese.md` (finale Scores).
> `boring-and-trends-check` wurde **nicht** ausgeführt (outreach_score < 4, Token-Spar-Regel — greift erst nach Synthese endgültig).

## Verdict (Kritiker — vor Synthese)

- **outreach_score:** 2/10
- **product_score:** 3/10
- **buildable:** no (product_score < 6)
- **Go/No-Go (für Outreach-Pipeline):** NO-GO
- **One-line reason:** Fünf-Domänen-Bundle trifft auf gesättigten Markt mit etablierten Gratis-Bundles (Kubeply, llmaker, Sovereign Stack) und Hyperscaler-/IDP-Incumbents (Hetzner/Cloudfleet, Civo, Humanitec/Port); kein nachweisbarer Preis-, UX- oder DACH-Wedge nach aktiver Suche — und Cold Outreach an Tech-Leads für vertrauenskritische Infra ist strukturell kein Kaufkanal.

## CLEARFRAME breakdown (gegen Realisten-Plan)

| Lens | Assessment |
|---|---|
| **C**ustomer | CTO/Lead Engineer eines 15–60-MA B2B-SaaS-/Agentur-Teams in DACH, erster KI-Agent live, kein Platform-Team, Cluster auf Hetzner/Vultr/kleinem AWS — präzise beschrieben in `00c`, aber schmal und misstrauisch gegenüber Fremd-Infra per Kaltmail. |
| **L**onging/Job | "Mach meinen Agenten produktionsreif": Networking (Ingress/mTLS), Security (Secrets/Policy), Deployment (GitOps), Observability/Monitoring (Logs, Traces, GPU-/Token-Kosten) — aus einem Guss, ohne 3 Wochen DevOps-Verkabelung. |
| **E**xisting solution | 1) Gratis OSS-Bundles: **Kubeply ai-infra-platform** (Terraform + ArgoCD, Traefik, cert-manager, kube-prometheus-stack, Loki, external-secrets, Kyverno, GPU/vLLM/Qdrant-Module), **llmaker** (Docker, Ollama, Qdrant/Chroma, Redis, Langfuse, Open WebUI, ein Befehl), **Atlas** (30+ Services hinter Kong, 7 Tracks), **Sovereign Stack** (LiteLLM + pgvector + Prometheus/Grafana/Loki/Phoenix, EU-Datensouveränität), **self-hosted-ai-stack** (Ollama + LiteLLM + AnythingLLM + Embeddings, MIT, 123★) — alle kostenlos/self-hosted. 2) Managed K8s/IDP: Hetzner (kein managed K8s, daher Cloudfleet), Civo Managed K8s ab $5.43/Mo, DigitalOcean DOKS ab $12/Mo, ATIP $249–749/Mo, Kubernetix $0–50/Mo, Humanitec €1.999–4.999/Mo, Port $20–50/User/Mo, Backstage TCO ~$150k/20 Devs. 3) LLM-Observability/Cost: Langfuse Hobby $0/Core $29/Pro $199/Enterpr. $2.499, LangSmith Dev $0/Plus $39/Seat, Datadog LLM Observability Free 40k Spans/Pro $160/Mo für 100k Spans, Torrix/OpenLIT self-hosted MIT, Helicone $79, Kumply/AISpendOps via Proxy. |
| **A**lternative cost | ASSUMPTION: Team bastelt heute mit kube-hetzner/k3s + Prometheus/Grafana + Langfuse selbst — 40–80 Stunden Initial + 5–10 h/Monat Wartung. Verlorene Kosten: Incident-Risiko, GPU-/Token-Blindflug. Alternative ist nicht "nichts tun", sondern "Gratis-Bundle nehmen" — Kosten quasi null außer eigener Zeit. |
| **R**eachability | Schwach für Cold Outreach: Tech-Leads sind auf LinkedIn/GitHub auffindbar, kaufen aber **vertrauenskritische Infra nicht per Kaltmail** (Cluster-Zugang, Security-Versprechen). Der realistische Kanal laut `00c` ist Suche/Content/Community/Terraform Registry — K4: Outreach_score drückt genau das. |
| **F**requency | Einmaliges Setup + laufende Wartung/Observability — kein täglicher Burning Pain mit Kaufimpuls. Token-/GPU-Kosten-Alerts sind periodisch, aber der Bundle-Kauf ist eine **einmalige Plattform-Entscheidung** (hohe Wechselkosten, lange Evaluierung). Schwache Frequenz für Outreach-Retention. |
| **R**evenue | ASSUMPTION: €149/Mo Starter / €399/Mo Team × 40 Team-Kunden = ~€191k ARR — rechnerisch plausibel, aber **gegen Gratis-Konkurrenz** und Hyperscaler-Bundling ist €399 erklärungsbedürftig; Support/SLA/Compliance als einzige Differenzierung trägt den Preis nur mit hohem Trust. Productized Service €3.5k + €490/Mo MRR analog. |
| **A**dvantage | K6-Vorteile (bb/openclaw Agent-Orchestrierung, ~20 Projekte, berlow.de/pragmatic-ai-systems, DACH) gelten kaum: Vorteil liegt in Platform-Engineering/K8s-Ops, nicht Agent-Orchestrierung. Kein unfairer Vorteil im Infra-Bundling gegenüber Platform-Teams und OSS-Maintainern. Ehrlich: keiner. |
| **M**oat-later | Kaum: OSS-Charts sind kopierbar, Hyperscaler integrieren Features als Gratis-Beigabe, Dashboards/Alerts sind commodity. Moat wäre nur Community/Distribution oder tiefe DACH-Compliance-Zertifizierung — beides nicht im Werkzeug-Plan enthalten. |
| **E**ffort | 9/10 solo: Fünf Domänen (Networking, Security, Deployment, Observability, Monitoring) in **einem** opinionated Release zu härten, versionieren, updaten, dokumentieren und zu supporten — plus GPU-/Token-Cost-Exporter, mTLS, Policy. Selbst mit OSS-Bausteinen ist der Integrations- und Haftungsaufwand brutal; On-Call-Erwartung eines Infra-Produkts sprengt Solo-Kapazität. |

## CLEARFRAME + Market Reality

- **TAM (sanity):** ASSUMPTION: DACH ~8–15k Produktteams (5–60 MA) mit erstem KI-Agenten/RAG live in 2026; davon haben ~30–50 % kein Platform-Team (2.5–7k). Davon sind für ein **bezahltes Bundle** (statt Gratis-OSS) realistisch nur Teams mit Budget und EU-Datenpflicht kaufbereit — Größenordnung **400–900** adressierbare Kunden in DACH, nicht 10k. Kein Fantasy-TAM.
- **Saturation / competition:** **Extrem gesättigt, Gratis dominiert.** (1) Gratis-Bundle-Ebene: Kubeply (TF + ArgoCD, Hetzner CX22 €3.29/Mo, HA 3×CX32, Module für Traefik/cert-manager/kube-prometheus-stack/Loki/external-secrets/Kyverno + AI-Module vLLM/Qdrant/Argo-Workflows), llmaker (ein Befehl, private network, Langfuse integriert), Sovereign Stack (Prometheus/Grafana/Loki/OTel/Phoenix, offline Bundles, Apple Silicon + CUDA), self-hosted-ai-stack (MIT, 123★, 4.5 GB minimal). (2) Managed/IDP-Ebene: Hetzner hat **kein** managed K8s — daher Drittanbieter Cloudfleet (99.95 % SLA), Civo $5.43/Mo, DO DOKS $12/Mo, ATIP $249/$749/Mo, Kubernetix $0–50/Mo, Humanitec €1.999–4.999/Mo, Port $20–50/User/Mo, Backstage TCO ~$150k/20 Devs bzw. $543k Year-1/200 Devs. (3) LLM-Observability/Cost-Ebene: Langfuse $29/$199/$2.499 (50k free units, $8/100k), LangSmith $39/Seat (5–10k traces inkl.), Datadog $160/Mo/100k LLM-Spans + Retention-Aufpreis, Torrix/OpenLIT self-hosted MIT, Kumply/AISpendOps (Proxy, Kill-Switch, ISO/AI-Act-Reports). Dominant: Hyperscaler + OSS — nicht ein Wettbewerber, sondern ein Ökosystem.
- **Category maturity & growth:** **Growth, aber reif in der Infra-Schicht.** Kubernetes/GitOps/Observability sind Plateau (commoditisiert), AI-Observability/Cost ist Growth (Explosion 2025/26 durch Agenten). Risiko liegt nicht bei Konkurrenzarmut, sondern bei **Awareness/Trust-Cost** — Kunde muss dem Bundle sein Cluster anvertrauen, während Gratis-OSS und Hyperscaler als "sicherer Default" gelten. Bundling als Kategorie ist nicht emerging, sondern konsolidiert.
- **CAC vs CLV sanity:** ASSUMPTION: CLV bei €399/Mo und 10–12 Monaten Retention = ~€4.0–4.8k. CAC via Cold Outreach an Tech-Leads: niedrige Reply-Rate (<2 %), lange Evaluierung, Proof-of-Trust nötig (Demo-Cluster, Security-Review) → CAC realistisch €800–2.000+ → **strukturell marginal**; zusätzlich drückt Gratis-Alternative die Zahlungsbereitschaft (K3: "Gratis ist Preisanker, kein Todesurteil" — aber hier ist Gratis ein **vollwertiges Substitut**, nicht nur Support-Lücke). Community/SEO-CAC günstiger, aber nicht Cold Outreach — bestätigt K4-Split.
- **Difficulty score:** 9/10 (Build + GTM). Technisch: 5 Domänen härten/updaten/supporten solo. GTM: Trust-Aufbau für Infra, gegen Gratis-OSS und Hyperscaler-Bundling positionieren, ohne Enterprise-Sales.
- **Key risks:**
  1. **Gratis-Substitut tötet Preis:** Kubeply/llmaker/Sovereign Stack liefern 80 % des Realisten-Versprechens für €0 + eigene Zeit — Support/SLA/Updates als einziger Zahlgrund trägt maximal ein Service-Modell, kein Tool-Abo.
  2. **Trust- und Haftungsrisiko:** Kunde gibt Cluster-/Netzwerk-Zugang — Solo-Anbieter ohne SOC2/ISO/Audit-Trail wird bei Security-Versprechen nicht gekauft; ein Incident zerstört Reputation.
  3. **Breite vs. Tiefe:** 5 Domänen bündeln heißt in jeder Domäne "zweitbester" sein — Spezialisten (Cilium, Datadog, Langfuse, ArgoCD) sind je Domäne besser, Hyperscaler bündeln gratis.

## Cited market signals (researched 2026-09-07)

- Kubeply ai-infra-platform ist exakt das vorgeschlagene Bundle — nur gratis: Terraform, ArgoCD, Traefik, cert-manager, kube-prometheus-stack, Loki, external-secrets, Kyverno, AI-Module vLLM/Qdrant/Argo Workflows, Hetzner CX22 €3.29/Mo. [GitHub — kubeply/ai-infra-platform](https://github.laiyagushi.com/kubeply/ai-infra-platform)
- ATIP managed Kubernetes Platform $249/Mo Launch / $749/Mo Premium — zeigt etablierten Preis für "DevOps-Hiring ersetzen". [ATIP Pricing](https://avangelstec.com/pricing/)
- Hetzner hat kein managed K8s (Lücke), aber Cloudfleet füllt sie als managed K8s auf Hetzner (CNCF-konform, 99.95 % SLA, GDPR, BSI C5-Attestierung), plus Hetzner GPU GEX44 €184/Mo / GEX131 €889/Mo, EU-DCs in Falkenstein/Nürnberg/Helsinki. [Cloudfleet Hetzner Kubernetes Guide](https://cloudfleet.ai/blog/cloud-native-how-to/2026-04-hetzner-kubernetes-complete-guide/) · [Hetzner GPU Matrix](https://www.hetzner.com/dedicated-rootserver/matrix-gpu/) · [Effloow Hetzner AI Guide 2026](https://effloow.com/articles/hetzner-cloud-ai-gpu-server-guide-2026)
- Civo Managed Kubernetes ab $5.43/Mo, Control Plane free; DigitalOcean DOKS ab $12/Mo — Preisanker für "managed K8s ist billig". [Civo Kubernetes](https://www.civo.com/public-cloud/kubernetes) · [Civo GPU](https://www.civo.com/ai/kubernetes-gpu)
- IDP-Preise: Port $20–50/User/Mo, Cortex $20–65, Humanitec €1.999–4.999/Mo, Backstage $0 Lizenz aber ~$150k/20 Devs TCO bzw. $543k Year-1/200 Devs (2.5 FTE × $150k + Infra/Plugins). Belegt: Platform ist entweder cheap SaaS oder teurer Eigenbau. [SquareOps Build vs Buy 2026](https://squareops.com/blog/build-vs-buy-internal-developer-platform/) · [Backstage TCO — Zop.dev](https://zop.dev/resources/blogs/idp-build-vs-buy-tco/)
- Gratis AI-Stacks: **llmaker** (Ollama + Qdrant/Chroma + Redis + Langfuse + Open WebUI, ein Befehl, privates Netz, OpenAI-kompatibel), **self-hosted-ai-stack** (Ollama + LiteLLM + AnythingLLM + Whisper + Embeddings, MIT, lightweight 4.5 GB). Decken Observability/Deployment bereits ab. [llmaker](https://github.com/raiyanyahya/llmaker) · [hwdsl2/self-hosted-ai-stack](https://github.com/hwdsl2/self-hosted-ai-stack/)
- Sovereign Stack (Lazarus): LiteLLM + pgvector + Prometheus/Grafana/Loki/OTel/Phoenix, signed releases, offline bundles — grenzt Nische C (DACH-Compliance) bereits ab, ebenfalls MIT/Apache. [sovereign-stack](https://github.com/Lazarus-AI-Research/sovereign-stack)
- LLM-Observability-Preise verifiziert: Langfuse Hobby free (50k units) / Core $29 / Pro $199 / Enterprise $2.499 ($8/100k units), LangSmith Dev $0 / Plus $39/Seat, Datadog Pro $160/Mo/100k LLM-Spans (Retention-Aufpreis $1.50–4/10k), Helicone Pro $79. Macht "Monitoring" als Bundle-Bestandteil zur Commodity mit freier Self-Host-Alternative. [Langfuse Pricing](https://langfuse.com/pricing) · [LangChain Pricing](https://www.langchain.com/pricing) · [LatentEval Datadog vs Langfuse](https://latenteval.ai/guides/datadog-llm-observability-vs-langfuse) · [Arize Pricing-Vergleich](https://arize.com/resources/ai-observability-pricing/)
- GPU/Cost-Governance sogar als eigene Kategorie: Kumply (Proxy, <50ms p99, Budget Kill-Switch), AISpendOps (16 Provider, Gateway), AgentBurn (MIT, 1M events), Paralleliq (GPU-Effizienz) — zeigen dass selbst der Teil "Kosten-Monitoring" bereits spezialisierte Wettbewerber hat.

## Boring & Trends check

- **Boring/niche defensibility:** Nicht geprüft — outreach_score < 4, Kill-Switch greift. Bewertung nach Synthese in `01b-synthese.md`. Vorab: Infra gilt als langweilig/nischig-Verteidigung, aber Gratis-Bundles und Hyperscaler machen "boring" hier nicht defensibel — sie machen es commodity.

## Riskiest assumption test (RAT)

- **What to test next:** *Nicht via Cold-Outreach-Pipeline.* Falls trotzdem: 10 Interviews mit CTOs/Leads, die 2025/26 einen KI-Agenten live genommen haben (Kanal: CTO-Slacks, Hetzner-Community) — Frage: "Wie löst ihr heute Networking/Security/Observability, was zahlt ihr (Zeit/Geld), würdet ihr €399/Mo für ein opinionated Bundle zahlen statt Kubeply/llmaker gratis zu nehmen?" **Kill-Signal:** ≥7/10 sagen "nehmen Gratis-OSS / Hyperscaler gratis" oder "Infra kaufen wir nicht per Kaltmail".
- **Kill signal:** Siehe oben — bereits auf Desk-Ebene erfüllt (Wedge-Suche negativ, siehe K2-Nachweis unten).

## Notes / assumptions

- ASSUMPTION: CLV/Retention (10–12 Monate) und CAC-Band (€800–2.000) — keine öffentlichen Benchmarks für AI-Infra-Bundle-CAC gefunden, Band aus generischer B2B-Infra-Outreach-Erfahrung.
- ASSUMPTION: TAM-Schätzung (400–900 zahlungsbereite DACH-Kunden) — aus Backlog-Idee abgeleitet, nicht verifiziert.
- Preise Stand 2026-09-07 — verifiziert per Live-Recherche; OSS-Repos können Architektur ändern, Preise können sich bewegen.
- K2-Nachweis — gesucht nach Wedge in: (a) DACH/EU-Souveränität (GDPR, BSI C5, HDS, US CLOUD Act), (b) Hetzner-Preisvorteil (GEX44 €184 vs. AWS g5.xlarge $1.006/h ≈ $734/Mo), (c) Gratis-OSS-Bundle-Lücken (Kubeply/llmaker/Sovereign Stack Feature-Vergleich), (d) GPU-/Token-Cost-Monitoring als Differenzierer — Ergebnis: jeweils bereits besetzt (Hetzner/Cloudfleet/Scaleway für EU, Kubeply/llmaker für Bundle, Kumply/AISpendOps/Paralleliq für Cost/GPU). Kein Wedge nachweisbar gefunden.

## K6-Einordnung

- Julians Vorteile (bb/openclaw Agent-Orchestrierung, ~20 Projekte, DACH-Marke berlow.de/pragmatic-ai-systems, Physik/Engineering) sind real, aber für dieses Infra-Bundle kein unfairer Vorteil gegenüber Platform-Teams und OSS-Maintainern — in `A`-Linse korrekt als "keiner" bewertet.
