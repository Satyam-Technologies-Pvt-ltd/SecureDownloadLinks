-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2016 at 04:37 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `securedownload`
--

-- --------------------------------------------------------

--
-- Table structure for table `ddown`
--

CREATE TABLE IF NOT EXISTS `ddown` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `actuallink` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `pretendname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `whoreferred` text COLLATE utf8_unicode_ci NOT NULL,
  `notadl` tinyint(1) NOT NULL DEFAULT '0',
  `fileexten` char(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actuallink` (`actuallink`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ipmap`
--

CREATE TABLE IF NOT EXISTS `ipmap` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_file` int(10) NOT NULL,
  `ipaddress` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `dccode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refer` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dccode` (`dccode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
