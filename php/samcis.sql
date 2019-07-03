-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 20, 2019 at 08:53 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samcis`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `vpass_id` int(5) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `birthdate` varchar(12) NOT NULL DEFAULT 'MM-DD-YYYY',
  `provincial_add` varchar(100) DEFAULT NULL,
  `baguio_add` varchar(100) DEFAULT NULL,
  `contactno` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `requirements` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vpass_id`)
) ENGINE=MyISAM AUTO_INCREMENT=324347 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`vpass_id`, `last_name`, `first_name`, `middle_name`, `birthdate`, `provincial_add`, `baguio_add`, `contactno`, `position`, `status`, `requirements`) VALUES
(1234, 'Foz', 'viviene Leigh', 'sia', '04-10-1997', '# Zamora St.', '# Zamora Brgy', '09155066966', 'Student', 'Pending', 'NSO'),
(324345, 'Perez', 'Christian Paul', 'S', '12-01-1998', '# Zamora St.', '# Zamora Brgy', '09155066966', 'Student', 'Pending', 'NSO'),
(324346, 'Alejo', 'Maria Salud', 'Del Rosario', '01-01-1995', '# Zamora St.', '# Zamora Brgy', '09155066966', 'Student', 'Pending', 'NSO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
