# Kreith Schadstoffgutachten — Projekt-Kontext

Diese Datei dient als persistenter Kontext für Claude-Sessions in diesem Ordner.
Wenn du einen neuen Chat startest: **„Lies CLAUDE.md"** sagen — dann ist der gesamte Stand sofort verfügbar.

---

## Über den Kunden

- **Person:** Alexander Kreith, M.A. und B.Sc.
- **Geschäft:** Unabhängiger Schadstoffsachkundiger
- **Anschrift:** Christophstraße 10, 80538 München
- **Telefon:** +49 152 5846 0157
- **E-Mail:** info@kreith-schadstoffgutachten.de
- **Status:** Kleinunternehmer gem. § 19 UStG
- **Berufsbezeichnung:** Sachkundiger gemäß TRGS 519 Nr. 2.7, Anlage 3 (verliehen in München)
- **Einzugsgebiet:** München, Bayern, Frankfurt am Main, Rhein-Main

### Qualifikationen
1. Sachkunde Asbest — TRGS 519
2. Fachkunde Mineralfasern — TRGS 521
3. Gerätefachkunde — TRGS 519 Probenahme

---

## Projekt-Struktur

```
Website/
├── index.html              ← Hauptseite (Hero, Warum?, Leistungen, Über mich, Qualifikationen, Kontaktformular)
├── gefahrstoffe.html       ← Wissensseite zu Asbest, KMF, PCB, PAK, PCP, Schimmel
├── mediathek.html          ← Blog-/News-Übersicht mit kuratierten Artikeln
├── impressum.html
├── datenschutz.html
├── 404.html
├── favicon.svg             ← grünes "K" auf accent-Hintergrund
├── sitemap.xml
├── robots.txt
├── CLAUDE.md               ← diese Datei
├── fonts/                  ← lokale DM Sans + DM Serif Display (DSGVO)
└── images/                 ← hero.jpg, alexander-portrait.jpg, asbest-fasern.jpg, cert-*.jpg
```

---

## Design-System

### Farben
```
--cream:   #F5F2EC   warmer Off-White
--dark:    #1A1A18   Text, Footer
--mid:     #3D3D38   sekundärer Text
--muted:   #8A8980   Beschriftungen
--accent:  #2E5C3F   Forest Green (Primär)
--accent-h:#234a31   Hover-Variante
--accent-l:#E8F0EB   Light Green Tint
--border:  #D8D5CE
```
Akzent hell (Hero, Logo-Punkt): `#7dc9a0`

### Typografie
- **Headlines:** DM Serif Display (lokal eingebettet)
- **Body:** DM Sans Variable (300–600)
- **Italic-Highlight im Hero:** Serif Italic in #7dc9a0

### Designprinzipien
- Editorial, ruhig, hochwertig (Stilvorbild: voss-engineering.com, IGM)
- Großzügiger Whitespace, klare Hierarchie
- Akzente sparsam — Grün nur an wichtigen Stellen
- Hover-States subtil (translateY, leichter Schatten, scale max 1.05)
- Keine generischen AI-Aesthetics-Gradienten
- Bildbehandlung: leicht entsättigt, brightness 0.85–0.92, weiche Vignetten

---

## Technische Entscheidungen (umgesetzt)

- ✅ **Lokale Fonts** (DSGVO-konform, kein Google-CDN)
- ✅ **Keine Cookies, kein Tracking**
- ✅ **Lazy-Loading** auf alle below-fold Bilder
- ✅ **Schema.org JSON-LD** (ProfessionalService) in index.html
- ✅ **Open Graph + Twitter Cards**
- ✅ **Web3Forms** für Kontaktformular (Access Key siehe unten)
- ✅ **SVG-Favicon**
- ✅ **404-Seite** im selben Designstil
- ✅ **Sitemap.xml + robots.txt**
- ✅ **Reduced-motion-Support**
- ✅ **Honeypot-Spam-Schutz** im Formular

---

## Geplante Domain

`kreith-schadstoffgutachten.de` (Hauptdomain).
Empfehlung: zusätzlich `schadstoffgutachten-muenchen.de` als 301-Redirect für lokale SEO.

---

## Offene To-Dos / Platzhalter

### In `impressum.html`
- [ ] **Steuernummer** eintragen
- [ ] **Berufshaftpflicht-Versicherung** (Name + Anschrift)

### In `datenschutz.html`
- [ ] **Hosting-Anbieter** (Name + Anschrift) eintragen
- [ ] **Server-Logfile-Speicherdauer** in Tagen eintragen (steht in den Hoster-AGB)

### Vor Go-Live
- [ ] Hosting wählen + Domain konnektieren (Empfehlung: All-Inkl PrivatPlus, ~5 €/Monat, deutsche Server)
- [ ] Web3Forms: Erstverifikations-Mail bestätigen
- [ ] Google Business Profile anlegen (höchste Priorität für lokale SEO)
- [ ] Google Search Console + Sitemap einreichen
- [ ] IHK München Sachverständigen-Verzeichnis-Eintrag (Backlink + Autorität)

---

## Inhalts-Strategie

### Kernbotschaften
1. **Hero-Headline:** "Schadstoffrisiken kennen, *bevor* sie zum Problem werden."
2. **Warum-Sektion:** 5 Karten (Gesundheitsschutz, Informationspflicht, Entsorgungskosten, Finanzierung/Beleihungswert, Sicherheit beim Kauf)
3. **Leistungen:** Asbestanalyse, PCB/KMF, Schadstoffkataster, Kaufberatung, Sanierungs-Koordination
4. **Bild-Caption Asbestfasern:** "Asbestfasern – unsichtbar gefährlich" (klein, italic, dezent)

### Recht-Stand (geprüft Mai 2026)
- Neue Gefahrstoffverordnung in Kraft seit 5.12.2024
- Novellierung GefStoffV seit 21.12.2025 — Asbestvermutung für Gebäude vor 31.10.1993
- TRGS 519 Neufassung erwartet Sommer 2026
- Eigentümer: **Informationspflicht** (nicht direkte Erkundungspflicht)
- Ausführende Unternehmen: erweiterte Erkundungspflicht
- Genehmigungspflicht für niedrige/mittlere Risikobereiche ab 19.12.2026

---

## Konventionen für Claude

- **Sprache:** Deutsch (Du-Form im Tech-Dialog)
- **Tonfall:** ruhig, sachkundig, ohne Marketing-Floskeln; juristisch präzise, aber nicht abschreckend
- **Code-Edits:** Lieber Python-Snippets via Bash als große Edit-Calls bei der ~1100-zeiligen index.html (sonst Read-Limit-Probleme)
- **Vor Änderungen an Platzhaltern:** lieber nachfragen, falls Recht/Steuer betroffen
- **Web-Recherche:** Bei Recht und Stoffinfos immer aktuelle Quellen verlinken, keine veralteten Stände zitieren

---

## Web3Forms Setup

- Endpoint: `https://api.web3forms.com/submit`
- Access Key: `99eb7fc6-dccd-4ac7-83bf-a099bebcc103`
- Subject: "Neue Anfrage über kreith-schadstoffgutachten.de"
- Empfänger: info@kreith-schadstoffgutachten.de
- Honeypot-Feld: `botcheck` (versteckt)

---

## IndexNow Setup

- Key: `c5fe25996d0f40f989b29d6ad4953fc4`
- Key-File: `c5fe25996d0f40f989b29d6ad4953fc4.txt` (im Root, muss öffentlich erreichbar sein)
- Ping-Script: `indexnow.sh` (nach jedem Deploy ausführen)
- Ping benachrichtigt: Bing, Yandex, Seznam, Naver, DuckDuckGo

---

## Marketing-Prompt für institutionelle Kunden (Banken/Asset Manager/REITs)

Verwenden für: LinkedIn-Posts, Pitch-Decks, Akquise-Mails, Folge-Texte zur Sektion `#institutional`.

```
ROLLE: Du bist ein Texter für B2B-Immobiliendienstleistungen
mit Fokus auf institutionelle Entscheider.

ZIELGRUPPE:
- Asset Manager bei Bestandshaltern (Wohnen + Gewerbe)
- Credit Officer bei Immobilienbanken (Pfandbrief, Realkredit)
- Investment Manager bei REITs / Spezial-AIFs
- Property Manager bei großen Wohnungsunternehmen
- Head of Sustainability / ESG-Officer

KERNANGEBOT:
Unabhängiger Sachverständiger (TRGS 519) für Schadstoffgutachten
in Bestandsimmobilien — von Einzelobjekt bis Portfolio.

KOMMUNIKATIONSPRINZIPIEN:
1. Sprich die Sprache des Empfängers: Risk, Capex, Beleihung,
   Due Diligence, ESG/CSRD, NDA, Timeline
2. Keine Floskeln, keine "wir sind die Besten"-Sprache
3. Konkrete Anschlussfähigkeit an interne Prozesse betonen
   (Investment Committee, Credit Committee, Asset Plan)
4. Quantifizierbare Outputs: Risk Rating, Capex-Schätzung,
   Sanierungsempfehlung mit Priorisierung
5. Diskretion und Geschwindigkeit als gleichwertige Werte
   neben technischer Tiefe

AUSGABE: Kurze, dichte Absätze, kein Marketing-Bullshit,
keine Emojis, keine Übertreibungen.
Lieber unterspielen als oversellen.

Beispiel-Hooks:
- "Portfolio-Sicherheit ist kalkulierbar"
- "Daten, mit denen Banken arbeiten können"
- "Vom Laborwert zur Investment-Entscheidung"
```

---

## Live-News-Setup (Mediathek)

- Quelle: Google News RSS (Suchquery: Asbest OR Schadstoffgutachten OR Gefahrstoffverordnung, .de-Domains)
- CORS-Proxy: `api.allorigins.win` (kostenfrei, kein Key)
- Fallback: Wenn Proxy nicht erreichbar, wird freundlicher Hinweis statt Liste angezeigt; kuratierte Artikel oben bleiben sichtbar
- Anpassung: Query im JS-Block ändern, falls thematischer Fokus verschoben werden soll

---

## Konkurrenten (für Kontextualisierung)

| Wettbewerber | Domain | Anmerkung |
|---|---|---|
| Voss Engineering | voss-engineering.com | Stilvorbild für Impressum |
| Peter Aschendorf | aschendorf-consult.de | öffentlich bestellter SV |
| IGM mbH | igm-mbh.de | Stilvorbild für Mediathek + Gefahrstoffe |
| Mair Ingenieurbüro | raumlufttest-muenchen.de | Exact-Match-Domain |
| – | asbestsachverstaendiger.de | Exact-Match Generic |
| IFB Eigenschenk | eigenschenk.de | etablierter Mitbewerber |
| Grundbaulabor | grundbaulabor-muenchen.de | regional |

---

*Stand: Mai 2026 — bei größeren Änderungen bitte aktualisieren.*
