-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2016 at 01:07 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oglasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `oglas`
--

CREATE TABLE IF NOT EXISTS `oglas` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tekst` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cena` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id_Korisnika` int(10) NOT NULL,
  `Id_Telefona` int(10) NOT NULL,
  `Id_Valute` int(10) NOT NULL,
  `Id_Slika` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Id_Korisnika` (`Id_Korisnika`),
  KEY `Id_Valute` (`Id_Valute`),
  KEY `Id_Slika` (`Id_Slika`),
  KEY `Id_Telefona` (`Id_Telefona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE IF NOT EXISTS `slike` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `slika_1` longblob NOT NULL,
  `slika_2` longblob NOT NULL,
  `slika_3` longblob NOT NULL,
  `slika_4` longblob NOT NULL,
  `slika_5` longblob NOT NULL,
  `slika_6` longblob NOT NULL,
  `slika_7` longblob NOT NULL,
  `slika_8` longblob NOT NULL,
  `slika_9` longblob NOT NULL,
  `slika_10` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `valuta`
--

CREATE TABLE IF NOT EXISTS `valuta` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oglas`
--
ALTER TABLE `oglas`
  ADD CONSTRAINT `oglas_ibfk_1` FOREIGN KEY (`Id_Valute`) REFERENCES `valuta` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `oglas_ibfk_2` FOREIGN KEY (`Id_Slika`) REFERENCES `slike` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
