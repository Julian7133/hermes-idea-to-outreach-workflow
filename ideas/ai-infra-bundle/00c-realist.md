# 00c — Realist

## Gewählte Ausprägung

**A — Werkzeug** (opinionated Infra-Distribution als CLI + Helm/Terraform Bundle). Begründung: Skaliert ohne Stundenverkauf, nutzt Julians Stärke (Agent-Orchestrierung, eigene Infra-Erfahrung mit bb/openclaw), und liefert einen wiederholbaren Artefakt statt jedes Mal manuellen Setup. Schnellster Weg zum zahlenden Kunden ist ein fixes Produkt mit klarem "30-Minuten-Versprechen", nicht ein Beratungsprojekt.

Verworfen, aber aufgehoben: **B — Dienstleistung** bleibt als Fallback, wenn Trust für reines Tooling fehlt — gleiches Bundle, verkauft als Setup-Service mit MRR für Updates. **C — DACH-Compliance-Nische** ist die schärfere Zuspitzung, falls das breite Bundle als zu generisch scheitert — sie verengt den Markt, erhöht aber den Zwang und rechtfertigt höhere Preise.

## Der erste zahlende Kunde

CTO / Lead Engineer (30–45 Jahre) eines **15–60-MA B2B-SaaS- oder Agentur-Teams in DACH**, das gerade den ersten KI-Agenten/RAG-Service live geschaltet hat. 1–3 Backend-Devs, kein dediziertes Platform-Team, Cluster läuft auf Hetzner Cloud/Vultr oder kleinem AWS-Account. Auslöser: Der erste Incident — Kosten-Spike, hängende GPU-Queue, fehlende Traces beim Kunden-Bug, oder ein Datenschutz-Nachfrage vom Enterprise-Kunden ("wo laufen eure LLM-Calls?"). Moment: Montag 9 Uhr, er sucht "LLM observability self-hosted" oder fragt im CTO-Slack, wie man Agenten produktionsreif bekommt.

**Erreichbar über:** Nicht Cold Outreach primär — sondern **Suche/Content + Community** (CTO-Slacks, Kubernetes-/MLOps-Meetups, GitHub/Terraform Registry, Blogpost "AI Agent Prod Checklist"). Cold Outreach an Tech-Leads hat niedrige Reply-Raten und braucht Begründung, warum Infra per Kaltmail gekauft wird. Fallback-Kanal: Partner/Affiliate über Hetzner-/EU-Hosting-Anbieter.

## Der kleinste Beweis

**Eingabe:** Bestehendes K8s-Cluster (kubeconfig) + 1 Demo-Agent (Container-Image mit LLM-Call).

**Verarbeitung:** CLI `ai-infra init` installiert opinionated Stack: Ingress + mTLS (Cilium/cert-manager), External Secrets, ArgoCD-Baseline, Prometheus/Grafana + OpenTelemetry Collector, GPU-/Token-Cost-Exporter, plus 3 vorkonfigurierte Dashboards und 2 Alert-Regeln (Cost-Spike, Error-Rate).

**Ausgabe:** Erreichbare URL mit mTLS, deployter Agent, Grafana-Dashboard zeigt Request-Traces, Token-Kosten pro Tag, Pod-Health; Alert feuert bei simuliertem Kosten-Spike.

**Bewusst nicht drin:** Multi-Cluster-Föderation, feingranulares Policy-Engine (OPA/Kyverno beyond baseline), Custom UI (Grafana reicht), automatische Skalierung über HPA hinaus, Compliance-Berichte/Audit-Export.

## Weg zum ersten Euro

**Preis:** **€149/Mo Starter / €399/Mo Team** — begründet aus ersparter Platform-Arbeit (ein Platform-Engineer kostet €6–8k/Mo; €399 ist <10 % davon für 80 % der Prod-Readiness) und laufendem Wert (Observability + Updates), nicht aus Lizenz-Kosten.

1. Bundle als Helm-Chart-Monorepo + CLI-Skeleton bauen und an eigenem Hetzner-Cluster verifizieren.
2. "AI Prod Readiness Checklist" + Demo-Video veröffentlichen und in 2 CTO-Communities teilen, um 5 Design-Partner zu gewinnen.
3. Mit 2 Design-Partnern kostenlose Pilot-Installation durchführen, Feedback zu fehlenden Dashboards/Alerts einsammeln.
4. Preismodell und Self-Serve-Signup (Lizenz-Key + Docs) live schalten, ersten zahlenden Piloten konvertieren.

## Aufwand und Abhängigkeiten

**Aufwand kleinster Beweis:** 12–18 Personentage (Helm-Charts kuratieren, CLI-Wrapper, Dashboards/Alerts, Docs, Demo-Cluster).

**Fehlende Zugänge:** Keine — alles OSS oder eigene Cluster. Für echte Kunden: Zugang zu deren Cluster.

**Drittabhängigkeiten:** Kubernetes-API (stabil), OSS-Charts (Cilium, Prometheus, Grafana, ArgoCD, OpenTelemetry) — Versionsdrift; Cloud-Provider-APIs (Hetzner Cloud, AWS) für Provisionierung; LLM-Provider-Telemetrie (OpenAI/Anthropic Usage-APIs) für Kosten-Export — ändert sich.

## Riskanteste Annahme

**Annahme:** Kleine AI-Teams empfinden Infra-Bündelung als Schmerz, der €149–399/Mo wert ist — statt "wir basteln das selbst" oder "Hyperscaler macht das gratis".
**Billiger Test:** 10 qualitative Interviews mit CTO/Lead-Engineers, die 2025/26 einen KI-Agenten live genommen haben: "Wie habt ihr Networking/Security/Observability gelöst, was hat es gekostet (Zeit/Geld), würdet ihr dafür €399/Mo zahlen, um es nicht selbst zu warten?" — vor dem Bauen.
