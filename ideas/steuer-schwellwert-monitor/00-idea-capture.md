---
slug: steuer-schwellwert-monitor
title: Steuer-Schwellwert-Monitor (OSS/Lieferschwellen für Online-Shops)
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein schlankes Monitoring-Tool für Online-Shops, die aus Deutschland heraus
(oder nach Deutschland hinein) grenzüberschreitend an Endkunden in der EU
verkaufen. Das Tool zieht Umsatzdaten pro Bestimmungsland (Shopify/WooCommerce/
manueller CSV-Import) und überwacht die EU-weite OSS-Lieferschwelle von
€10.000/Jahr (seit 2021 EU-einheitlich, ersetzt die alten länderspezifischen
Lieferschwellen) sowie den OSS-Registrierungs- und Meldestatus. Bei
Annäherung an die Schwelle oder bei Fristen (OSS-Quartalsmeldung) erhält der
Shop-Betreiber/Steuerberater eine E-Mail-Warnung mit Handlungsempfehlung
("jetzt für OSS registrieren", "Meldefrist in 14 Tagen"). Zielgruppe: Inhaber
kleiner bis mittlerer D2C-Online-Shops (5–50 Mitarbeitende) mit spürbarem
EU-Auslandsumsatz, und/oder die Steuerberater, die diese Mandanten betreuen.

## Monetization assumption
ASSUMPTION: €29/Monat (Solo-Shop-Tarif, 1 Shop-Anbindung) bzw. €79/Monat
(Agentur-/Steuerberater-Tarif, bis 10 Mandanten-Shops), Abo, monatlich
kündbar. Kein Freemium — Steuerthemen rechtfertigen eine bezahlte
Vertrauensbeziehung von Tag 1. Sekundär denkbar: einmalige OSS-Setup-Beratung
als Add-on (ASSUMPTION: €200–400 einmalig), aber das ist nicht der
Kernumsatz.

## Solo fit
Sehr schmaler, klar abgrenzbarer Scope (eine Schwelle, ein Datum, eine
Warnung) — kein komplexes Multi-Feature-Produkt. Buildbar solo: Shopify/
WooCommerce-API-Anbindung + einfache Regel-Engine + E-Mail-Versand, kein ML,
kein Custom-Backend-Monster. Wiederkehrender Umsatz durch laufende
Überwachung (nicht einmalig gelöst). Risiko: Steuerthema erfordert
Sorgfalt bei Formulierungen (keine Steuerberatung, nur "Monitoring +
Hinweis") — Haftungsfrage ist ungeklärt und muss vor jedem Verkauf geklärt
werden.

## Trigger / why now
Seit dem EU-weiten OSS-Verfahren (One-Stop-Shop, seit 1.7.2021) gilt eine
einheitliche EU-Lieferschwelle von €10.000 Netto-Jahresumsatz über alle
EU-Bestimmungsländer kumuliert — das ist für viele kleine D2C-Shops eine
neue und leicht zu übersehene Regel, weil sie viel niedriger liegt als die
früheren länderspezifischen Schwellen (die oft bei €35.000–100.000 lagen).
ASSUMPTION: Viele Solo-/Kleinshop-Betreiber tracken das nicht aktiv, weil es
kein Tagesgeschäfts-Thema ist, sondern nur beim Quartalsabschluss auffällt —
wenn es zu spät ist (Owe-Steuer-Nachzahlung + Verzugszinsen im Bestimmungs-
land). Kein konkretes Nutzer- oder Kundensignal bisher — die Idee stammt aus
Beobachtung der OSS-Regelkomplexität, nicht aus einem geäußerten Kundenpain.

## Open questions
- Wie viele deutsche D2C-Shops verkaufen überhaupt grenzüberschreitend in
  einem Umfang, der die €10.000-Schwelle real gefährdet (vs. reiner
  Inlandsumsatz)?
- Gibt es das Problem noch, oder lösen Shopify/WooCommerce-Plugins
  (Taxdoo, hellotax, Marosa etc.) es bereits als Nebenfunktion mit?
- Ist der Kunde der Shop-Betreiber selbst oder eher dessen Steuerberater
  (andere Reachability, andere Preisbereitschaft)?
- Wie hoch ist das Haftungsrisiko, wenn eine Warnung ausbleibt oder falsch
  ist (Tool sagt "alles ok", Kunde bekommt Nachzahlung)?
