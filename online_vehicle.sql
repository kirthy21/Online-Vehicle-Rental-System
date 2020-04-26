-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2017 at 10:37 AM
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
  `fstatus` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `vid`, `uid`, `booking_date`, `booked_date`, `number`, `driver`, `guide`, `status`, `days`, `fstatus`) VALUES
(32, '12', 'kirthy', '2017-06-03', '2017-06-08', '1AZLMSC8PV', 'yes', 'yes', '1', '5', '0'),
(33, '12', 'amritha', '2017-06-03', '2017-06-02', 'R5VDO6NCW1', 'yes', 'yes', '1', '3', '0'),
(34, '11', 'yami', '2017-06-03', '2017-06-04', 'EBQ8LHZZXJ', 'yes', 'yes', '1', '4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `v_id` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `address`, `phone_no`, `gender`, `age`, `email_id`, `licenseno`, `experience`, `image`) VALUES
(19, 'Balan', 'Thopumpady', '984616512', 'male', '40', 'b@gmail.com', '6626226', '20', 'dr2.jpg'),
(20, 'john', 'abasvilla\r\nernakulam ', '9876532310', 'male', '45', 'john@gmail.com', '234', '7', 'dr3.jpg'),
(21, 'mohan', 'mahanvilla', '91456789564', 'male', '37', 'mohan@gmail.com', '34567', '4', 'guide4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `driver_assign`
--

CREATE TABLE IF NOT EXISTS `driver_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(250) NOT NULL,
  `bid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `driver_assign`
--

INSERT INTO `driver_assign` (`id`, `did`, `bid`) VALUES
(23, '21', '27'),
(24, '20', '28'),
(25, '21', '29'),
(26, '20', '29'),
(27, '20', '31'),
(28, '19', '32'),
(29, '20', '34');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `user_id`, `feedback`) VALUES
(3, 'Athira', 'good experience'),
(5, 'kirthy', 'nice!'),
(6, 'roshan', 'hello'),
(7, 'amena', 'very  nice trip .felt amazing...'),
(8, 'remiya', 'very good service!!');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guide_id`, `guidename`, `address`, `phoneno`, `age`, `gender`, `emailid`, `experience`, `image`) VALUES
(18, 'annjoseph', 'leonava villa\r\nthrissur', '9448623134', '35', 'null', 'ann@gmail.com', '5', 'guide3.jpg'),
(19, 'maria john', 'maasenges\r\nkottayam', '9087453217', '45', 'null', 'maria@gmail.com', '8', 'gu1.jpg'),
(21, 'jain', 'kerala', '723889894', '45', 'male', 'jain@gmail.com', '2', 'aadhar.png');

-- --------------------------------------------------------

--
-- Table structure for table `guide_assign`
--

CREATE TABLE IF NOT EXISTS `guide_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(250) NOT NULL,
  `bid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `guide_assign`
--

INSERT INTO `guide_assign` (`id`, `gid`, `bid`) VALUES
(13, '18', '15'),
(14, '18', '27'),
(15, '19', '28'),
(16, '21', '29'),
(17, '21', '31'),
(18, '18', '34'),
(19, '19', '32');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(26, 'Athira', '123', 'admin'),
(29, 'Kirthy', '456', 'user'),
(30, 'yamini', 'yamini', 'user'),
(31, 'akhitha', '234', 'user'),
(32, 'aiswarya', '123', 'user'),
(33, 'roshan', 'roshans', 'user'),
(34, 'johny', 'johny', 'user'),
(35, 'vin', 'vin', 'user'),
(36, 'amena', 'ameena', 'user'),
(37, 'alex', 'alex', 'user'),
(38, 'remiya', 'remi', 'user'),
(39, 'remiya', 'remi', 'user'),
(40, 'kirthy', '123', 'user'),
(41, 'amritha', 'amritha', 'user'),
(42, 'yami', 'yami', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `logitude` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `contact`, `latitude`, `logitude`) VALUES
(1, '9961827794', '9.9312328', '76.2673041'),
(2, '8139070005', '9.9188973', '77.1024902'),
(3, '9496247121', '9.9188973', '77.9188973');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `user_id`, `rent_id`, `amount`, `date`, `payed`, `balance`, `number`, `status`) VALUES
(26, 'vin', '13', '495000', '2017-05-05', '495000', '0', '3L2ZHW7FAM', '1'),
(27, 'amena', '27', '441000', '2017-06-03', '19600', '421400', 'GB9GQFT6CZ', '0'),
(28, 'amena', '8', '819000', '2017-06-03', '819100', '0', 'IWRJIM6T7G', '1'),
(29, 'remiya', '9', '984000', '2017-06-03', '984100', '0', '5JFD4OJZ5B', '1'),
(30, 'kirthy', '11', '1107000', '2017-06-03', '1107034', '0', 'F606ZTM5BP', '1'),
(31, 'remiya', '9', '984000', '2017-06-03', '12000', '972000', '53TSGI4735', '0'),
(32, 'remiya', '12', '1168500', '2017-06-03', '1168534', '0', 'Y441DCCMHG', '1'),
(33, 'kirthy', '12', '2118500', '2017-06-03', '23750', '2094750', '1AZLMSC8PV', '0'),
(34, 'amritha', '12', '24158500', '2017-06-03', '14250', '24144250', 'R5VDO6NCW1', '0'),
(35, 'yami', '11', '2106000', '2017-06-03', '18000', '2088000', 'EBQ8LHZZXJ', '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `username`, `name`, `address`, `phno`, `gender`, `age`, `email_id`, `id_proof`, `license_no`) VALUES
(36, 'yamini', 'yamini', 'sayujyam', '12345677', 'female', '21', 'y@gmail.com', 'aadhar.png', '123456'),
(37, 'akhitha', 'akhitha', 'menacheru', '0974767889', 'female', '20', 'a@gmail.com', 'aadhar.png', '567'),
(38, 'aiswarya', 'aiswarya', 'kerala', '8139070005', 'female', '20', 'a@gmail.com', 'DRIVING LICENSE.png', 'u1238494'),
(40, 'johny', 'johny', 'rockyroad mountian', '9946697326', 'male', '20', 'johny@gmail.com', 'DRIVING LICENSE.png', '2345'),
(41, 'vin', 'vineetha', 'vithayil', '2345679', 'female', '20', 'vin@gmail.com', 'DRIVING LICENSE.png', '235789'),
(43, 'alex', 'alex', 'laning', '9061753075', 'null', '21', 'alex@gmail.com', 'aadhar.png', '234ret'),
(44, 'remiya', 'remiya', 'kandoth', '8891077117', 'female', '20', 'r@gmail.com', 'DRIVING LICENSE.png', '8275493742'),
(45, 'remiya', 'remiya', 'kandoth', '45239127690', 'female', '20', 'r@gmail.com', 'DRIVING LICENSE.png', '63594783'),
(46, 'kirthy', 'kirthy', 'kerala', '9961827794', 'female', '30', 'k@gmail.com', 'DRIVING LICENSE.png', '56213479814'),
(47, 'amritha', 'amritha', 'andra pradesh', '6531274827', 'female', '45', 'a@gmail.com', 'aadhar.png', '74637898'),
(48, 'yami', 'yami', 'kannur', '8139070005', 'female', '23', 'y@gmail.com', 'DRIVING LICENSE.png', '46678');

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
(1, 'Two Wheeler'),
(2, 'Four Wheeler');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `vehicle_list`
--

INSERT INTO `vehicle_list` (`vehicle_id`, `vehicletype`, `vehiclename`, `category`, `colour`, `img`, `mileage`, `status`, `payment`, `model`) VALUES
(5, '1', 'Bajaj Dominar 400 ', '1', 'black', 'right-bajaj-dominar_600x300.jpg', ' 35 Kmpl', '0', '2500', '373 CC'),
(6, '1', 'Bajaj Pulsar SS 400', '1', 'yellow', 'bajaj-pulsar-ss-400.jpg', '42kmpl', '0', '2800', '373 CC'),
(7, '1', 'hero-maestro', '2', 'blue', '-hero-maestro-mileage-50kmpl.jpg', '150kmpl', '0', '2000', '160 CC'),
(8, '2', 'mahindra xylo', '3', 'black', 'MAHINDRA XYLO colour-fiery-black mileage-14.0kmpl.jpg', '16 kmpl', '0', '3500', '157 CC'),
(9, '2', 'jeep-wrangler', '5', 'red', 'jeep_wrangler_gas_mileage_2012-31baipty83wh0fp4jpdo22.jpg', '20kmpl', '0', '8000', '200 CC'),
(11, '2', 'tata-winger', '4', 'white', 'tata-winger mileage-16kmpl.png', '17kmpl', '0', '9000', '150 CC'),
(12, '2', 'suzuki', '4', 'white', 'images.jpg', '19kmpl', '0', '9500', '130 CC'),
(13, '2', 'tempo traveller', '4', 'white', 'tempo traveller (1).jpg', '15 kmpl', '0', '7500', '120 CC'),
(14, '2', 'new micra', '3', 'orange', '17tdieulhd_MICRA-Color_EBF_002.png.ximg.m_12_h.smart.png', '16kmpl', '0', '6500', '150 CC'),
(18, '2', 'nisn fron', '6', 'black', 'NISN_FRON_2013.png', '18kmpl', '0', '10000', '130 CC'),
(19, '1', 'TVS jupiter', '2', 'grey', 'tvs jupiter.jpg', '16kmpl', '0', '6700', '150 CC'),
(20, '1', 'yamaha cygnus alpha', '2', 'RED', 'Yamaha-Cygnus-Alpha-62-kmpl.jpg', '60kmpl', '0', '7000', '166CC'),
(21, '2', 'audi A3', '3', 'white', 'audi A3.jpg', '18kmpl', '0', '8900', '155 CC'),
(22, '2', 'audi A6', '3', 'grey', 'audi A6.jpg', '16kmpl', '0', '8900', '140cc'),
(27, '2', 'cherokee', '5', 'red', 'jeep_wrangler_gas_mileage_2012-31baipty83wh0fp4jpdo22.jpg', '18kmpl', '0', '9800', '150CC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
