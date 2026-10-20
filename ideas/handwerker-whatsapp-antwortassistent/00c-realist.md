# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug** — Solo am schnellsten zu einem zahlenden Kunden, weil es genau einen klaren Job löst ("WhatsApp schneller beantworten"), keine tägliche Service-Schicht braucht und als monatliches Abo verkaufbar ist. B (Dienstleistung) skaliert nicht solo, C (SHK-Förder-Nische) ist wertvoll, aber eng und wissenslastig — sie bleibt als Zuspitzung für später aufgehoben.

Verworfen, aber aufgehoben: **B — Dienstleistung** als Premium-Retainer für Betriebe ohne Software-Affinität; **C — SHK-Förder-Nische** als Wedge, falls der breite Markt zu generisch wird.

## Der erste zahlende Kunde

**Rolle:** Inhaber/Geschäftsführer eines SHK- oder Elektrobetriebs, **8–18 MA**, DACH (Bayern/BaWü/NRW), Betriebsnummer läuft über WhatsApp Business (oder privates Handy des Chefs). **Auslöser:** 10–30 WhatsApp-Anfragen/Tag, Chef auf Baustelle, Bürokraft überlastet/Teilzeit — Antwortzeit >3h, Aufträge gehen an den Schnelleren. **Moment:** Nach einem verlorenen Auftrag ("hätte ich 20 Min schneller geantwortet…") oder nach einer Innungssitzung, wo ein Kollege "WhatsApp-Flut" beklagt. **Erreichbar über:** Innung/Verband, Handwerker-Facebook-Gruppen, Empfehlung, lokaler Handwerker-Stammtisch und gezieltes Cold Outreach an Betriebe mit sichtbarer WhatsApp-Nummer auf der Website — kein Massenmailing, sondern handverlesene Liste (Telefon + E-Mail der Betriebsnummer).

## Der kleinste Beweis

**Eingabe:** WhatsApp-Nachricht (Text, optional Bild/Sprachnachricht-Transkript) an die Betriebsnummer. **Verarbeitung:** 1) Klassifikation (Angebot/Rückfrage/Notfall/Smalltalk), Extraktion (Name, Ort/PLZ, Gewerk-Hinweis, Dringlichkeit), 2) LLM-Entwurf in Tonalität des Betriebs (kurz, du/Sie wie gewünscht, Rückfrage- oder Angebotsbaustein), 3) Prioritäts-Sortierung. **Ausgabe:** Strukturierte Karte + "Senden/Anpassen"-Button im simplen Dashboard (oder direkt als WhatsApp-Entwurf zurück). **Bewusst nicht drin:** Kalenderintegration, Angebots-PDF, Rechnung, Mehrbenutzer-Rollen, Anbindung an Branchensoftware, Automatik-Versand ohne Freigabe — alles später.

## Weg zum ersten Euro

**Preis:** **€39/Monat** (monatlich kündbar) + €99 einmaliges Onboarding (Nummer anbinden, Tonalität einrichten) — begründet am **geretteten Auftrag**: Ein SHK-Auftrag trägt €800–2.500 Deckungsbeitrag, ein Elektro-Auftrag €300–1.200 — ein geretteter Auftrag pro Quartal finanziert das Jahr. Kein Jahreszwang, weil Handwerker so kaufen.

1. WhatsApp-Anbindung lauffähig machen (Evolution API/WAHA-Prototyp → später Business API), LLM-Prompt für SHK/Elektro-Anfragen härten, 10 echte Beispielnachrichten sauber strukturieren.
2. 25 Betriebe mit sichtbarer WhatsApp-Nummer handverlesen (SHK/Elektro, 5–20 MA), personalisiert anschreiben/anrufen — nicht 200, sondern 25 mit Namen.
3. 3 Pilotbetriebe 14 Tage kostenlos, danach €39/Mo — Bedingung: 2× 15-Min-Feedbackgespräch + Erlaubnis, anonymisierte Kennzahlen zu nutzen.
4. Erstes Geld bei Pilot-Verlängerung — danach Case ("Antwortzeit von 4h auf <20 Min, 2 Aufträge mehr/Monat") für die nächsten 20.

## Aufwand und Abhängigkeiten

**Aufwand kleinster Beweis:** ~8–12 Tage solo (WA-Anbindung 2–3d, LLM-Klassifikation/Entwurf 2–3d, simples Dashboard/Inbox 2–3d, Onboarding-Flow + Tests 1–2d). **Fehlende Zugänge:** Echte Handwerker-WhatsApps zum Trainieren der Prompts (Pilot löst das). **Drittabhängigkeiten:** WhatsApp (Meta Business Verifizierung, Conversation-Kosten €0,05–0,08/24h-Fenster in DE), LLM-Provider (EU-Hosting für DSGVO-Narrativ), Hosting (Hetzner/EU). Kein App-Store, keine Branchen-API nötig für v1.

## Riskanteste Annahme

Dass Handwerker **ihre WhatsApp-Betriebsnummer** überhaupt an ein externes Tool hängen (statt "läuft über mein Handy") — und die Meta-Verifizierung/Nummernbindung als zumutbar empfinden. **Billig prüfen:** Vor dem Bau 10 Kurzinterviews (Telefon, 10 Min): "Läuft Kundenkontakt über WhatsApp? Über welche Nummer? Würden Sie sie an ein Postfach hängen, das Antworten vorschlägt, wenn Sie das letzte Wort behalten — was hält Sie ab?" — plus 5 Betrieben live zeigen, wie die Anbindung aussieht (Screenshot, kein Code).
