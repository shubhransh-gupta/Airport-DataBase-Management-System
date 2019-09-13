-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2019 at 05:21 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user1`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `a_id` varchar(20) NOT NULL,
  `a_name` varchar(40) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `no_shops` varchar(30) DEFAULT NULL,
  `a_dim` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`a_id`, `a_name`, `city`, `no_shops`, `a_dim`) VALUES
('1234', 'Amausi International Airport', 'Lucknow', '100', '900*1800'),
('404', 'Kempagowda international airport', 'Bengaluru', '120', '1900*1900'),
('987', 'IGI International Airport', 'Delhi', '200', '4000*4000');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `pass`) VALUES
('akshay', 'Qwerty'),
('hack', '1234'),
('root', '1234'),
('subh', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `moneytransfer`
--

CREATE TABLE `moneytransfer` (
  `a_id` varchar(20) DEFAULT NULL,
  `currency` varchar(30) DEFAULT NULL,
  `loca` varchar(30) DEFAULT NULL,
  `s_id` int(11) NOT NULL,
  `byc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moneytransfer`
--

INSERT INTO `moneytransfer` (`a_id`, `currency`, `loca`, `s_id`, `byc`) VALUES
('1234', 'Dollars,Dinars', 'near gate 4', 1240, 'Western union');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `a_id` varchar(20) DEFAULT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  `s_id` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`a_id`, `s_name`, `s_id`, `location`) VALUES
('1234', 'raymond', '1239', 'near gate 4'),
('1234', 'tanishq', '1240', 'near gate 4');

-- --------------------------------------------------------

--
-- Table structure for table `waiting`
--

CREATE TABLE `waiting` (
  `a_id` varchar(20) DEFAULT NULL,
  `s_avail` varchar(7) DEFAULT NULL,
  `loca` varchar(30) DEFAULT NULL,
  `D_charges` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiting`
--

INSERT INTO `waiting` (`a_id`, `s_avail`, `loca`, `D_charges`) VALUES
('1234', '56', 'near gate 1', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `moneytransfer`
--
ALTER TABLE `moneytransfer`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moneytransfer`
--
ALTER TABLE `moneytransfer`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
