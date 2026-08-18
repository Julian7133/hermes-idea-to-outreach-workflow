# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` was **not** run (token-saving kill switch).

## Verdict
- **Score:** 1/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Doppelter Strukturbruch — die Kernannahme "kein Angebot an
  OpenClaw-Skills" ist widerlegt (mehrere kostenlose Marktplätze mit
  Hunderten bis 69.000+ Skills), und Etsy-Käufer sind anonyme Endkonsument:innen
  ohne exportierbare Kontaktdaten, wodurch die für diese Pipeline zentrale
  1:1-Cold-Outreach-Validierung (Stage 3) strukturell unmöglich ist.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Technisch versierte OpenClaw-/Coding-Agent-Nutzer, die bereits einen Agenten betreiben — nicht die typische Etsy-Käuferschaft (Hobby/Craft/Deko/Print). ASSUMPTION: Überlappung mit Etsy-Sellern, die OpenClaw für Shop-Automatisierung nutzen, ist real, aber eine andere Zielgruppe als "Skill-Käufer". |
| **L**onging/Job | Fertige Skill-Datei (SKILL.md) installieren statt selbst schreiben — Zeitersparnis für einen technisch ohnehin fähigen Nutzer. |
| **E**xisting solution | Kostenlose, offene Skill-Marktplätze (siehe unten) — inklusive One-Click-Install. |
| **A**lternative cost | Nahe null: eine Skill-Datei ist Text, in Minuten selbst schreibbar oder per Agent generierbar; kein spürbarer Schmerz, der Zahlungsbereitschaft erzeugt. |
| **R**eachability | Auf Etsy nicht per E-Mail anschreibbar — nur über Etsy-eigene Inbox/Marketing (Ads, SEO, Social). Für Cold Outreach (Kern dieser Pipeline) nicht nutzbar. |
| **F**requency | Einmalkauf, kein wiederkehrender Bedarf; neue Skills entstehen laufend kostenlos in der Open-Source-Community. |
| **R**evenue | ASSUMPTION: €7–15/Pack, €19–29/Bundle — bei einem Produkt, das es gratis gibt, realistisch nur Impulskäufe von Laien, die den Unterschied zwischen "Skill" und "Tutorial" nicht kennen. |
| **A**dvantage | Keiner. Kein Kurations-/Marken-Vorsprung gegenüber offenen Marktplätzen. |
| **M**oat-later | Keiner ersichtlich — Skills sind Text, trivial kopierbar, Community-Konkurrenz ist kostenlos und schneller. |
| **E**ffort | 3/10 zur Erstellung der Skills, aber das ist irrelevant, weil das Problem nicht am Bauaufwand liegt, sondern an Nachfrage/Erreichbarkeit. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: global vielleicht niedrige Zehntausende Personen, die aktiv einen Coding-/Automatisierungs-Agenten wie OpenClaw nutzen UND auf Etsy nach Skills suchen würden — praktisch keine Overlap-Evidenz gefunden (siehe Cited market signals). Kein belastbares TAM, weil kein belegtes Suchvolumen für "openclaw skill" auf Etsy existiert.
- **Saturation / competition:** **VERIFIZIERT: das Segment ist bereits durch kostenlose Angebote besetzt.** OpenClaw Skills Store mit 200+ offenen Skills (gratis), agentskill.sh mit 69.000+ AI-Agent-Skills für Claude Code/Cursor/Copilot/Windsurf (gratis, Install per Klick), mehrere GitHub-Marktplätze (`anthropics/skills`, `daymade/claude-code-skills`, `aiskillstore/marketplace` u. a.) — alle kostenlos, teils kuratiert/security-audited. Was auf Etsy selbst tatsächlich verkauft wird, ist ein anderes Produkt: ein **Setup-Guide/PDF** ("OpenClaw Complete Guide EXPANDED | 26 Screenshots"), keine Skill-Dateien.
- **Category maturity & growth:** Emerging, aber die Nachfrage, die existiert, zielt auf **Anleitungen/Tutorials**, nicht auf Skill-Packs — die im Raw-Idea vorgeschlagene Produktform trifft nicht das, was am Markt beobachtbar nachgefragt wird.
- **CAC vs CLV sanity:** Nicht bewertbar im Sinne dieser Pipeline — es gibt keinen CAC-Kanal (kein Cold Outreach möglich), nur Etsy-SEO/Ads mit eigener, hoher Grunddynamik (Etsy nimmt zusätzlich Listing- + 6,5 % Transaktionsgebühr). Bei ASSUMPTION €10 Verkaufspreis bleibt nach Etsy-Fees + Zahlungsgebühr wenig Marge für zusätzliche Akquise.
- **Difficulty score:** 3/10 (Bau) — aber irrelevant, siehe Kill-Gründe.
- **Key risks:**
  1. **Premise tot** — Skills sind bereits massenhaft kostenlos verfügbar (200 bis 69.000+ je Marktplatz), verifiziert.
  2. **Struktureller Pipeline-Bruch** — Etsy-Käufer sind Endkonsument:innen ohne exportierbare Kontaktdaten; Stage 3 dieser Pipeline (1:1-Cold-E-Mail-Outreach an ein benennbares ICP) ist auf diesem Marktplatz nicht durchführbar. Das ist kein Nebenrisiko, sondern bricht das Validierungsmodell dieser Pipeline komplett.
  3. **Zielgruppen-Mismatch** — die tatsächliche Etsy-Nachfrage im OpenClaw-Umfeld ist ein Setup-Guide für Laien, nicht ein Skill-Pack für technische Nutzer, die selbst Agenten betreiben; das im Raw-Idea beschriebene Produkt trifft die beobachtete Nachfrage nicht.

## Cited market signals (researched 2026-08-18)
- Kostenlose Skill-Marktplätze mit hoher Stückzahl: [OpenClaw Skills Store, 200+ Open-Source-Skills](https://openclaw-skills.store/); [OpenClaw Launch – Tausende freie Plugins](https://openclawlaunch.com/skills); [LLMBase OpenClaw Skills Directory](https://llmbase.ai/openclaw/).
- Claude-Code/Agent-Skill-Ökosystem breit kostenlos: [agentskill.sh, 69.000+ AI-Agent-Skills, 20+ Tools](https://agentskill.sh) (aus Suchergebnis); [anthropics/skills – offizielles offenes Repo](https://github.com/anthropics/skills); [daymade/claude-code-skills Marketplace](https://github.com/daymade/claude-code-skills); [aiskillstore/marketplace, security-audited, gratis](https://github.com/aiskillstore/marketplace).
- Reale Etsy-Nachfrage im OpenClaw-Umfeld ist ein Tutorial/PDF, kein Skill-Pack: ["OpenClaw Complete Guide EXPANDED | 26 Screenshots | AI Agent Setup Automation | PDF"](https://www.etsy.com/listing/4480479094/openclaw-complete-guide-expanded-26); Etsy-Seller nutzen OpenClaw selbst als Shop-Automatisierung ([OpenClaw for Etsy Sellers — 2026 Guide](https://www.openclawplaybook.ai/guides/openclaw-for-etsy-sellers/)) — bestätigt Interesse an OpenClaw bei Etsy-Sellern, aber als Anwender, nicht als Skill-Käufer.
- Etsy-typisches AI-Prompt-Pack-Preissegment (Referenz, verwandte Kategorie): $1–$90, Schwerpunkt $5–$25 ([Etsy-Marktübersicht "AI Prompts Pack"](https://www.etsy.com/market/ai_prompts_pack)).
- Etsy-Policy-Kontext: KI-generierte digitale Downloads sind erlaubt, aber offenlegungspflichtig seit 10.06.2025; 12.000 Listings in einem Quartal wegen Verstößen entfernt ([Etsy AI Generated Content Policy Update 2026, rewarx.com](https://www.rewarx.com/blogs/etsy-ai-generated-content-policy-update); [Etsy's AI Policy for Digital Downloads, iscompliant.app](https://iscompliant.app/Blog/etsy-ai-digital-downloads)).

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht empfohlen über diese Pipeline.* Falls das
  Grundkonzept "OpenClaw-Wissen an Etsy-Publikum verkaufen" weiterverfolgt
  werden soll, wäre ein Pivot auf das tatsächlich nachgefragte Produkt nötig
  (Setup-Guide/PDF statt Skill-Pack) — das ist aber eine andere Idee mit
  anderem CLEARFRAME und müsste als eigener Eintrag neu durch Stage 1.
- **Kill signal:** N/A — bereits auf Desk-Ebene gekillt.

## Notes / assumptions
- ASSUMPTION: Preis €7–15/Pack, €19–29/Bundle — nicht validiert, ohnehin irrelevant angesichts kostenloser Alternativen.
- ASSUMPTION: Nennenswerte Overlap zwischen Etsy-Sellern (die OpenClaw zur Shop-Automatisierung nutzen) und potenziellen Skill-Käufern — nicht durch Daten belegt, nur durch einen Playbook-Artikel plausibilisiert.
- Struktureller Befund (nicht ASSUMPTION, sondern Pipeline-Fakt): Etsy stellt keine Käufer-E-Mail-Adressen für Outreach außerhalb der Plattform bereit — jede Etsy-Konsumentenidee bricht mit Stage 3 dieser Pipeline, unabhängig vom Score der übrigen CLEARFRAME-Dimensionen.
