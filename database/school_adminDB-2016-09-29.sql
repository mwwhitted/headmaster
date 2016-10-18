-- phpMyAdmin SQL Dump
-- version 4.4.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2016 at 11:47 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school_adminDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(10) unsigned NOT NULL,
  `street_line_1` varchar(50) NOT NULL,
  `line_2` varchar(50) DEFAULT NULL,
  `city` varchar(35) NOT NULL,
  `state_prov_reg` enum('TX','OK','AR','LA','NM','SD','AR','') DEFAULT 'TX',
  `postal_code` varchar(15) DEFAULT NULL,
  `country` enum('US','CA','MX','CN','JP','KO','UK','') DEFAULT 'US',
  `display_address` tinytext NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street_line_1`, `line_2`, `city`, `state_prov_reg`, `postal_code`, `country`, `display_address`) VALUES
(1, '1532 Pine Bluff Dr', NULL, 'Allen', 'TX', '75002', 'US', '1532 Pine Bluff Dr\r\nAllen, TX 75002\r\n'),
(2, 'Box 01753084', NULL, 'Sioux Falls', 'SD', '57186', 'US', 'Box 01753084\r\nSioux Falls, SD 57186');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(10) unsigned NOT NULL,
  `school_year_id` int(10) unsigned NOT NULL,
  `student_num` int(10) unsigned NOT NULL,
  `grading_period` enum('1','2','3','4') NOT NULL,
  `excused_absence` decimal(4,1) NOT NULL,
  `unexcused_absence` decimal(4,1) NOT NULL,
  `tardy` decimal(4,1) NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `school_year_id`, `student_num`, `grading_period`, `excused_absence`, `unexcused_absence`, `tardy`) VALUES
(1, 1, 1, '1', '0.5', '0.0', '0.0'),
(2, 1, 1, '2', '0.0', '0.0', '0.0'),
(3, 1, 1, '3', '0.0', '0.0', '0.0'),
(4, 1, 1, '4', '2.0', '0.0', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `class_head`
--

CREATE TABLE IF NOT EXISTS `class_head` (
  `class_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `day` enum('A','B') NOT NULL,
  `time` time NOT NULL,
  `school_year_id` int(10) unsigned NOT NULL,
  `term` enum('Full','Fall','Spring') NOT NULL DEFAULT 'Full',
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_head`
--

INSERT INTO `class_head` (`class_id`, `subject_id`, `day`, `time`, `school_year_id`, `term`) VALUES
(1, 1, 'A', '00:00:00', 1, 'Full'),
(2, 2, 'A', '00:00:00', 1, 'Full'),
(3, 3, 'A', '00:00:00', 1, 'Full'),
(4, 4, 'A', '00:00:00', 1, 'Full'),
(5, 5, 'B', '00:00:00', 1, 'Full'),
(6, 6, 'B', '00:00:00', 1, 'Full'),
(7, 7, 'B', '00:00:00', 1, 'Fall'),
(8, 9, 'B', '00:00:00', 1, 'Full'),
(9, 8, 'B', '00:00:00', 1, 'Spring'),
(10, 10, 'B', '00:00:00', 1, 'Full');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE IF NOT EXISTS `class_students` (
  `class_student_id` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_students`
--

INSERT INTO `class_students` (`class_student_id`, `class_id`, `student_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(10, 9, 1),
(11, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_teachers`
--

CREATE TABLE IF NOT EXISTS `class_teachers` (
  `class_teacher_id` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `teacher_id` int(10) unsigned NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_teachers`
--

INSERT INTO `class_teachers` (`class_teacher_id`, `class_id`, `teacher_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 5),
(5, 5, 5),
(6, 6, 3),
(7, 7, 1),
(8, 8, 4),
(9, 9, 1),
(10, 10, 1),
(11, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(10) unsigned NOT NULL,
  `school_year_id` int(10) unsigned NOT NULL,
  `grading_period` enum('1','2','3','4') NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `academic_grade` varchar(3) NOT NULL,
  `citz_grade` enum('E','S','U') NOT NULL,
  `transcript_relevant` tinyint(1) NOT NULL DEFAULT '1',
  `comment` tinytext NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `school_year_id`, `grading_period`, `class_id`, `student_id`, `academic_grade`, `citz_grade`, `transcript_relevant`, `comment`) VALUES
(1, 1, '1', 1, 1, '82', 'S', 1, ''),
(2, 1, '1', 2, 1, '96', 'E', 1, ''),
(3, 1, '1', 3, 1, '96', 'S', 1, ''),
(4, 1, '1', 4, 1, '99', 'S', 1, ''),
(5, 1, '1', 5, 1, '91', 'S', 1, ''),
(8, 1, '1', 6, 1, '92', 'E', 1, ''),
(9, 1, '1', 7, 1, '85', 'S', 1, ''),
(10, 1, '1', 9, 1, '100', 'E', 1, ''),
(11, 1, '1', 10, 1, 'P', 'S', 1, ''),
(12, 1, '2', 1, 1, '95', 'E', 1, ''),
(13, 1, '3', 1, 1, '88', 'S', 1, ''),
(14, 1, '4', 1, 1, '79', 'S', 1, ''),
(15, 1, '2', 3, 1, '96', 'S', 1, ''),
(16, 1, '2', 2, 1, '90', 'S', 1, ''),
(17, 1, '3', 2, 1, '93', 'S', 1, ''),
(19, 1, '4', 2, 1, '90', 'E', 1, ''),
(20, 1, '3', 3, 1, '97', 'S', 1, ''),
(21, 1, '4', 3, 1, '94', 'E', 1, ''),
(22, 1, '2', 4, 1, '95', 'E', 1, ''),
(23, 1, '3', 4, 1, '86', 'E', 1, ''),
(25, 1, '4', 4, 1, '92', 'E', 1, ''),
(26, 1, '2', 5, 1, '95', 'E', 1, ''),
(27, 1, '3', 5, 1, '86', 'E', 1, ''),
(28, 1, '4', 5, 1, '90', 'E', 1, ''),
(29, 1, '2', 6, 1, '88', 'E', 1, ''),
(30, 1, '3', 6, 1, '85', 'S', 1, ''),
(33, 1, '4', 6, 1, '92', 'S', 1, ''),
(35, 1, '2', 7, 1, '93', 'E', 1, ''),
(37, 1, '3', 8, 1, '82', 'S', 1, ''),
(38, 1, '4', 8, 1, '75', 'S', 1, ''),
(39, 1, '2', 9, 1, '88', 'E', 1, ''),
(40, 1, '3', 9, 1, '91', 'S', 1, ''),
(41, 1, '4', 9, 1, '91', 'S', 1, ''),
(42, 1, '2', 10, 1, 'P', 'S', 1, ''),
(43, 1, '3', 10, 1, 'P', 'S', 1, ''),
(44, 1, '4', 10, 1, 'P', 'S', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(10) unsigned NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `prefix` enum('Mr.','Mrs.','Ms.','Sir','Dr.','Rev.','Master','Miss') DEFAULT NULL,
  `suffix` enum('Phd','Jr','Sr','III','MD') DEFAULT NULL,
  `gender` enum('M','F') NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `last_name`, `first_name`, `middle_name`, `prefix`, `suffix`, `gender`, `display_name`) VALUES
(1, 'Whitted', 'Christopher', 'L', NULL, NULL, 'M', 'Christopher Whitted'),
(2, 'Whitted', 'Duncan', 'J', NULL, NULL, 'M', 'Duncan Whitted'),
(3, 'Huckle', 'John', NULL, 'Mr.', NULL, 'M', 'Mr. John Huckle'),
(4, 'Hansford', 'Brandon', NULL, 'Mr.', NULL, 'M', 'Mr. Brandon Hansford'),
(5, 'Effa', 'Marvin', NULL, 'Dr.', NULL, 'M', 'Dr. Marvin Effa'),
(6, 'Huckle', 'Amy', '', 'Mrs.', NULL, 'F', 'Mrs. Amy Huckle'),
(7, 'Whitted', 'Mark', 'W', 'Mr.', NULL, 'M', 'Mr. Mark Whitted'),
(8, 'Whitted', 'Tracy', 'L', 'Mrs.', NULL, 'F', 'Mrs. Tracy Whitted'),
(9, 'Shipley', 'V', NULL, 'Ms.', NULL, 'F', 'Ms. V. Shipley'),
(10, 'Xu', 'Ke', 'James', NULL, NULL, 'M', 'Ke James xu'),
(11, 'Black', 'Pitch', '', '', '', 'M', 'Pitch Black'),
(12, 'White', 'Oliver', ' B', '', '', 'M', 'Oliver B White'),
(13, 'Smith', 'Will', '', '', '', 'M', 'Will Smith'),
(14, 'Jones', 'George', '', '', '', 'M', 'George Jones'),
(15, 'Lincoln', 'George', '', '', '', 'M', 'George Lincoln'),
(16, 'Washington', 'Abe', '', '', '', 'M', 'Abe Washington'),
(17, 'Keller', 'Helen', '', '', '', 'F', 'Helen Keller'),
(18, 'Gray', 'Steve', '', '', '', 'M', 'Steve Gray'),
(19, 'McBride', 'Faye', '', '', '', 'F', 'Faye McBride'),
(20, 'Livingston', 'Stanley', '', '', '', 'M', 'Dr Stanley Livingston'),
(21, 'Jekyll', '', '', '', '', 'M', 'Dr Jekyll'),
(22, 'Hyde', '', '', '', '', 'M', 'Mr Hyde'),
(23, 'Watson', '', '', '', '', 'F', 'Dr Watson'),
(24, 'Holmes', 'Sherlock ', '', '', '', 'M', 'Sherlock Holmes'),
(25, 'Parker', 'Peter', '', '', '', 'M', 'Peter Parker'),
(26, 'Jobs', 'Steven', 'P', '', '', 'M', 'Steven P Jobs'),
(27, 'Burgett', 'Jim', '', '', '', 'M', 'Mr Jim Burgett'),
(28, 'Lee', 'Stan', '', '', '', 'M', 'Stan Lee'),
(29, 'Tony', 'Stank', '', '', '', 'M', 'Stank Tony'),
(30, 'Mcmillan', 'Cameron', 'P', '', '', 'M', 'Cameron P Mcmillan'),
(31, 'Battle', 'Mary', 'R', '', '', 'F', 'Mary R Battle'),
(32, 'Bowen', 'Indira', 'B', '', '', 'F', 'Indira B Bowen'),
(33, 'Williamson', 'Merrill', 'U', '', '', 'F', 'Merrill U Williamson'),
(34, 'Aguirre', 'Nasim', 'X', '', '', 'M', 'Nasim X Aguirre'),
(35, 'Terry', 'Nerea', 'F', '', '', 'F', 'Nerea F Terry'),
(36, 'Little', 'Harlan', 'W', '', '', 'F', 'Harlan W Little'),
(37, 'Buchanan', 'Philip', 'O', '', '', 'M', 'Philip O Buchanan'),
(38, 'Walsh', 'Mary', 'D', '', '', 'F', 'Mary D Walsh'),
(39, 'Stephens', 'Sasha', 'V', '', '', 'F', 'Sasha V Stephens'),
(40, 'Mccarthy', 'Shelly', 'I', '', '', 'F', 'Shelly I Mccarthy'),
(41, 'Shelton', 'Peter', 'I', '', '', 'M', 'Peter I Shelton'),
(42, 'Dominguez', 'Daquan', 'Q', '', '', 'F', 'Daquan Q Dominguez'),
(43, 'Olson', 'Molly', 'Y', '', '', 'F', 'Molly Y Olson'),
(44, 'Lewis', 'Vanna', 'S', '', '', 'F', 'Vanna S Lewis'),
(45, 'Sawyer', 'Salvador', 'D', '', '', 'M', 'Salvador D Sawyer'),
(46, 'Chambers', 'Tara', 'P', '', '', 'F', 'Tara P Chambers'),
(47, 'Dillard', 'Darryl', 'Y', '', '', 'M', 'Darryl Y Dillard'),
(48, 'Mcleod', 'Mona', 'E', '', '', 'F', 'Mona E Mcleod'),
(49, 'Middleton', 'Priscilla', 'A', '', '', 'F', 'Priscilla A Middleton'),
(50, 'Hyde', 'Tarik', 'Y', '', '', 'M', 'Tarik Y Hyde'),
(51, 'Carpenter', 'Donna', 'L', '', '', 'F', 'Donna L Carpenter'),
(52, 'Bentley', 'Iola', 'E', '', '', 'M', 'Iola E Bentley'),
(53, 'Mitchell', 'Miriam', 'U', '', '', 'F', 'Miriam U Mitchell'),
(54, 'Pratt', 'Reese', 'K', '', '', 'M', 'Reese K Pratt'),
(55, 'Walter', 'Stacey', 'O', '', '', 'F', 'Stacey O Walter'),
(56, 'Mills', 'Iris', 'A', '', '', 'F', 'Iris A Mills'),
(57, 'Powell', 'Winter', 'E', '', '', 'M', 'Winter E Powell'),
(58, 'Ford', 'Thor', 'E', '', '', 'F', 'Thor E Ford'),
(59, 'Snyder', 'Xantha', 'R', '', '', 'F', 'Xantha R Snyder'),
(60, 'Gilliam', 'Regina', 'C', '', '', 'F', 'Regina C Gilliam'),
(61, 'Buck', 'Halla', 'R', '', '', 'M', 'Halla R Buck'),
(62, 'Daniels', 'Marvin', 'W', '', '', 'M', 'Marvin W Daniels'),
(63, 'Downs', 'Galena', 'H', '', '', 'F', 'Galena H Downs'),
(64, 'Goodman', 'Stone', 'O', '', '', 'M', 'Stone O Goodman'),
(65, 'Cardenas', 'Tanner', 'E', '', '', 'M', 'Tanner E Cardenas'),
(66, 'Yates', 'Lionel', 'L', '', '', 'M', 'Lionel L Yates'),
(67, 'Warner', 'Hiroko', 'E', '', '', 'F', 'Hiroko E Warner'),
(68, 'Alvarez', 'Nicole', 'W', '', '', 'F', 'Nicole W Alvarez'),
(69, 'Mendoza', 'Kelsey', 'K', '', '', 'M', 'Kelsey K Mendoza'),
(70, 'Dickson', 'Nadine', 'G', '', '', 'F', 'Nadine G Dickson'),
(71, 'Campos', 'Unity', 'W', '', '', 'M', 'Unity W Campos'),
(72, 'Carroll', 'Roary', 'X', '', '', 'F', 'Roary X Carroll'),
(73, 'Randall', 'MacKenzie', 'S', '', '', 'F', 'MacKenzie S Randall'),
(74, 'Mann', 'Taylor', 'I', '', '', 'M', 'Taylor I Mann'),
(75, 'Long', 'Chantale', 'Y', '', '', 'F', 'Chantale Y Long'),
(76, 'Cross', 'Yasir', 'V', '', '', 'F', 'Yasir V Cross'),
(77, 'Becker', 'Devin', 'X', '', '', 'F', 'Devin X Becker'),
(78, 'Madden', 'Veronica', 'L', '', '', 'F', 'Veronica L Madden'),
(79, 'Wheeler', 'Tanya', 'P', '', '', 'F', 'Tanya P Wheeler'),
(80, 'Horne', 'Rudyard', 'K', '', '', 'M', 'Rudyard K Horne'),
(81, 'Langley', 'Freya', 'F', '', '', 'F', 'Freya F Langley'),
(82, 'Chen', 'Ella', 'E', '', '', 'F', 'Ella E Chen'),
(83, 'Vargas', 'Rina', 'U', '', '', 'M', 'Rina U Vargas'),
(84, 'Ayers', 'Janna', 'T', '', '', 'F', 'Janna T Ayers'),
(85, 'Ayers', 'Giselle', 'J', '', '', 'F', 'Giselle J Ayers'),
(86, 'Mcfadden', 'Kim', 'J', '', '', 'F', 'Kim J Mcfadden'),
(87, 'Boone', 'Shannon', 'A', '', '', 'F', 'Shannon A Boone'),
(88, 'Whitehead', 'Larissa', 'V', '', '', 'F', 'Larissa V Whitehead'),
(89, 'Kidd', 'Lilah', 'L', '', '', 'F', 'Lilah L Kidd'),
(90, 'Pena', 'Maite', 'I', '', '', 'F', 'Maite I Pena'),
(91, 'Evans', 'Norman', 'S', '', '', 'M', 'Norman S Evans'),
(92, 'Franco', 'Quincy', 'E', '', '', 'M', 'Quincy E Franco'),
(93, 'Sellers', 'Zenia', 'M', '', '', 'F', 'Zenia M Sellers'),
(94, 'Holcomb', 'Logan', 'U', '', '', 'M', 'Logan U Holcomb'),
(95, 'Gibson', 'Evan', 'D', '', '', 'M', 'Evan D Gibson'),
(96, 'Hunter', 'Jordan', 'Y', '', '', 'M', 'Jordan Y Hunter'),
(97, 'Wilkinson', 'Knox', 'P', '', '', 'M', 'Knox P Wilkinson'),
(98, 'Goodman', 'Yen', 'X', '', '', 'F', 'Yen X Goodman'),
(99, 'Franks', 'Isadora', 'D', '', '', 'F', 'Isadora D Franks'),
(100, 'Whitney', 'Felicia', 'H', '', '', 'F', 'Felicia H Whitney'),
(101, 'Guzman', 'Melvin', 'Z', '', '', 'M', 'Melvin Z Guzman'),
(102, 'Shelton', 'Malcolm', 'K', '', '', 'M', 'Malcolm K Shelton'),
(103, 'Morin', 'Travis', 'T', '', '', 'M', 'Travis T Morin'),
(104, 'Price', 'Evangeline', 'W', '', '', 'F', 'Evangeline W Price'),
(105, 'Hayden', 'Denise', 'X', '', '', 'F', 'Denise X Hayden'),
(106, 'David', 'Leah', 'Y', '', '', 'F', 'Leah Y David'),
(107, 'Larson', 'Ora', 'F', '', '', 'M', 'Ora F Larson'),
(108, 'Young', 'Ria', 'K', '', '', 'M', 'Ria K Young'),
(109, 'Sykes', 'Brandon', 'K', '', '', 'M', 'Brandon K Sykes'),
(110, 'Shepherd', 'Jakeem', 'P', '', '', 'F', 'Jakeem P Shepherd'),
(111, 'Schneider', 'Drew', 'I', '', '', 'M', 'Drew I Schneider'),
(112, 'Mcneil', 'Ila', 'A', '', '', 'F', 'Ila A Mcneil'),
(113, 'Kidd', 'Elliott', 'O', '', '', 'F', 'Elliott O Kidd'),
(114, 'Little', 'Quincy', 'P', '', '', 'M', 'Quincy P Little'),
(115, 'Tyler', 'Adara', 'D', '', '', 'F', 'Adara D Tyler'),
(116, 'Lindsay', 'Miranda', 'I', '', '', 'M', 'Miranda I Lindsay'),
(117, 'Cochran', 'Autumn', 'X', '', '', 'M', 'Autumn X Cochran'),
(118, 'Peters', 'Yoshio', 'L', '', '', 'M', 'Yoshio L Peters'),
(119, 'Gray', 'Francesca', 'V', '', '', 'F', 'Francesca V Gray'),
(120, 'Lawrence', 'Carson', 'M', '', '', 'M', 'Carson M Lawrence'),
(121, 'Skinner', 'Jorden', 'D', '', '', 'M', 'Jorden D Skinner'),
(122, 'Solis', 'Malachi', 'U', '', '', 'M', 'Malachi U Solis');

-- --------------------------------------------------------

--
-- Table structure for table `person_address`
--

CREATE TABLE IF NOT EXISTS `person_address` (
  `person_adress_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `adress_id` int(10) unsigned NOT NULL,
  `address_type` enum('Home','Office','Billing','Other') NOT NULL DEFAULT 'Home',
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_address`
--

INSERT INTO `person_address` (`person_adress_id`, `person_id`, `adress_id`, `address_type`) VALUES
(1, 1, 1, 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `person_telephone`
--

CREATE TABLE IF NOT EXISTS `person_telephone` (
  `person_telephone_number_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `telephone_number_id` int(10) unsigned NOT NULL,
  `telephone_number_type` enum('Home','Office','Mobile','Other') NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_telephone`
--

INSERT INTO `person_telephone` (`person_telephone_number_id`, `person_id`, `telephone_number_id`, `telephone_number_type`) VALUES
(1, 1, 1, 'Home'),
(2, 1, 2, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `report_card_head`
--

CREATE TABLE IF NOT EXISTS `report_card_head` (
  `report_card_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `school_year_id` int(10) unsigned NOT NULL,
  `grading_period` enum('1','2','3','4') NOT NULL,
  `Comment` tinytext NOT NULL,
  `report_card_pdf` varchar(100) NOT NULL COMMENT 'File Name',
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report_card_subject_line`
--

CREATE TABLE IF NOT EXISTS `report_card_subject_line` (
  `report_card_id` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `school_year_id` int(10) unsigned NOT NULL,
  `day` enum('A','B') NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `academic_grade_Q1` varchar(3) NOT NULL,
  `academic_grade_Q2` varchar(3) NOT NULL,
  `academic_grade_FS` varchar(3) NOT NULL,
  `citz_grade_Q1` varchar(3) NOT NULL,
  `citz_grade_Q2` varchar(3) NOT NULL,
  `academic_grade_Q3` varchar(3) NOT NULL,
  `academic_grade_Q4` varchar(3) NOT NULL,
  `academic_grade_SS` varchar(3) NOT NULL,
  `citz_grade_Q3` varchar(3) NOT NULL,
  `citz_grade_Q4` varchar(3) NOT NULL,
  `comment` tinytext NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int(10) unsigned NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `first_day` date NOT NULL,
  `Q1_start` date NOT NULL,
  `Q1_progress_report` date NOT NULL,
  `Q1_end` date NOT NULL,
  `Q1_days` tinyint(2) NOT NULL,
  `Q2_start` date NOT NULL,
  `Q1_report_cards` date NOT NULL,
  `Q2_progress_report` date NOT NULL,
  `Q2_end` date NOT NULL,
  `Q2_days` tinyint(2) NOT NULL,
  `Q3_start` date NOT NULL,
  `Q2_report_cards` date NOT NULL,
  `Q3_progress_report` date NOT NULL,
  `Q3_end` date NOT NULL,
  `Q3_days` tinyint(2) NOT NULL,
  `Q4_start` date NOT NULL,
  `Q3_report_cards` date NOT NULL,
  `Q4_progress_report` date NOT NULL,
  `Q4_end` date NOT NULL,
  `Q4_days` tinyint(2) NOT NULL,
  `last_day` date NOT NULL,
  `total_days` tinyint(3) NOT NULL,
  `Q4_report_cards` date NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`, `first_day`, `Q1_start`, `Q1_progress_report`, `Q1_end`, `Q1_days`, `Q2_start`, `Q1_report_cards`, `Q2_progress_report`, `Q2_end`, `Q2_days`, `Q3_start`, `Q2_report_cards`, `Q3_progress_report`, `Q3_end`, `Q3_days`, `Q4_start`, `Q3_report_cards`, `Q4_progress_report`, `Q4_end`, `Q4_days`, `last_day`, `total_days`, `Q4_report_cards`) VALUES
(1, '2015-2016', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 43, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 41, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 42, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 43, '0000-00-00', 127, '0000-00-00'),
(2, '2016-2017', '2016-08-22', '2016-08-22', '2016-09-23', '2016-10-21', 43, '2016-10-24', '2017-10-26', '2016-12-02', '2017-01-13', 40, '2017-01-16', '2017-01-19', '2017-02-17', '2017-03-24', 44, '2017-03-27', '2017-03-29', '2017-04-28', '2017-05-25', 43, '2017-05-25', 127, '2017-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dob` date NOT NULL,
  `grade` enum('1','2','3','4','5','6','7','8','9','10','11','12','K') NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `person_id`, `dob`, `grade`) VALUES
(1, 1, '1999-01-16', '12'),
(2, 10, '1999-01-15', '12'),
(3, 25, '1996-04-26', '9');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` tinytext NOT NULL,
  `grade_type` enum('100','PF') NOT NULL DEFAULT '100',
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `title`, `description`, `grade_type`) VALUES
(1, 'Computer I', '', '100'),
(2, 'Economics', '', '100'),
(3, 'Chemistry', '', '100'),
(4, 'English and Literature', '', '100'),
(5, 'French 3', '', '100'),
(6, 'Algebra II', '', '100'),
(7, 'U.S. Government', '', '100'),
(8, 'Health', '', '100'),
(9, 'Bible', '', '100'),
(10, 'P.E.', '', 'PF'),
(11, 'Underwater Basket Weaving ', '', 'PF'),
(12, 'Algebra I', '', '100'),
(13, 'French I', '', '100'),
(14, 'French II', '', '100'),
(15, 'American History', '', '100'),
(16, 'Texas History ', '', '100'),
(17, 'World History', '', '100'),
(18, 'Physics', '', '100'),
(19, 'Biology ', '', '100'),
(20, 'Study Hall', '', 'PF'),
(21, 'Home Room', '', 'PF'),
(22, 'Choir', '', '100'),
(23, 'Piano', '', '100'),
(24, 'Band', '', '100'),
(25, 'Music Theory ', '', '100'),
(26, 'Pre-Calculus', '', '100'),
(27, 'Reading ', '', '100'),
(28, 'Writing', '', '100'),
(29, 'Math', '', '100'),
(30, 'Spanish I', '', '100'),
(31, 'Spanish II', '', '100'),
(32, 'Spanish III', '', '100'),
(33, 'Latin', '', '100'),
(34, 'Geometry ', '', '100');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `person_id`, `start_date`) VALUES
(1, 3, '0000-00-00'),
(2, 4, '0000-00-00'),
(3, 9, '0000-00-00'),
(4, 5, '0000-00-00'),
(5, 6, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE IF NOT EXISTS `telephone` (
  `telephone_id` int(10) unsigned NOT NULL,
  `country_code` enum('1','86','81','82','44','52') NOT NULL DEFAULT '1',
  `telephone_number` varchar(15) NOT NULL,
  `created_at` datetime null, 
  `updated_at` datetime null
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`telephone_id`, `country_code`, `telephone_number`) VALUES
(1, '1', '9724713207'),
(2, '1', '8175048980');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `school_year_num` (`school_year_id`),
  ADD KEY `student_num` (`student_num`);

--
-- Indexes for table `class_head`
--
ALTER TABLE `class_head`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `subject_num` (`subject_id`),
  ADD KEY `school_year_num` (`school_year_id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`class_student_id`) USING BTREE,
  ADD KEY `class_num` (`class_id`) USING BTREE,
  ADD KEY `student_num` (`student_id`) USING BTREE;

--
-- Indexes for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD PRIMARY KEY (`class_teacher_id`),
  ADD KEY `teacher_num` (`teacher_id`),
  ADD KEY `class_num` (`class_id`) USING BTREE;

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `grade` (`school_year_id`,`grading_period`,`class_id`,`student_id`) USING BTREE,
  ADD KEY `school_year_num` (`school_year_id`),
  ADD KEY `class_num` (`class_id`),
  ADD KEY `student_num` (`student_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_address`
--
ALTER TABLE `person_address`
  ADD PRIMARY KEY (`person_adress_id`),
  ADD KEY `person_num` (`person_id`),
  ADD KEY `adress_num` (`adress_id`);

--
-- Indexes for table `person_telephone`
--
ALTER TABLE `person_telephone`
  ADD PRIMARY KEY (`person_telephone_number_id`),
  ADD KEY `person_num` (`person_id`),
  ADD KEY `telephone_number_num` (`telephone_number_id`);

--
-- Indexes for table `report_card_head`
--
ALTER TABLE `report_card_head`
  ADD PRIMARY KEY (`report_card_id`),
  ADD KEY `student_num` (`student_id`),
  ADD KEY `school_year_num` (`school_year_id`);

--
-- Indexes for table `report_card_subject_line`
--
ALTER TABLE `report_card_subject_line`
  ADD PRIMARY KEY (`report_card_id`,`student_id`,`school_year_id`,`day`,`subject_id`),
  ADD KEY `student_num` (`student_id`),
  ADD KEY `school_year_num` (`school_year_id`),
  ADD KEY `subject_num` (`subject_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `person_num` (`person_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `person_num` (`person_id`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`telephone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `class_head`
--
ALTER TABLE `class_head`
  MODIFY `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `class_student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `class_teachers`
--
ALTER TABLE `class_teachers`
  MODIFY `class_teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `person_address`
--
ALTER TABLE `person_address`
  MODIFY `person_adress_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `person_telephone`
--
ALTER TABLE `person_telephone`
  MODIFY `person_telephone_number_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_card_head`
--
ALTER TABLE `report_card_head`
  MODIFY `report_card_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
  MODIFY `telephone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`school_year_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_num`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `class_head`
--
ALTER TABLE `class_head`
  ADD CONSTRAINT `class_head_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `class_head_ibfk_2` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`school_year_id`);

--
-- Constraints for table `class_students`
--
ALTER TABLE `class_students`
  ADD CONSTRAINT `class_students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_head` (`class_id`),
  ADD CONSTRAINT `class_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `class_teachers`
--
ALTER TABLE `class_teachers`
  ADD CONSTRAINT `class_teachers_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_head` (`class_id`),
  ADD CONSTRAINT `class_teachers_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`school_year_id`),
  ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class_head` (`class_id`),
  ADD CONSTRAINT `grade_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `person_address`
--
ALTER TABLE `person_address`
  ADD CONSTRAINT `person_address_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `person_address_ibfk_2` FOREIGN KEY (`adress_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `person_telephone`
--
ALTER TABLE `person_telephone`
  ADD CONSTRAINT `person_telephone_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `person_telephone_ibfk_2` FOREIGN KEY (`telephone_number_id`) REFERENCES `telephone` (`telephone_id`);

--
-- Constraints for table `report_card_head`
--
ALTER TABLE `report_card_head`
  ADD CONSTRAINT `report_card_head_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `report_card_head_ibfk_2` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`school_year_id`);

--
-- Constraints for table `report_card_subject_line`
--
ALTER TABLE `report_card_subject_line`
  ADD CONSTRAINT `report_card_subject_line_ibfk_1` FOREIGN KEY (`report_card_id`) REFERENCES `report_card_head` (`report_card_id`),
  ADD CONSTRAINT `report_card_subject_line_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `report_card_subject_line_ibfk_3` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`school_year_id`),
  ADD CONSTRAINT `report_card_subject_line_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
