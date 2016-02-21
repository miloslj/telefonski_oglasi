-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2016 at 12:44 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `korisnici`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresa`
--

CREATE TABLE IF NOT EXISTS `adresa` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ime_ulice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `broj` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `broj_stana` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE IF NOT EXISTS `drzava` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE IF NOT EXISTS `grad` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postanski_broj` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Drzave` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Id_Drzave` (`Id_Drzave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Id_Adrese` int(10) NOT NULL,
  `Id_Grada` int(10) NOT NULL,
  `Id_Drzave` int(10) NOT NULL,
  `Id_telefona` int(10) NOT NULL,
  `mejl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Id_Adrese` (`Id_Adrese`),
  KEY `Id_Grada` (`Id_Grada`),
  KEY `Id_Drzave` (`Id_Drzave`),
  KEY `Id_telefona` (`Id_telefona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE IF NOT EXISTS `telefon` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `broj_drzave` int(4) NOT NULL,
  `grad_mreza` int(10) NOT NULL,
  `broj` int(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grad`
--
ALTER TABLE `grad`
  ADD CONSTRAINT `grad_ibfk_1` FOREIGN KEY (`Id_Drzave`) REFERENCES `drzava` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `korisnik_ibfk_1` FOREIGN KEY (`Id_Adrese`) REFERENCES `adresa` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `korisnik_ibfk_2` FOREIGN KEY (`Id_Grada`) REFERENCES `grad` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `korisnik_ibfk_3` FOREIGN KEY (`Id_Drzave`) REFERENCES `drzava` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `korisnik_ibfk_4` FOREIGN KEY (`Id_telefona`) REFERENCES `telefon` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
