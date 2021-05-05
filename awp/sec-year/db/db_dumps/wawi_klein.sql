-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 25. April 2021 um 19:38
-- Server Version: 5.1.41
-- PHP-Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


--
-- Datenbank: `wawi_klein`
--
CREATE DATABASE IF NOT EXISTS `wawi_klein`;	
USE `wawi_klein`;	
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `A_Nr` int(11) NOT NULL DEFAULT '0',
  `A_Bez` varchar(50) DEFAULT NULL,
  `A_Art` varchar(50) DEFAULT NULL,
  `A_VK` decimal(9,2) DEFAULT '0.00',
  `A_Bestand` int(11) DEFAULT '0',
  `A_MinBestand` int(11) DEFAULT '0',
  PRIMARY KEY (`A_Nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`A_Nr`, `A_Bez`, `A_Art`, `A_VK`, `A_Bestand`, `A_MinBestand`) VALUES
(1, 'HP Laserjet P6', 'Laserdrucker', '375.00', 15, 2),
(2, 'Cannon', 'Laserdrucker', '260.00', 4, 1),
(3, 'MACOM', 'Monitor', '155.00', 10, 4),
(4, 'Highscreen', 'Monitor', '125.00', 7, 5),
(5, 'Sony', 'CD-ROM', '99.00', 20, 5),
(6, 'Mitsumi 32', 'CD-ROM', '85.00', 15, 4),
(7, 'Mitsumi 24', 'CD-ROM', '78.00', 8, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestelldetails`
--

CREATE TABLE IF NOT EXISTS `bestelldetails` (
  `B_Nr` int(11) DEFAULT '0',
  `A_Nr` int(11) DEFAULT '0',
  `B_Menge` int(11) DEFAULT '0',
  KEY `A_Nr` (`A_Nr`),
  KEY `B_Nr` (`B_Nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `bestelldetails`
--

INSERT INTO `bestelldetails` (`B_Nr`, `A_Nr`, `B_Menge`) VALUES
(1, 1, 2),
(1, 2, 7),
(1, 3, 1),
(2, 4, 1),
(3, 5, 4),
(4, 6, 2),
(5, 7, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE IF NOT EXISTS `bestellungen` (
  `B_Nr` int(11) NOT NULL DEFAULT '0',
  `B_Datum` datetime DEFAULT NULL,
  `B_Lieferdatum` datetime DEFAULT NULL,
  `B_Erledigt` tinyint(4) DEFAULT '0',
  `B_Rechnung` tinyint(4) DEFAULT '0',
  `K_Nr` int(11) DEFAULT '0',
  PRIMARY KEY (`B_Nr`),
  KEY `K_Nr` (`K_Nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `bestellungen`
--

INSERT INTO `bestellungen` (`B_Nr`, `B_Datum`, `B_Lieferdatum`, `B_Erledigt`, `B_Rechnung`, `K_Nr`) VALUES
(1, '2020-09-23 00:00:00', '2020-10-07 00:00:00', 0, 1, 5),
(2, '2020-09-23 00:00:00', '2020-10-10 00:00:00', 0, 1, 5),
(3, '2020-09-23 00:00:00', '2020-10-01 00:00:00', 0, 0, 5),
(4, '2020-09-24 00:00:00', '2020-10-14 00:00:00', 0, 0, 6),
(5, '2020-09-25 00:00:00', '2020-10-16 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE IF NOT EXISTS `kunden` (
  `K_Nr` int(11) NOT NULL DEFAULT '0',
  `K_Name` varchar(30) DEFAULT NULL,
  `K_Vorname` varchar(20) DEFAULT NULL,
  `K_Strasse` varchar(30) DEFAULT NULL,
  `K_PLZ` varchar(10) DEFAULT NULL,
  `K_Ort` varchar(30) DEFAULT NULL,
  `K_Telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`K_Nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`K_Nr`, `K_Name`, `K_Vorname`, `K_Strasse`, `K_PLZ`, `K_Ort`, `K_Telefon`) VALUES
(1, 'Schwab ', 'Christoph', 'Fasanenweg', '90600', 'Nürnberg', NULL),
(5, 'Hintersteiner ', 'Xaver', 'Platz 8', '89000', 'München', '089-4444444'),
(6, 'Lohmeier', 'Karin', 'Hohlweg 18', '89445', 'Flötmaning', '089-445588');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
