-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 09:33 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `authorname` varchar(100) NOT NULL,
  `bookcopy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `bookname`, `authorname`, `bookcopy`) VALUES
(1, 'Let Us C++', 'Yashavant Kanetkar', 100),
(2, 'Basic To Advanced Networking', 'Titas Sarker', 100),
(3, 'Code Complete', 'Steve McConnell', 100),
(6, 'Computer Programming', 'Tamim Shahriar Subin', 20),
(15, 'Assembly Language Programming and Organization of IBM Pc', 'Yu Marut', 200),
(16, 'Demo Book1', 'Demo', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bor`
--

CREATE TABLE `bor` (
  `id` int(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `borrowdate` date NOT NULL,
  `returndate` date NOT NULL,
  `reqdate` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `borrowlimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `userid`, `username`, `gender`, `dob`, `contact`, `address`, `password`, `type`, `borrowlimit`) VALUES
(0, 'A000-1', 'admin', 'male', '1996-12-18', '01777777777', 'Dhaka', '123', 'admin', 0),
(4, 'U000-4', 'test12', 'female', '1996-12-13', '01777777777', 'Kuril', '123', 'user', 3),
(6, 'U000-6', 'test3', 'female', '2009-01-01', '01666666666', 'Kuril', '123', 'user', 3),
(7, 'U000-7', 'abc45', 'male', '1994-10-10', '01555555555', 'Banasree', '123', 'user', 3),
(8, 'U000-8', 'Def', 'female', '1998-12-10', '01777777777', 'Dhaka', '123', 'user', 3),
(9, 'U000-9', 'test4', 'female', '1996-12-13', '01777777777', 'Bashundhara', '123', 'user', 3),
(11, 'U000-11', 'Klm', 'male', '2016-02-02', '01777777777', 'Dhaka', '123', 'user', 3),
(12, 'U000-12', 'Demo', 'male', '1996-12-12', '01777777777', 'Dhaka', '123', 'user', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `bor`
--
ALTER TABLE `bor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `bor`
--
ALTER TABLE `bor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
