-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 09:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `contestants`
--

CREATE TABLE `contestants` (
  `contestant_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `contestant_ctr` int(11) NOT NULL,
  `status` text NOT NULL,
  `txt_code` text NOT NULL,
  `rand_code` int(15) NOT NULL,
  `txtPollScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contestants`
--

INSERT INTO `contestants` (`contestant_id`, `fullname`, `subevent_id`, `contestant_ctr`, `status`, `txt_code`, `rand_code`, `txtPollScore`) VALUES
(5, 'Contestant 101', 2, 1, 'finish', '', 829106, 0),
(6, 'Contestant 102', 2, 2, 'finish', '', 314095, 0),
(7, 'Contestant 103', 2, 3, 'finish', '', 8021723, 0),
(8, 'Contestant 104', 2, 4, 'finish', '', 8021724, 0),
(9, 'Contestant 105', 2, 5, 'finish', '', 8021725, 0),
(10, 'Contestant 106', 2, 6, 'finish', '', 8021726, 0),
(11, 'basteen', 6, 1, '', '', 132511, 0),
(12, 'yt86', 6, 2, '', '', 705311, 0),
(13, 'kathir', 8, 1, 'finish', '', 338935, 0),
(14, 'anu', 8, 2, 'finish', '', 383338, 0),
(19, 'rajesh1001', 4, 1, 'finish', '', 0, 0),
(20, 'kamalesh1002', 4, 2, 'finish', '', 0, 0),
(21, 'brightan', 4, 3, 'finish', '', 0, 0),
(22, 'kiran1004', 4, 4, 'finish', '', 0, 0),
(23, 'thiru1005', 4, 5, 'finish', '', 0, 0),
(24, 'raj1031', 11, 1, '', '', 892360, 0),
(25, 'kennedy1032', 11, 2, '', '', 661743, 0),
(26, 'vengatesh1033', 11, 3, '', '', 7369843, 0),
(27, 'rishi1034', 11, 4, '', '', 7369844, 0),
(28, 'manoj20csc100', 11, 5, '', '', 7369845, 0),
(29, 'tamil1051', 13, 1, '', '', 335737, 0),
(30, 'nitheesh1053', 13, 2, '', '', 612739, 0),
(31, 'jenix1054', 13, 3, '', '', 1221743, 0),
(32, 'veera1055', 13, 4, '', '', 1221744, 0),
(33, 'vel1056', 13, 5, '', '', 1221745, 0),
(34, 'kannan1052', 13, 6, '', '', 1221746, 0);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `criteria_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `criteria` text NOT NULL,
  `percentage` int(11) NOT NULL,
  `criteria_ctr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteria_id`, `subevent_id`, `criteria`, `percentage`, `criteria_ctr`) VALUES
(3, 2, 'Criteria 101', 10, 1),
(4, 2, 'Criteria 102', 30, 2),
(5, 2, 'Criteria 103', 20, 3),
(6, 2, 'Criteria 104', 40, 4),
(7, 6, 'play skill', 50, 1),
(8, 6, 'killing skill', 50, 2),
(9, 8, 'game play', 50, 1),
(10, 8, 'most kill', 50, 2),
(11, 4, 'spot Answering', 50, 1),
(12, 4, 'Accuracy', 50, 2),
(13, 11, 'Voice Effect', 50, 1),
(14, 11, 'Floe Fear', 50, 2),
(15, 13, 'tasty', 50, 1),
(16, 13, 'product', 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `participents` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `participents`, `img_link`, `type_id`) VALUES
(5, 'Pubg', 1, 'images/pubg.jpg', 2),
(6, 'Counter-Strike', 1, 'images/counter.jpg\r\n', 2),
(7, 'Fashion-Show', 1, 'images/onstage.jpg', 3),
(8, 'Dance', 0, 'images/dance.jpg', 3),
(9, 'Singing', 0, 'images/sing.jpg', 3),
(10, 'Svit-Idol', 0, 'images/idol.jpg', 3),
(11, 'Cooking-Without-Fire', 0, 'images/cook.jpg', 4),
(13, 'Mehandi', 0, 'image/mehandi.jpg', 4),
(14, 'Rangoli', 0, 'images/cs03.jpg', 4),
(49, 'Technical Quiz', 0, 'images/quiz.png', 1),
(50, 'FREE FIRE', 0, 'images/pubg.jpg', 2),
(55, 'Competitive Coding', 0, 'images/coding.jpg', 1),
(56, 'Search It', 0, 'images/search_it.jpg', 1),
(70, 'cod', 0, 'images/counter.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(3, '2023-08-04', '11.00am', '136 Room'),
(4, '2023-08-04', '9.30am', '020 Lab'),
(5, '2023-08-04', '10.00am', 'Ug Lab'),
(6, '2023-08-04', '11.00am', '902 room'),
(7, '2023-08-04', '9.30pm', 'Indoor Stadium'),
(8, '2023-08-04', '7.00pm', 'Indoor Stadium'),
(9, '2023-08-04', '5.00pm', 'Indoor stadium'),
(10, '2023-08-04', '6.00pm', 'Indoor Stadium'),
(11, '2023-08-04', '10.30am', '538 Room'),
(13, '2023-08-04', '3pm', 'Da Hall'),
(14, '0000-00-00', '2.00pm', 'MotherTherasha Hall'),
(49, '2023-08-05', '10.00 am', 'CS SMART CLASS'),
(50, '2023-08-04', '10.00 am', 'DA HALL'),
(55, '2023-08-04', '10.00 am', 'AAC UG LAB'),
(56, '2023-08-05', '10.00 am', 'ug lab'),
(70, '2023-04-08', '10.00 am', 'AAC UG LAB');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(10) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'On Stage Events'),
(4, 'Off Stage Events');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `judge_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `judge_ctr` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `code` varchar(6) NOT NULL,
  `jtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`judge_id`, `subevent_id`, `judge_ctr`, `fullname`, `code`, `jtype`) VALUES
(4, 2, 1, 'Judge 101', 'zwr37i', ''),
(5, 2, 2, 'Judge 102', 'yy6aaj', ''),
(6, 2, 3, 'Judge 103', 'hx1ixu', ''),
(7, 2, 4, 'Judge 104', 'pzrun4', ''),
(8, 6, 1, 'Mr.Manoj Prabakaran', 'qz0o72', ''),
(9, 6, 2, 'ugin', '3ybqvg', ''),
(10, 8, 1, 'Mr.Manoj Prabakaran', 'aouxcu', ''),
(11, 8, 2, 'mariya praveen', 'fm7ve1', ''),
(12, 4, 1, 'Mrs.V.Rani', '1704cq', ''),
(13, 4, 2, 'Mrs.Annie', 'bz1r57', ''),
(14, 11, 1, 'Mrs.I.Juliet Shanthi', 'n657zp', ''),
(15, 11, 2, 'Mr.Suriya', 'mnhasm', ''),
(16, 13, 1, 'Mr.Charles', 'au1ga6', ''),
(17, 13, 2, 'Hensan', 'vnx7a7', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_event`
--

CREATE TABLE `main_event` (
  `mainevent_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `sy` varchar(9) NOT NULL,
  `date_start` text NOT NULL,
  `date_end` text NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_event`
--

INSERT INTO `main_event` (`mainevent_id`, `event_name`, `status`, `organizer_id`, `sy`, `date_start`, `date_end`, `place`) VALUES
(4, 'Technical Event', 'activated', 24, '2023', '2023-03-01', '2023-03-02', 'DA Hall'),
(5, 'Gaming Event', 'deactivated', 24, '2023', '2023-08-04', '2023-08-05', 'DA Hall'),
(6, 'On-Stage Event', 'deactivated', 24, '2023', '2023-08-04', '2023-08-05', 'Indoor Stadium'),
(7, 'Off-Stage Event', 'activated', 24, '2023', '2023-08-04', '2023-08-05', 'AV Hall,GanaRathinam Hall');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` varchar(10) DEFAULT NULL,
  `ReceiveTime` varchar(10) DEFAULT NULL,
  `MessageFrom` bigint(12) DEFAULT NULL,
  `MessageTo` varchar(10) DEFAULT NULL,
  `SMSC` varchar(10) DEFAULT NULL,
  `MessageText` varchar(4) DEFAULT NULL,
  `MessageType` varchar(10) DEFAULT NULL,
  `MessagePDU` varchar(10) DEFAULT NULL,
  `Gateway` varchar(10) DEFAULT NULL,
  `UserId` varchar(10) DEFAULT NULL,
  `sendStatus` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `organizer_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `pnum` varchar(15) NOT NULL,
  `access` varchar(25) NOT NULL,
  `org_id` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `company_address` varchar(55) NOT NULL,
  `company_logo` varchar(55) NOT NULL,
  `company_telephone` varchar(55) NOT NULL,
  `company_email` varchar(55) NOT NULL,
  `company_website` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`organizer_id`, `fname`, `mname`, `lname`, `username`, `password`, `email`, `pnum`, `access`, `org_id`, `status`, `company_name`, `company_address`, `company_logo`, `company_telephone`, `company_email`, `company_website`) VALUES
(24, 'basteen', 'sant', 'A', 'basteen', '20csc109', 'santhiyagubasteen@gmail.com', '9345318251', 'Organizer', '', 'offline', 'Arul Anandar College', 'Karumathur', '20466-1661186905306.jpg', '9345318251', 'basstee@gmail.com', 'aactni.edu.in'),
(25, 'deepak', 'ra', 'vijay', 'deepak', '1307', '', '', 'Organizer', '', 'offline', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

CREATE TABLE `participent` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `college` varchar(20) NOT NULL,
  `event_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`, `event_id`) VALUES
('100', 'KATHIR', 'CS', 3, 'kathiresan.t112@gmail.com', '1234567890', 'AAC', '5'),
('1001', 'rajesh', 'mca', 2, 'rajesh@gmail.com', '5678954324', 'svn ', '49'),
('1002', 'Kamalesh', 'mca', 2, 'kamalesh@gmail.com', '5678954324', 'ThiyagaRaja ', '49'),
('1003', 'Brightan', 'csc', 1, 'bright@gmail.com', '5678954324', 'svn', '49'),
('1004', 'Kiran', 'csc', 2, 'bright@gmail.com', '5678954324', 'mannar ', '49'),
('1005', 'Thiru', 'csc', 3, 'Thiru@gmail.com', '5678954324', 'svn ', '49'),
('1031', 'raj', 'csc', 3, 'raj@gmail.com', '9324567831', 'gtn', '9'),
('1032', 'kennedy', 'csc', 2, 'kennedy@gmail.com', '9324567854', 'PMT', '9'),
('1033', 'vengatesh', 'csc', 3, 'venkey@gmail.com', '93245676453', 'ThiyagaRaja ', '9'),
('1034', 'Rishi', 'mca', 2, 'risi@gmail.com', '9324567643', 'mannar', '9'),
('1051', 'tamil', 'mca', 2, 'tamil@gmail.com', '1234567890', 'gtn', '11'),
('1053', 'nitheesh', 'mca', 2, 'nitheesh@gmail.com', '1234567890', 'PMT', '11'),
('1234', 'deepak ra vijay', 'mca', 2, 'santhiyagubasteen@gmail.com', '09345318251', 'PMT', '49'),
('1VA17CS005', 'Anu', 'CSE', 5, 'annapoornaba@gmail.com', '8123300011', 'svit', '5'),
('1VA17CS012', 'BHAVANA', 'cse', 5, 'BHAVANA@GMAIL.COM', '9934736623', 'Svit', ''),
('1VA17CS022', 'Kavya', 'cse', 5, 'Kavya@gmail.com', '7888387323', 'svit', '1'),
('1VA17CS025', 'Mythri', 'ISE', 5, 'mythri@saividya.ac.in', '8998848488', 'svit', '2'),
('1VA17CS034', 'Prajwal', 'cse', 5, 'prajwal@gmail.com', '9858787438', 'svit', '3'),
('1VA17IS045', 'Prathiksha', 'ISE', 5, 'prathi@gmail.com', '7897854345', 'svit', '15'),
('20csc100', 'manoj', 'mca', 2, '2@gmail.com', '9345318231', 'aac', '9'),
('20csc109', 'Basteen santhiyagu', 'csc', 3, 'santhiyagubasteen@gmail.com', '9345318251', 'AAC', '50'),
('20csc123', 'yt87', 'csc', 3, 'santhiyagubasteen@gmail.com', '9345318251', 'aac', '50'),
('20csc160', 'deepak vijay', 'csc', 3, 'santhiyagubasteen@gmail.com', '9345318251', 'gtn', '4');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `payername` varchar(100) NOT NULL,
  `transactionid` varchar(15) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `phone` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `usn`, `payername`, `transactionid`, `amount`, `phone`) VALUES
(1, '20csc109', 'basteen', '2345678899000', '150', 2147483647),
(2, 'yt86', 'kiruba', '1234567890123', '150', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `rs_id` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `total_rank` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank_system`
--

INSERT INTO `rank_system` (`rs_id`, `subevent_id`, `contestant_id`, `total_rank`) VALUES
(1, '2', '5', '9.0'),
(2, '2', '6', '6.0'),
(3, '2', '7', '10.0'),
(4, '2', '8', '7.0'),
(5, '2', '9', '7.0'),
(6, '2', '10', '3.0'),
(7, '8', '13', '3.0'),
(8, '8', '14', '3.0'),
(9, '4', '19', '6.0'),
(10, '4', '20', '6.0'),
(11, '4', '21', '7.0'),
(12, '4', '22', '5.0'),
(13, '4', '23', '6.0');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`rid`, `usn`, `event_id`) VALUES
(2, '1VA17CS012', 4),
(4, '1VA17CS005', 3),
(5, '1VA17CS012', 3),
(6, '1VA17CS012', 5),
(8, '1VA17CS005', 6),
(10, '1VA17CS034', 7);

--
-- Triggers `registered`
--
DELIMITER $$
CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW update events
set events.participents=events.participents+1
WHERE events.event_id=new.event_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(3, 'Suparna.A', '9956436456', 3),
(4, 'Geetha', '9956436789', 4),
(5, 'Radha', '9956436101', 5),
(6, 'Usha.D.R', '9123436610', 6),
(7, 'Deeksha.G', '9456436610', 7),
(8, 'Deeksha.Patgar', '9789436610', 8),
(9, 'Shubha Naik', '9956412310', 9),
(10, 'Sairaj Patgar', '9956445610', 10),
(11, 'Reshma Hittalmakhi', '9956473510', 11),
(13, 'Sushma', '8948476464', 13),
(14, 'Bhavya', NULL, 14),
(49, 'Mrs.T.Shema ', NULL, 49),
(50, 'Mr.Manoj', NULL, 50),
(55, 'Mr.Manoj', NULL, 55),
(56, 'Mrs.Annie ', NULL, 56),
(70, 'Mrs.Annie ', NULL, 70);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(3, 'Arjun.A', '8956436456', 3),
(4, 'Sanjana', '6956436789', 4),
(5, 'NIkhil Bhat', '7956436101', 5),
(6, 'Pruthvi P', '8123436610', 6),
(7, 'Anshuman.A.N', '6456436610', 7),
(8, 'Abhinandhan.A', '7789436610', 8),
(9, 'Suraj Upadhya', '7956412310', 9),
(10, 'Imran Khalil Khan', '7956445610', 10),
(11, 'Mythri', '6956473510', 11),
(13, 'Kavya', '8994874384', 13),
(14, 'Rishitha', NULL, 14),
(49, 'Abinash III CS', NULL, 49),
(50, 'Wilson', '9345205305', 50),
(55, 'Wilson', NULL, 55),
(56, 'Jananii', NULL, 56),
(70, 'Ajith', NULL, 70);

-- --------------------------------------------------------

--
-- Table structure for table `sub_event`
--

CREATE TABLE `sub_event` (
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `eventdate` text NOT NULL,
  `eventtime` text NOT NULL,
  `place` text NOT NULL,
  `txtpoll_status` text NOT NULL,
  `view` varchar(15) NOT NULL,
  `txtpollview` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_event`
--

INSERT INTO `sub_event` (`subevent_id`, `mainevent_id`, `organizer_id`, `event_name`, `status`, `eventdate`, `eventtime`, `place`, `txtpoll_status`, `view`, `txtpollview`) VALUES
(4, 4, 24, 'Technical - Quiz', 'activated', '2023-08-04', '11.00 am', '136 room', '', '', ''),
(5, 4, 24, 'Competitive - Coding', 'deactivated', '2023-08-04', '09.30 am', '020 Lab', '', '', ''),
(6, 5, 24, 'Pubg', 'deactivated', '82023-01-04', '10.00 am', '121 lab', '', '', ''),
(7, 5, 24, 'Counter - Strike', 'deactivated', '2023-08-04', '11.00 am', '122 lab', '', '', ''),
(8, 5, 24, 'Free Fire', 'deactivated', '2023-08-04', '10.00 am', ' DA Hall', '', '', ''),
(9, 6, 24, 'Fashion - Show', 'deactivated', '2023-08-04', '09.30 am', 'Indoor Stadium', '', '', ''),
(10, 6, 24, 'Dance', 'deactivated', '2023-08-05', '03.00 pm', 'Indoor stadium', '', '', ''),
(11, 6, 24, 'Singing', 'deactivated', '2023-08-05', '04.00 pm', 'Indoor Stadium', '', '', ''),
(12, 6, 24, 'Svit - Idol', 'deactivated', '2023-08-04', '04.30 pm', 'Indoor Stadium', '', '', ''),
(13, 7, 24, 'Cooking Without Fire', 'activated', '2023-08-05', '09.30 am', 'AV Hall', '', '', ''),
(14, 7, 24, 'Short Movie', 'deactivated', '2023-08-05', '11.00 am', 'GANA Rathinam Hall', '', '', ''),
(15, 7, 24, 'Mehandi', 'deactivated', '2023-08-05', '10.00 am', 'AV Hall', '', '', ''),
(16, 7, 24, 'Rangoli', 'deactivated', '2023-08-05', '10.00 am', 'Britto Block Road', '', '', ''),
(17, 4, 24, 'search-it', 'deactivated', '2023-08-04', '11.00 am', 'Da hall', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_results`
--

CREATE TABLE `sub_results` (
  `subresult_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `total_score` decimal(11,1) NOT NULL,
  `deduction` int(11) NOT NULL,
  `criteria_ctr1` decimal(11,1) NOT NULL,
  `criteria_ctr2` decimal(11,1) NOT NULL,
  `criteria_ctr3` decimal(11,1) NOT NULL,
  `criteria_ctr4` decimal(11,1) NOT NULL,
  `criteria_ctr5` decimal(11,1) NOT NULL,
  `criteria_ctr6` decimal(11,1) NOT NULL,
  `criteria_ctr7` decimal(11,1) NOT NULL,
  `criteria_ctr8` decimal(11,1) NOT NULL,
  `criteria_ctr9` decimal(11,1) NOT NULL,
  `criteria_ctr10` decimal(11,1) NOT NULL,
  `comments` text NOT NULL,
  `rank` varchar(11) NOT NULL,
  `judge_rank_stat` varchar(15) NOT NULL,
  `place_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_results`
--

INSERT INTO `sub_results` (`subresult_id`, `subevent_id`, `mainevent_id`, `contestant_id`, `judge_id`, `total_score`, `deduction`, `criteria_ctr1`, `criteria_ctr2`, `criteria_ctr3`, `criteria_ctr4`, `criteria_ctr5`, `criteria_ctr6`, `criteria_ctr7`, `criteria_ctr8`, `criteria_ctr9`, `criteria_ctr10`, `comments`, `rank`, `judge_rank_stat`, `place_title`) VALUES
(1, 2, 2, 5, 4, '76.0', 0, '10.0', '8.5', '18.5', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'Sample Comment', '6', '', '5th'),
(2, 2, 2, 6, 4, '89.5', 0, '8.5', '27.0', '17.5', '36.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'test', '5', '', '2nd'),
(3, 2, 2, 7, 4, '93.5', 0, '9.0', '29.5', '18.0', '37.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '6th'),
(4, 2, 2, 8, 4, '97.5', 0, '10.0', '28.5', '19.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'Sample', '2', '', '3rd'),
(5, 2, 2, 9, 4, '95.0', 0, '9.5', '29.0', '18.0', '38.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '4th'),
(6, 2, 2, 10, 4, '99.0', 0, '9.5', '29.5', '20.0', '40.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '1st'),
(7, 2, 2, 5, 5, '95.0', 0, '10.0', '29.0', '16.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '5th'),
(8, 2, 2, 6, 5, '96.0', 0, '10.0', '29.0', '18.5', '38.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '2nd'),
(9, 2, 2, 7, 5, '84.5', 0, '9.5', '28.0', '8.0', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '6', '', '6th'),
(10, 2, 2, 8, 5, '94.0', 0, '9.0', '28.0', '19.0', '38.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '5', '', '3rd'),
(11, 2, 2, 9, 5, '94.5', 0, '8.0', '28.0', '19.5', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '4th'),
(12, 2, 2, 10, 5, '95.5', 0, '9.5', '29.0', '17.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '2', '', '1st'),
(13, 8, 5, 13, 10, '71.0', 0, '34.5', '36.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'good', '1', '', '1st'),
(14, 8, 5, 14, 10, '25.0', 0, '9.0', '16.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'beeter', '2', '', '2nd'),
(15, 8, 5, 13, 11, '29.5', 0, '23.5', '6.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'good', '2', '', '1st'),
(16, 8, 5, 14, 11, '45.5', 0, '5.5', '40.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '2nd'),
(17, 4, 4, 19, 12, '34.0', 0, '8.5', '25.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '2nd'),
(18, 4, 4, 20, 12, '14.0', 0, '7.0', '7.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '5', '', '3rd'),
(19, 4, 4, 21, 12, '68.5', 0, '31.0', '37.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '5th'),
(20, 4, 4, 22, 12, '73.5', 0, '30.5', '43.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '2', '', '1st'),
(21, 4, 4, 23, 12, '82.0', 0, '38.5', '43.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '4th'),
(22, 4, 4, 19, 13, '75.5', 0, '42.5', '33.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '2', '', '2nd'),
(23, 4, 4, 20, 13, '80.5', 0, '45.0', '35.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '3rd'),
(24, 4, 4, 21, 13, '67.0', 0, '40.0', '27.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '5th'),
(25, 4, 4, 22, 13, '70.5', 0, '36.5', '34.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '1st'),
(26, 4, 4, 23, 13, '63.5', 0, '32.5', '31.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '5', '', '4th');

-- --------------------------------------------------------

--
-- Table structure for table `textpoll`
--

CREATE TABLE `textpoll` (
  `textpoll_id` int(11) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `text_vote` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contestants`
--
ALTER TABLE `contestants`
  ADD PRIMARY KEY (`contestant_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteria_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `main_event`
--
ALTER TABLE `main_event`
  ADD PRIMARY KEY (`mainevent_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `participent`
--
ALTER TABLE `participent`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank_system`
--
ALTER TABLE `rank_system`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sub_event`
--
ALTER TABLE `sub_event`
  ADD PRIMARY KEY (`subevent_id`);

--
-- Indexes for table `sub_results`
--
ALTER TABLE `sub_results`
  ADD PRIMARY KEY (`subresult_id`);

--
-- Indexes for table `textpoll`
--
ALTER TABLE `textpoll`
  ADD PRIMARY KEY (`textpoll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contestants`
--
ALTER TABLE `contestants`
  MODIFY `contestant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `main_event`
--
ALTER TABLE `main_event`
  MODIFY `mainevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sub_event`
--
ALTER TABLE `sub_event`
  MODIFY `subevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_results`
--
ALTER TABLE `sub_results`
  MODIFY `subresult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `textpoll`
--
ALTER TABLE `textpoll`
  MODIFY `textpoll_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
