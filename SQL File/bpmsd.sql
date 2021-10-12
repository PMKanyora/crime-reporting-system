-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 10:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblreports`
--

CREATE TABLE `tblreports` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Crimes` varchar(120) DEFAULT NULL,
  `Details` varchar(1000) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreports`
--

INSERT INTO `tblreports` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `Details`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(11, '859383351', 'Peter Maina', 'peterkanyora341@gmail.com', 743126202, '10/13/2021', '11:00am', 'Raping', 'A young man raped our neighbours daughter.', '2021-10-11 14:14:45', 'The police in duty will take action immediately...calling the crime reporter for more details', '1', '2021-10-11 14:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Sunita Verma', 'verma@gmail.com', 5546464646, 'Transgender', 'Taking Hair Spa', '2020-02-26 11:09:10', '0000-00-00 00:00:00'),
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Transgender', 'Taken haircut by him maina', '2020-02-26 11:10:02', '2021-10-10 16:55:34'),
(3, 'Khusbu', 'saini@gmail.com', 4646445464, 'Transgender', 'khjhhkjkjkuhj', '2020-02-26 11:10:28', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2020-08-19 13:38:58', NULL),
(5, 'Test user', 'testuser@gmail.com', 1234567890, 'Female', 'Test', '2020-08-21 16:24:53', '2020-08-21 16:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '0000-00-00 00:00:00'),
(2, 2, 5, 621839533, '2020-06-04 15:33:22'),
(3, 2, 6, 621839533, '0000-00-00 00:00:00'),
(4, 2, 7, 621839533, '0000-00-00 00:00:00'),
(5, 1, 1, 904156433, '0000-00-00 00:00:00'),
(6, 1, 2, 904156433, '0000-00-00 00:00:00'),
(7, 1, 3, 904156433, '0000-00-00 00:00:00'),
(8, 1, 4, 904156433, '0000-00-00 00:00:00'),
(9, 3, 1, 225057023, '0000-00-00 00:00:00'),
(10, 3, 8, 225057023, '0000-00-00 00:00:00'),
(11, 3, 1, 970548035, '0000-00-00 00:00:00'),
(12, 3, 6, 970548035, '0000-00-00 00:00:00'),
(13, 3, 9, 970548035, '0000-00-00 00:00:00'),
(14, 4, 2, 942476283, '2020-08-19 13:39:13'),
(15, 4, 12, 942476283, '2020-08-19 13:39:13'),
(16, 5, 3, 297018570, '2020-08-21 16:25:27'),
(17, 5, 4, 297018570, '2020-08-21 16:25:27'),
(18, 5, 8, 297018570, '2020-08-21 16:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', 'Our main focus is to provide all crime management solutions which are easily accessible by everyone. The system starts with every people who want to login a complaint through the internet so that it is very useful for police department and social worker to find out the problem in the society without making people to come to police station every time.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'P.O Box 333-00100 Maseno, Kisumu, Kenya', 'peterkanyora341@gmail.com', 254743126202, NULL, '24/7');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblcrimes` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblcrimes` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(18, 'Killing a fellow', 'murder', '2021-10-11 10:14:08'),
(19, 'burgled  neighbors house', 'Burglary', '2021-10-11 14:05:17'),
(20, 'Raping', 'Rape', '2021-10-11 14:10:24'),
(21, 'Stealing a laptop', 'Robbery', '2021-10-11 14:11:25'),
(22, 'Smoking bhang', 'Drug Abuse', '2021-10-11 14:12:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
