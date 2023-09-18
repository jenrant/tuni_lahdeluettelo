![Microsoft Word Citation and Bibliography Styles](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/BibWord.png "BibWord")

## TUNI Kirjallisen raportoinnin opas:
https://www.tuni.fi/fi/opiskelijan-opas/kasikirja/tamk/opiskelu-0/kirjallisen-raportoinnin-opas

## Asennus:
1. Lataa lähdeluettelotiedoston uusin versio sivun oikealta laidalta kohdasta "Releases" (.zip tiedostona)
2. Pura lataamasi .zip tiedoston sisältö samaan kansioon, jotta "Lähdeluettelon asennus.bat" ja "TUNI Lähdeluettelo.xsl" ovat saman kansion sisällä

Vaihtoehtoiset asennustavat:
1. Windows-tietokoneella avaa .bat tiedosto, joka kopioi tyylitiedoston oikeaan paikkaan
2. Vaihtoehtoisesti voit itse kopioida .xsl tiedoston kohteeseen "%appdata%\Roaming\Microsoft\Bibliography\Style\" (saatat joutua luomaan osan kansioista itse)
3. Mac-tietokoneella tyylitiedosto tulisi kopioida kohteeseen "/Applications/Microsoft Word 2016/Contents/Resources/Style/"

Tämän jälkeen avaa word uudestaan ja jos asennus on onnistunut, pitäisi vaihtoehto nyt näkyä kohdassa "References -> Citation & Bibliography -> Style"

![Onnistunut asennus](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/Asennus.png "Onnistunut asennus")

## Käyttö:

### Ensimmäisen lähteen lisääminen
- Lähteiden lisääminen tapahtuu yllänäkyvässä kuvassa olevan kohdan "Manage Sources" kautta, josta aukeaa seuraavanlainen valikko:

![Source manager](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/SourceManager.png "Source manager")

- Tästä valikosta jatketaan kohtaan "New...", josta valitaan ensin lähteen tyyppi (näistä kirjallisen raportoinnin oppaan vastaavuuden tämän sivun lopussa)
- Lähteen tyypin valinnan jälkeen täytetään lähteen kirjoittajat Author->Edit kautta, johon syötetään kirjoittajien sukunimet ja etunimet, syöttämällä ne tähän listaan järjestyksessä, pysyvät ne myös tässä järjestyksessä (etunimestä riittää myös pelkkä ensimmäinen kirjain)
- - Jos kirjoittaja on jokin yritys tai organisaatio, käytetään tällöin Corporate Author valintaa
- Kun kaikki tarvittavat tiedot on lisätty, tallentuu kyseinen lähde listaan painamalla "OK"

Esimerkki kirjallisen raportoinnin oppaasta:

![Kirja 1](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/Kirja1.png "Kirja 1")

#### Lähdeluettelon tekeminen
- Kun lähteet on lisätty luetteloon, lähdeluettelon saa tehtyä kohdasta References -> Citations & Bibliography -> Bibliography:

![Lähdeluettelon luonti](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/LähdeluettelonLuonti.png "Lähdeluettelon luonti")

- Jos lisäät lähteitä tämän jälkeen, ilmestyy ne näkyville kun ensin valitset lähdeluettelon otsikon jolloin yläpuolelle ilmestyy valinta "Update Citations and Bibliography", jota painamalla uudet lähteet päivittyvät itse lähdeluetteloonkin

![Lähdeluettelon päivitys](https://github.com/jenrant/tuni_lahdeluettelo/blob/master/Photos/LähdeluettelonPäivitys.png "Lähdeluettelon päivitys")


## Vastaavuudet kirjallisen raportoinnin oppaassa:
Book - Kirjat
- Jos teokseen tarvitsee merkitä suomentaja tulee tämä poikkeuksellisesti vaihtoehdon City alle, sillä silloin sen muotoilu on oikein
- - Esimerkiksi: "Autio P.(suom.) Tampere"

Journal Article - Tutkimusartikkelit, kokoomateoksen artikkelit, ammattilehtien artikkelit, verkkouutiset ja verkkolehtien artikkelit
- Toimittaja merkitään vaihtoehdon Editor alle
- Huom, verkkolähteissä tulee käyttää vaihtoehtoa Distributor vaihtoehdon Publisher sijaan
- - Esimerkiksi tilanteessa jossa on otettu yle uutisten artikkeli yhdeksi lähteeksi, tällöin tulee myös täyttää kohdat Day, Month ja Year
- Tärkeä huomio myös vaihtoehto Edition viitaa kirjan painokseen ja Issue kohdan alle tulee lehtien julkaisusarja esim. "10 (1)"
- Tukee myös DOI numeroiden ilmoittamisen vaihtoehdon StandardNumber alle

Interview - Asiantuntijahaastattelut ja sähköpostiviestit
- käytetty haastateltavalle tyyppiä Broadcaster, sillä täten haastateltavalle on olemassa BroadcasterTitle johon saadaan haastateltavan arvo tai ammatti
- vaihtoehdon Comments alle välikommentit (ennen haastattelun tyyppiä)
- - Esimerkiksi "Koulusivistyskielenä ruotsi"
- vaihtoehto SourceType sisältää onko kyseessä normaali haastattelu, vai sähköposti
- vaihtoehto City toimii haastattelupaikkana

Article in a Periodical - Julkaisusarjoissa julkaistut
- Vaihtoehdon Issue julkaisusarja ja numero, käytön esimerkit viitaten kirjallisen raportoinnin oppaaseen:
- - "Tampereen ammattikorkeakoulun julkaisuja Sarja B. Raportteja 113"
- - "Raportti 2"

Case - Lait ja asetukset
- Esimerkki päivästä, jona laki tai asetus on annettu, ja numero säädöskokoelmassa
- - 9.4.2021/297
- - Tuotetaan vaihtoehdoilla Day: 9, Month: 4, Year: 2021, CaseNumber: 297

Conference Proceedings - Konfenssi-, seminaari- ja muut asiantuntijasitelmät ja -luennot
- Jos esittäjän ammatti tai arvo merkitsevä, sen voi lisätä Tag kohtaan
- vaihtoehto SourceType kertoo onko kyseessä esimerkiksi luento
- - SourceType jälkeen myös lisätiedot esim:
- - "Luento. YouTube-video. Julkaisija Aalto University"
- - "Luento. TAMK konferenssi"
- vaihtoehtoon Version voi vielä täydentää lisätietoja esim. onko konferenssi pidetty webinaarina, jolloin kohtaan riittää "Webinaari"
- vaihtoehdon City alle voi myös laittaa ensin tarkemman sijainnin esim: "Tampereen ammattikorkeakoulu. Tampere"
- sisältää myös esim. YouTube videot, jolloin lisättävä url ja katselupäivä DayAccessed yms.

Report - Opinnäytteet
- vaihtoehdon Tag alle voi kirjata tutkinto-ohjelman tai yksikön, esim: "Palveluliiketoiminnan tutkinto-ohjelma"
- vaihtoehdon ThesisTag eteen myös julkaisun tiedot, jos oleellinen; esimerkki kirjallisen raportoinnin oppaasta:
- - "Sosiaalitieteiden laitoksen julkaisuja 2012:18. Väitöskirja"

Film - Televisio- ja radio-ohjelmat, podcastit ja elokuvat
- vaihtoehdolla Publisher poikkeuksellisesti ohjelman nimi, kirjallisen raportoinnin oppaan esimerkki:
- - "Kulttuuriykkönen"
- vaihtoehto Distributor lopullinen julkaisija esim: "Yle Areena", "Sitra"
- vaihtoehtoon SourceType voi laittaa myös elokuviin liittyvät lisätiedot, esimerkki kirjallisen raportoinnin oppaasta:
- - "DVD:n lisämateriaali elokuvassa Coppola, S. 2006. Marie Antoinette"

Internet Site - Verkkosivut
- vuosiluvun voi jättää pois jos se ei ole tiedossa niin lähdeluettelo korjaa tämän olemaan n.d.