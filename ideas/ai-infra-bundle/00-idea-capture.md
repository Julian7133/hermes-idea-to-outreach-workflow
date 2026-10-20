---
slug: ai-infra-bundle
title: AI Infra Bundle — Networking, Security, Deployment, Observability, Monitoring gebündelt
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea

Ein gebündeltes Infrastruktur-Paket für Teams, die KI-Anwendungen (LLM-APIs, Agenten, RAG-Pipelines, Fine-Tuning-Jobs) in Produktion bringen: Networking (Ingress/Service Mesh), Security (mTLS, Secrets, Policy), Deployment (GitOps/Helm/K8s-Templates) sowie Observability/Monitoring (Logs, Traces, GPU-/Token-Kosten, Modell-Performance) — ausgeliefert als opinionated Bundle/Platform statt fünf Einzeltools, die das Team selbst verkabelt. Ziel: Aus "funktioniert lokal" wird ohne 3 Wochen DevOps-Arbeit "läuft sicher, beobachtbar und skalierbar" — egal ob auf eigenem Cluster, Hetzner/Vultr oder Hyperscaler.

Wertversprechen für einen konkreten Kunden (K1-konform, keine Lückenbehauptung): Ein 3–15-Personen Produktteam, das gerade den ersten KI-Agenten/Chatbot produktiv genommen hat, spart 60–80 % der sonst nötigen Integrations- und Wartungsarbeit an der Infrastruktur und bekommt Security- und Observability-Basics ab Tag 1 — ohne einen Vollzeit-Platform-Engineer einstellen zu müssen. Wettbewerber existieren (siehe Kritiker-Recherche), die Frage ist der Wedge.

## Monetization assumption

SaaS/Platform-Abo + optionales Onboarding (ASSUMPTION: Preise vor Recherche):

- Starter: **€149/Mo** — 1 Cluster, bis 3 Services, Basis-Observability (Logs/Metrics/Dashboards), Community-Support
- Team: **€399/Mo** — bis 3 Cluster/Umgebungen, mTLS/Policy, GPU-/Kosten-Monitoring, Alerting, SLA light
- Onboarding-Paket einmalig **€1.500–2.500** (Cluster-Setup, Migration eines bestehenden Services)

Zielbild: 40 Team-Kunden × €399 = ~€191k ARR; plus 20 Starter × €149 = ~€36k ARR. Alternative: productized Service zu €3–5k Setup + €399/Mo Betrieb — gleicher Preispunkt, andere Verpackung.

## Solo fit

**Pro:** Wenn das Bundle auf bestehenden Open-Source-Bausteinen (Kubernetes, Istio/Cilium, Prometheus/Grafana, OpenTelemetry, ArgoCD/Flux) als opinionated Distribution aufsetzt, ist der Kern solo baubar als Helm-Chart-/Terraform-Bundle + UI-Lite. Narrow ICP (kleine AI-Teams ohne Platform-Team) — "boring" Infra-Arbeit, die große Player als zu klein ignorieren könnten.

**Contra:** Infra ist vertrauens- und haftungskritisch — Kunde lässt dich in sein Cluster / seine Netzwerk-Policy. Support-Last hoch (On-Call-Erwartung), Breite des Bundles (5 Domänen) sprengt solo Scope schnell. Recht/Compliance (Security-Versprechen) erhöht Risiko. Wettbewerb durch Hyperscaler und Datadog & Co. extrem etabliert.

## Trigger / why now

- Agent-/LLM-Adoption explodiert (Claude Code, openclaw, LangChain, CrewAI): Viele Teams shippen ersten Agenten 2025/26, stehen dann vor identischen Prod-Problemen (Networking, Secrets, Kosten-Observability).
- GPU-/Token-Kosten-Transparenz wird vom Nice-to-have zum CFO-Thema.
- Kubernetes/GitOps/Observability-Tooling ist reif und commoditisiert — Bundling ist jetzt billiger als vor 2 Jahren.
- DACH-Mittelstand verschiebt AI-Workloads aus US-Clouds aus Datenschutzgründen auf EU/Hetzner-Cluster — braucht pragmatische Self-Hosting-Infra.

## Open questions

- Wer ist der wirtschaftlich erreichbare Käufer: CTO eines 5–30-MA Startups, Engineering-Lead ohne Platform-Team, oder AI-Agentur, die das für Kunden betreibt?
- Ist "Bundle aus 5 Domänen" ein Verkaufsargument (alles aus einer Hand) oder ein Anti-Signal (zu breit, nichts richtig gut)?
- Wie viel des Bundles ist bereits als Gratis-OSS-Suite oder Hyperscaler-Feature abgedeckt, sodass Zahlungsbereitschaft nur für Support/SLA/Compliance entsteht?
- Welcher Kanal erreicht diesen Käufer: Cold Outreach an Tech-Lead, SEO/Content, Marktplatz (K8s-Helm/Terraform Registry), Community?
- Löst ein Solo-Betrieb haftungs-/verfügbarkeitsseitig die Erwartung eines Infra-Produkts ein?
