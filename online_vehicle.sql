-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 12:55 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `banking`
--

CREATE TABLE IF NOT EXISTS `banking` (
  `accountno` varchar(250) NOT NULL,
  `pin_no` varchar(250) NOT NULL,
  `bal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(26) NOT NULL,
  `uid` varchar(250) NOT NULL,
  `booking_date` varchar(250) NOT NULL,
  `booked_date` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `driver` varchar(250) NOT NULL,
  `guide` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '0',
  `days` varchar(20) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `vid`, `uid`, `booking_date`, `booked_date`, `number`, `driver`, `guide`, `status`, `days`) VALUES
(1, '18', 'ee', '2017-04-25', '2017-04-26', 'OEGPJ9G4NY', 'yes', 'yes', '1', '1'),
(3, '18', 'ee', '2017-04-26', '2017-04-27', '1FJCBAYG4V', 'yes', 'no', '1', '23'),
(4, '20', 'kirthy', '2017-04-26', '2017-03-30', '983W994TYQ', 'yes', 'no', '1', '3'),
(5, '20', 'kirthy', '2017-04-26', '2017-03-30', 'ATXOL2GATR', 'yes', 'no', '1', '3'),
(6, '20', 'kirthy', '2017-04-26', '2017-03-31', '3VODKRF17S', 'yes', 'no', '1', '3'),
(7, '20', 'kirthy', '2017-04-26', '2017-04-29', '2PUQBTAOIC', 'yes', 'no', '1', '3'),
(8, '20', 'kirthy', '2017-04-26', '2017-05-10', 'LHLZ3Q7FDP', 'yes', 'no', '1', '5'),
(10, '20', 'kirthy', '2017-04-26', '2017-05-11', '8HFS63E39T', 'null', 'null', '1', '4'),
(11, '20', 'kirthy', '2017-04-26', '2017-05-04', '0EM5XI1SCX', 'yes', 'no', '1', '5'),
(12, '4', 'kirthy', '2017-04-27', '2017-05-01', '3QWDSK33KT', 'no', 'no', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `v_id` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `v_id`, `model`) VALUES
(1, '1', 'Bike'),
(2, '1', 'Scooter'),
(3, '2', 'Car'),
(4, '2', 'Van'),
(5, '2', 'Jeep'),
(6, '2', 'Mini Van');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driver_id` int(100) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone_no` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `licenseno` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `address`, `phone_no`, `gender`, `age`, `email_id`, `licenseno`, `experience`, `image`) VALUES
(1, 'TFTG', 'DFRTGY', '5456', 'Male', '546', 'DD@gmail.com', '5676', '65', '049130604Kumarakom_Main_thumb.jpg'),
(2, 'TFTG', 'DFRTGY', '5456', 'Male', '546', 'DD@gmail.com', '5676', '65', '049130604Kumarakom_Main_thumb.jpg'),
(3, 'cg', 'gcfg678', '789', 'Male', '76', 'f@gmail.com', 'y78', '78', 'autumn-nature-wallpaper-desktop-wallpaper-4.jpg'),
(4, 'fgdhggk', 'vfhgfmnhj', '46565476', 'Male', '12', 'gf@gfjhgfgdhg.com', 'ujlif5 4ylhkjn765', '45', ''),
(5, 'fgdhggk', 'vfhgfmnhj', '46565476', 'Male', '12', 'gf@gfjhgfgdhg.com', 'ujlif5 4ylhkjn765', '45', ''),
(6, 'O97', 'YK', '8965', 'Female', '75', 'f@gmail.com', '75785643', '75', 'autumn-nature-wallpaper-desktop-wallpaper-4.jpg'),
(7, 'O97', 'YK', '8965', 'Female', '75', 'f@gmail.com', '75785643', '75', 'autumn-nature-wallpaper-desktop-wallpaper-4.jpg'),
(8, 'HFJHKJ', 'FDBNBNM', '6567', 'Male', '45', 'A@GMAIil.com', 'null', '23', ''),
(9, 'kokkol', 'kokkm', '141585kmm', 'Male', '', '', '', '', ''),
(10, 'jjkeekd', 'erety4lko', '4852952', 'Male', '', '', '', '', ''),
(11, 'uhu7ijko', 'jhbyuhjio', '51585981', 'Male', '45', 'xsedrtvf@hvgvt', '', '5', ''),
(12, 'raghav', 'kerala', '', 'Male', '', '', '', '', ''),
(13, 'rajan', 'malachery', '9443214', 'Male', '56', 'g@gmail.com', '245789', '5', ''),
(14, 'raj', 'kerala', '123456789', 'Male', '35', 'raj@gmail.com', '123456', '4', ''),
(15, 'athira', 'silky silver glade', '123456789', 'male', '30', 'athi@gmail.com', '626165651', '15', 'Bangtan Boys.png');

-- --------------------------------------------------------

--
-- Table structure for table `driver_assign`
--

CREATE TABLE IF NOT EXISTS `driver_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(250) NOT NULL,
  `bid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `driver_assign`
--

INSERT INTO `driver_assign` (`id`, `did`, `bid`) VALUES
(2, '13', '1'),
(3, '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `user_id`, `feedback`) VALUES
(1, 'ee', 'bsvhshvh');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE IF NOT EXISTS `guide` (
  `guide_id` int(100) NOT NULL AUTO_INCREMENT,
  `guidename` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phoneno` varchar(250) DEFAULT NULL,
  `age` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `emailid` varchar(250) DEFAULT NULL,
  `experience` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`guide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guide_id`, `guidename`, `address`, `phoneno`, `age`, `gender`, `emailid`, `experience`, `image`) VALUES
(1, 'fshgh', 'fvdfr', '123', '', 'Male', 'A@GMAIL.COM', '', ''),
(2, 'thrgg', 'fdsgvf', '343', '34', 'Male', 'A@GMAIL.COM', '12', ''),
(3, '"+a+"', '"+b+"', '"+c+"', '"+f+"', '"+g+"', '"+d+"', '"+e+"', '"+i+"'),
(4, 'yu6kiu', 'tuyi', '543657', '24', 'Male', 'A@GMAIL.COM', '1', ''),
(5, '"+a+"', '"+b+"', '"+c+"', '"+f+"', '"+g+"', '"+d+"', '"+e+"', '"+h+"'),
(6, 'kirthy', 'monlight sparkle', '658468464', '5', 'Female', 'kjnyh@jfv.sfr', '25', ''),
(7, 'hfmh', 'mhvm', '', '', 'Male', '', '', ''),
(8, 'ramesh', 'kerala', '', '', 'Male', '', '', ''),
(9, 'rahul', 'kerala', '123456', '35', 'Male', 'rahul@gmail.com', '3', ''),
(10, 'shyam', 'kerala', '123456789', '28', 'Male', 'shyam@gmail.com', '2', 'C:UsersAnilDesktop3e058b91c88b3f26581cf9d95a620277.jpg'),
(11, 'piyush', 'kerala', '123456789', '34', 'Male', 'piyush@gmail.com', '3', 'C:UsersAnilDesktop3e058b91c88b3f26581cf9d95a620277.jpg'),
(12, '', '', '', '5757', 'null', '', '', ''),
(13, '', '', '', '57', 'null', '', '', ''),
(14, '', '', '', '5757', 'null', '', '', ''),
(15, '', '', '', '5757', 'null', '', '', ''),
(16, '', '', '', '5757', 'null', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `guide_assign`
--

CREATE TABLE IF NOT EXISTS `guide_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(250) NOT NULL,
  `bid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `guide_assign`
--

INSERT INTO `guide_assign` (`id`, `gid`, `bid`) VALUES
(1, '8', '1');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `locationid` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `vehicleid` varchar(250) NOT NULL,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(2, 'ee', 'ebin', 'user'),
(3, 'joyel', 'dszdr', 'user'),
(4, 'joyel', '', 'user'),
(5, 'joyel', '', 'user'),
(6, 'joyel', '123', 'user'),
(8, 'admin', 'asdf', 'user'),
(10, 'hjv', 'vk', 'user'),
(11, 'yicy', 'xcuy', 'user'),
(12, 'abc', 'abcd', 'admin'),
(13, 'gcjck', 'jycyd', 'user'),
(14, '', '', 'user'),
(15, '', '', 'user'),
(16, 'admin', 'admin', 'user'),
(17, '', '', 'user'),
(18, 'admin', 'admin', 'user'),
(19, 'admin', 'admin', 'user'),
(20, 'admin', 'admin', 'user'),
(21, 'ebbb', 'null', 'user'),
(22, 'kirthy', 'johny', 'user'),
(23, 'pp', '243', 'user'),
(24, 'rajagiri', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `paymentid` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `rent_id` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `payed` varchar(250) NOT NULL,
  `balance` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `user_id`, `rent_id`, `amount`, `date`, `payed`, `balance`, `number`, `status`) VALUES
(1, 'ee', '18', '1230', '2017-04-25', '20', '1230', 'OEGPJ9G4NY', '0'),
(2, 'ee', '18', '0', '2017-04-25', '0', '0', 'Z91W4JZOKX', '0'),
(3, 'ee', '18', '0', '2017-04-26', '0', '0', '1FJCBAYG4V', '0'),
(4, 'kirthy', '20', '939247500', '2017-04-26', '2250', '939245250', '983W994TYQ', '0'),
(5, 'kirthy', '20', '939247500', '2017-04-26', '2250', '939245250', 'ATXOL2GATR', '0'),
(6, 'kirthy', '20', '997741500', '2017-04-26', '2250', '997739250', '3VODKRF17S', '0'),
(7, 'kirthy', '20', '1851000', '2017-04-26', '2250', '1848750', '2PUQBTAOIC', '0'),
(8, 'kirthy', '20', '2500', '2017-04-26', '1250', '1250', 'LHLZ3Q7FDP', '0'),
(9, 'kirthy', '20', '97747500', '2017-04-26', '2250', '97745250', 'KEYG2K4WOK', '0'),
(10, 'kirthy', '20', '9316500', '2017-04-26', '3000', '9313500', '8HFS63E39T', '0'),
(11, 'kirthy', '20', '184500', '2017-04-26', '3750', '180750', '0EM5XI1SCX', '0'),
(12, 'kirthy', '4', '3000', '2017-04-27', '3000', '0', '3QWDSK33KT', '0');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phno` varchar(100) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `id_proof` varchar(250) NOT NULL,
  `license_no` varchar(250) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `username`, `name`, `address`, `phno`, `gender`, `age`, `email_id`, `id_proof`, `license_no`) VALUES
(12, 'ee', 'sdfds', 'dfds', '9747793475', 'dsf', 'df', 'dsfd', 'df', 'dsfsf'),
(13, 'admin', 'fefew', 'qee', '12345', 'Female', '12', 'balakrishnanajith68@gmail.com', 'app.pdf', '1234'),
(14, 'admin', 'athira', 'afhadsja', '4353654756', 'Female', '90', 'a@gmail.com', '', '7659870'),
(15, 'hjv', 'msfvk', 'smdnv s', 'srg53516', 'Male', '58', '', 'C:UsersAnilDesktop354276-admin.jpg', 'kvubu'),
(16, 'yicy', 'kguwr', 'oufu', 'u6464', 'Male', 'ufou', '', '', 'yifiyf'),
(17, 'gcjck', 'uigiwrfui', 'vuksvuv', '56444369', 'Male', '25', '', '', '5464364'),
(18, '', '', '', '', 'Male', '', '', '', ''),
(19, '', '', '', '', 'Male', '', '', '', ''),
(20, 'admin', '', '', '', 'Male', '', '', '', ''),
(21, '', 'gfhkj', 'retr7', '', 'Male', '34', '', '', ''),
(22, 'admin', 'rajesh', 'kerala', '876374919', 'Male', '34', 'a@gmail.com', '', '172369'),
(23, 'admin', 'gayathri', 'kerala', '97864565', 'Male', '23', 'a@gmail.com', '', '893247'),
(24, 'admin', 'athira', 'kerala', '9827389191', 'Female', '25', 'athira@gmail.com', '', '123456'),
(25, 'ebbb', 'ebb', 'shdhs', '977', 'male', '23', 'ebb@gmail.com', '354276-admin.jpg', '123334'),
(26, 'kirthy', 'kirthy', 'kiuiaidyv', '9961827794', 'female', '21', 'kirthyodackal@gmail.com', '1.jpg', '1234569'),
(27, 'pp', 'athira', 'menachery', '27745322', 'null', '20', 'a@gmail.com', 'aadhar.png', '123'),
(28, 'rajagiri', 'athira', 'mmm', '90', 'female', '20', 'p@gmail.com', 'aadhar.png', '21');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE IF NOT EXISTS `rent` (
  `rent_id` int(100) NOT NULL AUTO_INCREMENT,
  `vehicletype` varchar(250) NOT NULL,
  `vehiclename` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `driver_id` varchar(250) NOT NULL,
  `guide_id` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phno` varchar(250) NOT NULL,
  `licenseno` varchar(250) NOT NULL,
  `rentdate` varchar(250) NOT NULL,
  `noofdays` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `status` datetime NOT NULL,
  PRIMARY KEY (`rent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicletype`
--

CREATE TABLE IF NOT EXISTS `vehicletype` (
  `v_id` int(100) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(250) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vehicletype`
--

INSERT INTO `vehicletype` (`v_id`, `vehicle_type`) VALUES
(1, 'two wheeler'),
(2, 'four wheeler');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_list`
--

CREATE TABLE IF NOT EXISTS `vehicle_list` (
  `vehicle_id` int(100) NOT NULL AUTO_INCREMENT,
  `vehicletype` varchar(250) NOT NULL,
  `vehiclename` varchar(250) NOT NULL,
  `category` varchar(250) DEFAULT NULL,
  `colour` varchar(250) DEFAULT NULL,
  `img` varchar(250) NOT NULL,
  `mileage` varchar(250) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT '0',
  `payment` varchar(250) NOT NULL DEFAULT '0',
  `model` varchar(250) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vehicle_list`
--

INSERT INTO `vehicle_list` (`vehicle_id`, `vehicletype`, `vehiclename`, `category`, `colour`, `img`, `mileage`, `status`, `payment`, `model`) VALUES
(4, '1', 'Yamaha YZF R15', '1', 'blue', 'yamaha_yzfr15_600x300.jpg', '40 Kmpl', '0', '3000', '149 CC'),
(5, '1', 'Bajaj Dominar 400 ', '1', 'black', 'right-bajaj-dominar_600x300.jpg', ' 35 Kmpl', '0', '2500', '373 CC'),
(6, '1', 'Bajaj Pulsar SS 400', '1', 'yellow', 'bajaj-pulsar-ss-400.jpg', '42kmpl', '0', '2800', '373 CC'),
(7, '1', 'hero-maestro', '2', 'blue', '-hero-maestro-mileage-50kmpl.jpg', '150kmpl', '0', '2000', '160 CC'),
(8, '2', 'mahindra xylo', '3', 'black', 'MAHINDRA XYLO colour-fiery-black mileage-14.0kmpl.jpg', '16 kmpl', '0', '3500', '157 CC'),
(9, '2', 'jeep-wrangler', '5', 'red', 'jeep_wrangler_gas_mileage_2012-31baipty83wh0fp4jpdo22.jpg', '20kmpl', '0', '8000', '200 CC'),
(10, '2', 'renegade', '5', 'green', 'jeep_wrangler_gas_mileage_2012-31baipty83wh0fp4jpdo22.jpg', '18kmpl', '0', '1000', '195 CC'),
(11, '2', 'tata-winger', '4', 'white', 'tata-winger mileage-16kmpl.png', '17kmpl', '0', '9000', '150 CC'),
(12, '2', 'suzuki', '4', 'white', 'images.jpg', '19kmpl', '0', '9500', '130 CC'),
(13, '2', 'tempo traveller', '4', 'white', 'tempo traveller (1).jpg', '15 kmpl', '0', '7500', '120 CC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
