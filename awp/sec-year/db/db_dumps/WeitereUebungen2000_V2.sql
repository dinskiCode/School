# Dump File
#
# Database is ported from MS Access
#--------------------------------------------------------
# Program Version 3.0.117

DROP DATABASE IF EXISTS `WeitereUebungen2000`;
CREATE DATABASE IF NOT EXISTS `WeitereUebungen2000`;
USE `WeitereUebungen2000`;

#
# Table structure for table 'ANGEBOT'
#

DROP TABLE IF EXISTS `ANGEBOT`;

CREATE TABLE `ANGEBOT` (
  `Angebotsnummer` VARCHAR(15) NOT NULL, 
  `Kundennummer` VARCHAR(15), 
  `Angebotsdatum` DATETIME, 
  `Mitarbeiternummer` VARCHAR(15), 
  `Kundenbestellung` TINYINT DEFAULT 0, 
  INDEX (`Kundennummer`), 
  INDEX (`Mitarbeiternummer`), 
  PRIMARY KEY (`Angebotsnummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ANGEBOT'
#

INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA001-95', 'K030', '1995-11-30 00:00:00', 'F1001', 0);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA003-95', 'K021', '1995-12-10 00:00:00', 'F1004', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA005-95', 'K020', '1995-12-01 00:00:00', 'F1003', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA007-95', 'K011', '1995-12-17 00:00:00', 'F1005', 0);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA009-95', 'K009', '1995-12-09 00:00:00', 'F1004', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA011-96', 'K024', '1996-01-02 00:00:00', 'F1004', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA012-96', 'K031', '1996-01-05 00:00:00', 'F1005', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA013-96', 'K029', '1996-01-08 00:00:00', 'F1004', -1);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA014-96', 'K025', '1996-01-02 00:00:00', 'F1005', 0);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA015-96', 'K004', '1996-01-04 00:00:00', 'F1004', 0);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA016-96', 'K001', '1996-01-11 00:00:00', 'F1001', 0);
INSERT INTO `ANGEBOT` (`Angebotsnummer`, `Kundennummer`, `Angebotsdatum`, `Mitarbeiternummer`, `Kundenbestellung`) VALUES ('VA017-96', 'K006', '1996-01-13 00:00:00', 'F1003', 0);
# 12 records

#
# Table structure for table 'ANGEBOTSPOSITION'
#

DROP TABLE IF EXISTS `ANGEBOTSPOSITION`;

CREATE TABLE `ANGEBOTSPOSITION` (
  `Angebotsnummer` VARCHAR(15) NOT NULL, 
  `Angebotsposition` VARCHAR(15) NOT NULL, 
  `ArtikelNr` VARCHAR(15), 
  `Auftragsmenge` DOUBLE NULL DEFAULT 0, 
  `Angebotspreis` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`Angebotsnummer`, `Angebotsposition`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ANGEBOTSPOSITION'
#

INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA001-95', '1', 'A0004', 2, 1989);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA003-95', '1', 'A1003', 3, 74.4);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA005-95', '1', 'A0005', 2, 625);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA007-95', '1', 'A0003', 2, 1500);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA009-95', '!', 'A1002', 2, 113);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA009-95', '1', 'A0003', 1, 1500);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA011-96', '1', 'A0006', 2, 678);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA011-96', '2', 'A0005', 2, 575);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA011-96', '3', 'A1003', 5, 37.2);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA012-96', '1', 'A0001', 2, 1202.5);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA012-96', '2', 'A0006', 1, 1017);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA013-96', '1', 'A1003', 3, 74.4);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA014-96', '1', 'A0009', 2, 2125);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA014-96', '2', 'A1002', 2, 113.2);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA015-96', '1', 'A0007', 1, 1470);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA016-96', '1', 'A1001', 5, 90);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA017-96', '1', 'A0004', 2, 1989);
INSERT INTO `ANGEBOTSPOSITION` (`Angebotsnummer`, `Angebotsposition`, `ArtikelNr`, `Auftragsmenge`, `Angebotspreis`) VALUES ('VA017-96', '2', 'A0010', 1, 2125);
# 18 records

#
# Table structure for table 'ANLAGEN'
#

DROP TABLE IF EXISTS `ANLAGEN`;

CREATE TABLE `ANLAGEN` (
  `Anlagennr` VARCHAR(50) NOT NULL, 
  `Anlagenbezeichnung` VARCHAR(50), 
  `Anlagentyp` VARCHAR(50), 
  `Nutzungsdauer` INTEGER DEFAULT 0, 
  `AHK` DECIMAL(19,4) DEFAULT 0, 
  `Anschaffungsdatum` DATETIME, 
  `Kostenstelle` VARCHAR(50), 
  PRIMARY KEY (`Anlagennr`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ANLAGEN'
#

INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('01', 'Lagerhalle', 'Gebäude', 50, 2000000, '1994-01-10 00:00:00', '04');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('02', 'LKW:UL-AA-123', 'Fahrzeug', 5, 100000, '1994-01-15 00:00:00', '05');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('03', 'Stapler (Turbo)', 'Transporteinr.', 5, 45000, '1994-01-20 00:00:00', '04');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('04', 'Stapler (Schwer)', 'Transporteinr.', 5, 85000, '1994-01-10 00:00:00', '04');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('05', 'Lieferwagen', 'Fahrzeug', 5, 35000, '1994-01-10 00:00:00', '05');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('06', 'Hochregalsystem', 'Gebäude', 20, 1200000, '1994-04-30 00:00:00', '04');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('07', 'PKW (UL-DZ 356)', 'Fahrzeug', 5, 50000, '1995-01-08 00:00:00', '03');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('10', 'Computeranlage', 'Verwaltung', 6, 300000, '1995-01-09 00:00:00', '02');
INSERT INTO `ANLAGEN` (`Anlagennr`, `Anlagenbezeichnung`, `Anlagentyp`, `Nutzungsdauer`, `AHK`, `Anschaffungsdatum`, `Kostenstelle`) VALUES ('11', 'Telefonanlage', 'Verwaltung', 10, 25000, '1994-01-10 00:00:00', '02');
# 9 records

#
# Table structure for table 'ARTIKEL'
#

DROP TABLE IF EXISTS `ARTIKEL`;

CREATE TABLE `ARTIKEL` (
  `ArtikelNr` VARCHAR(15) NOT NULL, 
  `ArtikelName` VARCHAR(40), 
  `Artikelgruppe` VARCHAR(1), 
  `Einstandspreis` DECIMAL(19,4) DEFAULT 0, 
  `Kalkulationsfaktor` DOUBLE NULL DEFAULT 0, 
  `Lagerbestand` DOUBLE NULL DEFAULT 0, 
  `Mindestbestand` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`ArtikelNr`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ARTIKEL'
#

INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0001', 'Mountain-Bike 26 \" Damen-Standard', 'F', 912, 1.3, 82, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0002', 'Mountain-Bike 26 \" Herren- Standard (', 'F', 925, 1.3, 23, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0003', 'Mountai-Bike 26\", Herren-Sport', 'F', 1025, 1.7, 130, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0004', 'Mountai-Bike 26\", Damen-Sport', 'F', 1170, 1.7, 3, 7);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0005', 'Touring-Wanderrad, 28 \", Damen-Standard', 'F', 575, 1.5, 6, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0006', 'Touring-Wanderrad, 28 \", Herren-Standard', 'F', 678, 1.5, 32, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0007', 'Touring-Wanderrad, 28 \", Herren-Komfor', 'F', 980, 1.5, 38, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0008', 'Touring-Wanderrad, 28 \",Damen-Komfor', 'F', 1010, 1.5, 19, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0009', 'Touring-Wanderrad, 28 \",Damen-Luxus', 'F', 1250, 1.7, 62, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0010', 'Touring-Wanderrad, 28 \",Herren-Luxus', 'F', 1250, 1.7, 5, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0011', 'Mountain-Bike Off-Road', 'F', 1329, 1.8, 34, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0012', 'Mountai-Bike Neon-Look', 'F', 1390, 1.8, 2, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0013', 'Damen Trekking Bike 28 Zoll', 'F', 380, 1.3, 15, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0014', 'Herren Trekking Bike 28 Zoll', 'F', 380, 1.3, 25, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0015', 'Mountain Bike Off Road, 26 Zoll', 'F', 280, 1.8, 30, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0016', 'Trekking Bike Off Road, 28 Zoll', 'F', 680, 1.5, 15, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0017', 'Damen City Bike, 28 Zoll', 'F', 600, 1.5, 35, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0018', 'Damen City Bike, 26 Zoll', 'F', 560, 1.3, 30, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0019', 'Herren City Bike, 28 Zoll', 'F', 800, 1.3, 50, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0020', 'Herren City Bike, 26 Zoll', 'F', 850, 1.3, 50, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0021', 'Straßen Mountain Bike, 26 Zoll', 'F', 600, 1.5, 5, 15);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0022', 'Damen Straßen Mountain Bike, 26 Zoll', 'F', 6900, 1.5, 15, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0023', 'BMX Freestyle 20 Zoll', 'F', 600, 2, 10, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0024', 'Einrad 20 Zoll', 'F', 200, 2, 15, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0025', 'Knaben Mountain Bike 20 Zoll', 'F', 500, 1.5, 40, 15);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0026', 'Knaben Mountai Bike 24 Zoll', 'F', 650, 1.5, 40, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0027', 'Kinderrad 16 Zoll', 'F', 200, 2, 20, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0028', 'Kinder Mountain Bike 12,5 Zoll', 'F', 250, 2, 10, 15);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0029', 'Straßen Mountain Bike Mädchen, 24 Zoll', 'F', 600, 1.5, 90, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0030', 'Straßen Mountain Bike Knaben, 24 Zoll', 'F', 650, 1.5, 270, 50);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A0031', 'Mountainbike', 'F', 790, 1.5, 50, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1001', 'Halogenleuchten-Set', 'Z', 45, 2, 125, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1002', 'Fahrradhelm Größe 1', 'Z', 56.6, 2, 25, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1003', 'Fahrradhelm Grizzly', 'Z', 37.2, 2, 609, 100);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1004', 'Lenkertasche', 'Z', 12, 2, 300, 50);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1005', 'Packtasche, dreifach', 'Z', 27.5, 25, 160, 0);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1006', 'Bügelschloß', 'Z', 35, 2.5, 52, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1007', 'Jugendtasche, Nylon', 'Z', 24.95, 1.5, 15, 5);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1008', 'Spiralschloß', 'Z', 19, 2, 40, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1009', 'Kindersitz', 'Z', 45, 2.5, 15, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1010', 'Trinkflasche, 0,3 l', 'Z', 23, 2, 30, 15);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1011', 'Isotherm-Flasche', 'Z', 15, 2, 50, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1012', 'Radlerhose, kurz', 'Z', 45, 2, 120, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1013', 'Radlerhose, lang', 'Z', 67, 2, 140, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1014', 'Regencape, einfarbig', 'Z', 49.49, 2, 210, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A1015', 'Regencape, bunt', 'Z', 63, 2, 80, 20);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2001', 'Gangschaltung (7-Gang)', 'E', 89, 1.2, 13, 3);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2002', 'Bremszug (2,50m)', 'E', 2.45, 2.5, 107, 100);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2003', 'Bremsklötze', 'E', 7.9, 2.5, 58, 40);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2004', 'Rückstrahler (Reflektor)', 'E', 11, 2, 220, 50);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2005', 'Fahrradschlauch 28 Zoll', 'E', 18, 1.5, 30, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2006', 'Trekking-Sattel', 'E', 32, 1.5, 330, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2007', 'Cruiser-Sattel', 'E', 39.95, 1.5, 20, 25);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2008', 'Leichlaufreigen', 'E', 34.55, 1.5, 50, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2009', 'Grip Shift Schaltgriff', 'E', 62, 2.5, 10, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2010', 'Bremse, Hydraulik', 'E', 78, 2, 105, 10);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2011', 'Lenkerstange', 'E', 24, 1.5, 210, 0);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2012', 'Gepäckhalter, chrom', 'E', 32.5, 1.5, 320, 30);
INSERT INTO `ARTIKEL` (`ArtikelNr`, `ArtikelName`, `Artikelgruppe`, `Einstandspreis`, `Kalkulationsfaktor`, `Lagerbestand`, `Mindestbestand`) VALUES ('A2013', 'Pedale-set', 'E', 47, 1.5, 15, 5);
# 59 records

#
# Table structure for table 'ARTLIEF'
#

DROP TABLE IF EXISTS `ARTLIEF`;

CREATE TABLE `ARTLIEF` (
  `ArtikelNr` VARCHAR(15) NOT NULL, 
  `LiefNr` VARCHAR(15) NOT NULL, 
  `LiefPreis` DOUBLE NULL DEFAULT 0, 
  `LiefZeit` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`ArtikelNr`, `LiefNr`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ARTLIEF'
#

INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0001', 'L007', 932.6625, 25);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0003', 'L007', 896.7525, 30);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0005', 'L006', 748.125, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0006', 'L006', 917.7, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0007', 'L007', 1022.4375, 20);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0009', 'L007', 1012.4625, 20);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0010', 'L007', 1167.075, 20);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0010', 'L014', 573.5625, 1);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0011', 'L007', 676.305, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0011', 'L014', 977.55, 12);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0012', 'L007', 768.075, 31);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0013', 'L007', 380, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0014', 'L006', 370, 20);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0014', 'L007', 390, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0015', 'L011', 310, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0015', 'L014', 290, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0016', 'L006', 680, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0017', 'L007', 600, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0018', 'L006', 590, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0018', 'L007', 610, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0018', 'L011', 550, 20);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0019', 'L006', 840, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0020', 'L006', 600, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0021', 'L007', 620, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0022', 'L007', 630, 25);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0022', 'L014', 590, 3);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0023', 'L001', 600, 30);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0023', 'L006', 710, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0023', 'L007', 850, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0024', 'L006', 210, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0025', 'L006', 490, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0025', 'L007', 500, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0026', 'L006', 650, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0026', 'L007', 650, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0027', 'L001', 200, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0027', 'L014', 210, 8);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0028', 'L011', 250, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0028', 'L014', 255, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0029', 'L006', 600, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0029', 'L007', 660, 8);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0030', 'L001', 700, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0030', 'L006', 850, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A0030', 'L007', 700, 15);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1001', 'L009', 1007.475, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1001', 'L011', 1246.875, 12);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1002', 'L010', 1197, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1002', 'L014', 1246.875, 3);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1003', 'L003', 1187.025, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1004', 'L010', 12, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1004', 'L014', 10, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1005', 'L010', 27.5, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1005', 'L011', 30, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1006', 'L010', 35, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1007', 'L011', 24.95, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1008', 'L001', 19, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1009', 'L001', 45, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1009', 'L011', 40, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1010', 'L014', 23, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1011', 'L001', 15, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1011', 'L003', 20, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1011', 'L006', 15, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1012', 'L006', 67, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1013', 'L001', 50, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1013', 'L006', 49.49, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1014', 'L010', 63, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A1015', 'L011', 63, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2001', 'L003', 1296.75, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2001', 'L015', 1396.5, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2002', 'L015', 1296.75, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2003', 'L008', 1246.875, 3);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2003', 'L009', 1325.6775, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2004', 'L003', 1396.5, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2004', 'L008', 44.8875, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2005', 'L010', 49.875, 3);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2006', 'L003', 30, 8);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2006', 'L014', 32, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2007', 'L003', 39.95, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2008', 'L005', 35, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2009', 'L013', 62, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2009', 'L014', 62, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2010', 'L014', 78, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2011', 'L001', 25, 5);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2011', 'L003', 20, 10);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2012', 'L003', 32.5, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2013', 'L002', 55, 0);
INSERT INTO `ARTLIEF` (`ArtikelNr`, `LiefNr`, `LiefPreis`, `LiefZeit`) VALUES ('A2013', 'L004', 47, 0);
# 86 records

#
# Table structure for table 'AUFTRAG'
#

DROP TABLE IF EXISTS `AUFTRAG`;

CREATE TABLE `AUFTRAG` (
  `Auftragsnummer` VARCHAR(15) NOT NULL, 
  `Kundennummer` VARCHAR(15), 
  `Auftragsdatum` DATETIME, 
  `Mitarbeiternummer` VARCHAR(15), 
  INDEX (`Kundennummer`), 
  INDEX (`Mitarbeiternummer`), 
  PRIMARY KEY (`Auftragsnummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'AUFTRAG'
#

INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA001-95', 'K026', '1995-11-30 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA003-95', 'K021', '1995-12-10 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA005-95', 'K020', '1995-12-01 00:00:00', 'F1003');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA007-95', 'K020', '1995-12-17 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA009-95', 'K026', '1995-12-09 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA010-96', 'K019', '1997-06-12 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA011-96', 'K024', '1996-01-02 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA011-97', 'K033', '1997-06-06 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA012-96', 'K031', '1996-01-05 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA012-97', 'K026', '1997-06-30 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA013-96', 'K029', '1996-01-08 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA013-97', 'K021', '1997-06-07 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA014-95', 'K022', '1995-11-21 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA014-96', 'K025', '1996-01-02 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA015-95', 'K021', '1995-11-25 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA015-96', 'K004', '1996-01-04 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA016-95', 'K002', '1995-12-02 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA016-96', 'K001', '1996-01-11 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA017-95', 'K002', '1995-12-05 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA017-96', 'K006', '1996-01-13 00:00:00', 'F1003');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA018-95', 'K026', '1995-12-08 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA018-96', 'K020', '1996-01-15 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA019-95', 'K020', '1995-12-12 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA019-96', 'K028', '1996-01-21 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA020-95', 'K020', '1995-12-11 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA020-97', 'K029', '1997-05-25 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0210-96', 'K021', '1996-02-10 00:00:00', 'F1002');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0210-97', 'K024', '1997-02-10 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA021-95', 'K002', '1995-12-13 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA021-96', 'K025', '1996-02-02 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA022-96', 'K007', '1996-02-15 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA030196', 'K029', '1996-01-03 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0311-97', 'k025', '1997-03-11 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0320-97', 'k024', '1997-03-20 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('va0404-97', 'k025', '1997-04-04 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0412-97', 'K024', '1997-04-12 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0511-97', 'k025', '1997-05-11 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0523-97', 'k024', '1997-05-23 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0602-97', 'k025', '1997-06-02 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA0618-97', 'k024', '1997-06-18 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA1020-95', 'K026', '1995-10-20 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA1025-95', 'K020', '1995-10-20 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA1107', 'K020', '1995-11-07 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA1210-95', 'k002', '1995-12-10 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA1215', 'K002', '1995-12-15 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA301-96', 'K007', '1996-03-03 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA302-96', 'K023', '1993-03-10 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA303-96', 'K009', '1996-03-13 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA304-96', 'K014', '1996-03-15 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA305-96', 'K010', '1996-03-21 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA309-96', 'K017', '1996-03-09 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA401-96', 'K011', '1996-04-02 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA402-96', 'K011', '1996-04-10 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA403-96', 'K018', '1996-04-13 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA404-96', 'K003', '1996-04-15 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA405-96', 'K005', '1996-04-20 00:00:00', 'F1004');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA515-96', 'K023', '1996-05-15 00:00:00', 'F1002');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA527-96', 'K007', '1996-05-27 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA617-96', 'K020', '1996-06-17 00:00:00', 'F1001');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('VA625-96', 'K013', '1996-06-25 00:00:00', 'F1005');
INSERT INTO `AUFTRAG` (`Auftragsnummer`, `Kundennummer`, `Auftragsdatum`, `Mitarbeiternummer`) VALUES ('zzzz', 'k003', '1996-06-10 00:00:00', 'F1001');
# 61 records

#
# Table structure for table 'AUFTRAGSPOSITION'
#

DROP TABLE IF EXISTS `AUFTRAGSPOSITION`;

CREATE TABLE `AUFTRAGSPOSITION` (
  `Auftragsnummer` VARCHAR(15) NOT NULL, 
  `Auftragsposition` VARCHAR(15) NOT NULL, 
  `ArtikelNr` VARCHAR(15), 
  `Auftragsmenge` DOUBLE NULL DEFAULT 0, 
  `Auftragspreis` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`Auftragsnummer`, `Auftragsposition`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'AUFTRAGSPOSITION'
#

INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA001-95', '1', 'A0004', 20, 1989);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA001-95', '2', 'A2003', 50, 22);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA003-95', '1', 'A1003', 3, 74.4);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA005-95', '1', 'A0005', 12, 625);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA007-95', '1', 'A0003', 5, 1500);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA007-95', '2', 'A1003', 30, 30);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA007-95', '3', 'A2007', 20, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA009-95', '1', 'A1002', 20, 113);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA009-95', '2', 'A0003', 3, 1500);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA009-95', '3', 'A1004', 30, 25);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA009-95', '4', 'A2006', 35, 42);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA010-96', '1', 'A0030', 20, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA010-96', '2', 'A0029', 10, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA010-96', '3', 'A1005', 5, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA011-96', '1', 'A0006', 2, 678);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA011-96', '2', 'A0005', 2, 575);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA011-96', '3', 'A1003', 5, 37.2);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA011-97', '1', 'A1004', 50, 18);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA011-97', '2', 'A1007', 20, 40);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA012-96', '1', 'A0001', 2, 1202.5);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA012-96', '2', 'A0006', 1, 1017);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA012-97', '1', 'A0001', 2, 1200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA012-97', '2', 'A0025', 15, 600);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA013-96', '1', 'A1003', 3, 74.4);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA013-97', '1', 'A0026', 10, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA013-97', '2', 'A1003', 100, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA014-95', '1', 'A1013', 20, 120);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA014-95', '2', 'A1014', 20, 125);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA014-96', '1', 'A0009', 2, 2125);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA014-96', '2', 'A1002', 2, 113.2);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA015-95', '1', 'A0006', 5, 1000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA015-95', '2', 'A2004', 200, 20);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA015-95', '3', 'A1013', 50, 97);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA015-96', '1', 'A0007', 1, 1470);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA016-95', '1', 'A0007', 5, 1425);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA016-95', '2', 'A0011', 15, 1700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA016-95', '3', 'A1013', 40, 99);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA016-96', '1', 'A1001', 5, 90);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA017-95', '1', 'A0011', 20, 1800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA017-95', '2', 'A2012', 75, 47.5);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA017-95', '3', 'A1014', 20, 100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA017-96', '1', 'A0004', 2, 1989);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA017-96', '2', 'A0010', 1, 2125);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA018-95', '1', 'A0011', 20, 1750);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA018-95', '2', 'A2006', 40, 45);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA018-95', '3', 'A1005', 20, 60);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA018-96', '1', 'A0006', 8, 1000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA018-96', '2', 'A1003', 50, 65);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-95', '1', 'A0001', 5, 1200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-95', '2', 'A0003', 5, 1200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-95', '3', 'A1003', 50, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-96', '1', 'A0006', 15, 1050);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-96', '2', 'A1002', 50, 80);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA019-96', '3', 'A1003', 50, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA020-95', '1', 'A0009', 5, 1550);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA020-95', '2', 'A1001', 25, 90);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA020-95', '3', 'A2001', 30, 120);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA020-97', '1', 'A0001', 20, 1300);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-96', '1', 'A1003', 30, 72.5);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-96', '2', 'A1007', 10, 87);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-96', '3', 'A0009', 3, 2000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-97', '1', 'A0005', 4, 800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-97', '2', 'A1002', 10, 130);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0210-97', '3', 'A2013', 20, 70);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-95', '1', 'A1009', 25, 110);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-95', '2', 'A2003', 150, 22);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-95', '3', 'A2006', 10, 20);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-96', '1', 'A0003', 20, 1250);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-96', '2', 'A2004', 100, 15);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA021-96', '3', 'A0030', 10, 750);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA022-96', '1', 'A0025', 20, 600);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA022-96', '2', 'A2004', 100, 15);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA030196', '1', 'A2012', 150, 3.2);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA030196', '2', 'A2010', 50, 95);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA030196', '3', 'A1005', 30, 55);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0311-97', '1', 'A0025', 10, 800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0311-97', '2', 'A0026', 10, 900);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0311-97', '3', 'A0011', 10, 1800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0320-97', '1', 'A0004', 6, 1600);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('va0404-97', '1', 'A0011', 10, 1800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('va0404-97', '2', 'A0012', 10, 2000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('va0404-97', '3', 'A1008', 20, 30);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('va0404-97', '4', 'A2007', 20, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0412-97', '1', 'A0031', 5, 1250);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0412-97', '2', 'A2011', 20, 35);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0511-97', '1', 'A1013', 50, 100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0511-97', '2', 'A1014', 100, 90);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0511-97', '3', 'A0003', 10, 1600);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0511-97', '4', 'A0018', 5, 900);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0523-97', '1', 'A2009', 5, 150);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0523-97', '2', 'A0027', 5, 400);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0523-97', '3', 'A0012', 4, 2200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0602-97', '1', 'A0029', 10, 900);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0602-97', '2', 'A0030', 15, 800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0602-97', '3', 'A1002', 50, 95);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0602-97', '4', 'A2001', 50, 110);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0618-97', '1', 'A1008', 35, 100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0618-97', '2', 'A1007', 50, 40);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA0618-97', '3', 'A0012', 3, 2000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1020-95', '1', 'A0003', 5, 1800);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1020-95', '2', 'A1003', 100, 70);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1020-95', '3', 'A2005', 50, 25);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1025-95', '1', 'A0030', 10, 825);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1025-95', '2', 'A2011', 30, 35);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1025-95', '3', 'A1012', 20, 90);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1107', '1', 'A1006', 50, 85);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1107', '2', 'A2006', 10, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1107', '3', 'A0006', 5, 880);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1210-95', '1', 'A1009', 40, 110);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1210-95', '2', 'A2005', 50, 25);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1215', '1', 'A2012', 50, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA1215', '2', 'A2013', 50, 70);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA301-96', '1', 'A0007', 5, 1200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA301-96', '2', 'A0006', 5, 1100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA301-96', '3', 'A2012', 100, 65);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA302-96', '1', 'A0001', 5, 1200);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA302-96', '2', 'A0003', 5, 1000);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA303-96', '1', 'A0009', 6, 1500);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA303-96', '2', 'A2012', 50, 80);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA304-96', '1', 'A0011', 10, 1750);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA304-96', '2', 'A1006', 85, 30);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA305-96', '1', 'A0006', 10, 1100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA305-96', '2', 'A0030', 15, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA305-96', '3', 'A2004', 50, 20);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA309-96', '1', 'A1008', 40, 63);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA309-96', '2', 'A2008', 15, 55);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA401-96', '1', 'A0009', 10, 1500);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA401-96', '2', 'A2012', 50, 65);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA402-96', '1', 'A0011', 5, 1700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA402-96', '2', 'A1013', 30, 100);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA403-96', '1', 'A0006', 10, 1150);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA403-96', '2', 'A0030', 10, 750);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA404-96', '1', 'A0029', 20, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA404-96', '2', 'A1003', 30, 50);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA405-96', '1', 'A0026', 10, 700);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA405-96', '2', 'A1013', 20, 80);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA515-96', '1', 'A0004', 10, 2250);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA515-96', '2', 'A0010', 15, 1990);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA515-96', '3', 'A1013', 40, 125);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA527-96', '1', 'A2010', 80, 140);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA527-96', '2', 'A2003', 50, 18);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA527-96', '3', 'A0031', 10, 999);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA617-96', '1', 'A1006', 5, 45);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA617-96', '2', 'A1008', 5, 40);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA617-96', '3', 'A0007', 5, 830);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA617-96', '4', 'A0008', 6, 1500);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA625-96', '1', 'A0030', 15, 870);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA625-96', '2', 'A2006', 70, 48);
INSERT INTO `AUFTRAGSPOSITION` (`Auftragsnummer`, `Auftragsposition`, `ArtikelNr`, `Auftragsmenge`, `Auftragspreis`) VALUES ('VA625-96', '3', 'A1015', 30, 118);
# 149 records

#
# Table structure for table 'BESTELLPOS'
#

DROP TABLE IF EXISTS `BESTELLPOS`;

CREATE TABLE `BESTELLPOS` (
  `Bestellnummer` VARCHAR(15) NOT NULL, 
  `Bestellposition` VARCHAR(15) NOT NULL, 
  `ArtikelNr` VARCHAR(15), 
  `Bestellmenge` DOUBLE NULL DEFAULT 0, 
  `Bestellpreis` DOUBLE NULL DEFAULT 0, 
  `geliefert` TINYINT DEFAULT 0, 
  `aktualisiert` TINYINT DEFAULT 0, 
  PRIMARY KEY (`Bestellnummer`, `Bestellposition`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'BESTELLPOS'
#

INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B003', '1', 'A0001', 1, 750, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B003', '2', 'A1001', 1, 50, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B004', '1', 'A0009', 1, 1200, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B005', '1', 'A1003', 5, 38, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B005', '2', 'A2001', 3, 90, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B006', '1', 'A0011', 1, 1300, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B007', '1', 'A2001', 5, 62, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B007', '2', 'A2002', 20, 2.15, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-01', '1', 'A0030', 300, 500, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-01', '2', 'A0029', 100, 500, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-01', '3', 'A0025', 80, 450, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-01', '4', 'A0026', 80, 500, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-02', '1', 'A1005', 150, 20, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-02', '2', 'A1004', 150, 10, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-03', '1', 'A1004', 150, 10, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-04', '1', 'A1006', 50, 35, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-04', '2', 'A1014', 80, 65, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-05', '1', 'A1008', 15, 20, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1195-05', '2', 'A1013', 80, 65, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-01', '1', 'A0007', 50, 950, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-01', '2', 'A0001', 100, 900, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-01', '3', 'A0003', 150, 950, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-01', '4', 'A0009', 80, 1000, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-02', '1', 'A0006', 100, 650, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-03', '1', 'A0011', 150, 1200, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-04', '1', 'A1001', 80, 40, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-05', '1', 'A2006', 300, 10, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-05', '2', 'A1003', 500, 30, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-05', '3', 'A2011', 200, 25, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-05', '4', 'A2012', 300, 45, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-06', '1', 'A2004', 500, 10, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-06', '2', 'A2010', 100, 75, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B1295-07', '1', 'A1003', 350, 450, -1, -1);
INSERT INTO `BESTELLPOS` (`Bestellnummer`, `Bestellposition`, `ArtikelNr`, `Bestellmenge`, `Bestellpreis`, `geliefert`, `aktualisiert`) VALUES ('B601-96', '1', 'A0001', 20, 1000, -1, -1);
# 34 records

#
# Table structure for table 'BESTELLUNG'
#

DROP TABLE IF EXISTS `BESTELLUNG`;

CREATE TABLE `BESTELLUNG` (
  `Bestellnummer` VARCHAR(15) NOT NULL, 
  `LiefNr` VARCHAR(15), 
  `Bestelldatum` DATETIME, 
  `Lieferdatum` DATETIME, 
  `Mitarbeiternummer` VARCHAR(15), 
  INDEX (`Mitarbeiternummer`), 
  PRIMARY KEY (`Bestellnummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'BESTELLUNG'
#

INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B003', 'L003', '1996-01-03 00:00:00', '1996-02-03 00:00:00', 'F1001');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B004', 'L007', '1996-01-10 00:00:00', '1996-01-17 00:00:00', NULL);
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B005', 'L003', '1996-01-05 00:00:00', '1996-01-10 00:00:00', NULL);
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B006', 'L014', '1996-01-03 00:00:00', '1996-01-11 00:00:00', NULL);
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B007', 'L015', '1996-01-02 00:00:00', '1996-01-19 00:00:00', NULL);
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1195-01', 'l006', '1995-11-02 00:00:00', '1995-12-08 00:00:00', 'f1002');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1195-02', 'L011', '1996-11-06 00:00:00', '1996-12-12 00:00:00', 'F1006');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1195-03', 'L014', '1995-11-08 00:00:00', '1995-12-12 00:00:00', 'F1013');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1195-04', 'L010', '1996-11-12 00:00:00', '1995-12-15 00:00:00', 'F1002');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1195-05', 'L001', '1995-11-10 00:00:00', '1995-12-15 00:00:00', 'F1013');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-01', 'L007', '1995-12-02 00:00:00', '1995-12-05 00:00:00', 'F1006');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-02', 'L006', '1995-12-03 00:00:00', '1995-12-08 00:00:00', 'F1006');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-03', 'L014', '1995-12-06 00:00:00', '1995-12-10 00:00:00', 'F1006');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-04', 'L009', '1995-12-10 00:00:00', '1995-12-18 00:00:00', 'F1002');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-05', 'L003', '1995-12-12 00:00:00', '1995-12-20 00:00:00', NULL);
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-06', 'L008', '1995-12-09 00:00:00', '1996-12-14 00:00:00', 'F1002');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B1295-07', 'L010', '1995-12-14 00:00:00', '1995-12-17 00:00:00', 'F1006');
INSERT INTO `BESTELLUNG` (`Bestellnummer`, `LiefNr`, `Bestelldatum`, `Lieferdatum`, `Mitarbeiternummer`) VALUES ('B601-96', 'L004', '1996-06-13 00:00:00', '1996-06-20 00:00:00', 'F1002');
# 18 records

#
# Table structure for table 'BETRIEBSBUCHHALTUNG'
#

DROP TABLE IF EXISTS `BETRIEBSBUCHHALTUNG`;

CREATE TABLE `BETRIEBSBUCHHALTUNG` (
  `Kostenstelle` VARCHAR(50) NOT NULL, 
  `Kostenstellenbezeichnung` VARCHAR(50), 
  PRIMARY KEY (`Kostenstelle`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'BETRIEBSBUCHHALTUNG'
#

INSERT INTO `BETRIEBSBUCHHALTUNG` (`Kostenstelle`, `Kostenstellenbezeichnung`) VALUES ('01', 'Einkauf');
INSERT INTO `BETRIEBSBUCHHALTUNG` (`Kostenstelle`, `Kostenstellenbezeichnung`) VALUES ('02', 'Verwaltung');
INSERT INTO `BETRIEBSBUCHHALTUNG` (`Kostenstelle`, `Kostenstellenbezeichnung`) VALUES ('03', 'Vertrieb');
INSERT INTO `BETRIEBSBUCHHALTUNG` (`Kostenstelle`, `Kostenstellenbezeichnung`) VALUES ('04', 'Lager');
INSERT INTO `BETRIEBSBUCHHALTUNG` (`Kostenstelle`, `Kostenstellenbezeichnung`) VALUES ('05', 'Fuhrpark');
# 5 records

#
# Table structure for table 'DEBITOR'
#

DROP TABLE IF EXISTS `DEBITOR`;

CREATE TABLE `DEBITOR` (
  `Rechnungsnummer` VARCHAR(15) NOT NULL, 
  `Zahlungsdatum` DATETIME NOT NULL, 
  `Betrag` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`Rechnungsnummer`, `Zahlungsdatum`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'DEBITOR'
#

INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR001-95', '1996-06-09 00:00:00', 3659.76);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR003-95', '1996-12-29 00:00:00', 256.68);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR005-95', '1995-12-20 00:00:00', 1437.5);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR005-95', '1995-12-28 00:00:00', 1437.5);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR007-95', '1996-01-27 00:00:00', 3105);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR007-95', '1996-01-30 00:00:00', 3105);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR009-95', '1996-01-19 00:00:00', 1500);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR010-95', '1995-11-30 00:00:00', 35000);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR010-95', '1995-12-10 00:00:00', 5537.5);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR011-95', '1995-11-30 00:00:00', 1759.5);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR011-96', '1996-01-22 00:00:00', 2786.22);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR012-95', '1995-11-25 00:00:00', 33534);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR012-96', '1996-05-15 00:00:00', 3541.77);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR013-95', '1996-02-25 00:00:00', 40000);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR013-95', '1996-03-05 00:00:00', 3000);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR013-96', '1996-01-31 00:00:00', 218.18);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR014-95', '1995-12-10 00:00:00', 5071.5);
INSERT INTO `DEBITOR` (`Rechnungsnummer`, `Zahlungsdatum`, `Betrag`) VALUES ('AR014-96', '1996-05-12 00:00:00', 4633.07);
# 18 records

#
# Table structure for table 'EINDEUT_PLZ'
#

DROP TABLE IF EXISTS `EINDEUT_PLZ`;

CREATE TABLE `EINDEUT_PLZ` (
  `PLZ` VARCHAR(5) NOT NULL, 
  `Ort` VARCHAR(50), 
  PRIMARY KEY (`PLZ`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'EINDEUT_PLZ'
#

INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('10001', 'Berlin 31');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('10002', 'Berlin 47');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('12211', 'Tupfing');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('20001', 'Hamburg 70');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('20003', 'Hamburg 54');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('20602', 'Bad Oldesloe');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('23001', 'Kiel 1');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('23132', 'Raisdorf');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('23232', 'Hafenstadt');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('23235', 'Klappstadt');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('23593', 'Henstedt-Ulzburg');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('24001', 'Lübeck');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('30707', 'Nienburg(Weser)');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('32321', 'Prumpfen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('32322', 'Brodeln');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('34325', 'Hinterdorf');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('34329', 'Gerolsbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('34567', 'Atten');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('40542', 'Nettetal');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('43524', 'Oberstauden');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('43525', 'Unterstauden');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('45443', 'Streben');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('54675', 'Hinterheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('54679', 'Stauden');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('55494', 'Erbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('62002', 'Wiesbaden');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('64711', 'Erbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('65430', 'Ungenheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('65439', 'Winkelhausen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('65656', 'Sonnenstein');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('65658', 'Pilsen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('67897', 'Klingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('67899', 'Dinkeln');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('70001', 'Stuttgart');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('70329', 'Stuttgart-2');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('70567', 'Stuttgart-1');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('71065', 'Esslingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('71384', 'Beutelsbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('72070', 'Tübingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('72072', 'Tübingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('72108', 'Rottenburg');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('73033', 'Göppingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('73035', 'Göppingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('73312', 'Geislingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('74348', 'Lauffen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('76544', 'Obermühl');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('76545', 'Heimstadt');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('76568', 'Plöbingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('76795', 'Aing');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('76798', 'Plastenhausen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('78779', 'Gingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('79108', 'Freiburg');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('79117', 'Freiburg');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('79423', 'Heitersheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('80572', 'Eching');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('80800', 'München');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('80804', 'Dümplingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('83108', 'Gammelshausen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('84523', 'Hirschau');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('85302', 'Geroldsbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('85334', 'Friedrichshafen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('85354', 'Friedrichshafen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('86199', 'Augsburg');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('86869', 'Krumbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('87654', 'Gempen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('87659', 'Manching');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('87689', 'Ambach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('87870', 'Plingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('88097', 'Eriskirch');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('88471', 'Laupheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89071', 'Ulm');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89073', 'Ulm');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89079', 'Ulm');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89081', 'Ulm');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89134', 'Blaustein');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89143', 'Blaubeuren');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89150', 'Laichingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89155', 'Erbach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89520', 'Heidenheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89522', 'Heidenheim');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89584', 'Ehingen-Lauterach');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('89585', 'Ehingen');
INSERT INTO `EINDEUT_PLZ` (`PLZ`, `Ort`) VALUES ('98765', 'Langdorf');
# 83 records

#
# Table structure for table 'KUNDE'
#

DROP TABLE IF EXISTS `KUNDE`;

CREATE TABLE `KUNDE` (
  `Kundennummer` VARCHAR(15) NOT NULL, 
  `Vorname` VARCHAR(40), 
  `NAme` VARCHAR(40), 
  `Ansprechpartner` VARCHAR(40), 
  `Strasse` VARCHAR(40), 
  `plz` VARCHAR(5), 
  `Telefon` VARCHAR(50), 
  `Telefax` VARCHAR(50), 
  `Umsatz` DOUBLE NULL DEFAULT 0, 
  `Rabattsatz` INTEGER DEFAULT 0, 
  `Zahlungsziel` DOUBLE NULL DEFAULT 0, 
  UNIQUE (`Kundennummer`), 
  PRIMARY KEY (`Kundennummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'KUNDE'
#

INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K001', 'Firma', 'Menge KG, Zweiräder', NULL, 'Hauptstr. 34', '89150', NULL, NULL, 300, 0, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K002', 'Alfred', 'Maier, Sportartikel', NULL, 'Zwingerweg 19', '89143', NULL, NULL, 2500, 0, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K003', 'Gerlinde', 'Meyer, Fahrradverkauf', NULL, 'Am Steiger 78', '71384', '089/878788', NULL, 3800, 0, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K004', 'Herr', 'Mauer', NULL, 'Parzivalstr. 25', '89134', NULL, NULL, 500, 0, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K005', 'Firma', 'Neumüller GmbH, Sportausrüstungen', 'Herr Neumüller', 'Großstr. 23', '72108', '09876/8787', '09876/8766', 98000, 15, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K006', 'Firma', 'Braun GmbH & Co., Fahrradverkauf', 'Frau Maier', 'Landstr. 23', '89155', '0976/66543', '0976/6543', 45000, 10, 120);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K007', 'Firma', 'Segdorf GmbH, Zweiräder', 'Hr. Kunz', 'Klingensbrück 23', '55494', '04876/7777', '04876/7778', 36000, 10, 0);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K008', 'Firma', 'Englsdorf', 'Fr. Poppenstedt', 'Hauptstr. 45', '64711', '09654/6678', NULL, 58000, 15, 0);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K009', 'Angelo', 'Braunmühl', 'Hr. Appen', 'Kleinstr. 23', '88097', '0765/8866', NULL, 126000, 20, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K010', 'Firma', 'Velo GmbH, Fahrräder', 'Hr. Pfiff', 'Bergerweg 7', '79108', '0934/8723', NULL, 37000, 10, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K011', 'Hubert', 'Neu', NULL, 'Pfaffweg 45', '79117', '02123/6566', NULL, 36500, 10, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K012', 'ERika', 'Alsko', NULL, 'Dorfweg 7', '85354', '0657/43334', NULL, 78200, 15, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K013', 'Jasmin', 'Gerber, Fahrzeuge', 'Hr. Kampf', 'Himmelweg 23', '85334', '08838/7787', NULL, 200, 0, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K014', 'Firma', 'Bluebikes GmbH, Sportfahrräder', NULL, 'Plunzgasse 2', '83108', '0220/23423', NULL, 300, 0, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K015', 'Firma', 'Biker KG, Zweiradverkauf', 'Fr. Haferkamp', 'Hafenstr. 45', '85302', '01989/2323', NULL, 7800, 0, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K016', 'Else', 'Kleinmühl', NULL, 'Kurzweg 2', '73312', '07654/2354', NULL, 79000, 15, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K017', 'Hans-Jörg', 'Kleber, Fahrradverkauf', 'Hr. Kampf', 'Himmelweg 46', '86199', '08838/7787', NULL, 24100, 10, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K018', 'Herr', 'Erik Janser KG, Fahrräder', NULL, 'Klonstr. 129', '73035', '07659/8789', NULL, 32000, 10, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K019', 'Firma', 'Osten GmbH& Co.', 'Hr. Zepter', 'Ungerstr. 23', '73033', '06543/6676', NULL, 3780, 0, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K020', 'Firma', 'Osterberger FahrradgmbH', 'Hr. Meinig', 'Kummelberg 3', '89520', '08765/787', NULL, 6500, 0, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K021', 'Firma', 'Diebel & Partner', NULL, 'Peterweg', '89522', '0765/8876', NULL, 9900, 0, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K022', 'Firma', 'Plinze & Söhne', 'Hr. Pilger', 'Zugweg 23', '79423', '04876/7777', '04876/7778', 23000, 10, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K023', 'Firma', 'Kleiner & Co.', NULL, 'Mühlstr. 23', '74348', '07654/2354', NULL, 58000, 10, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K024', 'Hermann', 'Berger, Zweiradverkauf', NULL, 'Stadtweg 12', '89584', '08877/9865', NULL, 54000, 10, 90);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K025', 'Frau', 'Silber', NULL, 'Kunzgasse 3', '89584', '0298/87879', NULL, 23500, 10, 60);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K026', 'Herr', 'Usedom', NULL, 'Pilgerweg 4', '89584', '05878/875', NULL, 44000, 10, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K027', 'Herr', 'Müller', NULL, 'Pfaffenweg 34', '89143', '07658   232323', NULL, 22500, 10, 60);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K028', 'Firma', 'Zweirad - Blaumann GmbH', 'Fr. Espe', 'Hauptstr. 45', '88471', '0954/6678', NULL, 17500, 10, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K029', 'Georg', 'Götz, Zweiräder', 'Hr. Appel', 'Dorfweg 28', '72070', '0765/8866', NULL, 67250, 15, 30);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K030', 'Herr', 'Mandel', NULL, 'Petergasse 2', '72072', '02320/23423', NULL, 123546, 20, 0);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K031', 'Firma', 'Kunzman-Räder KG', NULL, 'Langwied 23', '89081', '0764/2354', NULL, 43000, 10, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K032', 'Fridolin', 'Kupfer', NULL, 'Bergstr. 33', '89079', '06643/6676', NULL, 34500, 10, 20);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K033', 'Gabi', 'Widmann', NULL, 'Ochsenweg 98', '89073', '0248/87879', NULL, 6300, 10, 0);
INSERT INTO `KUNDE` (`Kundennummer`, `Vorname`, `NAme`, `Ansprechpartner`, `Strasse`, `plz`, `Telefon`, `Telefax`, `Umsatz`, `Rabattsatz`, `Zahlungsziel`) VALUES ('K034', 'Firma', 'Sunbikes, Zweiradvertriebs GmbH', NULL, 'Am Achen 45', '89150', '05878/875', NULL, 18500, 10, 30);
# 34 records

#
# Table structure for table 'LIEFERER'
#

DROP TABLE IF EXISTS `LIEFERER`;

CREATE TABLE `LIEFERER` (
  `LiefNr` VARCHAR(15) NOT NULL, 
  `FirmBez` VARCHAR(80), 
  `KPerson` VARCHAR(30), 
  `Strasse` VARCHAR(25), 
  `PLZ` VARCHAR(10), 
  `Vorwahl` VARCHAR(10), 
  `TeleZent` VARCHAR(24), 
  `Telefax` VARCHAR(24), 
  `Umsatz` DOUBLE NULL DEFAULT 0, 
  INDEX (`FirmBez`), 
  PRIMARY KEY (`LiefNr`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'LIEFERER'
#

INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L001', 'Neumann KG, Fahrradfabrikation', 'Neumann', 'MarienStrasse 24', '32321', '05021', '920130', NULL, 6090);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L002', 'SUN-BIKES GmbH, Fahrräder', 'Leimbach, Frau', 'GradeStrasse 60', '10002', '030', '60007-0', '6000730', 11540);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L003', 'Bredehop GmbH, Fahrradteile', NULL, 'Postfach 1249', '23132', '04531', '7014/15', '4923', 883);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L004', 'Conrad Electronic, Tachometer', NULL, 'Klaus-Conrad-Str. 1', '84523', '09622', '30-111', '30-265', 20000);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L005', 'Gummi-Wild, GmbH& Co', 'Absolon', 'Gutenbergstraße 15', '24001', '04193', '900905', '900986', 0);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L006', 'Gräbert GmbH, Berlin', NULL, 'Nestorstr. 36a', '10001', '030', '896903-0', '8918033', 277107);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L007', 'Friedhelm Glambert, Fahrradimport', 'Balk, Frau', 'Kieler Str. 54', '20003', '040', '5405882', '5405871', 1816);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L008', 'Kontron Elektronik, Zweiradelektrik', 'Franke', 'Kuehnstr. 71', '20001', '040', '6684291', '6684752', 13695);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L009', 'Eltrik GmbH, Zweiradleuchten', NULL, 'Oskar v. Miller Str. 1', '80572', '08165', '77-0', '77385', 3358);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L010', 'Plattreif KG, Zweiradteile', NULL, 'Gustav-Stresemann-Ring 12', '62002', '0611', '1430', '143159', 7203);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L011', 'Reese GmbH & Co.', 'Busse', 'Brockesstr. 69/Ecke Lohmü', '30707', '0451', '479000', NULL, 5095);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L012', 'Rein Elektronik, Zweiradelektrik', NULL, 'Lötscher Weg 66', '40542', '02153', '733-0', '733110', 0);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L013', 'Metalltechnik Müller, Zweiradschaltungen', 'Jordt', 'Lise-Meitner Straße 1 - 7', '23235', '04307', '900125', '900265', 0);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L014', 'Maller & Partner, Zweiradtechnik', NULL, 'Niemannsweg 46', '23232', '0431', '57934-0', '57934-99', 1305);
INSERT INTO `LIEFERER` (`LiefNr`, `FirmBez`, `KPerson`, `Strasse`, `PLZ`, `Vorwahl`, `TeleZent`, `Telefax`, `Umsatz`) VALUES ('L015', 'Kurt Misper, Metallteile', 'Sigle', 'Smaragdweg 1', '70001', '0711', '291400', '292299', 398);
# 15 records

#
# Table structure for table 'LIEFERSCHEIN'
#

DROP TABLE IF EXISTS `LIEFERSCHEIN`;

CREATE TABLE `LIEFERSCHEIN` (
  `Lieferscheinnummer` VARCHAR(15) NOT NULL, 
  `Kundennummer` VARCHAR(15), 
  `Auftragsnummer` VARCHAR(15), 
  `Mitarbeiternummer` VARCHAR(15), 
  `Lieferscheindatum` DATETIME, 
  INDEX (`Auftragsnummer`), 
  INDEX (`Kundennummer`), 
  INDEX (`Mitarbeiternummer`), 
  PRIMARY KEY (`Lieferscheinnummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'LIEFERSCHEIN'
#

INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS001-95', 'K030', 'VA001-95', 'F1004', '1996-06-09 15:20:47');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS003-95', 'K021', 'VA003-95', 'F1004', '1995-12-20 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS005-95', 'K020', 'VA005-95', 'F1003', '1995-12-11 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS007-95', 'K011', 'VA007-95', 'F1005', '1995-12-27 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS009-95', 'K009', 'VA009-95', 'F1004', '1995-12-19 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS010-95', 'K019', 'VA010-95', 'F1001', '1995-11-20 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS011-95', 'K033', 'VA011-95', 'F1004', '1995-11-22 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS011-96', 'K024', 'VA011-96', 'F1004', '1996-01-12 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS012-95', 'K026', 'VA012-95', 'F1005', '1995-11-23 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS012-96', 'K031', 'VA012-96', 'F1005', '1996-01-15 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS013-95', 'K021', 'VA013-95', 'F1005', '1996-01-29 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS013-96', 'K029', 'VA013-96', 'F1004', '1996-01-18 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS014-95', 'K022', 'VA014-95', 'F1004', '1995-12-01 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS014-96', 'K025', 'VA014-96', 'F1005', '1996-01-12 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS015-95', 'K021', 'VA015-95', 'F1001', '1995-12-05 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS015-96', 'K004', 'VA015-96', 'F1004', '1996-01-14 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS016-95', 'K002', 'VA016-95', 'F1001', '1995-12-12 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS016-96', 'K001', 'VA016-96', 'F1001', '1996-01-21 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS017-95', 'K019', 'VA017-95', 'F1001', '1995-12-15 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS017-96', 'K006', 'VA017-96', 'F1003', '1996-01-23 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS018-95', 'K026', 'VA018-95', 'F1001', '1995-12-18 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS018-96', 'K020', 'VA018-96', 'F1004', '1996-01-25 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS019-95', 'K021', 'VA019-95', 'F1001', '1995-12-22 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS019-96', 'K028', 'VA019-96', 'F1005', '1996-01-31 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS020-95', 'K019', 'VA020-95', 'F1004', '1995-12-21 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS020-96', 'K029', 'VA020-96', 'F1004', '1996-01-31 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS021-95', 'K028', 'VA021-95', 'F1005', '1995-12-23 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS021-96', 'K025', 'VA021-96', 'F1001', '1996-02-12 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS022-96', 'K007', 'VA022-96', NULL, '1996-02-15 00:00:00');
INSERT INTO `LIEFERSCHEIN` (`Lieferscheinnummer`, `Kundennummer`, `Auftragsnummer`, `Mitarbeiternummer`, `Lieferscheindatum`) VALUES ('LS301-96', NULL, NULL, NULL, '1996-06-27 16:10:54');
# 30 records

#
# Table structure for table 'LIEFERSCHEINPOSITION'
#

DROP TABLE IF EXISTS `LIEFERSCHEINPOSITION`;

CREATE TABLE `LIEFERSCHEINPOSITION` (
  `Lieferscheinnummer` VARCHAR(15) NOT NULL, 
  `Lieferscheinposition` INTEGER NOT NULL DEFAULT 0, 
  `ArtikelNr` VARCHAR(15), 
  `Liefermenge` DOUBLE NULL DEFAULT 0, 
  `aktualisiert` TINYINT DEFAULT 0, 
  PRIMARY KEY (`Lieferscheinnummer`, `Lieferscheinposition`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'LIEFERSCHEINPOSITION'
#

INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS001-95', 1, 'A0004', 2, 0);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS003-95', 1, 'A1003', 3, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS005-95', 1, 'A0005', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS007-95', 1, 'A0003', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS009-95', 1, 'A1002', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS009-95', 2, 'A0003', 1, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS010-95', 1, 'A0030', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS010-95', 2, 'A0029', 30, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS010-95', 3, 'A1005', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS011-95', 1, 'A1004', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS011-95', 2, 'A1007', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS011-96', 1, 'A0006', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS011-96', 2, 'A0005', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS011-96', 3, 'A1003', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS012-95', 1, 'A0001', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS012-95', 2, 'A0025', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS012-96', 1, 'A0001', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS012-96', 2, 'A0006', 1, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS013-95', 1, 'A0026', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS013-95', 2, 'A1003', 100, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS013-96', 1, 'A1003', 3, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS014-95', 1, 'A1013', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS014-95', 2, 'A1014', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS014-96', 1, 'A0009', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS014-96', 2, 'A1002', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS015-95', 1, 'A0006', 30, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS015-95', 2, 'A2004', 100, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS015-96', 1, 'A0007', 1, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS016-95', 1, 'A0007', 30, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS016-95', 2, 'A0011', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS016-96', 1, 'A1001', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS017-95', 1, 'A0011', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS017-96', 1, 'A0004', 2, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS017-96', 2, 'A0010', 1, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS018-95', 1, 'A0011', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS018-95', 2, 'A2006', 10, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS018-96', 1, 'A0006', 30, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS018-96', 2, 'A1003', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-95', 1, 'A0001', 25, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-95', 2, 'A0003', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-95', 3, 'A1003', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-96', 1, 'A0006', 15, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-96', 2, 'A1002', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS019-96', 3, 'A1003', 50, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS020-95', 1, 'A0009', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS020-96', 1, 'A0001', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-95', 1, 'A0009', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-95', 2, 'A0003', 5, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-95', 3, 'A2006', 10, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-96', 1, 'A0003', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-96', 2, 'A2004', 100, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS021-96', 3, 'A0030', 30, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS022-96', 1, 'A0025', 20, -1);
INSERT INTO `LIEFERSCHEINPOSITION` (`Lieferscheinnummer`, `Lieferscheinposition`, `ArtikelNr`, `Liefermenge`, `aktualisiert`) VALUES ('LS022-96', 2, 'A2004', 100, -1);
# 54 records

#
# Table structure for table 'MITARBEITER'
#

DROP TABLE IF EXISTS `MITARBEITER`;

CREATE TABLE `MITARBEITER` (
  `Mitarbeiternummer` VARCHAR(10) NOT NULL, 
  `Name` VARCHAR(20), 
  `Vorname` VARCHAR(15), 
  `Geschlecht` VARCHAR(1), 
  `Steuerkl` VARCHAR(5), 
  `Plz` VARCHAR(5), 
  `Strasse` VARCHAR(25), 
  `Geboren` DATETIME, 
  `Eintritt` DATETIME, 
  `Abteilung` VARCHAR(20), 
  `Provisionssatz` DOUBLE NULL DEFAULT 0, 
  `Umsatz` DOUBLE NULL DEFAULT 0, 
  `Gehalt` DOUBLE NULL DEFAULT 0, 
  `Kostenstelle` VARCHAR(2), 
  PRIMARY KEY (`Mitarbeiternummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'MITARBEITER'
#

INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1001', 'Frey', 'Donald', 'M', 'III', '89071', 'Weite Str. 12', '1970-12-12 00:00:00', '1985-04-01 00:00:00', 'Verkauf', 10, 20000, 6800, '03');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1002', 'Daumer', 'Ulla', 'W', 'I', '89143', 'Karlstraße 23', '1965-09-01 00:00:00', '1992-10-01 00:00:00', 'Einkauf', 0, 0, 4600, '01');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1003', 'Gissing', 'Beate', 'W', 'III', '89071', 'Olgastraß1 123', '1952-07-31 00:00:00', '1970-01-01 00:00:00', 'Verwaltung', 0, 0, 4350, '02');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1004', 'Schlauch', 'Angelika', 'W', 'I', '71065', 'Neckaallee 81', '1978-04-04 00:00:00', '1989-08-01 00:00:00', 'Verkauf', 15, 35000, 5900, '03');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1005', 'Harr', 'Egon', 'M', 'II', '89134', 'Ulmer Weg 56', '1975-07-07 00:00:00', '1993-09-01 00:00:00', 'Verkauf', 8, 125000, 4600, '03');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1006', 'Hennes', 'Andreas', 'M', 'I', '89585', 'Lindenallee 12', '1972-10-18 00:00:00', '1990-01-01 00:00:00', 'Einkauf', 0, 0, 3900, '01');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1007', 'Mainzer', 'Heinz', 'M', 'I', '70567', 'Allee 34', '1950-10-10 00:00:00', '1970-01-01 00:00:00', 'Lager', 12, 0, 3600, '04');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1008', 'Knaller', 'Willi', 'M', 'III', '70329', 'Königsweg 56', '1954-03-08 00:00:00', '1972-04-01 00:00:00', 'Lager', 10, 0, 4200, '04');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1009', 'Gossler', 'Rainer', 'M', 'III', '89143', 'Römerstraße 18', '1960-06-24 00:00:00', '1996-01-01 00:00:00', 'Verwaltung', 0, 0, 7500, '02');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1010', 'Lenker', 'Erwin', 'M', 'III', '89150', 'Helfensteinerstr. 31', '1956-11-22 00:00:00', '1992-04-10 00:00:00', 'Lager', 0, 0, 4325, '05');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1011', 'Schlauch', 'Rudolf', 'M', 'I', '89143', 'Karlstraße 12', '1960-10-11 00:00:00', '1993-10-01 00:00:00', 'Lager', 0, 0, 4250, '05');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1012', 'Mainzer', 'Erwin', 'M', 'I', '89150', 'Marktplatz 1', '1959-06-11 00:00:00', '1992-04-01 00:00:00', 'Lager', 0, 5, 3600, '04');
INSERT INTO `MITARBEITER` (`Mitarbeiternummer`, `Name`, `Vorname`, `Geschlecht`, `Steuerkl`, `Plz`, `Strasse`, `Geboren`, `Eintritt`, `Abteilung`, `Provisionssatz`, `Umsatz`, `Gehalt`, `Kostenstelle`) VALUES ('F1013', 'Anters', 'Vera', 'W', 'I', '89071', 'Karlsplatz 3', '1966-04-02 00:00:00', '1991-10-01 00:00:00', 'Einkauf', 0, 1, 4200, '01');
# 13 records

#
# Table structure for table 'PERSONALKOSTEN'
#

DROP TABLE IF EXISTS `PERSONALKOSTEN`;

CREATE TABLE `PERSONALKOSTEN` (
  `Mitarbeiternummer` VARCHAR(10) NOT NULL, 
  `Monat` DATETIME NOT NULL, 
  `Brutto` DOUBLE NULL DEFAULT 0, 
  `Lohnsteuer` DOUBLE NULL DEFAULT 0, 
  `KiSteuer` DOUBLE NULL DEFAULT 0, 
  `SoliZuschl` DOUBLE NULL DEFAULT 0, 
  `Rentenvers` DOUBLE NULL DEFAULT 0, 
  `ArbeitslosenVers` DOUBLE NULL DEFAULT 0, 
  `Krankenvers` DOUBLE NULL DEFAULT 0, 
  `Pflegevers` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`Mitarbeiternummer`, `Monat`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'PERSONALKOSTEN'
#

INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1001', '1995-01-15 00:00:00', 3600, 540, 43.2, 40.5, 345.6, 117, 268.66, 9.56);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1001', '1995-02-15 00:00:00', 3600, 540, 43.2, 40.5, 345.6, 117, 268.66, 9.56);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1001', '1995-12-15 00:00:00', 3600, 540, 43.2, 40.5, 345.6, 117, 268.66, 9.56);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1002', '1996-01-15 00:00:00', 4600, 690, 55.2, 51.75, 441.6, 141.38, 324.63, 21.75);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1002', '1996-02-15 00:00:00', 4600, 690, 55.2, 51.75, 441.6, 141.38, 324.63, 21.75);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1003', '1996-01-15 00:00:00', 4350, 652.5, 52.2, 48.9, 417.6, 141.3, 324.63, 21.75);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1003', '1996-02-15 00:00:00', 4350, 652.5, 52.2, 48.9, 417.6, 141.3, 324.63, 21.75);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1004', '1996-01-15 00:00:00', 5900, 1062, 85, 79, 566, 191, 440, 29.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1004', '1996-02-15 00:00:00', 5900, 1062, 85, 79, 566, 191, 440, 29.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1005', '1996-01-15 00:00:00', 4600, 690, 55.2, 51.75, 441.6, 149.5, 343.28, 23);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1005', '1996-02-15 00:00:00', 4600, 690, 55.2, 51.75, 441.6, 149.5, 343.28, 23);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1006', '1996-01-15 00:00:00', 3900, 624, 49, 46.8, 374, 126, 291, 19.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1006', '1996-02-15 00:00:00', 3900, 624, 49, 46.8, 374, 126, 291, 19.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1007', '1996-02-15 00:00:00', 3600, 540, 43.2, 40.5, 345, 117, 268, 18);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1008', '1996-01-15 00:00:00', 4200, 630, 50, 47.25, 403.2, 136, 313, 21);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1008', '1996-02-15 00:00:00', 4200, 630, 50, 47.25, 403.2, 136, 313, 21);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1009', '1996-01-15 00:00:00', 7500, 1350, 108, 101, 720, 243, 559, 37.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1009', '1996-02-15 00:00:00', 7500, 1350, 108, 101, 720, 243, 559, 37.5);
INSERT INTO `PERSONALKOSTEN` (`Mitarbeiternummer`, `Monat`, `Brutto`, `Lohnsteuer`, `KiSteuer`, `SoliZuschl`, `Rentenvers`, `ArbeitslosenVers`, `Krankenvers`, `Pflegevers`) VALUES ('F1010', '1996-01-15 00:00:00', 3600, 540, 43.2, 40.5, 345, 117, 268, 18);
# 19 records

#
# Table structure for table 'POSITION_LIEFERERBESTELLUNG'
#

DROP TABLE IF EXISTS `POSITION_LIEFERERBESTELLUNG`;

CREATE TABLE `POSITION_LIEFERERBESTELLUNG` (
  `Bestellnummer` VARCHAR(15) NOT NULL, 
  `ArtikelNr` VARCHAR(15) NOT NULL, 
  `Bestellposition` INTEGER DEFAULT 0, 
  `Menge` DOUBLE NULL DEFAULT 0, 
  `Bestellpreis` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`Bestellnummer`, `ArtikelNr`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'POSITION_LIEFERERBESTELLUNG'
#

INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B003', 'A0001', 1, 2, 1200);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B003', 'A0002', 2, 2, 950);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B003', 'A0005', 3, 3, 550);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B004', 'A1001', 1, 5, 40);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B004', 'A2002', 2, 3, 3);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B005', 'A0001', 1, 5, 926);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B006', 'A2003', 0, 2, 4.5);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B007', 'A0004', 0, 8, 890);
INSERT INTO `POSITION_LIEFERERBESTELLUNG` (`Bestellnummer`, `ArtikelNr`, `Bestellposition`, `Menge`, `Bestellpreis`) VALUES ('B007', 'A2001', 0, 5, 45);
# 9 records

#
# Table structure for table 'RECHNUNG'
#

DROP TABLE IF EXISTS `RECHNUNG`;

CREATE TABLE `RECHNUNG` (
  `Rechnungsnummer` VARCHAR(15) NOT NULL, 
  `Rechnungsdatum` DATETIME,
  `Kundennummer` VARCHAR(15), 
  `Mitarbeiternummer` VARCHAR(15), 
  INDEX (`Kundennummer`), 
  INDEX (`Mitarbeiternummer`), 
  PRIMARY KEY (`Rechnungsnummer`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'RECHNUNG'
#

INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR001-95', '1996-06-09 00:00:00', 'K030', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR003-95', '1995-12-20 00:00:00', 'K021', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR005-95', '1995-12-11 00:00:00', 'K020', 'F1003');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR007-95', '1995-12-27 00:00:00', 'K011', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR009-95', '1995-12-19 00:00:00', 'K009', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR010-95', '1995-11-20 00:00:00', 'K019', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR011-95', '1995-11-22 00:00:00', 'K033', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR011-96', '1996-01-12 00:00:00', 'K024', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR012-95', '1995-11-23 00:00:00', 'K026', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR012-96', '1996-01-15 00:00:00', 'K031', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR013-95', '1996-01-29 00:00:00', 'K021', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR013-96', '1996-01-18 00:00:00', 'K029', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR014-95', '1995-12-01 00:00:00', 'K022', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR014-96', '1996-01-12 00:00:00', 'K025', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR015-95', '1995-12-05 00:00:00', 'K021', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR015-96', '1996-01-14 00:00:00', 'K004', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR016-95', '1995-12-12 00:00:00', 'K002', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR016-96', '1996-01-21 00:00:00', 'K001', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR017-95', '1995-12-15 00:00:00', 'K019', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR017-96', '1996-01-23 00:00:00', 'K006', 'F1003');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR018-95', '1995-12-18 00:00:00', 'K026', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR018-96', '1996-01-25 00:00:00', 'K020', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR019-95', '1995-12-22 00:00:00', 'K021', 'F1001');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR019-96', '1996-01-31 00:00:00', 'K028', 'F1005');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR020-95', '1995-12-21 00:00:00', 'K019', 'F1004');
INSERT INTO `RECHNUNG` (`Rechnungsnummer`, `Rechnungsdatum`, `Kundennummer`, `Mitarbeiternummer`) VALUES ('AR021-96', '1996-02-12 00:00:00', 'K025', 'F1001');
# 26 records

#
# Table structure for table 'RECHNUNGSPOSITION'
#

DROP TABLE IF EXISTS `RECHNUNGSPOSITION`;

CREATE TABLE `RECHNUNGSPOSITION` (
  `Rechnungsnummer` VARCHAR(15) NOT NULL, 
  `Rechnungsposition` INTEGER NOT NULL DEFAULT 0, 
  `Lieferscheinnummer` VARCHAR(15), 
  `ArtikelNr` VARCHAR(15), 
  `Menge` INTEGER DEFAULT 0, 
  `Verkaufspreis` DOUBLE NULL DEFAULT 0, 
  INDEX (`Lieferscheinnummer`), 
  PRIMARY KEY (`Rechnungsnummer`, `Rechnungsposition`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'RECHNUNGSPOSITION'
#

INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR001-95', 1, NULL, 'A0004', 2, 1989);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR003-95', 1, 'LS003-95', 'A1003', 3, 74.4);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR005-95', 1, 'LS005-95', 'A0005', 2, 625);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR007-95', 1, 'LS007-95', 'A0003', 2, 1500);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR009-95', 1, 'LS009-95', 'A1002', 2, 113);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR009-95', 2, 'LS009-95', 'A0003', 1, 1500);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR010-95', 1, 'LS010-95', 'A0030', 20, 700);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR010-95', 2, 'LS010-95', 'A0029', 30, 700);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR010-95', 3, 'LS010-95', 'A1005', 5, 50);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR011-95', 1, 'LS011-95', 'A1004', 50, 18);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR011-95', 2, 'LS011-95', 'A1007', 20, 40);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR011-96', 1, 'LS011-96', 'A0006', 2, 678);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR011-96', 2, 'LS011-96', 'A0005', 2, 575);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR011-96', 3, 'LS011-96', 'A1003', 5, 37.2);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR012-95', 1, 'LS012-95', 'A0001', 2, 1200);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR012-95', 2, 'LS012-95', 'A0025', 50, 600);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR012-96', 1, 'LS012-96', 'A0001', 2, 1202.5);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR012-96', 2, 'LS012-96', 'A0006', 1, 1017);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR013-95', 1, 'LS013-95', 'A0026', 50, 700);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR013-95', 2, 'LS013-95', 'A1003', 100, 50);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR013-96', 1, 'LS013-96', 'A1003', 3, 74.4);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR014-95', 1, 'LS014-95', 'A1013', 20, 120);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR014-95', 2, 'LS014-95', 'A1014', 20, 125);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR014-96', 1, 'LS014-96', 'A0009', 2, 2125);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR014-96', 2, 'LS014-96', 'A1002', 2, 113.2);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR015-95', 1, 'LS015-95', 'A0006', 30, 1000);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR015-95', 2, 'LS015-95', 'A2004', 100, 20);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR015-96', 1, 'LS015-96', 'A0007', 1, 1470);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR016-95', 1, 'LS016-95', 'A0007', 30, 1425);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR016-95', 2, 'LS016-95', 'A0011', 50, 1700);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR016-96', 1, 'LS016-96', 'A1001', 5, 90);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR017-95', 1, 'LS017-95', 'A0011', 50, 1800);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR017-96', 1, 'LS017-96', 'A0004', 2, 1989);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR017-96', 2, 'LS017-96', 'A0010', 1, 2125);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR018-95', 1, 'LS018-95', 'A0011', 20, 1750);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR018-95', 2, 'LS018-95', 'A2006', 10, 45);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR018-96', 1, 'LS018-96', 'A0006', 30, 1000);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR018-96', 2, 'LS018-96', 'A1003', 50, 65);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-95', 1, 'LS019-95', 'A0001', 25, 1200);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-95', 2, 'LS019-95', 'A0003', 5, 1200);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-95', 3, 'LS019-95', 'A1003', 50, 50);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-96', 1, 'LS019-96', 'A0006', 15, 1050);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-96', 2, 'LS019-96', 'A1002', 50, 80);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR019-96', 3, 'LS019-96', 'A1003', 50, 50);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR020-95', 1, 'LS020-95', 'A0009', 5, 1550);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR021-96', 1, 'LS021-96', 'A0003', 20, 1300);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR021-96', 2, 'LS021-96', 'A2004', 100, 1200);
INSERT INTO `RECHNUNGSPOSITION` (`Rechnungsnummer`, `Rechnungsposition`, `Lieferscheinnummer`, `ArtikelNr`, `Menge`, `Verkaufspreis`) VALUES ('AR021-96', 3, 'LS021-96', 'A0030', 30, 1200);
# 48 records

