---
slug: handwerker-whatsapp-antwortassistent
title: WhatsApp-Antwortassistent für Handwerksbetriebe — Anfragen strukturieren, Antwortentwürfe vorschlagen
status: active
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea

Ein leichtgewichtiges Tool für Handwerksbetriebe (5–30 MA, Inhaber-geführt), das eingehende **WhatsApp-Kundenanfragen** automatisch strukturiert (Anfragetyp, Ort, Dringlichkeit, Kontaktdaten) und **Antwortentwürfe** vorschlägt — damit der Chef/die Bürokraft nicht zwischen Baustelle, Kundendienst und Büro jede Nachricht händisch tippt. Fokus: **Antwortzeit verkürzen, Rückfragen reduzieren, Abschlussquote erhöhen.** Kein Chatbot, der Kunden allein lässt — sondern Zuarbeit für den Handwerker, der das letzte Wort behält. Unabhängig von der Fahrzeit-Nische, bewusst breiter als `email-while-driving`.

Pivot-Herkunft: `email-while-driving` (GO outreach 4/10, product 6/10, PR #29, bereits buildbar, Budget erschöpft) zeigte: Die Recherche belegt eine messbare **WhatsApp-statt-E-Mail-Verschiebung** in der Handwerker-Kundenkommunikation — ein generelles WhatsApp-Struktur-Tool hat vermutlich einen breiteren Markt als die Fahrzeit-Diktat-Nische.

## Monetization assumption

Subscription **€29–49/Monat** (Staffel nach MA/Volumen), self-serve + telefonisches Onboarding. ASSUMPTION: 150 Kunden × €39 Durchschnitt = ~€70k ARR in 12 Monaten. Alternative Skalierung: €49/Mo × 80 Kunden = ~€47k ARR — beides ohne Serviceanteil in v1; Setup-Pauschale €149 optional. Preisanker: Eine gewonnene Anfrage mehr pro Monat trägt das Abo; ein typischer Handwerker-Auftrag liegt bei €300–2.500 — Zahlungsbereitschaft hängt am **entgangenen Auftrag**, nicht am Tool-Feature.

Kündbar monatlich — passend zur Handwerker-Erwartung (keine Jahresbindung wie große Branchen-Software).

## Solo fit

**Pro:** Enger Scope (WhatsApp lesen → strukturieren → Entwurf), ein Kanal, wiederkehrender Daily-Pain (dutzende Nachrichten/Tag), solo buildbar (WhatsApp Business API / WAHA / Evolution API + LLM + simples Dashboard). Wiederkehrende Nutzung = Retention-Chance. DACH-Handwerker ist erreichbar (Innung, Portal, Empfehlung) — Julians Marke/Sprache passt. Eigener Vorsprung: Agent-Orchestrierung, eigene Sendeinfra, DACH-Freelancer-Profil (K6).

**Contra:** WhatsApp Business API hat Meta-Hürden (Verifizierung, Template-Freigabe, Kosten pro Conversation). Handwerker sind telefon- und preissensibel, Support-lastig, wählerisch bei externer Software. Wettbewerb: Handwerkersoftware-Branche (openHandwerk, ToolTime etc.) + generische KI-Posteingänge + Gratis-Lösungen (ChatGPT/WhatsApp kopieren). Kategorie-Erklärung nötig: "KI-Antworthelfer" ist erklärungsbedürftig.

**Solo-Eignung insgesamt:** gut — wenn der Scope bei genau einer Funktion bleibt und nicht zur "Handwerker-Suite" auswuchert.

## Trigger / why now

- Vorgänger `email-while-driving`: Outreach traf zu spitze Nische (nur während Fahrt), Produkt aber baubar — Hinweis, dass die breitere WhatsApp-Schicht tragfähiger ist.
- Marktsignal im Backlog: Recherche zu `email-while-driving` zeigte **Verschiebung Kundenkommunikation → WhatsApp** bei Handwerkern (zu verifizieren: Bitkom/Handwerk-Digital-Berichte, Branchenumfragen).
- Soziologisch: Fachkräftemangel + Büroüberlastung im Handwerk — Bürokraft oft Teilzeit, Chef auf Baustelle — Antwortzeit wird zum Wettbewerbsfaktor (wer zuerst antwortet, bekommt den Auftrag).
- Technologisch: WhatsApp Business API + LLM-Antwortentwürfe sind seit 2024/25 Commodity (Preisverfall LLM, EU-Hosting verfügbar) — solo baubar ohne Forschungsaufwand.

## Open questions

- Welcher Anteil der Handwerker-Kommunikation läuft real über WhatsApp vs. Anruf/E-Mail/Formular — Zahl belegen?
- Welche Branchensoftware deckt WhatsApp bereits als Inbox-Feature ab — und wie gut?
- API-Hürde: Schaffen 5-MA-Betriebe die Meta-Business-Verifizierung solo, oder braucht es einen Tech-Partner/BSP?
- Wie hoch ist die Wechselträgheit: "läuft über mein privates Handy" vs. zentrale Betriebsnummer?
- Preisakzeptanz €29–49 für einen reinen Antworthelfer — oder nur als Add-on zur bestehenden Software verkaufbar?
