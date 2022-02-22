-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 08:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-07-16 18:11:42'),
(2, 'RACHIT KUMAR', 'rachitkumar@microsoft.com', 'rachitkumar', 'rachit123', '2020-05-31 09:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagat', '2017-07-08 14:30:23', '2020-05-30 19:29:02'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(10, 'Anne Frank', '2020-05-30 19:21:19', NULL),
(11, 'Jawahar Lal Nehru', '2020-05-30 19:28:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'Diary of a Young Girl', 8, 10, 13001, NULL, '2020-05-30 19:22:21', NULL),
(2, 'Concepy of Physics', 6, 4, 13002, NULL, '2017-07-08 20:17:31', '2020-05-30 19:24:32'),
(3, 'PHP And MySql programming', 5, 1, 13003, 20, '2017-07-08 20:04:55', '2020-05-30 19:24:44'),
(4, 'Five Point Someone', 9, 2, 13004, NULL, '2020-05-30 19:28:10', NULL),
(5, 'Discovery Of India', 8, 11, 13005, NULL, '2020-05-30 19:29:46', NULL),
(8, 'DIARY OF WIMPY KID', 9, 10, 12356, NULL, '2020-10-26 17:46:11', NULL),
(25, 'RITZ CAR', 1, 1, 25896, 1200, '2022-01-23 20:59:34', NULL),
(2678, 'MARUTI SUZUKI RITZ', NULL, NULL, 5, 1200, '2022-01-23 20:56:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(10, '2 Seater', 1, '2022-01-25 14:07:45', '0000-00-00 00:00:00'),
(11, '4 Seater', 1, '2022-01-25 14:07:54', '0000-00-00 00:00:00'),
(12, '5 Seater', 1, '2022-01-25 14:08:01', '0000-00-00 00:00:00'),
(13, '6 Seater', 1, '2022-01-25 14:08:07', '0000-00-00 00:00:00'),
(14, '7 Seater', 1, '2022-01-25 14:10:11', '0000-00-00 00:00:00'),
(15, '8 Seater', 1, '2022-01-25 14:10:21', '0000-00-00 00:00:00'),
(16, '9 Seater', 1, '2022-01-25 14:10:37', '0000-00-00 00:00:00'),
(17, 'More than 9 Seater', 1, '2022-01-25 14:10:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(2, 1, 'SID002', '2020-01-05 06:12:27', '2020-01-15 11:15:23', 1, 5),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(8, 5, 'SID004', '2020-05-30 19:38:50', NULL, NULL, NULL),
(9, NULL, 'SID003', '2020-05-30 19:42:35', NULL, NULL, NULL),
(10, 4, 'SID003', '2020-05-30 19:43:40', NULL, NULL, NULL),
(11, NULL, 'SID016', '2020-06-12 16:12:36', NULL, NULL, NULL),
(12, 1, 'SID016', '2020-06-12 16:13:33', NULL, NULL, NULL),
(13, NULL, 'SID002', '2020-09-05 11:13:18', NULL, NULL, NULL),
(14, 1, 'SID002', '2020-09-05 11:13:49', '2020-09-05 11:14:04', 1, NULL),
(15, 1, 'SID002', '2020-10-26 17:50:29', '2020-10-31 16:45:40', 1, NULL),
(16, 3, 'SID002', '2020-11-17 18:39:27', '2020-12-02 09:05:50', 1, NULL),
(17, 3, 'SID020', '2020-12-02 09:10:37', '2020-12-02 10:36:09', 1, NULL),
(18, 3, 'SID020', '2020-12-02 10:38:27', '2021-04-11 11:19:38', 1, NULL),
(19, 3, 'SID020', '2021-04-11 11:20:40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'ANUPAM KUNWAR', 'anupam.kunwar@gmail.com', '8965412589', 'anupam@1234', 1, '2020-05-28 21:14:14', '2020-05-30 19:05:30'),
(2, 'SID002', 'YATHARTH GERA', 'yg5115@yahoo.com', '8860958363', 'dec68e4501ce09a74284cb1bd03164a2', 1, '2020-05-27 19:30:19', NULL),
(3, 'SID003', 'PRIYANSH RASTOGI', 'priyansh.rastogi@gmail.com', '9785632145', 'a308ac7e5daff094c0ba2be2d50e9254', 1, '2020-05-30 19:03:06', NULL),
(4, 'SID004', 'YANKUSH PANJETA', 'yankush@gmail.com', '7856321458', '8d0ae4dc3c1467ae22211ef850b72053', 1, '2020-05-30 19:04:33', NULL),
(5, 'SID005', 'YASH TYAGI', 'yash@yahoo.com', '8965412365', 'ba6562f29d5e6f42cfbf557aa08eb687', 1, '2020-05-30 19:05:06', NULL),
(16, 'SID016', 'aditi gera', 'aditi.gera@gmail.com', '7011512988', '2b6af4c5a1a6387fd6fbff6c7089a76d', 1, '2020-06-12 16:10:42', '2020-07-28 03:09:09'),
(17, 'SID017', 'Nishant Dixit', 'nishant.dixit2019@vitstudent.ac.in', '6392269108', '9888ade2fb371830b1fb6a188effb5c5', 1, '2020-09-05 11:18:11', NULL),
(18, 'SID018', 'NISHANT DIXIT', 'nishant.dixit@gmail.com', '9856325698', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2020-10-26 06:12:44', NULL),
(19, 'SID019', 'eeggegege', 'nishant.dixit@gmaild.com', '9865236589', 'e10adc3949ba59abbe56e057f20f883e', 1, '2020-10-26 14:13:52', NULL),
(20, 'SID020', 'YATHARTH GERA', 'yatharth@gmail.com', '9856325478', '9b95553dc6da62d7e1fcbf744a1d5df3', 1, '2020-10-26 17:41:51', '2020-12-02 10:57:56'),
(21, 'SID021', 'MEHUL SHARMA', 'mehul@gmail.com', '99999999999', 'bcd86ddf48a46e9f0054fec013313374', 1, '2020-10-31 16:47:05', '2021-04-11 11:24:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2679;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
