-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2010 at 11:01 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL auto_increment,
  `course_yrSec` varchar(20) NOT NULL,
  `dept_id` tinyint(4) NOT NULL,
  `major` varchar(50) NOT NULL,
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_yrSec`, `dept_id`, `major`) VALUES
(6, 'BSIM4b', 2, ''),
(7, 'BSED1a', 1, 'Math'),
(13, 'BSED 2a', 1, 'Math'),
(18, 'BSIT3D', 2, 'Electrical'),
(19, 'BSCE 1a', 2, ''),
(20, 'BSHRM 2a', 2, ''),
(21, 'BSED 3a', 1, 'Math'),
(22, 'BSED 4a', 1, 'Math'),
(23, 'BEED 1a', 1, 'HELE'),
(24, 'BEED 2a', 1, 'HELE'),
(25, 'BEED 3a', 1, 'HELE'),
(26, 'BEED 4a', 1, 'HELE'),
(31, 'BSIT3A', 2, ''),
(32, 'BSIT3B', 2, ''),
(33, 'BSIT3C', 2, ''),
(34, 'BSIT3E', 2, ''),
(35, 'AIT2A', 2, ''),
(36, 'AIT2B', 2, ''),
(37, 'AIT2C', 2, ''),
(38, 'AIT2D', 2, ''),
(39, 'AIT2E', 2, ''),
(40, 'BSIS1a', 2, ''),
(41, 'BSIS1b', 2, ''),
(42, 'BSIS1c', 2, ''),
(43, 'BSIS1d', 2, ''),
(44, 'BSIS2A', 2, ''),
(45, 'BSIS2B', 2, ''),
(46, 'BSIS3A', 2, ''),
(47, 'BSIS3B', 2, ''),
(48, 'BSIS4A', 2, ''),
(49, 'BSIS4B', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_id` int(10) NOT NULL auto_increment,
  `day_name` text NOT NULL,
  PRIMARY KEY  (`day_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` tinyint(5) NOT NULL auto_increment,
  `department` varchar(70) NOT NULL,
  `dept_person` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY  (`dept_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `department`, `dept_person`, `title`) VALUES
(1, 'College of Education', 'Dr. Binales', 'Dean'),
(2, 'College of Industrial Technology', 'Dr. Sobrepena', 'Dean, CIT'),
(3, 'School of Arts and Sciences', 'Ms. Tejada', 'Dean');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `teacher_id` int(5) NOT NULL auto_increment,
  `teacher_name` text NOT NULL,
  `acad_rank` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `dept_id` int(4) NOT NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`teacher_id`, `teacher_name`, `acad_rank`, `designation`, `dept_id`) VALUES
(1, 'Ms. Cristine Redoblo', 'Instructor 1', '', 2),
(2, 'Mr. Ian Cuello', '', '', 2),
(3, 'Ms. Elvie Samson', '', '', 1),
(4, 'Mrs. Gaitan', '', '', 2),
(5, 'Mr. Ian Besina', '', '', 3),
(6, 'Mr. Albert M. Monge', '', '', 2),
(7, 'Mr. A Cabrera', '', '', 2),
(8, 'Mr. R. Cadagat', '', '', 2),
(9, 'Teacher X', '', '', 2),
(10, 'Teacher Y', '', '', 2),
(11, 'Teacher A', '', '', 2),
(12, 'Mr. Joemar Pabuaya ', '', '', 2),
(13, 'Ms. A. Arandilla ', '', '', 2),
(14, 'Mr. G. Gumata', '', '', 2),
(15, 'Teacher B ', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL auto_increment,
  `room_name` varchar(20) NOT NULL,
  `room_desc` varchar(30) NOT NULL,
  PRIMARY KEY  (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_desc`) VALUES
(1, 'Room 312', 'Computer Lab'),
(2, 'Room 311', 'Computer Lab'),
(3, 'Room 316', 'Lecture Room'),
(4, 'Room 217', 'Lecture Room'),
(5, 'Room 314', 'Lecture Room'),
(6, 'Room 401', 'Lecture Room'),
(7, 'Room 402', 'Computer Lab'),
(9, 'Room 313', 'Computer Laboratory');

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE `sched` (
  `sched_id` int(10) NOT NULL auto_increment,
  `room_id` int(10) NOT NULL,
  `course_id` int(5) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `time_s_id` int(10) NOT NULL,
  `time_e_id` int(10) NOT NULL,
  `day_id` int(10) NOT NULL,
  `sem_id` int(10) NOT NULL,
  `year_id` int(10) NOT NULL,
  `dept_id` tinyint(4) NOT NULL,
  PRIMARY KEY  (`sched_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`sched_id`, `room_id`, `course_id`, `sub_id`, `teacher_id`, `time_s_id`, `time_e_id`, `day_id`, `sem_id`, `year_id`, `dept_id`) VALUES
(1, 4, 8, 6, 1, 2, 4, 1, 1, 1, 2),
(2, 3, 7, 4, 3, 18, 20, 1, 1, 1, 3),
(3, 2, 10, 7, 4, 14, 16, 2, 1, 1, 2),
(8, 4, 8, 4, 5, 4, 6, 1, 1, 1, 3),
(9, 4, 9, 4, 5, 5, 7, 3, 1, 1, 3),
(11, 2, 9, 6, 1, 7, 9, 2, 1, 1, 2),
(12, 2, 9, 6, 1, 7, 9, 3, 1, 1, 2),
(13, 2, 9, 6, 1, 7, 9, 4, 1, 1, 2),
(15, 2, 9, 6, 1, 13, 0, 2, 1, 1, 2),
(26, 4, 13, 4, 3, 1, 0, 1, 1, 1, 3),
(27, 4, 7, 4, 3, 5, 0, 1, 1, 1, 3),
(29, 1, 11, 6, 1, 5, 0, 4, 1, 1, 2),
(30, 4, 7, 5, 1, 1, 0, 3, 1, 1, 1),
(32, 4, 13, 4, 6, 3, 0, 1, 2, 1, 3),
(33, 4, 13, 4, 6, 13, 0, 1, 1, 1, 3),
(34, 2, 13, 7, 1, 15, 0, 2, 1, 1, 2),
(35, 2, 8, 6, 5, 9, 0, 4, 1, 1, 2),
(38, 4, 13, 7, 4, 3, 0, 4, 1, 1, 2),
(41, 5, 13, 4, 4, 5, 0, 1, 1, 1, 3),
(42, 5, 7, 4, 4, 7, 0, 1, 1, 1, 3),
(44, 5, 10, 4, 4, 13, 0, 1, 1, 1, 3),
(45, 5, 10, 5, 4, 15, 0, 1, 1, 1, 1),
(46, 5, 10, 5, 4, 17, 0, 1, 1, 1, 1),
(47, 5, 10, 5, 4, 19, 0, 1, 1, 1, 1),
(48, 5, 10, 5, 4, 1, 0, 2, 1, 1, 1),
(49, 5, 10, 5, 4, 3, 0, 2, 1, 1, 1),
(50, 5, 10, 5, 4, 5, 0, 2, 1, 1, 1),
(51, 5, 7, 5, 4, 7, 0, 2, 1, 1, 1),
(52, 5, 10, 5, 4, 9, 0, 2, 1, 1, 1),
(53, 5, 10, 5, 4, 13, 0, 2, 1, 1, 1),
(54, 5, 10, 5, 4, 15, 0, 2, 1, 1, 1),
(55, 5, 10, 5, 4, 17, 0, 2, 1, 1, 1),
(56, 5, 10, 5, 4, 1, 0, 3, 1, 1, 1),
(57, 5, 10, 5, 4, 3, 0, 3, 1, 1, 1),
(58, 5, 7, 4, 4, 7, 0, 3, 1, 1, 3),
(59, 5, 13, 6, 6, 27, 0, 1, 2, 1, 2),
(60, 4, 6, 4, 4, 3, 0, 1, 1, 1, 3),
(61, 5, 13, 4, 3, 19, 0, 3, 1, 1, 3),
(62, 4, 13, 4, 1, 25, 0, 3, 1, 1, 3),
(63, 1, 11, 6, 1, 3, 0, 1, 1, 1, 2),
(64, 4, 13, 4, 1, 25, 0, 1, 1, 1, 3),
(65, 5, 7, 4, 4, 13, 0, 5, 1, 1, 3),
(68, 5, 7, 4, 3, 17, 0, 4, 1, 1, 3),
(69, 5, 13, 4, 3, 7, 0, 5, 1, 1, 3),
(70, 5, 13, 4, 3, 17, 0, 5, 1, 1, 3),
(71, 1, 11, 6, 1, 21, 0, 2, 1, 1, 2),
(72, 1, 11, 6, 2, 25, 0, 4, 1, 1, 2),
(73, 4, 11, 4, 5, 9, 0, 3, 1, 1, 3),
(74, 4, 11, 4, 5, 15, 0, 5, 1, 1, 3),
(75, 2, 6, 10, 1, 5, 0, 1, 1, 1, 0),
(77, 3, 25, 8, 3, 21, 0, 2, 2, 1, 2),
(78, 1, 23, 9, 3, 23, 0, 3, 1, 3, 2),
(79, 2, 24, 8, 3, 25, 0, 1, 2, 1, 2),
(80, 7, 31, 12, 7, 3, 0, 1, 1, 3, 2),
(81, 7, 31, 12, 7, 3, 0, 3, 1, 3, 2),
(82, 7, 31, 12, 7, 3, 0, 5, 1, 3, 2),
(83, 7, 32, 12, 7, 7, 0, 1, 1, 3, 2),
(84, 7, 32, 12, 7, 7, 0, 3, 1, 3, 2),
(85, 7, 32, 12, 7, 7, 0, 5, 1, 3, 2),
(86, 7, 33, 12, 7, 13, 0, 1, 1, 3, 2),
(87, 7, 33, 12, 7, 13, 0, 3, 1, 3, 2),
(88, 7, 33, 12, 7, 13, 0, 5, 1, 3, 2),
(89, 7, 18, 12, 7, 15, 0, 1, 1, 3, 2),
(90, 7, 18, 12, 7, 15, 0, 3, 1, 3, 2),
(91, 7, 18, 12, 7, 15, 0, 5, 1, 3, 2),
(92, 7, 34, 12, 7, 19, 0, 1, 1, 3, 2),
(93, 7, 34, 12, 7, 19, 0, 3, 1, 3, 2),
(94, 7, 34, 12, 7, 19, 0, 5, 1, 3, 2),
(95, 7, 35, 12, 7, 13, 0, 2, 1, 3, 2),
(96, 7, 35, 12, 7, 15, 0, 2, 1, 3, 2),
(98, 7, 35, 12, 7, 13, 0, 4, 1, 3, 2),
(99, 7, 36, 12, 7, 17, 0, 2, 1, 3, 2),
(100, 7, 36, 12, 7, 19, 0, 2, 1, 3, 2),
(101, 7, 36, 12, 7, 15, 0, 4, 1, 3, 2),
(102, 7, 37, 12, 8, 1, 0, 1, 1, 3, 2),
(103, 7, 37, 12, 8, 1, 0, 3, 2, 3, 2),
(104, 7, 37, 12, 8, 1, 0, 5, 1, 3, 2),
(105, 7, 38, 12, 8, 5, 0, 1, 1, 3, 2),
(106, 7, 38, 12, 8, 5, 0, 3, 1, 3, 2),
(107, 7, 38, 12, 8, 5, 0, 5, 1, 3, 2),
(108, 7, 39, 12, 8, 1, 0, 2, 1, 3, 2),
(109, 7, 39, 12, 8, 3, 0, 2, 1, 3, 2),
(110, 7, 39, 12, 8, 3, 0, 4, 1, 3, 2),
(111, 6, 40, 6, 9, 1, 0, 1, 1, 3, 2),
(112, 6, 40, 6, 9, 1, 0, 2, 1, 3, 2),
(113, 6, 40, 6, 9, 1, 0, 3, 1, 3, 2),
(114, 6, 40, 6, 9, 1, 0, 4, 1, 3, 2),
(115, 6, 40, 6, 9, 1, 0, 5, 1, 3, 2),
(116, 6, 41, 6, 9, 3, 0, 1, 1, 3, 2),
(117, 6, 41, 6, 9, 3, 0, 2, 1, 3, 2),
(118, 6, 41, 6, 9, 3, 0, 3, 1, 3, 2),
(119, 6, 41, 6, 9, 3, 0, 4, 1, 3, 2),
(120, 6, 41, 6, 9, 3, 0, 5, 1, 3, 2),
(121, 6, 43, 6, 9, 13, 0, 1, 1, 3, 2),
(122, 6, 42, 6, 9, 13, 0, 2, 1, 3, 2),
(123, 6, 42, 6, 9, 13, 0, 3, 1, 3, 2),
(124, 6, 42, 6, 9, 13, 0, 4, 1, 3, 2),
(125, 6, 42, 6, 9, 13, 0, 5, 1, 3, 2),
(126, 6, 43, 6, 9, 15, 0, 1, 1, 3, 2),
(127, 6, 43, 6, 9, 15, 0, 2, 1, 3, 2),
(128, 6, 43, 6, 9, 15, 0, 3, 1, 3, 2),
(129, 6, 43, 6, 9, 15, 0, 4, 1, 3, 2),
(130, 6, 43, 6, 9, 15, 0, 5, 1, 3, 2),
(131, 9, 43, 13, 10, 1, 0, 1, 1, 3, 2),
(132, 9, 43, 13, 10, 1, 0, 2, 1, 3, 2),
(133, 9, 43, 13, 10, 1, 0, 3, 1, 3, 2),
(134, 9, 43, 13, 10, 1, 0, 4, 1, 3, 2),
(135, 9, 43, 13, 10, 1, 0, 5, 1, 3, 2),
(136, 9, 42, 13, 10, 3, 0, 1, 1, 3, 2),
(137, 9, 42, 13, 10, 3, 0, 2, 1, 3, 2),
(138, 9, 42, 13, 10, 3, 0, 3, 1, 3, 2),
(139, 9, 42, 13, 10, 3, 0, 4, 1, 3, 2),
(140, 9, 42, 13, 10, 3, 0, 5, 1, 4, 2),
(141, 9, 40, 13, 10, 13, 0, 1, 1, 3, 2),
(142, 9, 40, 13, 10, 13, 0, 2, 1, 3, 2),
(143, 9, 40, 13, 10, 13, 0, 3, 1, 3, 2),
(144, 9, 40, 13, 10, 13, 0, 4, 1, 3, 2),
(146, 9, 40, 13, 10, 13, 0, 5, 1, 3, 2),
(147, 9, 42, 13, 10, 3, 0, 5, 1, 3, 2),
(148, 9, 41, 13, 10, 15, 0, 1, 1, 3, 2),
(149, 9, 41, 13, 10, 15, 0, 2, 1, 3, 2),
(150, 9, 41, 13, 10, 15, 0, 3, 2, 3, 2),
(151, 9, 41, 13, 10, 15, 0, 4, 1, 3, 2),
(152, 9, 41, 13, 10, 15, 0, 5, 1, 3, 2),
(153, 9, 41, 13, 10, 15, 0, 3, 1, 3, 2),
(154, 1, 44, 14, 11, 1, 0, 1, 1, 3, 2),
(155, 1, 44, 14, 11, 1, 0, 3, 1, 3, 2),
(156, 1, 44, 14, 11, 1, 0, 5, 1, 3, 2),
(157, 1, 45, 14, 11, 3, 0, 1, 1, 3, 2),
(158, 1, 45, 14, 11, 3, 0, 3, 1, 3, 2),
(159, 1, 45, 14, 11, 3, 0, 5, 1, 3, 2),
(160, 1, 44, 15, 12, 7, 0, 1, 1, 3, 2),
(161, 1, 44, 15, 12, 7, 0, 3, 1, 3, 2),
(162, 1, 44, 15, 12, 7, 0, 5, 1, 3, 2),
(163, 1, 45, 15, 12, 9, 0, 1, 1, 3, 2),
(164, 1, 45, 15, 12, 9, 0, 3, 1, 3, 2),
(165, 1, 45, 15, 12, 9, 0, 5, 1, 3, 2),
(167, 1, 45, 15, 12, 9, 0, 4, 1, 3, 2),
(168, 1, 45, 15, 12, 7, 0, 4, 1, 3, 2),
(169, 1, 44, 15, 12, 3, 0, 4, 1, 3, 2),
(170, 1, 44, 15, 12, 5, 0, 4, 1, 3, 2),
(171, 9, 45, 16, 8, 17, 0, 1, 1, 3, 2),
(172, 9, 45, 16, 8, 19, 0, 1, 1, 3, 2),
(173, 9, 45, 16, 8, 17, 0, 3, 1, 3, 2),
(174, 9, 45, 16, 8, 19, 0, 3, 1, 3, 2),
(175, 2, 44, 17, 1, 3, 0, 1, 1, 3, 2),
(176, 2, 44, 17, 1, 5, 0, 1, 1, 3, 2),
(177, 2, 44, 17, 1, 3, 0, 3, 1, 3, 2),
(178, 2, 44, 17, 1, 5, 0, 3, 1, 3, 2),
(179, 2, 45, 17, 1, 3, 0, 2, 1, 3, 2),
(180, 2, 45, 17, 1, 5, 0, 2, 1, 3, 2),
(181, 2, 45, 17, 1, 3, 0, 4, 1, 3, 2),
(183, 2, 45, 17, 1, 5, 0, 4, 1, 3, 2),
(184, 2, 44, 17, 1, 3, 0, 5, 1, 3, 2),
(185, 2, 45, 17, 1, 5, 0, 5, 1, 3, 2),
(186, 2, 46, 20, 11, 17, 0, 1, 1, 3, 2),
(187, 2, 46, 20, 11, 17, 0, 3, 1, 3, 2),
(188, 2, 46, 20, 11, 17, 0, 5, 1, 3, 2),
(189, 2, 47, 20, 11, 19, 0, 1, 1, 3, 2),
(190, 2, 47, 20, 11, 19, 0, 3, 1, 3, 2),
(191, 2, 47, 20, 9, 19, 0, 5, 1, 3, 2),
(192, 2, 46, 21, 15, 7, 0, 2, 1, 3, 2),
(193, 2, 46, 21, 15, 7, 0, 4, 1, 3, 2),
(194, 2, 47, 21, 15, 9, 0, 2, 1, 3, 2),
(195, 2, 47, 21, 15, 9, 0, 4, 1, 3, 2),
(197, 2, 46, 22, 15, 1, 0, 1, 1, 3, 2),
(198, 2, 46, 22, 15, 1, 0, 3, 1, 3, 2),
(199, 2, 46, 22, 15, 1, 0, 5, 1, 3, 2),
(200, 2, 47, 22, 15, 7, 0, 1, 1, 3, 2),
(201, 2, 47, 22, 15, 7, 0, 3, 1, 3, 2),
(202, 9, 47, 24, 11, 17, 0, 2, 1, 3, 2),
(203, 9, 47, 24, 11, 19, 0, 2, 1, 3, 2),
(204, 9, 47, 24, 11, 17, 0, 4, 1, 3, 2),
(205, 9, 47, 24, 11, 19, 0, 4, 1, 3, 2),
(206, 2, 48, 25, 1, 13, 0, 1, 1, 3, 2),
(207, 2, 48, 25, 1, 13, 0, 3, 1, 3, 2),
(208, 2, 48, 25, 1, 13, 0, 5, 1, 3, 2),
(209, 2, 49, 25, 1, 15, 0, 1, 1, 3, 2),
(210, 2, 49, 25, 1, 15, 0, 3, 1, 3, 2),
(211, 2, 49, 25, 1, 15, 0, 5, 1, 3, 2),
(212, 6, 48, 27, 11, 7, 0, 1, 1, 3, 2),
(213, 6, 48, 27, 11, 7, 0, 3, 1, 3, 2),
(214, 6, 48, 27, 11, 7, 0, 5, 1, 3, 2),
(215, 6, 49, 27, 11, 9, 0, 1, 1, 3, 2),
(216, 6, 49, 27, 11, 9, 0, 3, 1, 3, 2),
(217, 6, 49, 27, 11, 9, 0, 5, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `school_yr`
--

CREATE TABLE `school_yr` (
  `year_id` int(10) NOT NULL auto_increment,
  `school_year` varchar(20) NOT NULL,
  PRIMARY KEY  (`year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `school_yr`
--

INSERT INTO `school_yr` (`year_id`, `school_year`) VALUES
(1, '2009-2010'),
(3, '2010-2011'),
(4, '2011-2012'),
(5, '2012-2013');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `sem_id` int(2) NOT NULL auto_increment,
  `semester` varchar(20) NOT NULL,
  PRIMARY KEY  (`sem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`sem_id`, `semester`) VALUES
(1, 'First Semester'),
(2, 'Second Semester');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` int(10) NOT NULL auto_increment,
  `sub_code` varchar(20) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_labhrsprday` tinyint(2) NOT NULL,
  `sub_lechrsprday` tinyint(2) NOT NULL,
  `subcat_id` tinyint(4) NOT NULL,
  `cys` varchar(50) NOT NULL,
  `prereq` varchar(20) NOT NULL,
  `sem_id` tinyint(2) NOT NULL,
  `dept_id` int(4) NOT NULL,
  PRIMARY KEY  (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_code`, `sub_name`, `sub_labhrsprday`, `sub_lechrsprday`, `subcat_id`, `cys`, `prereq`, `sem_id`, `dept_id`) VALUES
(3, 'Soc Sci 2E', 'Philippine Government, Politics and Constitution', 3, 3, 1, '13', '', 1, 3),
(4, 'Hum1', 'Humanities', 3, 3, 2, '13', '', 1, 3),
(6, 'IS111', 'Structure', 3, 3, 1, '8', '', 1, 2),
(7, 'IM209', 'Executive Information System', 3, 3, 1, '6', '', 1, 0),
(8, 'Calgeb1', 'College Algebra', 1, 1, 2, '18', '', 1, 0),
(9, 'IM207', 'Software Engineering', 3, 3, 1, '6', '', 1, 0),
(10, 'IMPrac', 'Practicum', 5, 5, 1, '6', '', 1, 0),
(11, 'IMProj', 'System Project', 5, 5, 1, '6', '', 1, 0),
(12, 'Ind Techno 3', 'Ind Techno 3', 2, 1, 1, '31', '', 1, 2),
(13, 'IS112', 'Personal Productivity using IS', 3, 2, 1, '40', '', 1, 2),
(14, 'IS211', 'Systems infra and integration	', 0, 3, 1, '40', '', 1, 2),
(15, 'IS212', 'DBMS	', 3, 2, 1, '42', '0', 1, 2),
(16, 'IS213', 'Multimedia Authoring	', 3, 2, 1, '44', '0', 1, 2),
(17, 'IS214', 'IS Programming 1', 3, 2, 1, '44', '0', 1, 2),
(18, 'IS215	', 'Mathematical Analysis	', 0, 3, 1, '44', '0', 1, 2),
(19, 'ACCTG 1', 'Fundamentals of Accounting 1		', 0, 6, 1, '43', '0', 1, 2),
(20, 'IS217	', 'Project Management and Quality Systems	', 0, 3, 1, '44', '0', 1, 2),
(21, 'IS216', 'Dev’t Maintenance and Services', 0, 3, 1, '45', '0', 1, 2),
(22, 'IS204	', 'Evaluation of Business Performance	', 0, 3, 1, '46', '0', 1, 2),
(23, 'IS302', 'IS Elective2', 0, 5, 1, '44', '0', 1, 2),
(24, 'IS305', 'Operating System	', 3, 2, 1, '46', '0', 1, 2),
(25, 'IS500', 'Capstone Project', 0, 3, 1, '45', '0', 1, 2),
(26, 'IS304	', 'IS Elective4 (Effective Human Comm.)', 0, 3, 1, '47', '0', 1, 2),
(27, 'IS107', 'Introduction to the IM Profession and Ethics', 0, 3, 1, '49', '0', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcat_id` tinyint(2) NOT NULL auto_increment,
  `sub_cat` varchar(20) NOT NULL,
  PRIMARY KEY  (`subcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`subcat_id`, `sub_cat`) VALUES
(1, 'Major'),
(2, 'Minor');

-- --------------------------------------------------------

--
-- Table structure for table `timestart`
--

CREATE TABLE `timestart` (
  `time_s_id` int(10) NOT NULL auto_increment,
  `time_s` varchar(20) NOT NULL,
  PRIMARY KEY  (`time_s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `timestart`
--

INSERT INTO `timestart` (`time_s_id`, `time_s`) VALUES
(1, '07:30 am'),
(3, '08:30 am'),
(5, '09:30 am'),
(7, '10:30 am'),
(9, '11:30 am'),
(11, '12:30 pm'),
(13, '01:30 pm'),
(15, '02:30 pm'),
(17, '03:30 pm'),
(19, '04:30 pm'),
(21, '05:30 pm'),
(23, '06:30 pm'),
(25, '07:30 pm'),
(27, '08:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `userpass` varchar(20) NOT NULL,
  `dept_id` tinyint(4) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `userpass`, `dept_id`) VALUES
(1, 'admin', 'a', 4),
(7, 'cit', 'cit', 2),
(8, 'educ', 'educ', 1),
(9, 'sas', 'sas', 3),
(10, 'deancit', 'd', 42),
(11, 'deaneduc', 'd', 41),
(12, 'deansas', 'd', 43);
