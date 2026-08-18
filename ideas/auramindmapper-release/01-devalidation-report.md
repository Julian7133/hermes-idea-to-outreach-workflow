# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` wurde **nicht** ausgeführt (Token-sparender Kill-Switch).

## Verdict
- **Score:** 2/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Die Kernprämisse „Agent-first Mindmapping ist neu/differenzierend" ist **widerlegt** — MindMap AI hat im August 2026 (laufender Monat) einen MCP-Server gelauncht, der Claude/ChatGPT genau das bereits erlaubt (Maps direkt im Gespräch aufbauen/bearbeiten), und der Google Workspace Marketplace hat bereits mehrere KI-gestützte Mindmap-Add-ons (teils kostenlos); zusätzlich ist „Standard von openclaw werden" kein Umsatzmodell, sondern ein Ökosystem-Ziel ohne Kontrolle über den Ausgang.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Vage: „openclaw-Nutzer" + „Google-Workspace-Poweruser" sind zwei verschiedene Zielgruppen, nicht eine — kein enges ICP definiert. |
| **L**onging/Job | Denkprozesse/Projekte als vom Agenten gepflegte Map statt als Dokument sehen. |
| **E**xisting solution | Mindomo AI, MindMeister, MindMup, SMindMap (kostenlos), AI Mind Map Generator/Maker — alle bereits mit KI-Textstrukturierung; zusätzlich MindMap AI mit direktem Claude/ChatGPT-MCP-Zugang. |
| **A**lternative cost | ASSUMPTION: gering — bestehende Tools lösen „Text → Map" bereits per Klick/Prompt, kein spürbarer ungelöster Schmerz belegt. |
| **R**eachability | Google-Workspace-Admins über Cold Outreach erreichbar, aber openclaw-Nutzer (Entwickler/Tinkerer) typischerweise nicht per klassischer Kaltakquise, sondern über GitHub/Communities — zwei inkompatible Akquisekanäle. |
| **F**requency | ASSUMPTION: Projekt-/Denkarbeit ist wiederkehrend, aber ohne belegten Pain unklar, ob das eine tägliche oder seltene Nutzung ist. |
| **R**evenue | Kein tragfähiges Modell benannt: „wenn die Lösung der openclaw-Standard wird, reicht das" ist ein Adoptions-, kein Umsatzziel. Freemium-Workspace-Add-on bei €9–15/Mo/Nutzer würde direkt gegen SMindMap (kostenlos) und Mindomo (ab ~$3/Mo) konkurrieren. |
| **A**dvantage | Keiner belegt — Produkt existiert laut Auftrag zwar schon, aber kein Beleg für technischen oder Distributions-Vorsprung gegenüber MindMap AI (bereits mit Claude/ChatGPT-MCP live) oder etablierten Workspace-Add-ons. |
| **M**oat-later | „openclaw-Standard" wäre ein Moat, ist aber Community-Entscheidung, nicht durch Vertrieb/Cold-Outreach herstellbar. |
| **E**ffort | Release-Aufwand (kein Neubau) niedrig, aber zwei parallele Freigabe-/Review-Prozesse (Google-Workspace-Marketplace-Review ist bekanntlich langsam/streng; openclaw-Skill-Ökosystem hat aktuell Vertrauensprobleme, siehe Risks) erhöhen den Go-to-Market-Aufwand. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: Google-Workspace-Mindmap-Nische im niedrigen zweistelligen Tausenderbereich zahlender Teams; openclaw-Skill-Nutzerbasis nicht öffentlich beziffert (kein Downloads-/Nutzerzahlen-Signal gefunden) — TAM für den openclaw-Kanal nicht seriös schätzbar.
- **Saturation / competition:** **VERIFIZIERT (Aug 2026): Markt ist voll besetzt.** Google Workspace Marketplace listet mind. 8 aktive Mindmap-Add-ons, darunter mehrere mit KI-Textstrukturierung: Mindomo AI (ab €72/Nutzer/Jahr ≈ $3/Mo, KI-Credits inklusive), MindMeister, MindMup (Abo-pflichtig), SMindMap (**kostenlos** mit Zusatzfeatures), „AI Mind Maps Maker", „AI Mind Map Generator". Zusätzlich launchte **MindMap AI im selben Monat (August 2026)** einen MCP-Server, der Claude und ChatGPT erlaubt, Maps direkt im Gespräch zu erstellen/bearbeiten — das ist exakt das „Agent-first"-Alleinstellungsmerkmal der Idee, bereits von einem Wettbewerber besetzt.
- **Category maturity & growth:** Plateau für klassisches Google-Workspace-Mindmapping (etablierte Kategorie seit Jahren, viele Incumbents inkl. Gratis-Option); Growth/Emerging für „Agent-natives Mindmapping via MCP" — aber dort ist MindMap AI bereits First-Mover.
- **CAC vs CLV sanity:** ASSUMPTION: CLV niedrig, da SMindMap kostenlos und Mindomo ab ~$3/Mo konkurrieren — ein Preis über $10–15/Mo braucht klaren Differenzierungsgrund, den die Recherche nicht bestätigt. CAC über Cold-Outreach an zwei fragmentierte Zielgruppen (Workspace-Admins vs. openclaw-Entwickler) strukturell hoch.
- **Difficulty score:** 7/10 — nicht wegen Produktbau (laut Auftrag fertig), sondern wegen zwei parallelen, langsamen/strengen Freigabeprozessen und einem bereits besetzten Differenzierungsversprechen.
- **Key risks:**
  1. **Premise tot:** „Agent-first" ist keine Differenzierung mehr — MindMap AI hat die exakte Fähigkeit (Claude/ChatGPT-natives Mindmapping) im selben Monat live geschaltet.
  2. **Kein Umsatzmodell, nur ein Adoptionsziel:** „openclaw-Standard werden" ersetzt keine Monetarisierungsstrategie und ist ohnehin nicht durch Vertriebsarbeit steuerbar.
  3. **Vertrauensproblem im openclaw-Ökosystem:** mehrere aktuelle Sicherheitsartikel (Lakera, 1Password) warnen, dass openclaw-Skills ungesandboxt mit vollen lokalen Rechten laufen und als Malware-/Prompt-Injection-Vektor missbraucht wurden — das erschwert Vertrauen/Adoption für einen neuen Skill zusätzlich, unabhängig von Produktqualität.

## Cited market signals (researched 2026-08-18)
- MindMap AI launcht MCP-Server für Claude/ChatGPT (August 2026) — direkter Wettbewerber zur „Agent-first"-Kernprämisse: [EIN Presswire](https://www.einpresswire.com/article/933599495/mindmap-ai-launches-mcp-server-letting-claude-and-chatgpt-create-and-edit-mind-maps-in-conversation), [AiThority](https://aithority.com/machine-learning/mindmap-ai-launches-mcp-server-letting-claude-and-chatgpt-create-and-edit-mind-maps-in-conversation/).
- Google Workspace Marketplace: mind. 8 aktive Mindmap-Add-ons inkl. KI-Features — [Marketplace-Suche „Mind Maps"](https://workspace.google.com/marketplace/search/Mind%20Maps), [Mindomo Listing](https://workspace.google.com/marketplace/app/mindomo_mind_map_maker_with_ai/521918824624), [SMindMap Listing](https://workspace.google.com/marketplace/app/smindmap_ai_smart_mind_map/453198399459).
- Mindomo-Preis: ab €72/Nutzer/Jahr (Premium) bzw. ~$3/Mo, KI-Credits inklusive (60/Monat) — [SaaSworthy](https://www.saasworthy.com/product/mindomo/pricing), [SpotSaaS](https://www.spotsaas.com/product/mindomo/pricing).
- SMindMap: „Free of charge with paid features" laut Google-Workspace-Listing — [SMindMap Google Workspace Marketplace](https://workspace.google.com/marketplace/app/smindmap_ai_smart_mind_map/453198399459), [smindmap.com](https://smindmap.com/).
- OpenClaw-Skill-Ökosystem real und aktiv, aber Größenordnung unklar/uneinheitlich berichtet (1.700 bis 5.400+ Skills je nach Quelle, keine offizielle Nutzerzahl gefunden) — [DigitalOcean-Guide](https://www.digitalocean.com/resources/articles/what-are-openclaw-skills), [awesome-openclaw-skills (GitHub)](https://github.com/VoltAgent/awesome-openclaw-skills).
- Sicherheits-/Vertrauensrisiko im openclaw-Skill-Ökosystem dokumentiert: Skills laufen ungesandboxt mit vollen lokalen Rechten, wurden als Malware-/Prompt-Injection-Vektor identifiziert — [Lakera](https://www.lakera.ai/blog/the-agent-skill-ecosystem-when-ai-extensions-become-a-malware-delivery-channel), [1Password](https://1password.com/blog/from-magic-to-malware-how-openclaws-agent-skills-become-an-attack-surface).

## Riskiest assumption test (RAT)
- **What to test next:** *Not recommended via this pipeline.* Falls trotzdem: zuerst klären, ob „openclaw-Standard werden" überhaupt eine per Cold-Outreach validierbare Hypothese ist (es ist keine) — Desk-Devalidation sagt: hier stoppen.
- **Kill signal:** N/A — bereits auf Desk-Stufe gekillt.

## Notes / assumptions
- ASSUMPTION: Preis €9–15/Mo bzw. €49–99/Mo/Team aus `00` nicht verifiziert — Marktvergleich (Mindomo ~$3/Mo, SMindMap kostenlos) legt nahe, dass dieser Preispunkt ohne klare Differenzierung nicht durchsetzbar ist.
- ASSUMPTION: openclaw-Skill-Downloadzahlen/Nutzerbasis nicht öffentlich auffindbar — TAM-Aussage für diesen Kanal bleibt Schätzung.
- Produktexistenz („bereits gebaut") wurde als gegeben aus dem Auftrag übernommen, nicht unabhängig verifiziert (kein Zugriff auf das Produkt selbst).
