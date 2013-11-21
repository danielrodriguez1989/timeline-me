-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2013 at 12:43 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timeline`
--

-- --------------------------------------------------------

--
-- Table structure for table `agente`
--

CREATE TABLE IF NOT EXISTS `agente` (
  `idAgente` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `idPublicaciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAgente`),
  KEY `idPublicaciones` (`idPublicaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `idEmpresa` int(11) NOT NULL DEFAULT '0',
  `razonSocial` varchar(30) DEFAULT NULL,
  `idAgente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `idAgente` (`idAgente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `esseguidopor`
--

CREATE TABLE IF NOT EXISTS `esseguidopor` (
  `id` int(11) NOT NULL DEFAULT '0',
  `idEmpresa` int(11) DEFAULT NULL,
  `idAgente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAgente` (`idAgente`),
  KEY `idEmpresa` (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publicacion`
--

CREATE TABLE IF NOT EXISTS `publicacion` (
  `idPublicaciones` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPublicaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agente`
--
ALTER TABLE `agente`
  ADD CONSTRAINT `agente_ibfk_1` FOREIGN KEY (`idPublicaciones`) REFERENCES `publicacion` (`idPublicaciones`);

--
-- Constraints for table `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`idAgente`) REFERENCES `agente` (`idAgente`);

--
-- Constraints for table `esseguidopor`
--
ALTER TABLE `esseguidopor`
  ADD CONSTRAINT `esseguidopor_ibfk_1` FOREIGN KEY (`idAgente`) REFERENCES `agente` (`idAgente`),
  ADD CONSTRAINT `esseguidopor_ibfk_2` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
