---
slug: ki-bewerbungsfoto-b2c-tool
title: KI-Bewerbungsfoto-Generator B2C Self-Service (SEO/Content)
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea
Self-Service-B2C-Web-App: Nutzer lädt 3–5 Handyfotos hoch, wählt Stil ("Bewerbung Büro", "LinkedIn casual", "Kreativ") und erhält in Minuten ein KI-generiertes Bewerbungsfoto, das wie ein echtes Studiofoto wirkt — ohne Termin, ohne Fotograf, sofort downloadbar. Zielgruppe: Bewerber:innen, Berufseinsteiger, Quereinsteiger und alle, die schnell ein professionelles Foto für Bewerbung oder LinkedIn brauchen. Vertrieb ausschließlich über SEO/Content (Suchintention "Bewerbungsfoto KI"), nicht über Cold Outreach. Fallback-Pivot aus der Praxis-B2B-Variante `bewerbungsfoto-app` (Ausprägung A aus deren `00b-traeumer.md`): falls die Praxis-Nische zu langsam skaliert, trägt dieser B2C-Kanal eigenständig.

Wertversprechen: In 5 Minuten ein Bewerbungsfoto, das wie ein €150-Studiofoto aussieht — für einen Bruchteil des Preises, ohne Anreise, auch sonntags um 23 Uhr vor Bewerbungsschluss.

## Monetization assumption
Einmalzahlung pro generiertem Fotoset (kein Abo — B2C-Bewerbungsfoto ist kein wiederkehrendes Problem). Preispunkt: **€15–29 pro Fotoset** (3–5 finale Varianten in hoher Auflösung), Tiers: Basic €15 (3 Varianten, 1 Stil), Pro €24–29 (8–12 Varianten, 2–3 Stile, Hintergrundwechsel). ASSUMPTION: Upsell auf Extra-Varianten à €5 möglich. Kein Abo, kein Retainer — Einmalkauf, ggf. Wiederkauf bei Jobwechsel (selten, siehe Solo fit). Grenzkosten pro Bild €0,04–0,15 (Gemini/Nano-Banana), Marge >95 %.

## Solo fit
Scope klein und solo baubar: Wrapper um Bildgenerierungs-API (Gemini/Nano Banana), simpler Upload→Generierung→Download-Flow, statische Marketing-Seiten für SEO. Kein Team nötig, kein persönlicher Service pro Kunde. **Schwachstelle:** B2C-Einmalkauf = niedrige Frequenz, kein wiederkehrender Umsatz; Akquise hängt an Content/SEO statt an wiederholbarer Outreach-Pipeline; Supportaufwand (unzufriedene Self-Service-Nutzer, "sieht nicht wie ich aus") kann bei Solo-Betrieb hoch werden. Vorteil: Julians Agent-Orchestrierung senkt Build-Aufwand; DACH-SEO/Content ist für Solo-Betreiber handhabbar.

## Trigger / why now
- Die Praxis-B2B-Variante (`bewerbungsfoto-app`) ist bereits GO (7/10) und im Bau — der B2C-Self-Service war deren Ausprägung A und existiert als eigenständige Kanal-Idee, die ohne Zusatzaufwand getestet werden kann, falls die Praxis-Nische langsam anläuft.
- KI-Headshot-Kategorie ist DACH-sprachig bereits validiert (Dr. Headshot, CV Pics) — Nachfrage existiert, Preise sind bekannt, SEO-Suchintention ist messbar.
- Bildgenerierungsmodelle (Gemini 3 / Nano Banana) sind 2026 sprunghaft besser und billiger geworden — Grenzkosten pro Foto im Cent-Bereich machen €15-Sets margenträchtig.

## Open questions
- Wie hoch ist das echte Suchvolumen für "Bewerbungsfoto KI" / "KI Bewerbungsfoto erstellen" in DACH und wie kompetitiv ist das SEO-Feld (CPC, Domain-Autorität der Platzhirsche)?
- Wie problematisch ist der Einmalkauf-Charakter für Wirtschaftlichkeit (CLV €15–29 vs. CAC über Content/Ads)?
- Wie groß ist der Anteil unzufriedener Nutzer ("sieht nicht wie ich aus") und welche Refund-/QA-Kosten entstehen daraus?
- DSGVO: Reicht ein simpler AVV/Hosting-Hinweis für B2C-Nutzer oder braucht es EU-API-Hosting?
