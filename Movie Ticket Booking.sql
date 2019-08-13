-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 09:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omt`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`first_name`, `last_name`, `username`, `password`) VALUES
('a', 'a', 'a', 'a'),
('Ajinkya', 'Ghoalpe', 'ajinkyagholape1998@gmail.com', '123'),
('Aniket ', 'Marulkar ', 'asmarulkar@gmail.com', 'aniket'),
('Tanmay', 'Deshpande', 'tsdeshpande1998@gmail.com', '123'),
('uma ', 'gurav', 'umabgurav@gmail.com', 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `image_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `release_date`, `ratings`, `type`, `language`, `image_path`) VALUES
(1, 'Avengers: Infinity War', '24/4/2018', 86, 'Action', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\infinitywar4.jpg'),
(2, 'Stree', '31/8/2018', 83, 'Horror', 'Hindi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\stree2.jpg'),
(3, 'The Nun', '7/9/2018', 57, 'Horror', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\the nun2.jpg'),
(4, 'Savita Damodar Paranjpe', '7/9/2018', 82, 'Thriller', 'Marathi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\savita damodar paranjpe2.jpg'),
(5, 'Jab Harry Met Sejal', '4/8/2017', 54, 'Comedy', 'Hindi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\jub harry met sajal.jpg'),
(6, 'Batti Gul Meter Chalu', '21/9/2018', 65, 'Drama', 'Hindi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\batti-gul-meter-chalu.jpg'),
(7, 'Sui Dhaaga', '28/9/2018', 65, 'Comedy', 'Hindi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\sui dhaaga.jpg'),
(8, 'Iron Man', '2/5/2008', 79, 'Action', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\iron-manposter3.jpg'),
(9, 'Ant-Man and the Wasp', '6/7/2018', 74, 'Action', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\antmanandthewasp.jpg'),
(10, '3 Idiots', '25/12/2009', 84, 'Comedy', 'Hindi', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\3idiots.jpg'),
(11, 'Thor: Ragnarok', '3/9/2017', 79, 'Action', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\thorragnarok.jpeg'),
(12, 'Office Space', '19/2/1999', 78, 'Comedy', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\office space.jpg'),
(13, 'The Predator', '14/9/2018', 59, 'Adventure', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\predator.jpg'),
(14, 'Johnny English Strikes Again', '26/10/2018', 67, 'Comedy', 'English', 'D:\\study\\MovieTicket\\mymovie\\src\\mymovie\\images\\johnny english.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `screenid`
--

CREATE TABLE `screenid` (
  `screen_id` int(11) NOT NULL,
  `th_number` int(11) NOT NULL,
  `screen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screenid`
--

INSERT INTO `screenid` (`screen_id`, `th_number`, `screen`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 11, 1),
(5, 6, 1),
(6, 7, 2),
(7, 5, 1),
(8, 9, 1),
(9, 3, 1),
(10, 4, 1),
(11, 10, 1),
(12, 8, 1),
(13, 8, 2),
(14, 8, 3),
(15, 9, 2),
(16, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `showid`
--

CREATE TABLE `showid` (
  `show_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL DEFAULT '9/25/18',
  `movie_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '100',
  `tickets` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid`
--

INSERT INTO `showid` (`show_id`, `date`, `movie_id`, `screen_id`, `time`, `price`, `tickets`) VALUES
(1, '9/25/18', 1, 1, '1 PM - 4 PM', 100, 10),
(2, '9/25/18', 2, 2, '1 PM - 4 PM', 100, 10),
(3, '9/25/18', 3, 3, '4 PM-7 PM', 100, 10),
(4, '9/25/18', 4, 4, '9 PM - 12 PM', 100, 10),
(5, '9/25/18', 4, 5, '3 PM - 6 PM', 100, 10),
(6, '2018-09-25', 6, 6, '6 PM - 9PM', 100, 10),
(7, '9/25/18', 9, 7, '1 PM - 4 PM', 100, 10),
(8, '9/25/18', 10, 8, '2 PM - 5PM', 100, 10),
(9, '10/8/18', 5, 9, '5 PM - 8 PM', 100, 10),
(10, '10/16/18', 4, 10, '6 PM - 9 PM', 100, 10),
(11, '9/25/18', 1, 11, '6 PM - 9 PM', 100, 10),
(12, '9/25/18', 2, 12, '6 PM - 9 PM', 200, 10),
(13, '9/25/18', 3, 13, '6 PM - 9 PM', 100, 10),
(14, '9/25/18', 2, 14, '6 PM - 9 PM', 100, 10),
(15, '9/25/18', 1, 5, '12 PM - 3 PM', 100, 10),
(16, '9/25/18', 3, 6, '4 PM - 6 PM', 100, 10),
(17, '9/25/18', 5, 15, '7 PM - 10 PM', 100, 10),
(18, '9/25/18', 9, 11, '9 AM - 12 PM', 100, 10),
(19, '9/25/18', 5, 14, '10 AM - 1 PM', 100, 10),
(20, '9/25/18', 3, 11, '10 AM - 1 PM', 100, 10),
(21, '2018-09-25', 1, 1, '1 PM - 4 PM', 100, 10),
(22, '2018-09-25', 2, 2, '1 PM - 4 PM', 100, 10),
(23, '2018-09-25', 3, 3, '4 PM - 7 PM', 100, 10),
(24, '2018-09-25', 4, 4, '9 PM - 12 PM', 100, 10),
(25, '2018-09-25', 4, 5, '3 PM - 6 PM', 100, 10),
(26, '2018-09-25', 6, 6, '6-9', 100, 10),
(27, '2018-09-25', 9, 7, '1-4', 100, 10),
(28, '2018-09-25', 10, 8, '2-5', 100, 10),
(29, '2018-09-25', 5, 9, '5-8', 100, 10),
(30, '2018-09-25', 4, 10, '6-9', 100, 10),
(31, '2018-09-25', 1, 11, '6-9', 100, 10),
(32, '2018-09-25', 2, 12, '6-9', 100, 10),
(33, '2018-09-25', 3, 13, '6-9', 100, 10),
(34, '2018-09-25', 2, 14, '6-9', 100, 10),
(35, '2018-09-25', 1, 5, '12-3', 100, 10),
(36, '2018-09-25', 3, 6, '4-6', 100, 10),
(37, '2018-09-25', 5, 15, '7-10', 100, 10),
(38, '2018-09-25', 9, 11, '9-12', 100, 10),
(39, '2018-09-25', 5, 14, '10-1', 100, 10),
(40, '2018-09-25', 3, 11, '10-1', 100, 10),
(41, '2018-09-25', 4, 16, '6-9', 100, 10),
(42, '2018-09-25', 6, 7, '5-8', 100, 10),
(43, '2018-09-25', 2, 2, '1-4', 100, 10),
(44, '2018-09-25', 7, 3, '6-9', 100, 10),
(45, '2018-09-25', 3, 1, '9-12', 100, 10),
(46, '2018-09-25', 4, 16, '6-9', 100, 10),
(47, '2018-09-25', 6, 7, '5-8', 100, 10),
(48, '2018-09-25', 2, 2, '1-4', 100, 10),
(49, '2018-09-25', 7, 3, '6-9', 100, 10),
(50, '2018-09-25', 3, 1, '9-12', 100, 10),
(51, '10/8/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(52, '10/9/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(53, '10/10/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(54, '10/11/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(55, '10/12/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(56, '10/13/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(57, '10/14/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(58, '10/15/2018', 1, 0, '3 PM - 6 PM', 150, 70),
(59, '10/8/2018', 1, 0, '3 PM - 6 PM', 150, 70);

-- --------------------------------------------------------

--
-- Table structure for table `showid1`
--

CREATE TABLE `showid1` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid1`
--

INSERT INTO `showid1` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 1, 'ajinkyagholape1998@gmail.com'),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 1, NULL),
(7, 1, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 1, 'ajinkyagholape1998@gmail.com'),
(11, 1, 'ajinkyagholape1998@gmail.com'),
(12, 1, 'ajinkyagholape1998@gmail.com'),
(13, 1, 'ajinkyagholape1998@gmail.com'),
(14, 1, 'ajinkyagholape1998@gmail.com'),
(15, 1, 'ajinkyagholape1998@gmail.com'),
(16, 1, 'ajinkyagholape1998@gmail.com'),
(17, 1, 'ajinkyagholape1998@gmail.com'),
(18, 0, NULL),
(19, 1, 'a'),
(20, 1, 'ajinkyagholape1998@gmail.com'),
(21, 1, 'ajinkyagholape1998@gmail.com'),
(22, 1, 'umabgurav@gmail.com'),
(23, 1, 'umabgurav@gmail.com'),
(24, 1, 'umabgurav@gmail.com'),
(25, 0, NULL),
(26, 0, NULL),
(27, 1, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 1, NULL),
(35, 1, NULL),
(36, 1, NULL),
(37, 1, NULL),
(38, 1, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 1, 'a'),
(42, 1, 'a'),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 1, NULL),
(53, 1, NULL),
(54, 1, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 1, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 1, NULL),
(66, 1, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 1, 'ajinkyagholape1998@gmail.com'),
(74, 1, 'ajinkyagholape1998@gmail.com'),
(75, 1, 'a'),
(76, 1, 'ajinkyagholape1998@gmail.com'),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 1, 'a'),
(86, 0, NULL),
(87, 0, NULL),
(88, 1, NULL),
(89, 1, NULL),
(90, 0, NULL),
(91, 1, 'ajinkyagholape1998@gmail.com'),
(92, 1, 'ajinkyagholape1998@gmail.com'),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 1, 'a'),
(97, 1, 'a'),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid3`
--

CREATE TABLE `showid3` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid3`
--

INSERT INTO `showid3` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 1, NULL),
(7, 1, NULL),
(8, 0, NULL),
(9, 1, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 1, NULL),
(13, 0, NULL),
(14, 1, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 1, NULL),
(24, 1, NULL),
(25, 1, NULL),
(26, 1, NULL),
(27, 0, NULL),
(28, 1, NULL),
(29, 1, NULL),
(30, 1, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 1, NULL),
(34, 1, NULL),
(35, 1, NULL),
(36, 1, NULL),
(37, 1, NULL),
(38, 1, NULL),
(39, 1, NULL),
(40, 1, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 1, NULL),
(44, 1, NULL),
(45, 1, NULL),
(46, 1, NULL),
(47, 0, NULL),
(48, 1, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 1, NULL),
(52, 1, NULL),
(53, 1, NULL),
(54, 1, NULL),
(55, 1, NULL),
(56, 1, NULL),
(57, 1, NULL),
(58, 1, NULL),
(59, 1, NULL),
(60, 1, NULL),
(61, 1, NULL),
(62, 1, NULL),
(63, 0, NULL),
(64, 1, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 1, NULL),
(75, 1, NULL),
(76, 1, NULL),
(77, 0, NULL),
(78, 1, NULL),
(79, 1, NULL),
(80, 1, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 1, NULL),
(85, 1, NULL),
(86, 1, NULL),
(87, 1, NULL),
(88, 1, NULL),
(89, 1, NULL),
(90, 1, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 1, NULL),
(95, 1, NULL),
(96, 0, NULL),
(97, 1, NULL),
(98, 1, NULL),
(99, 0, NULL),
(100, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid51`
--

CREATE TABLE `showid51` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid51`
--

INSERT INTO `showid51` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid52`
--

CREATE TABLE `showid52` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid52`
--

INSERT INTO `showid52` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid53`
--

CREATE TABLE `showid53` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid53`
--

INSERT INTO `showid53` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid54`
--

CREATE TABLE `showid54` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid54`
--

INSERT INTO `showid54` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid55`
--

CREATE TABLE `showid55` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid55`
--

INSERT INTO `showid55` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid56`
--

CREATE TABLE `showid56` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid56`
--

INSERT INTO `showid56` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid57`
--

CREATE TABLE `showid57` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid57`
--

INSERT INTO `showid57` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showid58`
--

CREATE TABLE `showid58` (
  `seatNumber` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showid58`
--

INSERT INTO `showid58` (`seatNumber`, `status`, `username`) VALUES
(1, 0, NULL),
(2, 0, NULL),
(3, 0, NULL),
(4, 0, NULL),
(5, 0, NULL),
(6, 0, NULL),
(7, 0, NULL),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, NULL),
(60, 0, NULL),
(61, 0, NULL),
(62, 0, NULL),
(63, 0, NULL),
(64, 0, NULL),
(65, 0, NULL),
(66, 0, NULL),
(67, 0, NULL),
(68, 0, NULL),
(69, 0, NULL),
(70, 0, NULL),
(71, 0, NULL),
(72, 0, NULL),
(73, 0, NULL),
(74, 0, NULL),
(75, 0, NULL),
(76, 0, NULL),
(77, 0, NULL),
(78, 0, NULL),
(79, 0, NULL),
(80, 0, NULL),
(81, 0, NULL),
(82, 0, NULL),
(83, 0, NULL),
(84, 0, NULL),
(85, 0, NULL),
(86, 0, NULL),
(87, 0, NULL),
(88, 0, NULL),
(89, 0, NULL),
(90, 0, NULL),
(91, 0, NULL),
(92, 0, NULL),
(93, 0, NULL),
(94, 0, NULL),
(95, 0, NULL),
(96, 0, NULL),
(97, 0, NULL),
(98, 0, NULL),
(99, 0, NULL),
(100, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `th_number` int(11) NOT NULL,
  `th_name` varchar(50) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT 'changeme'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`th_number`, `th_name`, `locality`, `city`, `password`) VALUES
(1, 'PVR Cinema', 'Deccan', 'Pune', 'changeme'),
(2, 'INOX', 'Kothrud', 'Pune', 'changeme'),
(3, 'PVR Cinema', 'Deccan', 'Pune', 'changeme'),
(4, 'INOX', 'Kothrud', 'Pune', 'changeme'),
(5, 'Parvati ', 'Shahupuri', 'Kolhapur', 'changeme'),
(6, 'Vasant Talkies', 'Happy Colony', 'Bhusawal', 'changeme'),
(7, 'City Pride', 'Sinhgad', 'Pune', 'changeme'),
(8, 'City Pride', 'Kothrud', 'Pune', 'changeme'),
(9, 'City Pride', 'Laxmipuri', 'Kolhapur', 'changeme'),
(10, 'E Square', 'Aundh', 'Pune', 'changeme'),
(11, 'Vistara', 'Ramnagar', 'Mumbai', 'changeme'),
(12, 'Open Air Theater', 'KIT', 'Kolhapur', 'changeme'),
(13, 'INOX', 'Laxmipuri', 'Kolhapur', 'changeme'),
(14, 'E Square', 'Parvati', 'Pune', 'changeme'),
(15, 'Parvati ', 'Shahupuri', 'Kolhapur', 'changeme'),
(16, 'Vasant Talkies', 'Happy Colony', 'Bhusawal', 'changeme'),
(17, 'City Pride', 'Sinhgad', 'Pune', 'changeme'),
(18, 'City Pride', 'Kothrud', 'Pune', 'changeme'),
(19, 'City Pride', 'Laxmipuri', 'Kolhapur', 'changeme'),
(20, 'E Square', 'Aundh', 'Pune', 'changeme'),
(21, 'Vistara', 'Ramnagar', 'Mumbai', 'changeme'),
(22, 'Open Air Theater', 'KIT', 'Kolhapur', 'changeme'),
(23, 'INOX', 'Laxmipuri', 'Kolhapur', 'changeme'),
(24, 'E Square', 'Parvati', 'Pune', 'changeme');

-- --------------------------------------------------------

--
-- Table structure for table `usertoshow`
--

CREATE TABLE `usertoshow` (
  `key_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertoshow`
--

INSERT INTO `usertoshow` (`key_id`, `username`, `show_id`) VALUES
(1, 'ajinkyagholape1998@gmail.com', 1),
(2, 'a', 1),
(3, 'a', 1),
(4, 'umabgurav@gmail.com', 1),
(5, 'a', 1),
(6, 'a', 1),
(7, 'ajinkyagholape1998@gmail.com', 1),
(8, 'ajinkyagholape1998@gmail.com', 1),
(9, 'ajinkyagholape1998@gmail.com', 1),
(10, 'a', 1),
(11, 'ajinkyagholape1998@gmail.com', 1),
(12, 'a', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `screenid`
--
ALTER TABLE `screenid`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `showid`
--
ALTER TABLE `showid`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `showid1`
--
ALTER TABLE `showid1`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid3`
--
ALTER TABLE `showid3`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid51`
--
ALTER TABLE `showid51`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid52`
--
ALTER TABLE `showid52`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid53`
--
ALTER TABLE `showid53`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid54`
--
ALTER TABLE `showid54`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid55`
--
ALTER TABLE `showid55`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid56`
--
ALTER TABLE `showid56`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid57`
--
ALTER TABLE `showid57`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `showid58`
--
ALTER TABLE `showid58`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`th_number`);

--
-- Indexes for table `usertoshow`
--
ALTER TABLE `usertoshow`
  ADD PRIMARY KEY (`key_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `screenid`
--
ALTER TABLE `screenid`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `showid`
--
ALTER TABLE `showid`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `showid1`
--
ALTER TABLE `showid1`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid3`
--
ALTER TABLE `showid3`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid51`
--
ALTER TABLE `showid51`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid52`
--
ALTER TABLE `showid52`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid53`
--
ALTER TABLE `showid53`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid54`
--
ALTER TABLE `showid54`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid55`
--
ALTER TABLE `showid55`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid56`
--
ALTER TABLE `showid56`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid57`
--
ALTER TABLE `showid57`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `showid58`
--
ALTER TABLE `showid58`
  MODIFY `seatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `theaters`
--
ALTER TABLE `theaters`
  MODIFY `th_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `usertoshow`
--
ALTER TABLE `usertoshow`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
