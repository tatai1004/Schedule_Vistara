-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 07:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(4, 'MCA SECTION A'),
(5, 'MCA SECTION B'),
(6, 'ENG1A'),
(7, 'ENG1B'),
(8, 'BCA SECTION A'),
(9, 'BCA SECTION B'),
(10, 'Nur123');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`) VALUES
(10, 'EMG001', 'Be.TH'),
(7, 'CSS002', 'CSS2'),
(9, 'CSS001', 'CSS'),
(11, 'MUL001', 'MULTI'),
(12, 'MCA123', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(67, 'Faculty'),
(66, 'Dean'),
(68, 'HOD');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_sched`
--

INSERT INTO `exam_sched` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `cys1`, `term`, `encoded_by`) VALUES
(1, 54, 'first', 179, 'MCA303', 'CSS1A', '101', 'software eng class teacher', 12, '', 'Midterm', 27),
(2, 51, 'third', 179, 'MCA303', 'CSS2A', '101', 'software eng class teacher', 12, '', 'Midterm', 27),
(3, 52, 'first', 178, 'MCA201', 'CSS1A', '103', '', 12, '', 'Midterm', 27),
(4, 55, 'second', 178, 'MCA201', 'CSS2A', '103', '', 12, '', 'Midterm', 27),
(5, 52, 'third', 178, 'MCA301', 'ENG1A', 'Room 104', '', 12, '', 'Midterm', 27),
(6, 41, 'first', 180, 'MCA303', 'CSS1A', '103', '', 17, '', '', 27),
(7, 53, 'second', 180, 'MCA303', 'CSS1A', '103', '', 17, '', '', 27),
(8, 55, 'third', 180, 'MCA303', 'CSS1A', '102', '', 17, '', '', 27),
(28, 52, 'third', 181, 'BCA201', 'BCA SECTION A', '102', '', 20, '', 'Midterm', 184),
(30, 53, 'first', 181, 'BCA204', 'BCA SECTION A', '103', '', 20, '', 'Midterm', 184),
(29, 58, 'second', 181, 'BCA204', 'BCA SECTION A', '103', '', 20, '', 'Midterm', 184),
(27, 55, 'second', 181, 'BCA201', 'BCA SECTION A', '102', '', 20, '', 'Midterm', 184),
(16, 51, 'first', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(17, 55, 'first', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(18, 57, 'first', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(19, 52, 'second', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(20, 55, 'second', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(21, 41, 'third', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(22, 52, 'third', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(23, 55, 'third', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(24, 56, 'third', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(25, 57, 'third', 186, 'BCA204', 'BCA SECTION B', '103', '', 20, '', 'Midterm', 184),
(31, 41, 'second', 188, 'BCA202', 'BCA SECTION B', '101', '', 23, '', 'Midterm', 184),
(32, 54, 'third', 188, 'BCA202', 'BCA SECTION B', '101', '', 23, '', 'Midterm', 184),
(33, 55, 'third', 187, 'BCA202', 'BCA SECTION B', '101', '', 23, '', 'Midterm', 184);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_first`, `member_last`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`) VALUES
(184, 'Admin', 'Admin', 'Assistant Professor I', '', '', 0, '', 'admin', 'admin', 'admin'),
(180, 'Riyanka', 'Hazra', 'Assistant Professor II', 'Mrs', 'CSS001', 67, '', 'riyankacss001', 'hazra', 'user'),
(181, 'Ratnabali', 'Pal', 'Assistant Professor IV', 'Mrs', 'CSS001', 67, '', 'ratnabalicss001', 'pal', 'user'),
(187, 'Jayanta', 'Aich', 'Assistant Professor I', 'Dr', 'CSS001', 68, '', 'jayantacss001', 'aich', 'user'),
(186, 'Rajesh', 'Bose', 'Assistant Professor I', 'Dr', 'CSS001', 67, '', 'rajeshcss001', 'bose', 'user'),
(188, 'Srabani', 'Sutradhar', 'Assistant Professor I', 'Dr', 'CSS001', 67, '', 'srabanicss001', 'sutradhar', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(6, 'CSS', 'Master of computer application'),
(13, 'CSS', 'Bachelor of computer application'),
(15, 'ENG', 'Be.TH');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`) VALUES
(1, 'HOD'),
(4, 'Instructor II'),
(6, 'Assistant Professor I'),
(5, 'Instructor III'),
(7, 'Assistant Professor II'),
(8, 'Assistant Professor III'),
(9, 'Assistant Professor IV'),
(10, 'Associate Professor I'),
(11, 'Associate Professor II'),
(12, 'Associate Professor III'),
(13, 'Associate Professor IV'),
(14, 'Professor I'),
(15, 'Professor II'),
(16, 'Professor III'),
(17, 'Professor IV'),
(18, 'College Professor '),
(19, 'University Professor ');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
(1, '101'),
(2, '102'),
(3, '103'),
(4, '104'),
(5, ' 105');

-- --------------------------------------------------------

--
-- Table structure for table `salut`
--

CREATE TABLE `salut` (
  `salut_id` int(11) NOT NULL,
  `salut` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(1, 4, 'm', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(2, 4, 'w', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(3, 4, 'f', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(4, 7, 'm', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(5, 7, 'w', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(6, 7, 'f', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(7, 19, 't', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(8, 19, 'th', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(9, 4, 'm', 178, 'MCA301', 'CSS1A', '103', '', 12, '27'),
(10, 7, 'm', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(11, 15, 'm', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(12, 10, 'w', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(13, 14, 'w', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(14, 8, 'f', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(15, 12, 'f', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(16, 21, 't', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(17, 18, 'th', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(18, 24, 'th', 178, 'MCA201', 'ENG1A', '101', '', 12, '27'),
(19, 7, 'm', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(21, 10, 'w', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(22, 14, 'w', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(23, 8, 'f', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(24, 12, 'f', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(25, 21, 't', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(26, 18, 'th', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(27, 24, 'th', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(28, 6, 'f', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(29, 22, 'th', 179, 'MCA303', 'CSS1A', '102', '', 12, '27'),
(30, 5, 'm', 179, 'MCA303', 'CSS1A', 'Room 104', '', 12, '27'),
(31, 19, 't', 179, 'MCA303', 'CSS1A', 'Room 104', '', 12, '27'),
(36, 12, 'w', 186, 'BCA202', 'BCA SECTION A', '101', '', 20, '184'),
(37, 13, 'f', 186, 'BCA202', 'BCA SECTION A', '101', '', 20, '184'),
(38, 21, 'th', 186, 'BCA202', 'BCA SECTION A', '101', '', 20, '184'),
(39, 9, 'm', 181, 'MCA202', 'MCA SECTION A', '105', '', 20, '184'),
(40, 14, 'f', 181, 'MCA202', 'MCA SECTION A', '105', '', 20, '184'),
(41, 18, 't', 181, 'MCA202', 'MCA SECTION A', '105', '', 20, '184'),
(42, 22, 'th', 181, 'MCA202', 'MCA SECTION A', '105', '', 20, '184'),
(43, 6, 'f', 185, 'BCA301', 'BCA SECTION A', '105', '', 20, '184'),
(44, 10, 'w', 188, 'BCA201', 'BCA SECTION A', '105', '', 23, '184'),
(45, 12, 'f', 188, 'BCA201', 'BCA SECTION A', '105', '', 23, '184'),
(46, 21, 't', 188, 'BCA201', 'BCA SECTION A', '105', '', 23, '184');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(21, '', '1st', '2022-23', 'inactive'),
(20, 'Midterm', '3rd', '2022-23', 'inactive'),
(19, '', '2nd', '2022-23', 'inactive'),
(18, '', '1st', '2020-21', 'inactive'),
(22, 'Endterm', '4th', '2022-2023', 'inactive'),
(23, 'Midterm', '5th', '2024-2025', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `sign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `seq` int(2) NOT NULL,
  `set_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`sign_id`, `member_id`, `seq`, `set_by`) VALUES
(2, 178, 1, 27),
(3, 179, 2, 27),
(7, 187, 2, 184),
(6, 188, 1, 184);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`) VALUES
(15, 'MCA202', 'Computer Networking', 184),
(14, 'MCA201', 'Python', 184),
(10, 'BCA201', 'DBMS', 184),
(11, 'BCA202', 'Architecture', 184),
(12, 'BCA204', 'Algorithm', 184),
(13, 'BCA301', 'Math', 184);

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(1, '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(4, '07:30:00', '08:30:00', 'mwf'),
(5, '08:30:00', '09:30:00', 'mwf'),
(6, '09:30:00', '10:30:00', 'mwf'),
(7, '10:30:00', '11:30:00', 'mwf'),
(8, '11:30:00', '12:30:00', 'mwf'),
(9, '12:30:00', '13:30:00', 'mwf'),
(10, '13:30:00', '14:30:00', 'mwf'),
(11, '14:30:00', '15:30:00', 'mwf'),
(12, '15:30:00', '16:30:00', 'mwf'),
(13, '16:30:00', '17:30:00', 'mwf'),
(14, '17:30:00', '18:30:00', 'mwf'),
(15, '18:30:00', '19:30:00', 'mwf'),
(18, '07:30:00', '09:00:00', 'tth'),
(19, '09:00:00', '10:30:00', 'tth'),
(20, '10:30:00', '12:00:00', 'tth'),
(21, '12:00:00', '13:30:00', 'tth'),
(22, '13:30:00', '15:00:00', 'tth'),
(23, '15:00:00', '16:30:00', 'tth'),
(24, '16:30:00', '18:00:00', 'tth'),
(25, '18:00:00', '19:30:00', 'tth'),
(37, '19:30:00', '20:30:00', 'mwf'),
(56, '15:00:00', '16:00:00', 'fst'),
(52, '10:00:00', '11:00:00', 'fst'),
(51, '09:00:00', '10:00:00', 'fst'),
(41, '08:00:00', '09:00:00', 'fst'),
(55, '14:00:00', '15:00:00', 'fst'),
(54, '13:00:00', '14:00:00', 'fst'),
(53, '11:00:00', '12:00:00', 'fst'),
(57, '16:00:00', '17:00:00', 'fst'),
(58, '17:00:00', '18:00:00', 'fst');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'active', 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `salut`
--
ALTER TABLE `salut`
  ADD PRIMARY KEY (`salut_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cys`
--
ALTER TABLE `cys`
  MODIFY `cys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `exam_sched`
--
ALTER TABLE `exam_sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salut`
--
ALTER TABLE `salut`
  MODIFY `salut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
