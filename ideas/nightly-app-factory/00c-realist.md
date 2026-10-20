# 00c — Realist

## Gewählte Ausprägung
**B — Dienstleistung (App-Factory-as-a-Service, aber als Eigen-Portfolio mit optionalem Abo)** — Begründung: Solo am schnellsten zum ersten Euro, weil Julian die Factory ohnehin für sich betreiben kann (eigener bb/claude-code Stack, keine Fremdkunden-Onboarding-Hürde). Werkzeug (A) verlangt Distribution an viele Indie-Hacker mit hohem Support, Nische (C) ist wertvoll aber schmaler und braucht Beratung. B erlaubt beides zu testen: erst selbst nutzen (Portfolio), dann denselben Strom als Abo verkaufen, wenn Traction entsteht. Verworfen, aber aufgehoben: A bleibt als späteres Produkt, wenn Factory bewiesen ist; C bleibt als wöchentlicher Premium-Report für Agent-Berater.

## Der erste zahlende Kunde
**Rolle:** Indie-Hacker / Solo-Micro-SaaS-Betreiber, 28–42, DACH oder EU-englischsprachig, betreibt bereits 1–2 kleine Produkte (€300–2k MRR) und sucht systematisch die dritte Wette. Hat GitHub, liest Indie Hackers / X / TinyLaunch, bezahlt bereits für Tools wie Shipixen, Supabase, Vercel. **Auslöser:** Hat gerade 4 Wochen in eine Idee investiert, die nach Launch 0 zahlende Kunden brachte; Frust über "wieder Monate verbrannt". **Moment:** Scrollt nachts durch TinyLaunch, sieht "30 Apps in 30 Tagen — jede ist live, such dir eine aus". **Erreichbar über:** Indie-Hacker-Communities (IH, X, Reddit r/SaaS, TinyLaunch, Product Hunt) und SEO/Content ("micro saas ideas", "build in public") — nicht Cold Outreach B2B, sondern Community/Content-Loop. Cold Outreach wäre Fehlkanal für diesen Käufer.

## Der kleinste Beweis
**Eingabe:** Ein Content-Gap-Keyword (z. B. "Kleinunternehmer Rechnungsvorlage 2026 USt") oder eine OpenClaw-Wedge-Hypothese ("Lexoffice Belegerfassung via Agent"). **Verarbeitung:** bb-Workflow spawnt Claude-Code-Agent: scaffold (Next.js/Python) + minimaler Core (eine Funktion, die den Job erledigt) + Landingpage (Copy aus Gap) + Deploy (Vercel/Fly) + kurzer Loom-Skript-Entwurf. Qualitätstor: Eval (läuft die Kernfunktion? Lighthouse >80?). **Ausgabe:** Live URL + GitHub-Repo (privat) + 3-Satz Distribution-Angle ("poste hier, rankt dafür"). **Bewusst nicht drin:** Auth/Teams, Billing, App-Store-Build, Analytics-Dashboard, Multi-Tenancy, Agenten-Orchestrierung jenseits eines Runs. Genau eine App, genau ein Job.

## Weg zum ersten Euro
**Preis:** €290/Monat für 10 Apps/Monat (oder €19 Einzelkauf pro App-Keim) — begründet aus Nutzen: eine erfolgreiche Mikro-App trägt €500–2k MRR, also ist €290 die "Option-Prämie" auf 10 Wetten; ein Indie zahlt das, wenn eine Wette alle 3–4 Monate trifft.
1. Factory-Workflow bauen: bb + claude-code nightly job, scaffold-template, deploy-pipeline, einfache Gap-Quelle (z. B. Ahrefs/SEMrush-API oder manuelle Keyword-Liste).
2. 14 Nächte selbst betreiben, 14 Apps erzeugen, 3 davon live mit Landingpage indexieren lassen — Beweiskorpus.
3. Auf IH/X/TinyLaunch mit Beweiskorpus posten ("Ich baue jede Nacht eine App — hier sind 14, eine hat 12 Signups") und 20 Indie-Hacker direkt in Communities ansprechen (kein B2B-Cold-Mail).
4. 5 Early-Access-Abos zu €149/Monat (50% Rabatt) verkaufen, Feedback: welche Apps behielten sie, welche warfen sie weg?

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis:** 4–6 Tage solo (1 Tag Template/Scaffold, 1 Tag bb-Workflow/Eval, 1 Tag Deploy/Landingpage-Pipeline, 1–2 Tage 3 Beispiel-Apps bauen + polieren). **Fehlende Zugänge:** Keine, alles mit bestehendem Stack (bb, Claude Code, openclaw) machbar. **Drittabhängigkeiten:** LLM-API-Kosten pro Nightly-Run (ASSUMPTION: €3–8 pro App inkl. Code-Gen), Vercel/Fly Hosting (Free Tier reicht für Prototypen), App-Store-Policy nur relevant wenn mobil (deshalb Web-Only). Kein externes Approval nötig.

## Riskanteste Annahme
**Annahme:** Dass 10 App-Keime/Monat für einen zahlenden Indie wirklich €290 wert sind — also dass "mehr Wetten" das Validierungsproblem löst statt nur "mehr unvalidierte Apps" zu erzeugen. **Billiger Test:** Bevor die Factory automatisiert wird: manuell 10 Mikro-Apps (oder auch nur Landingpages + Fake-Demo) in 2 Wochen bauen/lassen, 20 Indies in Communities damit konfrontieren und fragen: "Würdest du €290/Monat für 10 solcher Keime zahlen, wenn jede als Repo+Demo kommt?" — misst echte Zahlungsbereitschaft, nicht nur Neugier.
