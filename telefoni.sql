-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2016 at 05:35 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `telefoni`
--

-- --------------------------------------------------------

--
-- Table structure for table `baterija`
--

CREATE TABLE IF NOT EXISTS `baterija` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Vreme_Nekoriscenja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Vreme_Razgovora` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ekran`
--

CREATE TABLE IF NOT EXISTS `ekran` (
  `ID` int(10) NOT NULL,
  `Tip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Velicina` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Rezolucija` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Multitac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Zastita` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `izlazak`
--

CREATE TABLE IF NOT EXISTS `izlazak` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Najavljen_Datum` date NOT NULL,
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kamera`
--

CREATE TABLE IF NOT EXISTS `kamera` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Primarna` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Karakteristika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Sekundarna` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `komunikacije`
--

CREATE TABLE IF NOT EXISTS `komunikacije` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `WLAN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Bluetooth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `GPS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NFC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Radio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USB` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `memorija`
--

CREATE TABLE IF NOT EXISTS `memorija` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Slot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Interna` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mreza`
--

CREATE TABLE IF NOT EXISTS `mreza` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `2G_Frekfencija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `3G_Frekfencija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `4G_Frekfencija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Brzina` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GPRS` tinyint(1) NOT NULL,
  `EDGE` tinyint(1) NOT NULL,
  `Tehnologija` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oprema`
--

CREATE TABLE IF NOT EXISTS `oprema` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Senzori` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Poruke` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Java` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Id_ostalog` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Id_ostalog` (`Id_ostalog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ostale_funkcije`
--

CREATE TABLE IF NOT EXISTS `ostale_funkcije` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Boja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ostalo`
--

CREATE TABLE IF NOT EXISTS `ostalo` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `proizvodjac`
--

CREATE TABLE IF NOT EXISTS `proizvodjac` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE IF NOT EXISTS `telefon` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Id_Proizvodjaca` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Id_Proizvodjaca` (`Id_Proizvodjaca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_baterija`
--

CREATE TABLE IF NOT EXISTS `telefon_baterija` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Baterije` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Baterije`),
  KEY `Id_Baterije` (`Id_Baterije`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_ekran`
--

CREATE TABLE IF NOT EXISTS `telefon_ekran` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_ekrana` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_ekrana`),
  KEY `Id_ekrana` (`Id_ekrana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_izlazak`
--

CREATE TABLE IF NOT EXISTS `telefon_izlazak` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_izlaska` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_izlaska`),
  KEY `Id_izlaska` (`Id_izlaska`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_kamera`
--

CREATE TABLE IF NOT EXISTS `telefon_kamera` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Kamere` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Kamere`),
  KEY `Id_Kamere` (`Id_Kamere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_komunikacije`
--

CREATE TABLE IF NOT EXISTS `telefon_komunikacije` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Komunikacije` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Komunikacije`),
  KEY `Id_Komunikacije` (`Id_Komunikacije`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_memorija`
--

CREATE TABLE IF NOT EXISTS `telefon_memorija` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Memorije` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Memorije`),
  KEY `Id_Memorije` (`Id_Memorije`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_mreza`
--

CREATE TABLE IF NOT EXISTS `telefon_mreza` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Mreze` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Mreze`),
  KEY `Id_Mreze` (`Id_Mreze`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_oprema`
--

CREATE TABLE IF NOT EXISTS `telefon_oprema` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Opreme` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Opreme`),
  KEY `Id_Opreme` (`Id_Opreme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_ostale`
--

CREATE TABLE IF NOT EXISTS `telefon_ostale` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Ostalih` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Ostalih`),
  KEY `Id_Ostalih` (`Id_Ostalih`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_telo`
--

CREATE TABLE IF NOT EXISTS `telefon_telo` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_tela` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_tela`),
  KEY `Id_tela` (`Id_tela`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon_zvuk`
--

CREATE TABLE IF NOT EXISTS `telefon_zvuk` (
  `Id_Telefona` int(10) NOT NULL,
  `Id_Zvuka` int(10) NOT NULL,
  PRIMARY KEY (`Id_Telefona`,`Id_Zvuka`),
  KEY `Id_Zvuka` (`Id_Zvuka`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telo`
--

CREATE TABLE IF NOT EXISTS `telo` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Dimenzije` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tezina` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zvuk`
--

CREATE TABLE IF NOT EXISTS `zvuk` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tipovi_Uzbune` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Zvucnik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `35mm_slot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oprema`
--
ALTER TABLE `oprema`
  ADD CONSTRAINT `oprema_ibfk_1` FOREIGN KEY (`Id_ostalog`) REFERENCES `ostalo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon`
--
ALTER TABLE `telefon`
  ADD CONSTRAINT `telefon_ibfk_1` FOREIGN KEY (`Id_Proizvodjaca`) REFERENCES `proizvodjac` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_baterija`
--
ALTER TABLE `telefon_baterija`
  ADD CONSTRAINT `telefon_baterija_ibfk_2` FOREIGN KEY (`Id_Baterije`) REFERENCES `baterija` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_baterija_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_ekran`
--
ALTER TABLE `telefon_ekran`
  ADD CONSTRAINT `telefon_ekran_ibfk_2` FOREIGN KEY (`Id_ekrana`) REFERENCES `ekran` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_ekran_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_izlazak`
--
ALTER TABLE `telefon_izlazak`
  ADD CONSTRAINT `telefon_izlazak_ibfk_2` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_izlazak_ibfk_1` FOREIGN KEY (`Id_izlaska`) REFERENCES `izlazak` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_kamera`
--
ALTER TABLE `telefon_kamera`
  ADD CONSTRAINT `telefon_kamera_ibfk_2` FOREIGN KEY (`Id_Kamere`) REFERENCES `kamera` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_kamera_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_komunikacije`
--
ALTER TABLE `telefon_komunikacije`
  ADD CONSTRAINT `telefon_komunikacije_ibfk_2` FOREIGN KEY (`Id_Komunikacije`) REFERENCES `komunikacije` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_komunikacije_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_memorija`
--
ALTER TABLE `telefon_memorija`
  ADD CONSTRAINT `telefon_memorija_ibfk_2` FOREIGN KEY (`Id_Memorije`) REFERENCES `memorija` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_memorija_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_mreza`
--
ALTER TABLE `telefon_mreza`
  ADD CONSTRAINT `telefon_mreza_ibfk_2` FOREIGN KEY (`Id_Mreze`) REFERENCES `mreza` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_mreza_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_oprema`
--
ALTER TABLE `telefon_oprema`
  ADD CONSTRAINT `telefon_oprema_ibfk_2` FOREIGN KEY (`Id_Opreme`) REFERENCES `oprema` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_oprema_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_ostale`
--
ALTER TABLE `telefon_ostale`
  ADD CONSTRAINT `telefon_ostale_ibfk_2` FOREIGN KEY (`Id_Ostalih`) REFERENCES `ostale_funkcije` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_ostale_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_telo`
--
ALTER TABLE `telefon_telo`
  ADD CONSTRAINT `telefon_telo_ibfk_2` FOREIGN KEY (`Id_tela`) REFERENCES `telo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_telo_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefon_zvuk`
--
ALTER TABLE `telefon_zvuk`
  ADD CONSTRAINT `telefon_zvuk_ibfk_2` FOREIGN KEY (`Id_Zvuka`) REFERENCES `zvuk` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `telefon_zvuk_ibfk_1` FOREIGN KEY (`Id_Telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
