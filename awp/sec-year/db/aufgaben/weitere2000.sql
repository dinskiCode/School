1.1 + 1.2 select * from kunde;
1.3 select distinct artikelgruppe from artikel;
1.4 select distinct plz from kunde;
1.5 select artikelnr, artikelgruppe, artikelname from artikel order by artikelgruppe, artikelname;
1.6 select *, (auftragspreis * auftragsmenge) as Gesamtpreis from Auftragsposition;

----------

2.1 select * from auftragsposition where artikelnr in ('A1002','A1003');
2.2 select * from auftragsposition where artikelnr not in ('A1002','A1003');
2.3 select * from auftragsposition where artikelnr not in ('A1002','A1003') order by artikelnr;
2.4 select * from auftragsposition where auftragsmenge between 20 and 50;
2.5 select kundennummer, name, telefon, rabattsatz from kunde where rabattsatz = 0;
2.6 select kundennummer, name, telefon, rabattsatz from kunde where rabattsatz = 0 and telefon is NULL;
2.7 select liefnr, firmbez as Firmenbezeichnung from lieferer where firmbez like '%GmbH%';

----------

3.1 select count(*) from Lieferer;
3.2 select avg(einstandspreis) from artikel where artikelgruppe = 'F';
3.3 select max(kalkulationsfaktor) from artikel where artikelgruppe = 'E';

---------

4.1 select zahlungsziel, count(*) as anzahl from kunde group by zahlungsziel; // das distinct nach select kann man sich sparen
4.2 select count(*) as anzahl, plz from kunde group by plz having anzahl > 1;
4.3 select (auftragsmenge * auftragspreis) as auftragsbetrag from auftragsposition;
4.4 select artikelgruppe, count(*) as anzahl_artikelgruppe, min(einstandspreis) as min_einstandspreis, max(einstandspreis) as max_einstandspreis, avg(einstandspreis) as durchschnitt_einstandspreis from artikel group by artikelgruppe;

---------

5.1 select firmbez, strasse, l.plz, ort from  lieferer as l inner join eindeut_plz as ep on l.plz = ep.plz;
5.2 select a.artikelname, a.artikelnr, liefzeit, l.liefnr from artlief al inner join lieferer l on al.liefnr = l.liefnr inner join artikel a on al.artikelnr = a.artikelnr;
5.3 select eindeut_plz.ort, sum(ap.auftragsmenge) as bestellmenge from auftrag join junde on auftrag.kundennummer = kunde.kundennummer join auftragsposition on auftrag.auftragsnummer = auftragsposition.auftragsnummer join eindeut_plz on Kunde.plz = eindeut.plz group by eindeut_plz.ort;
