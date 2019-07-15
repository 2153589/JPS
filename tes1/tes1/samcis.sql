-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 05:06 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `description` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `datetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`description`, `datetime`) VALUES
('hi', '2019-07-15 10:39:45'),
('ascd', '2019-07-15 10:39:45'),
('http://localhost:8080/tes1/announcement.jsp', '2019-07-15 10:39:45'),
('http://localhost:8080/tes1/announcement.jsp', '2019-07-15 10:39:45'),
('hi', '2019-07-15 10:39:45'),
('hi', '2019-07-15 10:39:45'),
('hello', '2019-07-15 10:39:45'),
('hi', '2019-07-15 10:40:08'),
('hi', '2019-07-15 10:44:18'),
('hi there', '2019-07-15 10:44:40'),
('asdfg', '2019-07-15 10:46:51'),
('maggie', '2019-07-15 10:51:55'),
('null', '2019-07-15 11:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`Name`, `Email`, `Description`) VALUES
('null', 'null', 'null'),
('null', 'null', 'null'),
('null', 'null', 'null'),
('null', 'test@yahoo.com', 'I want to learn more'),
('null', 'null', 'null'),
('null', 'null', 'null'),
('null', 'maggie.galamgam@gmail.com', 'hi'),
('null', 'null', 'null'),
('null', 'm@gmail.com', 'hello'),
('null', 'm@gmail.com', 'hello'),
('null', 'maggie.galamgam@gmail.com', 'hello'),
('null', 'maggie.galamgam@gmail.com', 'hello'),
('null', 'm@gmail.com', 'hello'),
('null', 'maggie.galamgam@gmail.com', 'hello'),
('null', 'maggie.galamgam@gmail.com', 'hello'),
('null', 'maggie.galamgam@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `user_ID` int(255) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `postal_address` varchar(100) DEFAULT NULL,
  `contact_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`user_ID`, `first_name`, `last_name`, `email_address`, `postal_address`, `contact_number`) VALUES
(1, 'Kieffer', 'Ballesteros', 'Kiefferballesteros@gmail.com', 'Baguio City', 9064249848),
(2165832, 'Maggie', 'Galamgam', 'maggiegalamgam@gmail.com', 'Baguio City', 9068534848),
(2165833, 'Test', 'Uno', 'Test@yahoo.com', '31K taga saan', 905478123457),
(2165834, 'bon', 'manuel', '2164614@slu.edu.ph', 'zambales', 9123456789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `user_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2165835;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
