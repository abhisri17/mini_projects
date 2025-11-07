-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2016 at 10:44 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotelmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `addguest`
--

CREATE TABLE IF NOT EXISTS `addguest` (
  `room_rent` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `adult` varchar(50) NOT NULL,
  `children` varchar(50) NOT NULL,
  `entrydate` varchar(50) NOT NULL,
  `exitdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contactno` varchar(50) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addguest`
--

INSERT INTO `addguest` (`room_rent`, `name`, `emailid`, `address`, `adult`, `children`, `entrydate`, `exitdate`, `gender`, `contactno`, `room_no`) VALUES
(0, '12', '1', 'fd            ', '1', '1', '2016-12-31', '2017-01-01', 'M', '1', 4),
(0, '1', '1', '         ef   ', '1', '2', '2015-12-31', '2016-01-01', 'M', '1', 5),
(0, '232', '22', '       aef', '1', '1', '2016-12-31', '2015-12-31', 'M', '123', 6),
(0, '1', '1', 'ewd            ', '1', '1', '2015-12-31', '2016-01-01', 'M', '1', 7),
(0, '1', '1', 'w\r\n\r\n            ', '1', '1', '2016-12-31', '2016-01-01', 'M', '1', 8),
(0, '1', '1', 'w\r\n\r\n            ', '1', '1', '2016-12-31', '2016-01-01', 'M', '1', 9),
(0, '1', '1', 'w            ', '1', '1', '2016-12-31', '2016-01-01', 'M', '1', 10),
(1500, '1', '1', 'EE            ', '1', '2', '2016-01-30', '2017-01-01', 'M', '1', 11),
(0, '1', '1', '     wdf       ', '1', '1', '2016-12-31', '2017-12-31', 'M', '1', 12),
(0, '1', '1', '        sf    ', '1', '2', '2016-12-31', '2016-12-31', 'M', '1', 13),
(0, 'kkkkk', 'kkkkk', 'kkkk            ', '1', '1', '2016-12-31', '2017-12-31', 'M', '9999999999999', 14),
(0, '88', '8', 'jlb            ', '3', '1', '2016-12-31', '2017-02-01', 'M', '8888888', 15),
(0, '8', '888', '888            ', '1', '1', '2016-01-01', '2016-02-01', 'M', '88888', 16),
(0, '23', 'KJ', 'KN            ', '2', '2', '2016-12-31', '2016-12-31', 'M', '2', 17),
(0, '1', '1', '1            ', '1', '1', '0001-01-01', '0001-01-01', 'M', '1', 18),
(0, '22', '2', 'ewe            ', '1', '1', '2016-01-31', '2016-01-01', 'M', '2323', 19),
(0, '', 'ankit', '   asasasasasasasasas         ', '5', '2', '2016-12-30', '2016-12-31', 'M', '2323', 101),
(0, 'ankit', 'afadfadfasdf', 'maaaah            ', '1', '2', '2016-12-30', '2016-12-31', 'M', '123456', 102),
(0, '123', '23', '      qe      ', '1', '2', '2016-12-31', '2017-12-31', 'M', '12', 103);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`address`) VALUES
('        zzc    ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `pan_no` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `address`, `email`, `phone_no`, `pan_no`, `password`) VALUES
('amarjeet', 'patna', 'amar@gmail.com', '123456', 'qwerty', 'anand'),
('ak', 'ajokjas', 'AKSK', '899', 'AOJSO', 'MC');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `adults` int(10) NOT NULL,
  `child` int(10) NOT NULL,
  `cidate` varchar(10) NOT NULL,
  `codate` varchar(10) NOT NULL,
  `nights` int(10) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE IF NOT EXISTS `room_types` (
  `room_type_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `return_amt` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `room_capacity` int(11) NOT NULL,
  `room_type` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`room_type_id`, `status`, `return_amt`, `rent`, `advance`, `room_capacity`, `room_type`) VALUES
(101, 'enabled', 122, 1000, 400, 4, 'delux'),
(102, 'enabled', 300, 1500, 700, 10, 'delux'),
(103, 'enabled', 300, 1500, 1000, 15, 'luxury'),
(104, 'enabled', 200, 1000, 300, 7, 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `employee_code` int(10) NOT NULL,
  `employee_name` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `salary` int(10) NOT NULL,
  `age` int(5) NOT NULL,
  `position` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`employee_code`, `employee_name`, `address`, `salary`, `age`, `position`, `email`) VALUES
(2323, 'zeus1705', '      yfh', 1000, 25, 'qwerty', 'ankit'),
(12364, 'ankit', 'patna            ', 11111111, 22, 'mgr', 'ankit@ggg');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `visit_password` varchar(100) NOT NULL,
  `visit_adrs` varchar(100) NOT NULL,
  `contact_num` int(20) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`fname`, `lname`, `email_id`, `dob`, `visit_password`, `visit_adrs`, `contact_num`, `mobile_no`, `status`) VALUES
('pk', 'sn', 'po@po.com', '1995-06-09', '123', 'lk', 123455678, 12345678, 'Enabled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addguest`
--
ALTER TABLE `addguest`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`phone_no`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`employee_code`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addguest`
--
ALTER TABLE `addguest`
  MODIFY `room_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
