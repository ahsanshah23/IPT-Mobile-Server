-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 09:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipt-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `fyp1_final_evaluation`
--

CREATE TABLE `fyp1_final_evaluation` (
  `ID` int(11) NOT NULL,
  `Project_title` varchar(100) NOT NULL,
  `leader_name` varchar(50) NOT NULL,
  `member2_name` varchar(50) NOT NULL,
  `member3_name` varchar(50) NOT NULL,
  `leader_email` varchar(100) NOT NULL,
  `member2_email` varchar(100) NOT NULL,
  `member3_email` varchar(100) DEFAULT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `cosupervisor_email` varchar(100) DEFAULT NULL,
  `Deliverable1_Name` varchar(100) NOT NULL,
  `Deliverable2_Name` varchar(100) DEFAULT NULL,
  `Deliverable3_Name` varchar(100) DEFAULT NULL,
  `Deliverable4_Name` varchar(100) DEFAULT NULL,
  `Deliverable5_Name` varchar(100) DEFAULT NULL,
  `Deliverable1_Completed` int(100) NOT NULL,
  `Deliverable2_Completed` int(100) DEFAULT NULL,
  `Deliverable3_Completed` int(100) DEFAULT NULL,
  `Deliverable4_Completed` int(100) DEFAULT NULL,
  `Deliverable5_Completed` int(100) DEFAULT NULL,
  `FYP2_Deliverables` varchar(500) NOT NULL,
  `Member1_Marks` int(100) NOT NULL,
  `Member2_Marks` int(100) NOT NULL,
  `Member3_Marks` int(100) DEFAULT NULL,
  `Jury1_Name` varchar(100) NOT NULL,
  `Jury2_Name` varchar(100) DEFAULT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp1_final_evaluation`
--

INSERT INTO `fyp1_final_evaluation` (`ID`, `Project_title`, `leader_name`, `member2_name`, `member3_name`, `leader_email`, `member2_email`, `member3_email`, `supervisor_email`, `cosupervisor_email`, `Deliverable1_Name`, `Deliverable2_Name`, `Deliverable3_Name`, `Deliverable4_Name`, `Deliverable5_Name`, `Deliverable1_Completed`, `Deliverable2_Completed`, `Deliverable3_Completed`, `Deliverable4_Completed`, `Deliverable5_Completed`, `FYP2_Deliverables`, `Member1_Marks`, `Member2_Marks`, `Member3_Marks`, `Jury1_Name`, `Jury2_Name`, `submitted_by`) VALUES
(6, 'title', 'leadername', 'member2name', 'member3name', 'leaderemail', 'member2email', 'member3email', 'supervisor', 'cosupervisor', 'deliverable1detail', 'undefined', 'undefined', 'deliverable4detail', 'deliverable5detail', 2, 3, 5, 3, 5, 'fyp2deliverables', 0, 0, 0, 'evaluator', 'coevaluator', ''),
(7, 'A ', 'A ', 'A ', 'A ', 'A ', 'A', 'A ', 'A ', 'A ', 'A ', 'A', 'A ', 'A ', 'A', 2, 3, 4, 5, 6, 'Jdjdu ', 5, 5, 5, 'G ', 'J ', 'supervisor@g.com'),
(8, 'Hello ', 'A ', 'A ', 'A ', 'leader@g.com  ', 'member2@g.com ', 'member3@g.com  ', 'A ', 'A ', 'A ', 'A', 'A ', 'A ', 'A', 3, 3, 3, 3, 3, 'Gagahha ', 20, 30, 100, 'A ', 'A ', 'supervisor@g.com'),
(9, 'Hello ', 'A ', 'A ', 'A ', 'leader@g.com  ', 'member2@g.com ', 'member3@g.com  ', 'A ', 'A ', 'A ', 'A', 'A ', 'A ', 'A', 3, 3, 3, 3, 3, 'Gagahha ', 20, 30, 100, 'A ', 'A ', 'supervisor@g.com'),
(10, 'Hello ', 'A ', 'A ', 'A ', 'leader@g.com  ', 'member2@g.com ', 'member3@g.com  ', 'A ', 'A ', 'A ', 'A', 'A ', 'A ', 'A', 3, 3, 3, 3, 3, 'Gagahha ', 20, 30, 100, 'A ', 'A ', 'supervisor@g.com'),
(11, 'Hello  ', ' ', ' ', ' ', 'S@g.com   ', 'h@g.com ', 'h@g.com  ', 'supervisor@g.com   ', 'teacher2@g.com ', ' ', '', ' ', ' ', '', 0, 0, 0, 0, 0, ' ', 0, 0, 0, ' ', ' ', 'supervisor@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp1_mid_evaluation`
--

CREATE TABLE `fyp1_mid_evaluation` (
  `ID` int(11) NOT NULL,
  `Project_Title` varchar(100) NOT NULL,
  `leader_email` varchar(100) NOT NULL,
  `leader_name` varchar(100) NOT NULL,
  `member2_email` varchar(50) NOT NULL,
  `member2_name` varchar(50) NOT NULL,
  `member3_email` varchar(50) NOT NULL,
  `member3_name` varchar(50) NOT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `cosupervisor_email` varchar(100) DEFAULT NULL,
  `Project_Status` varchar(100) NOT NULL,
  `Criteria1_Marks` int(100) NOT NULL,
  `Criteria2_Marks` int(100) NOT NULL,
  `Criteria3_Marks` int(100) NOT NULL,
  `Criteria4_Marks` int(100) NOT NULL,
  `Criteria5_Marks` int(100) NOT NULL,
  `Criteria6_Marks` int(100) NOT NULL,
  `Deliverable1` varchar(100) NOT NULL,
  `Deliverable2` varchar(100) DEFAULT NULL,
  `Deliverable3` varchar(100) DEFAULT NULL,
  `Deliverable4` varchar(100) DEFAULT NULL,
  `Deliverable5` varchar(100) DEFAULT NULL,
  `Recommended_Changes` varchar(500) DEFAULT NULL,
  `Comments_To_FYP_Committee` varchar(500) DEFAULT NULL,
  `Evaluator1_Name` varchar(100) NOT NULL,
  `Evaluator2_Name` varchar(100) DEFAULT NULL,
  `Supervisor_Comments` varchar(500) DEFAULT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp1_mid_evaluation`
--

INSERT INTO `fyp1_mid_evaluation` (`ID`, `Project_Title`, `leader_email`, `leader_name`, `member2_email`, `member2_name`, `member3_email`, `member3_name`, `supervisor_email`, `cosupervisor_email`, `Project_Status`, `Criteria1_Marks`, `Criteria2_Marks`, `Criteria3_Marks`, `Criteria4_Marks`, `Criteria5_Marks`, `Criteria6_Marks`, `Deliverable1`, `Deliverable2`, `Deliverable3`, `Deliverable4`, `Deliverable5`, `Recommended_Changes`, `Comments_To_FYP_Committee`, `Evaluator1_Name`, `Evaluator2_Name`, `Supervisor_Comments`, `submitted_by`) VALUES
(10, 'Ipt  ', 'leader@g.com  ', ' ', 'member2@g.com  ', ' ', 'member3@g.com  ', ' ', 'supervisor@g.com   ', 'teacher2@g.com', '', 0, 0, 0, 0, 0, 0, ' ', ' ', ' ', '', ' ', ' ', ' ', ' ', ' ', NULL, 'supervisor@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp1_proposal`
--

CREATE TABLE `fyp1_proposal` (
  `id` int(11) NOT NULL,
  `project_title` varchar(100) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `area_of_interest` varchar(100) NOT NULL,
  `abstract` varchar(5000) NOT NULL,
  `leader_email` varchar(50) NOT NULL,
  `member2_email` varchar(50) NOT NULL,
  `member3_email` varchar(50) NOT NULL,
  `leader_name` varchar(50) NOT NULL,
  `member2_name` varchar(50) NOT NULL,
  `member3_name` varchar(50) NOT NULL,
  `supervisor` varchar(50) NOT NULL,
  `cosupervisor` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp1_proposal`
--

INSERT INTO `fyp1_proposal` (`id`, `project_title`, `project_type`, `area_of_interest`, `abstract`, `leader_email`, `member2_email`, `member3_email`, `leader_name`, `member2_name`, `member3_name`, `supervisor`, `cosupervisor`, `status`, `comment`, `submitted_by`) VALUES
(13, 'Hello ', 'Experimental Based ', 'HCI ', 'Hello ', 'S@g.com  ', 'h@g.com ', 'h@g.com ', 'Sara ', 'Huzefa ', 'Osama ', 'supervisor@g.com  ', 'teacher2@g.com', '', '', ''),
(17, 'A ', 'Product Based ', 'Hahaa, ahaha, shs ', 'Sgahjajwhsbhs shsjsjjs ', 'A@g.com ', 'V@g.com ', 'C@g.com ', 'A ', 'A ', 'C ', 'supervisor@g.com  ', 'teacher2@g.com ', '', '', 'leader@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp2_final_evaluation`
--

CREATE TABLE `fyp2_final_evaluation` (
  `ID` int(11) NOT NULL,
  `Project_Title` varchar(100) NOT NULL,
  `leader_name` varchar(100) NOT NULL,
  `member2_name` varchar(100) NOT NULL,
  `member3_name` varchar(100) NOT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `cosupervisor_email` varchar(100) NOT NULL,
  `leader_email` varchar(50) NOT NULL,
  `member2_email` varchar(50) NOT NULL,
  `member3_email` varchar(50) NOT NULL,
  `leader_Marks` int(11) NOT NULL,
  `Member2_Marks` int(11) NOT NULL,
  `Member3_Marks` int(11) NOT NULL,
  `Jury1_Name` varchar(100) NOT NULL,
  `Jury2_Name` varchar(100) DEFAULT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp2_final_evaluation`
--

INSERT INTO `fyp2_final_evaluation` (`ID`, `Project_Title`, `leader_name`, `member2_name`, `member3_name`, `supervisor_email`, `cosupervisor_email`, `leader_email`, `member2_email`, `member3_email`, `leader_Marks`, `Member2_Marks`, `Member3_Marks`, `Jury1_Name`, `Jury2_Name`, `submitted_by`) VALUES
(1, 'Hello  ', 'S@g.com   ', 'h@g.com  ', 'h@g.com  ', 'supervisor@g.com   ', 'teacher2@g.com ', 'S@g.com   ', 'h@g.com  ', 'h@g.com  ', 0, 0, 0, ' ', ' ', 'supervisor@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp2_final_evaluation_external`
--

CREATE TABLE `fyp2_final_evaluation_external` (
  `ID` int(11) NOT NULL,
  `Project_Title` varchar(100) NOT NULL,
  `leader_name` varchar(100) NOT NULL,
  `member2_name` varchar(100) NOT NULL,
  `member3_name` varchar(100) NOT NULL,
  `supervisor_email` varchar(50) NOT NULL,
  `cosupervisor_email` varchar(50) NOT NULL,
  `leader_email` varchar(50) NOT NULL,
  `member2_email` varchar(50) NOT NULL,
  `member3_email` varchar(50) NOT NULL,
  `leader_Marks` int(10) NOT NULL,
  `Member2_Marks` int(10) NOT NULL,
  `Member3_Marks` int(10) NOT NULL,
  `Jury1_Name` varchar(50) NOT NULL,
  `Jury2_Name` varchar(50) NOT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp2_final_evaluation_external`
--

INSERT INTO `fyp2_final_evaluation_external` (`ID`, `Project_Title`, `leader_name`, `member2_name`, `member3_name`, `supervisor_email`, `cosupervisor_email`, `leader_email`, `member2_email`, `member3_email`, `leader_Marks`, `Member2_Marks`, `Member3_Marks`, `Jury1_Name`, `Jury2_Name`, `submitted_by`) VALUES
(29, 'Hello  ', 'S@g.com   ', 'h@g.com  ', 'h@g.com  ', 'supervisor@g.com   ', 'teacher2@g.com ', 'S@g.com   ', 'h@g.com  ', 'h@g.com  ', 0, 0, 0, ' ', ' ', 'Ayazashah@gmail.com'),
(32, 'Ipt  ', '', '', '', 'supervisor@g.com   ', 'teacher2@g.com ', 'leader@g.com  ', 'member2@g.com  ', 'member3@g.com  ', 0, 0, 0, ' ', ' ', 'Ayazashah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp2_mid_evaluation`
--

CREATE TABLE `fyp2_mid_evaluation` (
  `ID` int(11) NOT NULL,
  `Project_title` varchar(100) NOT NULL,
  `Team_Leader` varchar(100) NOT NULL,
  `Team_Member2` varchar(100) NOT NULL,
  `Team_Member3` varchar(100) DEFAULT NULL,
  `supervisor_email` varchar(50) NOT NULL,
  `cosupervisor_email` varchar(50) DEFAULT NULL,
  `Project_Progress` int(10) NOT NULL,
  `Documentation_Status` int(10) NOT NULL,
  `Progress_Comments` varchar(500) NOT NULL,
  `Evaluator1_Name` varchar(100) NOT NULL,
  `Evaluator2_Name` varchar(100) DEFAULT NULL,
  `submitted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp2_mid_evaluation`
--

INSERT INTO `fyp2_mid_evaluation` (`ID`, `Project_title`, `Team_Leader`, `Team_Member2`, `Team_Member3`, `supervisor_email`, `cosupervisor_email`, `Project_Progress`, `Documentation_Status`, `Progress_Comments`, `Evaluator1_Name`, `Evaluator2_Name`, `submitted_by`) VALUES
(1, 'Hello  ', 'S@g.com   ', 'h@g.com  ', 'h@g.com  ', 'supervisor@g.com   ', 'teacher2@g.com ', 0, 0, ' ', ' ', '', 'supervisor@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_groups`
--

CREATE TABLE `fyp_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `leaderemail` varchar(50) NOT NULL,
  `member2email` varchar(50) NOT NULL,
  `member3email` varchar(50) NOT NULL,
  `supervisor` varchar(50) NOT NULL,
  `cosupervisor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_groups`
--

INSERT INTO `fyp_groups` (`id`, `title`, `leaderemail`, `member2email`, `member3email`, `supervisor`, `cosupervisor`) VALUES
(8, 'Hello ', 'S@g.com  ', 'h@g.com ', 'h@g.com ', 'supervisor@g.com  ', 'teacher2@g.com'),
(9, 'Ipt ', 'leader@g.com ', 'member2@g.com ', 'member3@g.com ', 'supervisor@g.com  ', 'teacher2@g.com'),
(10, 'A ', 'A@g.com ', 'V@g.com ', 'C@g.com ', 'supervisor@g.com  ', 'teacher2@g.com ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` text NOT NULL,
  `fyp1_final_marks` int(11) NOT NULL,
  `fyp2_final_marks` int(11) NOT NULL,
  `fyp2_final_marks_external` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `Password`, `Role`, `fyp1_final_marks`, `fyp2_final_marks`, `fyp2_final_marks_external`) VALUES
(1, 'ahsan', 'leader@g.com', '123456', 'Student', 20, 100, 0),
(2, 'teacher', 'supervisor@g.com', '1256', 'Teacher', 0, 0, 0),
(3, 'Rabiya', 'member2@g.com', '123', 'Student', 30, 100, 0),
(4, 'Zuqan', 'member3@g.com', '123', 'Zuqan', 100, 100, 0),
(5, 'Ubaid Chawla', 'teacher2@g.com', '123', 'Teacher', 0, 0, 0),
(6, 'Ahsan', 'Ayazashah@gmail.com', '123', 'External', 0, 0, 0),
(7, 'Sara', 'S@g.com', '123', 'Student', 0, 0, 0),
(8, 'Huzefa', 'h@g.com', '123', 'Student', 0, 0, 0),
(9, 'Osama', 'o@g.com', '123', 'Student', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fyp1_final_evaluation`
--
ALTER TABLE `fyp1_final_evaluation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fyp1_mid_evaluation`
--
ALTER TABLE `fyp1_mid_evaluation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fyp1_proposal`
--
ALTER TABLE `fyp1_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fyp2_final_evaluation`
--
ALTER TABLE `fyp2_final_evaluation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fyp2_final_evaluation_external`
--
ALTER TABLE `fyp2_final_evaluation_external`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `leader_email` (`leader_email`),
  ADD UNIQUE KEY `member2_email` (`member2_email`),
  ADD UNIQUE KEY `member3_email` (`member3_email`);

--
-- Indexes for table `fyp2_mid_evaluation`
--
ALTER TABLE `fyp2_mid_evaluation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fyp_groups`
--
ALTER TABLE `fyp_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fyp1_final_evaluation`
--
ALTER TABLE `fyp1_final_evaluation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fyp1_mid_evaluation`
--
ALTER TABLE `fyp1_mid_evaluation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fyp1_proposal`
--
ALTER TABLE `fyp1_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fyp2_final_evaluation`
--
ALTER TABLE `fyp2_final_evaluation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fyp2_final_evaluation_external`
--
ALTER TABLE `fyp2_final_evaluation_external`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `fyp2_mid_evaluation`
--
ALTER TABLE `fyp2_mid_evaluation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fyp_groups`
--
ALTER TABLE `fyp_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
