-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 06:43 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `health`
--
CREATE DATABASE IF NOT EXISTS `health` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `health`;

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE IF NOT EXISTS `tblappointment` (
  `appoId` int(11) NOT NULL AUTO_INCREMENT,
  `sheId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`appoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblchat`
--

CREATE TABLE IF NOT EXISTS `tblchat` (
  `chatId` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL,
  `recieverId` int(11) NOT NULL,
  `recieverType` int(11) NOT NULL,
  `message` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`chatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`deptId`, `deptName`, `description`) VALUES
(1, 'general', 'sadsa');

-- --------------------------------------------------------

--
-- Table structure for table `tbldiagnorecord`
--

CREATE TABLE IF NOT EXISTS `tbldiagnorecord` (
  `recId` int(11) NOT NULL AUTO_INCREMENT,
  `patId` int(11) NOT NULL,
  `doctRegId` int(11) NOT NULL,
  `date` date NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `details` varchar(50) NOT NULL,
  `hRating` int(11) NOT NULL,
  PRIMARY KEY (`recId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbldistrict`
--

CREATE TABLE IF NOT EXISTS `tbldistrict` (
  `distId` int(11) NOT NULL AUTO_INCREMENT,
  `stateId` int(11) NOT NULL,
  `dName` varchar(20) NOT NULL,
  PRIMARY KEY (`distId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbldistrict`
--

INSERT INTO `tbldistrict` (`distId`, `stateId`, `dName`) VALUES
(1, 1, 'thrissur'),
(2, 1, 'ernakulam'),
(3, 1, 'kannur'),
(4, 2, 'madras');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE IF NOT EXISTS `tbllogin` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(25) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` int(11) DEFAULT '0',
  `qId` int(11) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`logId`, `role`, `userName`, `password`, `status`, `qId`, `answer`) VALUES
(6, 'hai', 'hai', 'hai', 0, 0, ''),
(8, 'DOCTOR', 'wqq', 'as', 0, 0, ''),
(10, 'DOCTOR', '', 'ha', 0, 0, ''),
(11, 'DOCTOR', '', '', 0, 0, ''),
(17, 'receptionist', 'qqq', 'ss', 0, 0, ''),
(18, 'DOCTOR', '', '11', 0, 0, ''),
(19, 'DOCTOR', '', '11', 0, 0, ''),
(22, 'DOCTOR', 'ar', 'aaa', 0, 0, ''),
(25, 'DOCTOR', 'karthi', 'qqq', 0, 0, ''),
(29, 'admin', '', '', 0, 0, ''),
(30, 'DOCTOR', 'amal', 'amal', 0, 0, ''),
(31, 'DOCTOR', '546456', '1', 1, 0, ''),
(32, 'DOCTOR', 'karthi', 'karthi', 1, 0, ''),
(33, 'hplAdmin', 'karth', '111', 1, 0, ''),
(34, 'DOCTOR', 'jithin', 'jithin', 0, 0, ''),
(35, 'DOCTOR', 'sam', 'sam', 0, 0, ''),
(36, 'DOCTOR', 'sam', 'ddd', 0, 0, ''),
(37, 'DOCTOR', 'sam', '2', 0, 0, ''),
(38, 'DOCTOR', '234', '234', 0, 0, ''),
(39, 'DOCTOR', 'bimal', 'bimal', 1, 0, ''),
(40, 'DOCTOR', 'bimal', 'bimal', 1, 0, ''),
(41, 'patient', 'ivgm', 'null', 0, 1, 'sasas'),
(43, 'patient', 'arun', 'arun', 1, 1, 'qq'),
(44, 'patient', 'AAA', 'null', 0, 1, 'DSDAD'),
(45, 'patient', 'GHA', 'null', 0, 1, 'DAD'),
(46, 'patient', 'GHA', 'null', 0, 1, 'DAD'),
(47, 'patient', 'GHA', 'null', 0, 1, 'DAD'),
(48, 'patient', 'GHA', 'null', 0, 1, 'DAD'),
(49, 'patient', 'GHA', 'null', 0, 1, 'DAD'),
(50, 'hospital', 'nirmala', 'nirmala', 1, 1, 'QQ'),
(51, 'hospital', 'sssss', 'null', 0, 1, 'qqqq'),
(52, 'hospital', 'amritha', 'null', 0, 2, 'qqq'),
(53, 'hospital', 'amritha', 'null', 0, 1, 'asasa');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedrec`
--

CREATE TABLE IF NOT EXISTS `tblmedrec` (
  `medRecId` int(11) NOT NULL AUTO_INCREMENT,
  `recId` int(11) NOT NULL,
  `medName` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `noTimes` int(11) NOT NULL,
  `boaFood` varchar(10) NOT NULL,
  `totNumber` int(11) NOT NULL,
  `regular` int(11) NOT NULL,
  `specefications` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`medRecId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE IF NOT EXISTS `tblpatient` (
  `patId` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(20) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `mStatus` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `stateId` int(11) NOT NULL,
  `distId` int(11) NOT NULL,
  `pin` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `bGroup` varchar(20) NOT NULL,
  `uName` varchar(10) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `qId` int(11) NOT NULL,
  `answer` varchar(40) NOT NULL,
  PRIMARY KEY (`patId`),
  KEY `stateId` (`stateId`,`distId`),
  KEY `stateId_2` (`stateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`patId`, `salutation`, `fName`, `lName`, `dob`, `gender`, `mStatus`, `address`, `stateId`, `distId`, `pin`, `phone`, `occupation`, `email`, `bGroup`, `uName`, `photo`, `qId`, `answer`) VALUES
(1, '0', 'arun', 'jacob', '04/04/1996', 'male', 'unmarried', '                              dssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'A+', 'arun', 'Untitled.jpg', 0, ''),
(2, '0', 'arun', 'jacob', '04/04/1996', 'male', 'unmarried', 'dssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'B+', 'arun', 'Untitled.jpg', 0, ''),
(5, '0', 'karthik', 'p j', '04/04/1996', 'male', 'unmarried', 'kdssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'A-', 'arun', 'Untitled.jpg', 0, ''),
(6, '0', 'karthik', 'p j', '04/04/1996', 'male', 'unmarried', 'kdssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'A+', 'arun', 'Untitled.jpg', 0, ''),
(7, '0', 'karthik', 'p j', '04/04/1996', 'male', 'unmarried', 'kdssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'A+', 'arun', 'Untitled.jpg', 0, ''),
(8, '0', 'karthik', 'p j', '04/04/1996', 'male', 'unmarried', 'kdssjbhhb', 1, 1, '680371', '689549555', 'dfdfdfd', 'gsvgsvgvgsvgcsv@gmail.com', 'A+', 'arun', 'Untitled.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE IF NOT EXISTS `tblstaff` (
  `hpStaffId` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(30) NOT NULL,
  `hpId` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `address` varchar(30) NOT NULL,
  `stateId` int(11) NOT NULL,
  `distId` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uName` varchar(10) NOT NULL,
  `image` varchar(30) NOT NULL,
  PRIMARY KEY (`hpStaffId`),
  KEY `stateId` (`stateId`,`distId`),
  KEY `hpId` (`hpId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`hpStaffId`, `fName`, `lName`, `hpId`, `type`, `gender`, `dob`, `qualification`, `address`, `stateId`, `distId`, `phone`, `email`, `uName`, `image`) VALUES
(1, 'arun', 'jacob', 1, '0', 'male', '01/02/1996', 'dfgd', 'dfgdgdf', 1, 1, '987864654', 'dfgfd', 'qqq', 'Untitled.jpg'),
(2, 'arun', 'jacob', 1, 'receptionist', 'male', '01/02/1996', 'dfgd', 'dfgdgdf', 1, 1, '987864654', 'dfgfd', 'qqq', 'Untitled.jpg'),
(3, 'arun', 'jacob', 1, 'receptionist', 'male', '01/02/1996', 'dfgd', 'dfgdgdf', 1, 1, '987864654', 'dfgfd', 'qqq', 'Untitled.jpg'),
(4, 'arun', 'jacob', 1, 'receptionist', 'male', '01/02/1996', 'dfgd', 'dfgdgdf', 1, 1, '987864654', 'dfgfd', 'qqq', 'Untitled.jpg'),
(5, 'arun', 'jacob', 1, 'receptionist', 'male', '01/02/1996', 'dfgd', 'dfgdgdf', 1, 1, '987864654', 'dfgfd', 'qqq', 'Untitled.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE IF NOT EXISTS `tblstate` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`stateId`, `sName`) VALUES
(1, 'kerala'),
(2, 'tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrec`
--

CREATE TABLE IF NOT EXISTS `tbltestrec` (
  `testRecId` int(11) NOT NULL AUTO_INCREMENT,
  `recId` int(11) NOT NULL,
  `test` varchar(20) NOT NULL,
  `details` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL,
  `file` varchar(30) NOT NULL,
  PRIMARY KEY (`testRecId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_consult`
--

CREATE TABLE IF NOT EXISTS `tbl_consult` (
  `consult_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `patId` int(30) unsigned DEFAULT NULL,
  `hpDoctId` int(30) unsigned DEFAULT NULL,
  `cdate` varchar(30) DEFAULT NULL,
  `ctime` varchar(30) DEFAULT NULL,
  `desease` varchar(500) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`consult_id`),
  UNIQUE KEY `consult_id` (`consult_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164 ;

--
-- Dumping data for table `tbl_consult`
--

INSERT INTO `tbl_consult` (`consult_id`, `patId`, `hpDoctId`, `cdate`, `ctime`, `desease`, `description`) VALUES
(17, 15, 2, '2016-09-17', '02:25', '', ''),
(25, 15, 2, '2016-09-19', '03:15', '', ''),
(39, 15, 2, '2016-09-26', '12:25', '', ''),
(40, 15, 2, '2016-09-27', '05:49', 'seriz', ''),
(48, 15, 2, '2016-09-28', '12:47', '', ''),
(49, 16, 2, '2016-09-28', '12:52', 'fwedf', ''),
(50, 15, 2, '2016-09-29', '11:30', '', ''),
(51, 1, 3, '2016-10-01', '08:35', 'pain', ''),
(54, 14, 2, '2016-10-02', '10:59', 'fff', ''),
(55, 17, 2, '2016-10-04', '11:02', '', ''),
(65, 17, 2, '2016-10-05', '01:02', '', ''),
(66, 15, 2, '2016-10-08', '01:02', '', ''),
(68, 15, 2, '2016-10-22', '04:10', 'fdgg fgfg', ''),
(69, 15, 2, '2016-10-25', '10:00', 'jnji', ''),
(70, 15, 2, '2016-10-28', '11:00', 'gfhjk', ''),
(71, 15, 2, '2016-11-02', '08:00', 'ghjk', ''),
(72, 15, 2, '2016-11-04', NULL, '0', ''),
(73, 1, 3, '2016-11-07', '02:03', 'fever', ''),
(74, 31, 2, '2016-11-07', '08:18', '', ''),
(75, 14, 2, '2016-11-09', '05:30', '', ''),
(76, 15, 2, '2016-11-09', '06:03', '', ''),
(77, 14, 2, '2016-11-09', '06:08', '', ''),
(78, 15, 2, '2016-11-09', '06:29', '', ''),
(79, 15, 2, '2016-11-09', '08:42', '', ''),
(80, 15, 2, '2016-11-09', '08:43', '', ''),
(81, 30, 2, '2016-11-09', '09:00', '', ''),
(82, 31, 4, '2016-11-09', '03:36', '', ''),
(83, 31, 4, '2016-11-09', '03:57', '', ''),
(84, 16, 2, '2016-11-10', '12:20', '', ''),
(85, 15, 5, '2016-11-10', '02:51', '', ''),
(86, 16, 5, '2016-11-10', '03:00', '', ''),
(87, 16, 5, '2016-11-10', '03:05', '', ''),
(88, 16, 2, '2016-11-10', '03:09', '', ''),
(89, 15, 2, '2016-11-11', '12:40', '', ''),
(90, 15, 2, '2016-11-11', '12:48', '', ''),
(91, 15, 2, '2016-11-11', '01:39', '', ''),
(92, 15, 2, '2016-11-12', '01:35', '', ''),
(93, 39, 2, '2016-11-13', '05:18', '', ''),
(94, 39, 2, '2016-11-13', '05:23', '', ''),
(97, 15, 2, '2016-11-13', '10:09', '', ''),
(98, 15, 2, '2016-11-13', '10:10', '', ''),
(99, 15, 2, '2016-11-14', '12:13', '', ''),
(100, 15, 2, '2016-11-14', '12:27', '', ''),
(101, 15, 2, '2016-11-18', '07:26', '', ''),
(102, 15, 2, '2016-11-18', '07:31', '', ''),
(103, 15, 2, '2016-11-18', '07:51', '', ''),
(104, 44, 2, '2016-11-24', '05:02', '', ''),
(105, 44, 2, '2016-11-24', '05:06', '', ''),
(106, 44, 2, '2016-11-24', '05:44', '', ''),
(107, 14, 5, '2017-03-07', '07:18', 'goodddd', ''),
(108, 40, 5, '2017-03-08', '02:18', 'hghgh', ''),
(109, 16, 5, '2017-03-08', '02:33', 'dffd', ''),
(110, 16, 5, '2017-03-08', '02:33', '', ''),
(111, 16, 5, '2017-03-08', '02:50', '', ''),
(112, 16, 5, '2017-03-08', '02:50', '', ''),
(113, 16, 5, '2017-04-03', '08:15', 'dttjtjt\r\njgj\r\njghjghklyfgy yyky\r\nkytk\r\nytkykk\r\nkyk\r\n', ''),
(114, 16, 5, '2017-04-03', '08:21', 'xgfsxfgtgf hgbjhnio', ''),
(115, 16, 5, '2017-04-03', '08:25', 'hklhj', ''),
(116, 16, 5, '2017-04-03', '08:31', 'regergerger', ''),
(117, 16, 5, '2017-04-03', '09:12', 'segsds', ''),
(118, 16, 5, '2017-04-03', '03:29', '', ''),
(119, 16, 5, '2017-04-03', '03:30', '', ''),
(120, 16, 5, '2017-04-04', '11:07', 'dfwqrf', ''),
(121, 16, 5, '2017-04-09', '10:00', '', ''),
(122, 16, 5, '2017-04-09', '10:02', '', ''),
(123, 16, 5, '2017-04-09', '10:04', 'bvnvbnvb', ''),
(124, 16, 5, '2017-04-09', '10:05', 'sggsdgsd', ''),
(125, 16, 5, '2017-04-09', '10:06', 'wedfsdd', ''),
(126, 16, 5, '2017-04-09', '10:06', '', ''),
(127, 16, 5, '2017-04-05', '10:28', 'eeee', ''),
(128, 0, 0, '2017-04-16', '  02:21', '', ''),
(129, 0, 0, '2017-04-16', '  02:21', '', ''),
(130, 1, 3, '2017-04-16', '  02:51', 'headace', 'dbbbd'),
(131, 1, 3, '2017-04-16', '  02:57', 'FEVER', 'SEVESEGSEGS\r\nSGDSGSDJ'),
(132, 1, 3, '2017-04-16', '  01:17', 'dryheh', 'rehrehe'),
(133, 1, 3, '2017-04-16', '  03:30', 'bvvc', 'cvbcvb'),
(134, 1, 3, '2017-04-16', '  03:56', 'fever', 'dfdsf'),
(135, 1, 3, '2017-04-16', '  04:12', 'pain', 'dfds'),
(136, 1, 3, '2017-04-16', '  04:14', 'd', 'ddd'),
(137, 1, 3, '2017-04-16', '  04:14', 'd', 'ddd'),
(138, 1, 3, '2017-04-16', '  04:22', 'pain', 'gjhghg'),
(139, 1, 3, '2017-04-16', '  08:20', 'pain', 'fgdsgds'),
(140, 1, 3, '2017-04-16', '  08:49', 'fever', 'dcscfsv'),
(141, 1, 3, '2017-04-16', '  08:54', 'fever', 'xvc xcv'),
(142, 1, 3, '2017-04-16', '  08:54', 'fever', 'xvc xcv'),
(143, 1, 3, '2017-04-16', '  08:54', 'fever', 'xvc xcv'),
(144, 1, 3, '2017-04-16', '  09:02', 'aaa', 'aaa'),
(145, 1, 3, '2017-04-16', '  09:05', 'dsdd', 'sadas'),
(146, 1, 3, '2017-04-16', '  09:05', 'dsdd', 'sadas'),
(147, 1, 3, '2017-04-16', '  09:05', 'dsdd', 'sadas'),
(148, 1, 3, '2017-04-16', '  09:05', 'dsdd', 'sadas'),
(149, 1, 1, '2017-04-16', '  09:05', 'dsdd', 'sadas'),
(150, 1, 3, '2017-04-16', '  10:49', 'fever', 'j'),
(151, 1, 3, '2017-04-16', '  10:49', 'fever', 'j'),
(152, 1, 1, '2017-04-16', '  10:49', 'fever', 'j'),
(153, 1, 1, '2017-04-18', '  03:03', 'pain2', 'FDFGHJGRGGREHF\r\nDHDHDHDRH\r\n\r\nGFDHRD\r\nHDD\r\n'),
(154, 1, 1, '2017-04-18', '  03:16', 'FEVER2', 'EYFUEYUGUGET'),
(155, 1, 1, '2017-04-18', '  03:28', 'PAIN3', 'FGFGFGFGG'),
(156, 1, 1, '2017-04-19', '  10:21', 'www', 'wwwww'),
(157, 1, 1, '2017-04-19', '  11:20', 'fever', 'sdsd'),
(158, 1, 1, '2017-04-19', '  11:26', 'fever', 'fdgdf'),
(159, 1, 1, '2017-04-19', '  11:42', 'fever', 'dsds'),
(160, 1, 1, '2017-04-19', '  11:42', 'fever', 'dsds'),
(161, 1, 1, '2017-04-19', '  11:42', 'fever', 'dsds'),
(162, 1, 1, '2017-04-20', '  11:58', 'www', 'wwww'),
(163, 1, 1, '2017-04-20', '  11:58', 'www', 'wwww');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doc_reg`
--

CREATE TABLE IF NOT EXISTS `tbl_doc_reg` (
  `doctId` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(30) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  `licNo` varchar(20) NOT NULL,
  `exp_des` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `stateId` int(11) NOT NULL,
  `distId` int(11) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uName` varchar(10) NOT NULL,
  `qId` int(11) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `photo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`doctId`),
  KEY `stateId` (`stateId`,`distId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_doc_reg`
--

INSERT INTO `tbl_doc_reg` (`doctId`, `fName`, `lName`, `gender`, `dob`, `qualification`, `specialization`, `licNo`, `exp_des`, `address`, `stateId`, `distId`, `pin`, `phone`, `email`, `uName`, `qId`, `answer`, `status`, `photo`) VALUES
(3, 'karthik', 'p j', 'male', '04/04/1996', 'bca', 'kkkjkjj', 'gcghgfhghfdg', '0', 'hai', 1, 1, '', '699979797', 'JJJJKKK@gmail.com', 'karthi', 0, '', 1, 'UnWWWtitled.jpg'),
(4, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 1, 'Untitled.jpg'),
(5, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 1, 'Untitled.jpg'),
(6, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 0, 'Untitled.jpg'),
(7, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 1, 'Untitled.jpg'),
(8, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 1, 'Untitled.jpg'),
(9, 'arun', 'jacob', 'male', '04/04/1996', 'vdfbbfd', 'kjkjkjk', 'mgkfjgkfjkj', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'oggfkgjkf', 0, '', 1, 'Untitled.jpg'),
(28, 'amal', 'menon', 'male', '01/02/1998', 'ggsg', 'tettet', 'tytdtdt', '0', 'hai', 1, 1, '', '699979797', 'gffhghjhj@gmail.com', 'amal', 0, '', 1, 'Untitled.jpg'),
(30, 'erferf', 'erfgewrfg', 'male', 'ergerg', 'ergergf', 'rgerg', 'ergerg', '23423', 'ferfgef', 1, 1, '2333', '23424', '234234', '234', 1, '2344', 0, 'null'),
(31, 'bimal', 'bimal', 'male', '10/7/1996', '1231', '213123', '12312', '213123', '123213', 1, 2, '12', '1321313', '213123', 'bimal', 1, 'ha ha haa', 1, 'null'),
(32, 'onmouseout', 'onmouseout', 'male', 'onmouseout', 'onmouseout', 'onmouseout', 'onmouseout', '1', 'onmouseoutonmouseoutonmouseout', 1, 2, '2', '23123213', 'onmouseout', 'bimal', 1, '212', 1, 'null'),
(33, 'jay', 'p', 'male', '2011-01-01', 'dfdg', 'dfgfdgdf', 'dgdfg', 'null', 'dfgdfgdf', 1, 1, '645644', '64564645645', 'dxfsdfd@gmail.com', 'jay', 1, 'jay', 0, 'null'),
(34, 'jay', 'p', 'male', '2011-01-01', 'dfdg', 'dfgfdgdf', 'dgdfg', 'null', 'dfgdfgdf', 1, 1, '645644', '64564645645', 'dxfsdfd@gmail.com', 'jay', 2, 'jay', 0, 'null'),
(35, 'jay', 'p', 'male', '2011-01-01', 'dfdg', 'dfgfdgdf', 'dgdfg', 'null', 'dfgdfgdf', 2, 4, '645644', '64564645645', 'dxfsdfd@gmail.com', 'jay', 1, 'jay', 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doc_schedule`
--

CREATE TABLE IF NOT EXISTS `tbl_doc_schedule` (
  `sch_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `doc_id` int(20) unsigned NOT NULL,
  `s_date` varchar(30) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `status` int(30) unsigned DEFAULT '0',
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `tbl_doc_schedule`
--

INSERT INTO `tbl_doc_schedule` (`sch_id`, `doc_id`, `s_date`, `start_time`, `end_time`, `capacity`, `status`) VALUES
(36, 2, '2016-11-13', '09:01', '12:00', '20', 1),
(38, 5, '2016-11-14', '11:00', '12:00', '10', 1),
(39, 5, '2016-11-18', '10:00', '12:00', '50', 1),
(40, 2, '2106-11-18', '14:00', '17:00', '20', 1),
(41, 2, '2016-11-19', '09:00', '13:00', '50', 0),
(42, 2, '2016-11-20', '09:00', '13:00', '50', 0),
(43, 5, '2017-03-07', '10:30', '12:30', '5', 1),
(44, 5, '2017-03-08', '08:59', '22:59', '5', 1),
(45, 5, '2017-03-08', '14:58', '15:59', '5', 1),
(46, 5, '2017-03-10', '14:03', '15:59', '10', 1),
(47, 5, '2017-03-21', '18:00', '19:00', '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_health_record`
--

CREATE TABLE IF NOT EXISTS `tbl_health_record` (
  `hDiary_id` int(11) unsigned NOT NULL DEFAULT '0',
  `patId` int(11) unsigned DEFAULT NULL,
  `mhis_surgical` varchar(100) NOT NULL,
  `mhis_allergy` varchar(100) DEFAULT NULL,
  `mhis_alcohol` varchar(100) DEFAULT NULL,
  `mhis_tobacco` varchar(100) DEFAULT NULL,
  `mhis_medication` varchar(100) DEFAULT NULL,
  `mhis_familyhistory` varchar(100) DEFAULT NULL,
  `mhis_rarediseases` varchar(100) DEFAULT NULL,
  `mhis_chronic_disease` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hDiary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_health_record`
--

INSERT INTO `tbl_health_record` (`hDiary_id`, `patId`, `mhis_surgical`, `mhis_allergy`, `mhis_alcohol`, `mhis_tobacco`, `mhis_medication`, `mhis_familyhistory`, `mhis_rarediseases`, `mhis_chronic_disease`) VALUES
(0, 1, 'ggdgdg', 'pparacetamol', 'hfhfh', 'hfhfh', 'fgfgf', 'hhff', 'gfgf', 'gfgfg'),
(1, 3, 'ggdgdg', 'pparacetamol', 'hfhfh', 'hfhfh', 'fgfgf', 'hhff', 'gfgf', 'gfgfg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospreg`
--

CREATE TABLE IF NOT EXISTS `tbl_hospreg` (
  `hpId` int(11) NOT NULL AUTO_INCREMENT,
  `hos_acc_id` varchar(50) NOT NULL,
  `hname` varchar(50) NOT NULL,
  `distId` int(11) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `phone2` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `category` varchar(30) DEFAULT NULL,
  `spec` varchar(30) DEFAULT NULL,
  `image_id` varchar(30) DEFAULT NULL,
  `acc_file` varchar(40) NOT NULL,
  `since` varchar(50) NOT NULL,
  `website` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hpId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_hospreg`
--

INSERT INTO `tbl_hospreg` (`hpId`, `hos_acc_id`, `hname`, `distId`, `place`, `pincode`, `phone`, `phone2`, `email`, `category`, `spec`, `image_id`, `acc_file`, `since`, `website`, `username`, `status`) VALUES
(23, 'm1332', 'Muvattupuzha Medical Center', 1, 'Muvattupuzha', '688861', '0485678899', '976565656', 'mmcmupa@gmail.com', 'Private', 'Multi Speciality', 'nirmala.jpg', 'ACC_99003.jpg', '1990-08-02', 'nirmala.com', 'nirmala', 1),
(24, 'dcdc', 'Aster Medicity', 2, 'Ernakulam', '657788', '098664773', '9876543456', 'aster@gmail.com', 'Private', 'Multi Speciality', 'asterss.jpg', 'frffrf', 'rfrffr', 'aster.com', 'aster', 1),
(26, '122433', 'Gov.Thaluk Hospital Ernakulam', 2, 'Ernakulam', '675543', '0456876765', '9898873553', 'thalukhospital@gmail.com', 'Government', 'Multi Speciality', 'scscv.jpg', 'ACC_60729.png', '1990-06-10', 'www.thalukernakulam.com', 'egov', 1),
(27, '4545433', 'Medical Trust', 2, 'ernalulam', '8744533', '54545545', '454545', 'dfdfd@gmail.com', 'Private', 'Super Speciality', 'h2 (1).jpg', 'ACC_103641.jpg', '2016-11-03', 'medicalcenter.com', 'med', 1),
(28, 'e4554', 'CMC', 21, 'Kaettyum', '897654', '0544387654', '988766456', 'cmc@cmc.com', 'Private', 'Super Speciality', 'HM_23707.jpg', 'ACC_59248.jpg', '1850-11-10', 'www.cmc.com', 'cmc', 0),
(29, 'ABC1234', 'Lourdes Hospital', 5, 'Pala', '686517', '04823667788', '0482856909', 'lourdes.pala@gmail.com', 'Private', 'Super Speciality', 'HM_51455.png', 'ACC_67309.png', '1988-02-01', 'www.lourdes.com', 'lour', 1),
(30, '123', 'Renai Medicity', 2, 'palarivattam', '682032', '2808799', '2807799', 'renaimedicity@gmail.com', 'Private', 'Super Speciality', 'HM_52479.png', 'ACC_32336.png', '1990', 'www.renai.com', 'renai', 0),
(31, '98777777', 'THOMSON', 1, 'DDFD', '5454544', '4454454', '5454545', 'FDFDFD@GMAIL.COM', 'Government', 'Super Speciality', 'HM_69130.jpg', 'ACC_28482.jpg', '2014-02-02', 'FEFEFE', 'THOMSON', 1),
(32, 'QAAA', 'GHA', 3, 'QQQQ', '788777', '7894563211', '8795462135', 'QQQQQ@QQ', 'Government', 'Super Speciality', '', '', '1998-02-02', 'QQQ', 'GHA', 0),
(33, 'lf111', 'abcd', 1, 'mala', '680731', '9876543210', '987654215', 'arunjacob@gmail.com', 'Private', 'Super Speciality', '', '', '2010-01-01', 'www.ffbdfd.com', 'abcd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hosp_dept`
--

CREATE TABLE IF NOT EXISTS `tbl_hosp_dept` (
  `hpDeptId` int(11) NOT NULL AUTO_INCREMENT,
  `hpId` int(11) NOT NULL,
  `deptId` int(11) NOT NULL,
  PRIMARY KEY (`hpDeptId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_hosp_dept`
--

INSERT INTO `tbl_hosp_dept` (`hpDeptId`, `hpId`, `deptId`) VALUES
(1, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hosp_doctors`
--

CREATE TABLE IF NOT EXISTS `tbl_hosp_doctors` (
  `hpDoctId` int(11) NOT NULL AUTO_INCREMENT,
  `doctId` int(11) NOT NULL,
  `hpDeptId` int(11) NOT NULL,
  PRIMARY KEY (`hpDoctId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_hosp_doctors`
--

INSERT INTO `tbl_hosp_doctors` (`hpDoctId`, `doctId`, `hpDeptId`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medicine`
--

CREATE TABLE IF NOT EXISTS `tbl_medicine` (
  `medid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `medname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`medid`),
  UNIQUE KEY `mid` (`medid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_medicine`
--

INSERT INTO `tbl_medicine` (`medid`, `medname`) VALUES
(7, 'Loratadine'),
(8, 'Tramadol'),
(9, 'Zoloft'),
(10, 'Hydrochlorothiazide'),
(11, 'Azithromycin'),
(12, 'Cymbalta'),
(13, 'Amlodipine'),
(14, 'Clindamycin'),
(15, 'Wellbutrin'),
(16, 'Paracetamol'),
(17, 'Dolo'),
(18, 'Metoprolol'),
(19, 'Humalog'),
(20, 'Hysingla ER'),
(21, 'Hcg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_med_pres`
--

CREATE TABLE IF NOT EXISTS `tbl_med_pres` (
  `med_pres_id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `consult_id` int(30) unsigned DEFAULT NULL,
  `medid` int(30) unsigned DEFAULT NULL,
  `no_oftime` varchar(30) DEFAULT NULL,
  `after_before_food` varchar(20) DEFAULT NULL,
  `course_length` int(10) unsigned DEFAULT NULL,
  `doss` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`med_pres_id`),
  UNIQUE KEY `med_pres_id` (`med_pres_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_med_pres`
--

INSERT INTO `tbl_med_pres` (`med_pres_id`, `consult_id`, `medid`, `no_oftime`, `after_before_food`, `course_length`, `doss`, `details`) VALUES
(1, 85, 10, '3', 'Before', 15, '1', NULL),
(2, 86, 12, '1', 'Before', 1, '1', NULL),
(3, 88, 7, '1', 'Before', 10, '2', NULL),
(4, 88, 13, '3', 'After', 3, '2', NULL),
(9, 91, 0, '2', '0', 2, '1', NULL),
(10, 91, 6, '3', 'After', 5, '1', NULL),
(11, 92, 6, '2', 'Before', 5, '1', NULL),
(12, 94, 9, '2', 'After', 4, '3', NULL),
(13, 100, 9, '2', 'Before', 2, '1', NULL),
(14, 100, 12, '4', 'After', 3, '2', NULL),
(15, 103, 9, '3', 'Before', 15, '2', NULL),
(16, 103, 12, '4', 'After', 10, '2', NULL),
(17, 103, 17, '2', 'Before', 12, '1', NULL),
(18, 105, 7, '3', 'Before', 3, '2', NULL),
(19, 106, 6, '3', 'Before', 2, '2', NULL),
(20, 114, 6, '2', 'Before', 15, '5', NULL),
(21, 122, 9, '1', 'Before', 15, '1', NULL),
(22, 123, 14, '4', 'Before', 4, '43', NULL),
(23, 124, 11, '4', 'After', 4, '44', NULL),
(24, 144, 7, '12', 'before', 12, '12', ''),
(25, 147, 7, '3', 'before', 3, '3', 'efewf'),
(26, 148, 7, '12', 'before', 12, '12', 'erfe'),
(27, 155, 7, '10', 'before', 10, '10', 'ABCDDEFGHIJKLMNOPQRS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE IF NOT EXISTS `tbl_question` (
  `qId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  PRIMARY KEY (`qId`),
  UNIQUE KEY `qId` (`qId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`qId`, `question`) VALUES
(1, 'who are you?'),
(2, 'who are you?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE IF NOT EXISTS `tbl_test` (
  `test_id` int(30) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `technology` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_test`
--

INSERT INTO `tbl_test` (`test_id`, `test_name`, `unit`, `technology`) VALUES
(7, 'POTTASSIUM (DIRECT ISE) BLOOD TEST', 'mEq/L', 'Fully Automated Procedure on Vitros 250(DRY CHEMISTRY)'),
(8, 'Blood Wbc', 'mcL', 'Fully Automated Procedure on Vitros 250(DRY CHEMISTRY)'),
(9, 'Blood Rbc', 'mcL', 'Fully Automated Procedure on Vitros 250(DRY CHEMISTRY)'),
(10, 'ASO', 'IU/M', 'Serology'),
(11, 'X ray', 'Image File', 'XRAY Scanned Procedure'),
(13, 'FBS', 'mg%', 'Fully Automated Biochemistry'),
(15, 'PPBS', 'mg%', 'Biochemistry'),
(16, 'Creatine', 'mg%', 'Fully Automated Biochemistry'),
(17, 'Total Bilirubin', 'mg%', 'Fully Automated Procedure (DRY CHEMISTRY)'),
(18, 'Sodium', 'meq/L', 'Vitros 250(DRY CHEMISTRY)'),
(19, 'PTT', 'Seconds', 'Vitrus Coagulation '),
(24, 'TLC', 'cumm', 'Haemathology Vitrus Proceduure'),
(25, 'CRP', 'mg/L', 'Seriology Vitrus Proceduure'),
(26, 'Platelet Count', 'cumm', 'Direct biochemistry'),
(27, 'Cholesterol', 'mg/dL', 'HDL test, LDL test, lipid profile'),
(28, 'Blood Sugar', 'mg/dL', 'Glucose Tolerance Testing'),
(29, 'asa', 'ss', 'sdsadad'),
(30, 'fgghfg', 'hfgh', 'fghfg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test_assign`
--

CREATE TABLE IF NOT EXISTS `tbl_test_assign` (
  `test_assign_id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `consult_id` int(30) unsigned DEFAULT NULL,
  `hosp_id` varchar(40) DEFAULT NULL,
  `test_id` varchar(30) DEFAULT NULL,
  `test_date` varchar(30) DEFAULT NULL,
  `test_time` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `test_status` varchar(30) DEFAULT '0',
  PRIMARY KEY (`test_assign_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `tbl_test_assign`
--

INSERT INTO `tbl_test_assign` (`test_assign_id`, `consult_id`, `hosp_id`, `test_id`, `test_date`, `test_time`, `description`, `test_status`) VALUES
(38, 62, '24', 'Select', '2016-10-01', '11:55', 'asdasdasd', '0'),
(39, 62, '24', 'Select', '2016-10-01', '12:00', 'wqeqwewqe', '0'),
(40, 62, '24', 'Select', '2016-10-01', '12:00', 'ewrwerwre', '0'),
(41, 62, '24', 'Select', '2016-10-01', '12:04', 'jhj', '0'),
(42, 62, '24', 'Select', '2016-10-01', '12:12', 'vgj', '0'),
(43, 62, '24', 'Select', '2016-10-01', '12:12', 'cfh', '0'),
(44, 62, '24', '10', '2016-10-05', '12:18', 'gvhgh', '3'),
(45, 64, '24', 'Select', '2016-10-01', '04:14', 'gbfvc', '0'),
(47, 67, '24', '11', '2016-10-22', '11:54', 'vg', '3'),
(53, 81, '24', '9', '2016-11-09', '09:00', 'da', '3'),
(54, 82, '23', '9', '2016-11-09', '03:36', 'count', '3'),
(55, 82, '23', '11', '2016-11-09', '03:37', 'left knee', '3'),
(57, 89, '24', '28', '2016-08-11', '12:40', 'Body Cholestrol', '3'),
(58, 89, '24', '28', '2016-09-11', '12:41', 'Body Sugar level', '3'),
(59, 90, '24', '28', '2016-10-11', '12:48', 'body', '3'),
(60, 91, '24', '28', '2016-11-11', '01:39', 'body', '3'),
(67, 93, '24', '28', '2016-11-13', '05:19', 'full', '3'),
(68, 94, '24', '27', '2016-11-13', '05:23', 'normal', '0'),
(69, 99, '24', '28', '2016-11-14', '12:13', 'sugar level', '3'),
(70, 99, '24', '27', '2016-11-14', '12:14', 'cholestrol', '3'),
(71, 102, '24', '27', '2016-11-18', '07:31', 'Body Cholestrol', '3'),
(72, 102, '24', '18', '2016-11-18', '07:32', 'blood sodium', '2'),
(73, 104, '24', '26', '2016-11-24', '05:02', 'body', '3'),
(74, 104, '24', '10', '2016-11-24', '05:02', 'blood', '3'),
(75, 114, '23', '25', '2017-04-03', '08:21', 'rdgdf', '0'),
(76, 115, '23', '9', '2017-04-03', '08:26', 'hjkk', '0'),
(77, 122, '23', '8', '2017-04-09', '10:02', 'iiyiigh', '0'),
(78, 126, '23', '9', '2017-04-09', '10:06', 'sdfsdfsd', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
