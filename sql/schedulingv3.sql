-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2016 at 06:57 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_yrSec` varchar(20) NOT NULL,
  `dept_id` tinyint(4) NOT NULL,
  `major` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(48, 'BSIS4A', 2, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_id` int(10) NOT NULL,
  `day_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `dept_id` tinyint(5) NOT NULL,
  `department` varchar(70) NOT NULL,
  `dept_person` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `department`, `dept_person`, `title`) VALUES
(1, 'CSE', 'Dr. Binales', 'Dean'),
(2, 'EE', 'Dr. Sobrepena', 'Dean, CIT'),
(3, 'SS', 'Ms. Tejada', 'Dean'),
(6, 'Maths', 'ABV', 'SS');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `teacher_id` int(5) NOT NULL,
  `teacher_name` text NOT NULL,
  `acad_rank` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `dept_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(15, 'Teacher B ', '', '', 2),
(16, 'samar', '1', 'ap', 3);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `room_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(9, 'Room 313', 'Computer Laboratory'),
(10, '2102', 'class I');

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE `sched` (
  `sched_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `course_id` int(5) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `time_s_id` int(10) NOT NULL,
  `time_e_id` int(10) NOT NULL,
  `day_id` int(10) NOT NULL,
  `sem_id` int(10) NOT NULL,
  `year_id` int(10) NOT NULL,
  `dept_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`sched_id`, `room_id`, `course_id`, `sub_id`, `teacher_id`, `time_s_id`, `time_e_id`, `day_id`, `sem_id`, `year_id`, `dept_id`) VALUES
(7359, 1, 0, -1, -1, 1, 2, 1, 0, 0, 0),
(7360, 1, 0, -1, -1, 2, 3, 1, 0, 0, 0),
(7361, 1, 0, -1, -1, 3, 4, 1, 0, 0, 0),
(7362, 1, 0, -1, -1, 4, 5, 1, 0, 0, 0),
(7363, 1, 0, 1, 9, 5, 6, 1, 0, 0, 0),
(7364, 1, 0, 1, 9, 6, 7, 1, 0, 0, 0),
(7365, 1, 0, 1, 9, 7, 8, 1, 0, 0, 0),
(7366, 1, 0, -1, -1, 8, 9, 1, 0, 0, 0),
(7367, 1, 0, 8, 13, 9, 10, 1, 0, 0, 0),
(7368, 1, 0, 8, 13, 10, 11, 1, 0, 0, 0),
(7369, 1, 0, -1, -1, 11, 12, 1, 0, 0, 0),
(7370, 1, 0, -1, -1, 12, 13, 1, 0, 0, 0),
(7371, 2, 0, -1, -1, 1, 2, 1, 0, 0, 0),
(7372, 2, 0, 5, 7, 2, 3, 1, 0, 0, 0),
(7373, 2, 0, 5, 7, 3, 4, 1, 0, 0, 0),
(7374, 2, 0, -1, -1, 4, 5, 1, 0, 0, 0),
(7375, 2, 0, -1, -1, 5, 6, 1, 0, 0, 0),
(7376, 2, 0, -1, -1, 6, 7, 1, 0, 0, 0),
(7377, 2, 0, 4, 4, 7, 8, 1, 0, 0, 0),
(7378, 2, 0, 4, 4, 8, 9, 1, 0, 0, 0),
(7379, 2, 0, 6, 5, 9, 10, 1, 0, 0, 0),
(7380, 2, 0, 6, 5, 10, 11, 1, 0, 0, 0),
(7381, 2, 0, 3, 12, 11, 12, 1, 0, 0, 0),
(7382, 2, 0, 3, 12, 12, 13, 1, 0, 0, 0),
(7383, 1, 0, -1, -1, 1, 2, 2, 0, 0, 0),
(7384, 1, 0, -1, -1, 2, 3, 2, 0, 0, 0),
(7385, 1, 0, -1, -1, 3, 4, 2, 0, 0, 0),
(7386, 1, 0, -1, -1, 4, 5, 2, 0, 0, 0),
(7387, 1, 0, 1, 9, 5, 6, 2, 0, 0, 0),
(7388, 1, 0, 1, 9, 6, 7, 2, 0, 0, 0),
(7389, 1, 0, 1, 9, 7, 8, 2, 0, 0, 0),
(7390, 1, 0, -1, -1, 8, 9, 2, 0, 0, 0),
(7391, 1, 0, 2, 3, 9, 10, 2, 0, 0, 0),
(7392, 1, 0, 2, 3, 10, 11, 2, 0, 0, 0),
(7393, 1, 0, 2, 3, 11, 12, 2, 0, 0, 0),
(7394, 1, 0, 2, 3, 12, 13, 2, 0, 0, 0),
(7395, 2, 0, -1, -1, 1, 2, 2, 0, 0, 0),
(7396, 2, 0, 4, 4, 2, 3, 2, 0, 0, 0),
(7397, 2, 0, 4, 4, 3, 4, 2, 0, 0, 0),
(7398, 2, 0, 4, 4, 4, 5, 2, 0, 0, 0),
(7399, 2, 0, 4, 4, 5, 6, 2, 0, 0, 0),
(7400, 2, 0, -1, -1, 6, 7, 2, 0, 0, 0),
(7401, 2, 0, 1, 1, 7, 8, 2, 0, 0, 0),
(7402, 2, 0, 1, 1, 8, 9, 2, 0, 0, 0),
(7403, 2, 0, -1, -1, 9, 10, 2, 0, 0, 0),
(7404, 2, 0, -1, -1, 10, 11, 2, 0, 0, 0),
(7405, 2, 0, 5, 10, 11, 12, 2, 0, 0, 0),
(7406, 2, 0, 5, 10, 12, 13, 2, 0, 0, 0),
(7407, 1, 0, -1, -1, 1, 2, 3, 0, 0, 0),
(7408, 1, 0, -1, -1, 2, 3, 3, 0, 0, 0),
(7409, 1, 0, -1, -1, 3, 4, 3, 0, 0, 0),
(7410, 1, 0, -1, -1, 4, 5, 3, 0, 0, 0),
(7411, 1, 0, -1, -1, 5, 6, 3, 0, 0, 0),
(7412, 1, 0, -1, -1, 6, 7, 3, 0, 0, 0),
(7413, 1, 0, 3, 12, 7, 8, 3, 0, 0, 0),
(7414, 1, 0, 3, 12, 8, 9, 3, 0, 0, 0),
(7415, 1, 0, 1, 9, 9, 10, 3, 0, 0, 0),
(7416, 1, 0, 1, 9, 10, 11, 3, 0, 0, 0),
(7417, 1, 0, 1, 9, 11, 12, 3, 0, 0, 0),
(7418, 1, 0, -1, -1, 12, 13, 3, 0, 0, 0),
(7419, 2, 0, -1, -1, 1, 2, 3, 0, 0, 0),
(7420, 2, 0, -1, -1, 2, 3, 3, 0, 0, 0),
(7421, 2, 0, 4, 4, 3, 4, 3, 0, 0, 0),
(7422, 2, 0, 4, 4, 4, 5, 3, 0, 0, 0),
(7423, 2, 0, 3, 8, 5, 6, 3, 0, 0, 0),
(7424, 2, 0, 3, 8, 6, 7, 3, 0, 0, 0),
(7425, 2, 0, -1, -1, 7, 8, 3, 0, 0, 0),
(7426, 2, 0, -1, -1, 8, 9, 3, 0, 0, 0),
(7427, 2, 0, -1, -1, 9, 10, 3, 0, 0, 0),
(7428, 2, 0, -1, -1, 10, 11, 3, 0, 0, 0),
(7429, 2, 0, 7, 11, 11, 12, 3, 0, 0, 0),
(7430, 2, 0, 7, 11, 12, 13, 3, 0, 0, 0),
(7431, 1, 0, -1, -1, 1, 2, 4, 0, 0, 0),
(7432, 1, 0, -1, -1, 2, 3, 4, 0, 0, 0),
(7433, 1, 0, -1, -1, 3, 4, 4, 0, 0, 0),
(7434, 1, 0, 2, 3, 4, 5, 4, 0, 0, 0),
(7435, 1, 0, 2, 3, 5, 6, 4, 0, 0, 0),
(7436, 1, 0, -1, -1, 6, 7, 4, 0, 0, 0),
(7437, 1, 0, -1, -1, 7, 8, 4, 0, 0, 0),
(7438, 1, 0, -1, -1, 8, 9, 4, 0, 0, 0),
(7439, 1, 0, -1, -1, 9, 10, 4, 0, 0, 0),
(7440, 1, 0, -1, -1, 10, 11, 4, 0, 0, 0),
(7441, 1, 0, -1, -1, 11, 12, 4, 0, 0, 0),
(7442, 1, 0, -1, -1, 12, 13, 4, 0, 0, 0),
(7443, 2, 0, -1, -1, 1, 2, 4, 0, 0, 0),
(7444, 2, 0, 5, 7, 2, 3, 4, 0, 0, 0),
(7445, 2, 0, 5, 7, 3, 4, 4, 0, 0, 0),
(7446, 2, 0, -1, -1, 4, 5, 4, 0, 0, 0),
(7447, 2, 0, -1, -1, 5, 6, 4, 0, 0, 0),
(7448, 2, 0, -1, -1, 6, 7, 4, 0, 0, 0),
(7449, 2, 0, 3, 8, 7, 8, 4, 0, 0, 0),
(7450, 2, 0, 3, 8, 8, 9, 4, 0, 0, 0),
(7451, 2, 0, 1, 1, 9, 10, 4, 0, 0, 0),
(7452, 2, 0, 1, 1, 10, 11, 4, 0, 0, 0),
(7453, 2, 0, -1, -1, 11, 12, 4, 0, 0, 0),
(7454, 2, 0, -1, -1, 12, 13, 4, 0, 0, 0),
(7455, 1, 0, -1, -1, 1, 2, 5, 0, 0, 0),
(7456, 1, 0, -1, -1, 2, 3, 5, 0, 0, 0),
(7457, 1, 0, -1, -1, 3, 4, 5, 0, 0, 0),
(7458, 1, 0, 2, 3, 4, 5, 5, 0, 0, 0),
(7459, 1, 0, 2, 3, 5, 6, 5, 0, 0, 0),
(7460, 1, 0, -1, -1, 6, 7, 5, 0, 0, 0),
(7461, 1, 0, 1, 9, 7, 8, 5, 0, 0, 0),
(7462, 1, 0, 1, 9, 8, 9, 5, 0, 0, 0),
(7463, 1, 0, 1, 9, 9, 10, 5, 0, 0, 0),
(7464, 1, 0, -1, -1, 10, 11, 5, 0, 0, 0),
(7465, 1, 0, -1, -1, 11, 12, 5, 0, 0, 0),
(7466, 1, 0, -1, -1, 12, 13, 5, 0, 0, 0),
(7467, 2, 0, 6, 5, 1, 2, 5, 0, 0, 0),
(7468, 2, 0, 6, 5, 2, 3, 5, 0, 0, 0),
(7469, 2, 0, 2, 2, 3, 4, 5, 0, 0, 0),
(7470, 2, 0, 2, 2, 4, 5, 5, 0, 0, 0),
(7471, 2, 0, -1, -1, 5, 6, 5, 0, 0, 0),
(7472, 2, 0, -1, -1, 6, 7, 5, 0, 0, 0),
(7473, 2, 0, -1, -1, 7, 8, 5, 0, 0, 0),
(7474, 2, 0, -1, -1, 8, 9, 5, 0, 0, 0),
(7475, 2, 0, -1, -1, 9, 10, 5, 0, 0, 0),
(7476, 2, 0, -1, -1, 10, 11, 5, 0, 0, 0),
(7477, 2, 0, 2, 2, 11, 12, 5, 0, 0, 0),
(7478, 2, 0, 2, 2, 12, 13, 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `school_yr`
--

CREATE TABLE `school_yr` (
  `year_id` int(10) NOT NULL,
  `school_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_yr`
--

INSERT INTO `school_yr` (`year_id`, `school_year`) VALUES
(1, '2009-2010'),
(3, '2010-2011'),
(4, '2011-2012'),
(5, '2012-2013'),
(6, '2015-2016');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `sem_id` int(2) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `sub_id` int(10) NOT NULL,
  `sub_code` varchar(20) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_labhrsprday` tinyint(2) NOT NULL,
  `sub_lechrsprday` tinyint(2) NOT NULL,
  `subcat_id` tinyint(4) NOT NULL,
  `cys` varchar(50) NOT NULL,
  `prereq` varchar(20) NOT NULL,
  `sem_id` tinyint(2) NOT NULL,
  `dept_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_code`, `sub_name`, `sub_labhrsprday`, `sub_lechrsprday`, `subcat_id`, `cys`, `prereq`, `sem_id`, `dept_id`) VALUES
(1, 'err', 'Sahu', 0, 0, 0, 'rd', 'ef', 3, 2),
(2, 'Prog', 'Discrete Maths', 1, 1, 1, '31', 'fefe', 1, 4),
(3, 'Soc Sci 2E', 'Philippine Government, Politics and Constitution', 3, 3, 1, '13', '', 1, 3),
(4, 'Hum1', 'Humanities', 3, 3, 2, '13', '', 1, 3),
(5, 'Proj', 'BTP', 1, 3, 2, 'wef', 'efw', 2, 1),
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
(27, 'IS107', 'Introduction to the IM Profession and Ethics', 0, 3, 1, '49', '0', 1, 2),
(28, 'MA111', 'Calculus & Real Analysis', 0, 4, 1, '23', 'NIL', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcat_id` tinyint(2) NOT NULL,
  `sub_cat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `time_s_id` int(10) NOT NULL,
  `time_s` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timestart`
--

INSERT INTO `timestart` (`time_s_id`, `time_s`) VALUES
(1, '08:00 am'),
(2, '09:00 am'),
(3, '10:00 am'),
(4, '11:00 am'),
(5, '12:00 pm'),
(6, '01:00 pm'),
(7, '02:00 pm'),
(8, '03:00 pm'),
(9, '04:00 pm'),
(10, '05:00 pm'),
(11, '06:00 pm'),
(12, '07:00 pm'),
(13, '08:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `userpass` varchar(20) NOT NULL,
  `dept_id` tinyint(4) NOT NULL,
  `year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `userpass`, `dept_id`, `year`) VALUES
(1, 'admin', 'a', 4, 0),
(7, 'student', 'stud', 2, 1),
(8, 'faculty', 'fac', 1, 0),
(9, 'sas', 'sas', 3, 2),
(10, 'deancit', 'd', 4, 3),
(11, 'deaneduc', 'd', 4, 4),
(12, 'deansas', 'd', 3, 1),
(13, 'staff', 'staff', 4, 2),
(14, 'local', 'local', 4, 3),
(15, 'local', 'local', 1, 4),
(16, 'abc', 'abc', 2, 1),
(17, 'user1', 'user1', 1, 2),
(18, 'avinash', 'av', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `sched`
--
ALTER TABLE `sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `school_yr`
--
ALTER TABLE `school_yr`
  ADD PRIMARY KEY (`year_id`);

--
-- Indexes for table `sem`
--
ALTER TABLE `sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `timestart`
--
ALTER TABLE `timestart`
  ADD PRIMARY KEY (`time_s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `day_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `teacher_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sched`
--
ALTER TABLE `sched`
  MODIFY `sched_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7480;
--
-- AUTO_INCREMENT for table `school_yr`
--
ALTER TABLE `school_yr`
  MODIFY `year_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sem`
--
ALTER TABLE `sem`
  MODIFY `sem_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subcat_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `timestart`
--
ALTER TABLE `timestart`
  MODIFY `time_s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
