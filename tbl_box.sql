-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2016 at 08:45 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_shoutbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_box`
--

CREATE TABLE IF NOT EXISTS `tbl_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_box`
--

INSERT INTO `tbl_box` (`id`, `name`, `body`, `time`) VALUES
(1, 'Faisal', 'Hello i am faisal', '06:30:00'),
(2, 'Salman', 'Hello i am salman', '02:50:00'),
(3, 'Abdul', 'Hello i am abdul', '03:39:00'),
(4, 'Karim', 'hello i am karim', '02:20:00'),
(5, 'Sattar', 'Hello i am sattar', '13:44:00'),
(22, 'tamim', 'hello i am tamim', '12:30:23'),
(24, 'shakib', 'hello i am sakib', '12:31:52'),
(25, 'bangla vai', 'à¦–à§‹à¦²à¦¾ à¦œà¦¾à¦¨à¦¾à¦²à¦¾à§Ÿ à¦à¦¿à¦°à¦¿à¦à¦¿à¦°à¦¿ à¦¦à¦–à¦¿à¦¨à¦¾ à¦¬à¦¾à¦¤à¦¾à¦¸à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¨à¦¿à¦®à¦¾à¦° à¦šà¦¾à¦à¦¦à§‡à¦° à¦­à¦°à¦¾ à¦œà§‹à¦›à¦¨à¦¾ à¦¦à§‡à¦–à¦¤à§‡ à¦¦à§‡à¦–à¦¤à§‡ à¦¶à§à§Ÿà§‡ ''à¦–à§‹à¦²à¦¾ à¦œà¦¾à¦¨à¦¾à¦²à¦¾'' à¦¶à§à¦¨à¦¾à¦° à¦¯à§‡ à¦•à¦¿ feelings à¦¤à¦¾ à¦¨à¦¾ à¦¬à¦²à§‡ à¦¬à§à¦à¦¾à¦¨à§‹ à¦¯à¦¾à¦¬à§‡ à¦¨à¦¾à¥¤', '12:32:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
