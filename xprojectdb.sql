-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2016 at 10:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `recoverycodes`
--

CREATE TABLE `recoverycodes` (
  `mail` varchar(50) NOT NULL,
  `recovcode` varchar(8) NOT NULL,
  `senttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recoverycodes`
--

INSERT INTO `recoverycodes` (`mail`, `recovcode`, `senttime`) VALUES
('john@doe.com', '23167536', '2016-11-27 00:37:00'),
('riadh.bh@yandex.com', '02144203', '2016-11-26 23:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `logo` varchar(25) NOT NULL DEFAULT 'unnamed',
  `latitude` double NOT NULL,
  `Longitude` double NOT NULL,
  `lastupdatedloc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isconnected` bit(1) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `gender`, `birthday`, `logo`, `latitude`, `Longitude`, `lastupdatedloc`, `isconnected`, `password`) VALUES
(1, 'john@doe.com', 'kais', 'neffati', 'Female', '1992-02-01', 'unnamed', -33.86907833333333, 151.20901333333333, '2016-12-17 21:07:48', b'0', '12345678'),
(2, 'riadh.bh@yandex.com', 'riadh', 'bh', 'Male', '1993-01-03', 'caution', -33.86907987410085, 151.20928999999845, '2016-12-17 21:08:48', b'0', '12345678'),
(3, 'ghost@gmail.com', 'ghost', 'team', 'Male', '1992-12-08', 'unnamed', -33.56881833334351, 151.20928999999845, '2016-12-17 21:04:11', b'0', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  ADD PRIMARY KEY (`mail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
