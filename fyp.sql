-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2020 at 09:43 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `3211-bsse-f16`
--

DROP TABLE IF EXISTS `3211-bsse-f16`;
CREATE TABLE IF NOT EXISTS `3211-bsse-f16` (
  `Semester` int(1) NOT NULL,
  `Course_Name` varchar(255) NOT NULL,
  `Course_Grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Course_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3211-bsse-f16`
--

INSERT INTO `3211-bsse-f16` (`Semester`, `Course_Name`, `Course_Grade`) VALUES
(1, 'CS102', 'A'),
(1, 'GC102', 'B'),
(1, 'GC191', 'A'),
(1, 'CS291', 'A'),
(1, 'MATH110', 'B'),
(2, 'DLD', 'B+'),
(2, 'CP', 'B'),
(2, 'CA', 'A'),
(2, 'LA&DE', 'B+'),
(2, 'IS', 'A'),
(3, 'MATH352', 'A'),
(3, 'SE101', 'B+'),
(3, 'GC103', 'A'),
(3, 'SE203', 'A'),
(3, 'GC105', 'C+'),
(4, 'SE302', 'B+'),
(4, 'CS242', 'B'),
(4, 'CS372', 'A'),
(4, 'GC106', 'C'),
(4, 'GC151', 'A'),
(5, 'CS212', 'B+'),
(5, 'GC152', 'A'),
(5, 'SE311', 'B+'),
(5, 'SE341', 'A'),
(5, 'SE481', 'B'),
(6, 'SE331', 'B+'),
(6, 'MATH401', 'A'),
(6, 'SE471', 'B'),
(6, 'GC108', 'C'),
(6, 'IT332', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `3244-bsse-f16`
--

DROP TABLE IF EXISTS `3244-bsse-f16`;
CREATE TABLE IF NOT EXISTS `3244-bsse-f16` (
  `Semester` int(1) NOT NULL,
  `Course_Name` varchar(255) NOT NULL,
  `Course_Grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Course_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3244-bsse-f16`
--

INSERT INTO `3244-bsse-f16` (`Semester`, `Course_Name`, `Course_Grade`) VALUES
(1, 'CS102', 'B+'),
(1, 'GC102', 'B+'),
(1, 'GC191', 'B'),
(1, 'CS291', 'B'),
(1, 'MATH110', 'B'),
(2, 'DLD', 'B+'),
(2, 'CP', 'B+'),
(2, 'CA', 'B'),
(2, 'LA&DE', 'B+'),
(2, 'IS', 'A'),
(3, 'MATH352', 'C'),
(3, 'SE101', 'A'),
(3, 'GC103', 'C'),
(3, 'SE203', 'B'),
(3, 'GC105', 'B'),
(4, 'SE302', 'C'),
(4, 'CS242', 'B+'),
(4, 'CS372', 'C+'),
(4, 'GC106', 'B+'),
(4, 'GC151', 'B'),
(5, 'CS212', 'C'),
(5, 'GC152', 'B+'),
(5, 'SE311', 'B+'),
(5, 'SE341', 'C+'),
(5, 'SE481', 'B'),
(6, 'SE331', 'B'),
(6, 'MATH401', 'B'),
(6, 'SE471', 'C'),
(6, 'GC108', 'B'),
(6, 'IT332', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Reg_no` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Reg_no`, `Password`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `Semester` int(2) NOT NULL,
  `Course_Code` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Theory_Hours` int(2) NOT NULL,
  `Lab_Hours` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Semester`, `Course_Code`, `Course_Name`, `Theory_Hours`, `Lab_Hours`) VALUES
(1, 'CS102', 'ITC', 4, 0),
(1, 'CS291', 'DS', 3, 0),
(1, 'GC102', 'ENG-1', 3, 0),
(1, 'GC191', 'BE', 3, 0),
(1, 'MATH110', 'CAG', 3, 0),
(2, 'DLD', 'DLD', 3, 0),
(2, 'CP', 'CP', 3, 0),
(2, 'CA', 'CA', 3, 0),
(2, 'LA&DE', 'LA', 4, 0),
(2, 'IS', 'IS', 3, 1),
(3, 'MATH352', 'MC', 3, 0),
(3, 'SE101', 'OOP', 4, 1),
(3, 'GC103', 'UQ', 3, 0),
(3, 'SE203', 'ISE', 3, 0),
(3, 'GC105', 'AW', 3, 0),
(4, 'CS242', 'DB', 4, 1),
(4, 'CS372', 'CCN', 3, 0),
(4, 'GC106', 'IWVC', 3, 0),
(4, 'GC151', 'IF', 3, 0),
(4, 'SE302', 'SC', 3, 0),
(5, 'CS212', 'DSA', 3, 0),
(5, 'GC151', 'IF', 3, 0),
(5, 'SE311', 'SRE', 3, 0),
(5, 'SE341', 'WBAD', 3, 0),
(5, 'SE481', 'SDT', 3, 0),
(6, 'SE331', 'SDA', 3, 0),
(6, 'MATH401', 'NC', 3, 0),
(6, 'SE471', 'SQA', 3, 0),
(6, 'GC108', 'PP', 3, 0),
(6, 'IT332', 'MAD', 3, 0),
(7, 'SE472', 'ST', 3, 0),
(7, 'GC109', 'PCS', 3, 0),
(7, 'CS451', 'AI', 3, 0),
(7, 'SE461', 'SPM', 3, 0),
(7, 'SE431', 'HCI', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) DEFAULT NULL,
  `visitor` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `browser` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `visitor`, `properties`, `browser`) VALUES
(5, 'pageview', '1', '{\"page\": \"/\"}', '{\"CLO1\": 40, \"CLO2\": 35, \"Marks\": 8}'),
(3, 'pageview', '1', '{\"page\": \"/\"}', '{\"CLO1\": 60, \"CLO3\": 50, \"Marks\": 9}'),
(4, 'pageview', '1', '{\"page\": \"/\"}', '{\"CLO2\": 60, \"CLO5\": 50, \"Marks\": 9}');

-- --------------------------------------------------------

--
-- Table structure for table `facaluty`
--

DROP TABLE IF EXISTS `facaluty`;
CREATE TABLE IF NOT EXISTS `facaluty` (
  `Regno` int(15) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Course` varchar(255) DEFAULT NULL,
  `Password` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facaluty`
--

INSERT INTO `facaluty` (`Regno`, `Name`, `Mail`, `Department`, `Course`, `Password`) VALUES
(123, 'DR IMRAN', 'Imran@iiu.edu.pk', 'Software Engineering', 'WEB', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `fall_2016activities`
--

DROP TABLE IF EXISTS `fall_2016activities`;
CREATE TABLE IF NOT EXISTS `fall_2016activities` (
  `ActivityNo` int(11) NOT NULL AUTO_INCREMENT,
  `Activity` varchar(255) NOT NULL,
  `ActivityName` varchar(255) NOT NULL,
  `TotalMarks` int(11) NOT NULL,
  `Weight` float NOT NULL,
  `Date` varchar(100) NOT NULL,
  `CLOs` varchar(100) NOT NULL,
  PRIMARY KEY (`ActivityNo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fall_2016activities`
--

INSERT INTO `fall_2016activities` (`ActivityNo`, `Activity`, `ActivityName`, `TotalMarks`, `Weight`, `Date`, `CLOs`) VALUES
(1, 'Assignment', 'Assignment01', 10, 3, '2020-07-13', 'CLO1,CLO2'),
(2, 'Quiz', 'Quiz01', 10, 3, '2020-07-13', 'CLO1,CLO3'),
(3, 'Assignment', 'Assignment02', 10, 3, '2020-07-02', 'CLO3,CLO4'),
(4, 'Exam', 'Mids', 50, 30, '2020-07-16', 'CLO1,CLO2,CLO3'),
(5, '   ', '     ', -500, 2000, '1984-01-26', 'CLO1,CLO2,CLO3');

-- --------------------------------------------------------

--
-- Table structure for table `fall_2016clos`
--

DROP TABLE IF EXISTS `fall_2016clos`;
CREATE TABLE IF NOT EXISTS `fall_2016clos` (
  `CLONo` int(11) NOT NULL AUTO_INCREMENT,
  `CLO` text NOT NULL,
  PRIMARY KEY (`CLONo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fall_2016clos`
--

INSERT INTO `fall_2016clos` (`CLONo`, `CLO`) VALUES
(1, 'Introduction to System Programming Knowledge'),
(2, 'Knowledge Complex Problem in System Programming '),
(3, 'Solution and Technique to solve Complex System Programming Problem'),
(4, 'Solve a complex Engineering Problem');

-- --------------------------------------------------------

--
-- Table structure for table `fall_2016students`
--

DROP TABLE IF EXISTS `fall_2016students`;
CREATE TABLE IF NOT EXISTS `fall_2016students` (
  `Reg_No` varchar(255) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Assignment01` json DEFAULT NULL,
  `Quiz01` json DEFAULT NULL,
  `Mids` json DEFAULT NULL,
  `Attendence` double DEFAULT NULL,
  `Assignment02` json DEFAULT NULL,
  PRIMARY KEY (`Reg_No`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fall_2016students`
--

INSERT INTO `fall_2016students` (`Reg_No`, `Name`, `Assignment01`, `Quiz01`, `Mids`, `Attendence`, `Assignment02`) VALUES
('3244-bsse-f16', 'Muhammad Abdullah', '{\"CLO1\": 66, \"CLO2\": 68, \"Marks\": 10}', '{\"CLO1\": 68, \"CLO3\": 76, \"Marks\": 10}', '{\"CLO1\": 70, \"CLO2\": 44, \"CLO3\": 69, \"Marks\": 49}', 71.42857142857143, '{\"CLO3\": 66, \"CLO4\": 68}'),
('3211-bsse-f16', 'Raja Bilal', '{\"CLO1\": 68, \"CLO2\": 91, \"Marks\": 5}', '{\"CLO1\": 65, \"CLO3\": 98, \"Marks\": 9}', '{\"CLO1\": 99, \"CLO2\": 54, \"CLO3\": 62, \"Marks\": 35}', 78.42857142857143, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3202-bsse-f16', 'Waqas Ahmed', '{\"CLO1\": 49, \"CLO2\": 81, \"Marks\": 9}', '{\"CLO1\": 69, \"CLO3\": 97, \"Marks\": 7}', '{\"CLO1\": 59, \"CLO2\": 88, \"CLO3\": 64, \"Marks\": 22}', 57.14285714285714, '{\"CLO3\": 56, \"CLO4\": 58}'),
('3208-bsse-f16', 'Muhammad Aamir', '{\"CLO1\": 67, \"CLO2\": 66, \"Marks\": 6}', '{\"CLO1\": 90, \"CLO3\": 81, \"Marks\": 7}', '{\"CLO1\": 65, \"CLO2\": 91, \"CLO3\": 87, \"Marks\": 33}', 71.42857142857143, '{\"CLO3\": 66, \"CLO4\": 44}'),
('3215-bsse-f16', 'M.Faizan Abuzar', '{\"CLO1\": 55, \"CLO2\": 73, \"Marks\": 8}', '{\"CLO1\": 72, \"CLO3\": 93, \"Marks\": 8}', '{\"CLO1\": 92, \"CLO2\": 67, \"CLO3\": 77, \"Marks\": 23}', 85.71428571428571, '{\"CLO3\": 76, \"CLO4\": 28}'),
('3220-bsse-f16', 'Usama Ijaz', '{\"CLO1\": 63, \"CLO2\": 95, \"Marks\": 9}', '{\"CLO1\": 74, \"CLO3\": 93, \"Marks\": 9}', '{\"CLO1\": 87, \"CLO2\": 45, \"CLO3\": 71, \"Marks\": 30}', 85.71428571428571, '{\"CLO3\": 66, \"CLO4\": 58}'),
('3229-bsse-f16', 'Qasim Bhatti', '{\"CLO1\": 87, \"CLO2\": 70, \"Marks\": 6}', '{\"CLO1\": 70, \"CLO3\": 81, \"Marks\": 8}', '{\"CLO1\": 68, \"CLO2\": 51, \"CLO3\": 52, \"Marks\": 36}', 100, '{\"CLO3\": 76, \"CLO4\": 32}'),
('3231-bsse-f16', 'Usman Ghani', '{\"CLO1\": 84, \"CLO2\": 79, \"Marks\": 7}', '{\"CLO1\": 82, \"CLO3\": 77, \"Marks\": 8}', '{\"CLO1\": 42, \"CLO2\": 100, \"CLO3\": 88, \"Marks\": 19}', 71.42857142857143, '{\"CLO3\": 39, \"CLO4\": 41}'),
('3232-bsse-f16', 'Saadat Ullah Khan', '{\"CLO1\": 80, \"CLO2\": 100, \"Marks\": 7}', '{\"CLO1\": 70, \"CLO3\": 70, \"Marks\": 8}', '{\"CLO1\": 70, \"CLO2\": 44, \"CLO3\": 50, \"Marks\": 17}', 71.42857142857143, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3234-bsse-f16', 'Jawad Ali', '{\"CLO1\": 88, \"CLO2\": 91, \"Marks\": 6}', '{\"CLO1\": 76, \"CLO3\": 89, \"Marks\": 7}', '{\"CLO1\": 94, \"CLO2\": 100, \"CLO3\": 62, \"Marks\": 37}', 71.42857142857143, '{\"CLO3\": 46, \"CLO4\": 28}'),
('3236-bsse-f16', 'Muhammad Arif Ali', '{\"CLO1\": 50, \"CLO2\": 99, \"Marks\": 10}', '{\"CLO1\": 69, \"CLO3\": 75, \"Marks\": 10}', '{\"CLO1\": 81, \"CLO2\": 76, \"CLO3\": 65, \"Marks\": 24}', 85.71428571428571, '{\"CLO3\": 46, \"CLO4\": 58}'),
('3241-bsse-f16', 'Abdul Hanan Khalid', '{\"CLO1\": 82, \"CLO2\": 93, \"Marks\": 8}', '{\"CLO1\": 79, \"CLO3\": 83, \"Marks\": 10}', '{\"CLO1\": 87, \"CLO2\": 88, \"CLO3\": 90, \"Marks\": 21}', 85.71428571428571, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3242-bsse-f16', 'Faizan Khalid', '{\"CLO1\": 79, \"CLO2\": 65, \"Marks\": 7}', '{\"CLO1\": 80, \"CLO3\": 70, \"Marks\": 10}', '{\"CLO1\": 77, \"CLO2\": 87, \"CLO3\": 72, \"Marks\": 40}', 71.42857142857143, '{\"CLO3\": 41, \"CLO4\": 38}'),
('3243-bsse-f16', 'Muhammad Waqas Ameer', '{\"CLO1\": 72, \"CLO2\": 90, \"Marks\": 9}', '{\"CLO1\": 85, \"CLO3\": 75, \"Marks\": 7}', '{\"CLO1\": 61, \"CLO2\": 58, \"CLO3\": 63, \"Marks\": 27}', 71.42857142857143, '{\"CLO3\": 49, \"CLO4\": 28}'),
('3247-bsse-f16', 'Babar Khan', '{\"CLO1\": 67, \"CLO2\": 61, \"Marks\": 5}', '{\"CLO1\": 71, \"CLO3\": 87, \"Marks\": 8}', '{\"CLO1\": 73, \"CLO2\": 46, \"CLO3\": 97, \"Marks\": 19}', 57.14285714285714, '{\"CLO3\": 66, \"CLO4\": 72}'),
('3250-bsse-f16', 'Muhammad Faisal Nawaz', '{\"CLO1\": 74, \"CLO2\": 75, \"Marks\": 7}', '{\"CLO1\": 75, \"CLO3\": 71, \"Marks\": 7}', '{\"CLO1\": 84, \"CLO2\": 82, \"CLO3\": 53, \"Marks\": 16}', 85.71428571428571, '{\"CLO3\": 77, \"CLO4\": 38}'),
('3252-bsse-f16', 'Usman Mehmood', '{\"CLO1\": 87, \"CLO2\": 89, \"Marks\": 8}', '{\"CLO1\": 77, \"CLO3\": 92, \"Marks\": 7}', '{\"CLO1\": 73, \"CLO2\": 88, \"CLO3\": 62, \"Marks\": 16}', 71.42857142857143, '{\"CLO3\": 47, \"CLO4\": 62}'),
('3253-bsse-f16', 'Abu Bakr Waris', '{\"CLO1\": 59, \"CLO2\": 87, \"Marks\": 5}', '{\"CLO1\": 70, \"CLO3\": 74, \"Marks\": 8}', '{\"CLO1\": 88, \"CLO2\": 41, \"CLO3\": 83, \"Marks\": 41}', 85.71428571428571, '{\"CLO3\": 32, \"CLO4\": 31}'),
('3258-bsse-f16', 'Zubair Khalid', '{\"CLO1\": 63, \"CLO2\": 89, \"Marks\": 5}', '{\"CLO1\": 70, \"CLO3\": 81, \"Marks\": 8}', '{\"CLO1\": 55, \"CLO2\": 62, \"CLO3\": 69, \"Marks\": 17}', 71.42857142857143, '{\"CLO3\": 22, \"CLO4\": 18}'),
('3261-bsse-f16', 'Tahir Abbas', '{\"CLO1\": 78, \"CLO2\": 96, \"Marks\": 6}', '{\"CLO1\": 71, \"CLO3\": 77, \"Marks\": 9}', '{\"CLO1\": 54, \"CLO2\": 90, \"CLO3\": 46, \"Marks\": 27}', 71.42857142857143, '{\"CLO3\": 26, \"CLO4\": 58}'),
('3266-bsse-f16', 'Nouman Abbasi', '{\"CLO1\": 60, \"CLO2\": 92, \"Marks\": 5}', '{\"CLO1\": 82, \"CLO3\": 92, \"Marks\": 8}', '{\"CLO1\": 94, \"CLO2\": 55, \"CLO3\": 61, \"Marks\": 21}', 85.71428571428571, '{\"CLO3\": 56, \"CLO4\": 78}'),
('3269-bsse-f16', 'Abdul Rehman', '{\"CLO1\": 58, \"CLO2\": 77, \"Marks\": 5}', '{\"CLO1\": 69, \"CLO3\": 100, \"Marks\": 7}', '{\"CLO1\": 51, \"CLO2\": 49, \"CLO3\": 58, \"Marks\": 15}', 85.71428571428571, '{\"CLO3\": 45, \"CLO4\": 60}'),
('3275-bsse-f16', 'Arham Shahzad', '{\"CLO1\": 62, \"CLO2\": 62, \"Marks\": 6}', '{\"CLO1\": 73, \"CLO3\": 88, \"Marks\": 9}', '{\"CLO1\": 84, \"CLO2\": 68, \"CLO3\": 69, \"Marks\": 38}', 71.42857142857143, '{\"CLO3\": 16, \"CLO4\": 18}'),
('3284-bsse-f16', 'Hassan Farooq', '{\"CLO1\": 49, \"CLO2\": 87, \"Marks\": 5}', '{\"CLO1\": 83, \"CLO3\": 88, \"Marks\": 8}', '{\"CLO1\": 92, \"CLO2\": 43, \"CLO3\": 56, \"Marks\": 39}', 100, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3289-bsse-f16', 'Babar Hussain', '{\"CLO1\": 76, \"CLO2\": 83, \"Marks\": 9}', '{\"CLO1\": 74, \"CLO3\": 82, \"Marks\": 10}', '{\"CLO1\": 96, \"CLO2\": 92, \"CLO3\": 70, \"Marks\": 24}', 71.42857142857143, '{\"CLO3\": 51, \"CLO4\": 68}'),
('3290-bsse-f16', 'Fahad Aftab', '{\"CLO1\": 81, \"CLO2\": 99, \"Marks\": 10}', '{\"CLO1\": 74, \"CLO3\": 91, \"Marks\": 10}', '{\"CLO1\": 59, \"CLO2\": 62, \"CLO3\": 78, \"Marks\": 26}', 71.42857142857143, '{\"CLO3\": 55, \"CLO4\": 41}'),
('3303-bsse-f16', 'Khurram Mansoor', '{\"CLO1\": 62, \"CLO2\": 62, \"Marks\": 6}', '{\"CLO1\": 74, \"CLO3\": 83, \"Marks\": 8}', '{\"CLO1\": 58, \"CLO2\": 40, \"CLO3\": 94, \"Marks\": 28}', 57.14285714285714, '{\"CLO3\": 25, \"CLO4\": 61}'),
('3306-bsse-f16', 'Mohsin atta', '{\"CLO1\": 82, \"CLO2\": 88, \"Marks\": 5}', '{\"CLO1\": 90, \"CLO3\": 95, \"Marks\": 9}', '{\"CLO1\": 43, \"CLO2\": 92, \"CLO3\": 88, \"Marks\": 42}', 57.14285714285714, '{\"CLO3\": 55, \"CLO4\": 23}'),
('3307-bsse-f16', 'Sheeraz Ahmad', '{\"CLO1\": 55, \"CLO2\": 77, \"Marks\": 9}', '{\"CLO1\": 72, \"CLO3\": 97, \"Marks\": 8}', '{\"CLO1\": 74, \"CLO2\": 44, \"CLO3\": 54, \"Marks\": 27}', 100, '{\"CLO3\": 33, \"CLO4\": 51}'),
('3311-bsse-f16', 'Muhammad Danyal', '{\"CLO1\": 49, \"CLO2\": 60, \"Marks\": 10}', '{\"CLO1\": 78, \"CLO3\": 82, \"Marks\": 9}', '{\"CLO1\": 86, \"CLO2\": 65, \"CLO3\": 47, \"Marks\": 47}', 85.71428571428571, '{\"CLO3\": 41, \"CLO4\": 55}'),
('3314-bsse-f16', 'Zain-ul-Abidin', '{\"CLO1\": 65, \"CLO2\": 88, \"Marks\": 10}', '{\"CLO1\": 85, \"CLO3\": 79, \"Marks\": 8}', '{\"CLO1\": 54, \"CLO2\": 50, \"CLO3\": 72, \"Marks\": 35}', 71.42857142857143, '{\"CLO3\": 66, \"CLO4\": 53}'),
('3318-bsse-f16', 'Hamza Irfan', '{\"CLO1\": 75, \"CLO2\": 97, \"Marks\": 6}', '{\"CLO1\": 79, \"CLO3\": 81, \"Marks\": 7}', '{\"CLO1\": 47, \"CLO2\": 97, \"CLO3\": 72, \"Marks\": 50}', 100, '{\"CLO3\": 22, \"CLO4\": 80}'),
('3319-bsse-f16', 'Anees Iqbal', '{\"CLO1\": 81, \"CLO2\": 75, \"Marks\": 9}', '{\"CLO1\": 77, \"CLO3\": 86, \"Marks\": 9}', '{\"CLO1\": 77, \"CLO2\": 45, \"CLO3\": 50, \"Marks\": 47}', 85.71428571428571, '{\"CLO3\": 75, \"CLO4\": 78}'),
('3320-bsse-f16', 'Affan Qureshi', '{\"CLO1\": 59, \"CLO2\": 66, \"Marks\": 9}', '{\"CLO1\": 74, \"CLO3\": 87, \"Marks\": 8}', '{\"CLO1\": 76, \"CLO2\": 89, \"CLO3\": 67, \"Marks\": 39}', 71.42857142857143, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3331-bsse-f16', 'Mohsin Qureshi', '{\"CLO1\": 63, \"CLO2\": 74, \"Marks\": 5}', '{\"CLO1\": 67, \"CLO3\": 76, \"Marks\": 10}', '{\"CLO1\": 97, \"CLO2\": 64, \"CLO3\": 100, \"Marks\": 38}', 71.42857142857143, '{\"CLO3\": 42, \"CLO4\": 18}'),
('3332-bsse-f16', 'Muhammad Usaid', '{\"CLO1\": 78, \"CLO2\": 70, \"Marks\": 8}', '{\"CLO1\": 85, \"CLO3\": 78, \"Marks\": 10}', '{\"CLO1\": 75, \"CLO2\": 54, \"CLO3\": 99, \"Marks\": 36}', 71.42857142857143, '{\"CLO3\": 34, \"CLO4\": 34}'),
('3338-bsse-f16', 'Muhammad Talha', '{\"CLO1\": 40, \"CLO2\": 88, \"Marks\": 6}', '{\"CLO1\": 84, \"CLO3\": 88, \"Marks\": 10}', '{\"CLO1\": 97, \"CLO2\": 59, \"CLO3\": 66, \"Marks\": 20}', 71.42857142857143, '{\"CLO3\": 44, \"CLO4\": 65}'),
('3339-bsse-f16', 'Zain Ali', '{\"CLO1\": 78, \"CLO2\": 66, \"Marks\": 6}', '{\"CLO1\": 71, \"CLO3\": 75, \"Marks\": 7}', '{\"CLO1\": 42, \"CLO2\": 58, \"CLO3\": 41, \"Marks\": 49}', 71.42857142857143, '{\"CLO3\": 26, \"CLO4\": 28}'),
('3340-bsse-f16', 'Muhammad Saifullah', '{\"CLO1\": 85, \"CLO2\": 76, \"Marks\": 8}', '{\"CLO1\": 90, \"CLO3\": 98, \"Marks\": 8}', '{\"CLO1\": 55, \"CLO2\": 42, \"CLO3\": 99, \"Marks\": 38}', 71.42857142857143, '{\"CLO3\": 36, \"CLO4\": 48}'),
('3341-bsse-f16', 'Shakir Azeem', '{\"CLO1\": 84, \"CLO2\": 81, \"Marks\": 10}', '{\"CLO1\": 87, \"CLO3\": 84, \"Marks\": 8}', '{\"CLO1\": 48, \"CLO2\": 60, \"CLO3\": 63, \"Marks\": 28}', 85.71428571428571, '{\"CLO3\": 56, \"CLO4\": 78}');

-- --------------------------------------------------------

--
-- Table structure for table `raja`
--

DROP TABLE IF EXISTS `raja`;
CREATE TABLE IF NOT EXISTS `raja` (
  `RegNo` varchar(255) NOT NULL,
  PRIMARY KEY (`RegNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `Name` varchar(50) NOT NULL,
  `Number` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Number`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`Name`, `Number`) VALUES
('Spring2018', 1),
('Ahsan', 2),
('qasim', 3),
('qasim', 4),
('raja', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Name` varchar(255) NOT NULL,
  `Father Name` varchar(255) NOT NULL,
  `Reg_No` varchar(15) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `CNIC` varchar(13) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Nationality` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Semester` int(6) NOT NULL,
  `Session` varchar(255) NOT NULL,
  UNIQUE KEY `Reg_No` (`Email`,`Phone`),
  UNIQUE KEY `Reg_No_2` (`Reg_No`),
  UNIQUE KEY `CNIC` (`CNIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `Father Name`, `Reg_No`, `Department`, `Email`, `Phone`, `CNIC`, `Address`, `Nationality`, `Password`, `Semester`, `Session`) VALUES
('Muhammad Abdullah', 'Khalid Amin', '3244-BSSE-F16', 'Software Engineering', 'Abdul.khen@gmail.com', '03415268508', '5440091093255', 'sector 2 khayaban e sirsyed', 'Pakistan', 'pakistan123', 7, '2016'),
('Raja Bilal Zafar', 'Muhammad Zafar', '3211-BSSE-F16', 'Software Engineering', 'bilaljanjua@gmail.com', '03065094856', '3130139197327', 'Inside Lohari Gate,Multan', 'Pakistan', 'bilal123', 7, '2016'),
('Waqas Ahmed', 'Riaz Ahmad', '15-CP-87', 'Computer Engineering', 'waqasahmeds1996@gmail.com', '03125434492', '131015410867', 'Taxila,Pakistan', 'Pakistan', 'waqas123', 7, '2015'),
('Muhammad Aamir', 'Muhammad Zafar', '15-CP-31', 'Computer Engineering', 'mamir@gmail.com', '03128785643', '3130140567327', 'Multan,Punjab', 'Pakistan', 'amir123', 7, '2015'),
('M.Faizan Abuzar', 'ABDCNFH', '15-CP-05', 'Computer Engineering', '15-CP-05@students.uettaxila.edu.pk', '03157598472', '3630264738231', 'IIUI-Pakistan', 'Pakistan', 'faizan123', 7, '2015'),
('Usama Ijaz', 'Muhammad Ijaz', '15-CP-09', 'Computer Engineering', '15-CP-09@students.uettaxila.edu.pk', '03137199671', '363024356131', 'IIUI-Pakistan', 'Pakistan', 'usama123', 7, '2015'),
('Qasim Bhatti', 'Muhammad Bhatti', '15-CP-17', 'Computer Engineering', '15-CP-17@students.uettaxila.edu.pk', '0300667094', '3630274216941', 'IIUI-Pakistan', 'Pakistan', 'qasim123', 7, '2015'),
('Usman Ghani', 'Muhammad Ghani', '15-CP-24', 'Computer Engineering', '15-CP-24@students.uettaxila.edu.pk', '03183782451', '3630256797531', 'IIUI-Pakistan', 'Pakistan', 'usman123', 7, '2015'),
('Saadat Ullah Khan', 'Muhammad Khan', '15-CP-26', 'Computer Engineering', '15-CP-26@students.uettaxila.edu.pk', '03001234569', '3630285314781', 'IIUI-Pakistan', 'Pakistan', 'saadat123', 7, '2015'),
('Jawad Ali', 'AHDFJKK', '15-CP-27', 'Computer Engineering', '15-CP-27@students.uettaxila.edu.pk', '03335722017', '3630243267181', 'Islamabad Pakistan', 'Pakistan', 'jawad123', 7, '2015'),
('Muhammad Arif Ali', 'AJDFJKFKF', '15-CP-28', 'Computer Engineering', '15-CP-28@students.uettaxila.edu.pk', '03128465423', '3630287534219', 'Abbotabad Pakistan', 'Pakistan', 'arif123', 7, '2015'),
('Abdul Hanan Khalid', 'Muhammad Khalid', '15-CP-30', 'Computer Engineering', '15-CP-30@students.uettaxila.edu.pk', '03006941382', '363028567022', 'IIUI-Pakistan', 'Pakistan', 'hanan123', 7, '2015'),
('Faiza Khalid', 'Muhammad Khalid', '15-CP-32', 'Computer Engineering', '15-CP-32@students.uettaxila.edu.pk', '03332865942', '3934865319435', 'IIUI-Pakistan', 'Pakistan', 'faiza123', 7, '2015'),
('Muhammad Waqas Ameer', 'Muhammad Ameer', '15-CP-34', 'Computer Engineering', '15-CP-34@students.uettaxila.edu.pk', '03337564134', '3284857499210', 'Chakwal Pakistan', 'Pakistan', 'waqasameer123', 7, '2015'),
('Babar Khan', 'Muhammad Khan', '15-CP-36', 'Computer Engineering', '15-CP-36@students.uettaxila.edu.pk', '03147894532', '3630267543091', 'IIUI-Pakistan', 'Pakistan', 'babarkhan123', 7, '2015'),
('Muhammad Faisal Nawaz', 'Muhammad Nawaz', '15-CP-37', 'Computer Engineering', '15-CP-37@students.uettaxila.edu.pk', '03473199418', '3630267905432', 'Rawalpindi Pakistan', 'Pakistan', 'faisal123', 7, '2015'),
('Usman Mehmood', 'Muhammad Mehmood', '15-CP-38', 'Computer Engineering', '15-CP-38@students.uettaxila.edu.pk', '03058684691', '3630245678931', 'Rawalpindi Pakistan', 'Pakistan', 'usmanmehmood123', 7, '2015'),
('Abu Bakr Waris', 'Muhammad Waris', '15-CP-39', 'Computer Engineering', '15-CP-39@students.uettaxila.edu.pk', '03075861606', '3630256498671', 'Daharawala Bahawalpur Pakistan', 'Pakistan', 'abubakr123', 7, '2015'),
('Zubair Khalid', 'Muhammad Khalid', '15-CP-41', 'Computer Engineering', '15-CP-41@students.uettaxila.edu.pk', '03045563448', '3630234986747', 'Sargodha Pakistan', 'Pakistan', 'zubair123', 7, '2015'),
('Tahir Abbas', 'Muhammad Abbas', '15-CP-40', 'Computer Engineering', '15-CP-40@students.uettaxila.edu.pk', '03136439671', '3630229465096', 'IIUI-Pakistan', 'Pakistan', 'tahir123', 7, '2015'),
('Nimra Abbasi', 'Muhammad Abbasi', '15-CP-42', 'Computer Engineering', '15-CP-42@students.uettaxila.edu.pk', '03225674306', '3630256783429', 'Rawalpindhi Pakistan', 'Pakistan', 'nimra123', 7, '2015'),
('Abdul Rehman', 'AHDGKFKF', '15-CP-43', 'Computer Engineering', '15-CP-43@students.uettaxila.edu.pk', '03219538934', '3630224609641', 'Lahore Pakistan', 'Pakistan', 'abdulrehman123', 7, '2015'),
('Anam Shahzad', 'Muhammad Shahzad', '15-CP-44', 'Computer Engineering', '15-CP-44@students.uettaxila.edu.pk', '03962645737', '363026852541', 'Rawalpindi Pakistan', 'Pakistan', 'anam123', 7, '2015'),
('Hassan Farooq', 'Muhammad Farooq', '15-CP-45', 'Computer Engineering', '15-CP-45@students.uettaxila.edu.pk', '03325917970', '3630298671256', 'Rawalpindi Pakistan', 'Pakistan', 'hassan123', 7, '2015'),
('Babar Hussain', 'Muhammad Hussain', '15-CP-47', 'Computer Engineering', '15-CP-47@students.uettaxila.edu.pk', '03004955999', '3630223423678', 'Multan Pakistan', 'Pakistan', 'babarhussain123', 7, '2015'),
('Rabia Aftab', 'Muhammad Aftab', '15-CP-49', 'Computer Engineering', '15-CP-49@students.uettaxila.edu.pk', '03325666188', '3630245329867', 'Rawalpindi Pakistan', 'Pakistan', 'rabia123', 7, '2015'),
('Romaisa Rehman', 'Muhammad Rehman', '15-CP-51', 'Computer Engineering', '15-CP-51@students.uettaxila.edu.pk', '01986374357', '3630256097823', 'Rawalpindi Pakistan', 'Pakistan', 'romaisa123', 7, '2015'),
('Rida Zehra', 'AJADJKFKJ', '15-CP-53', 'Computer Engineering', '15-CP-53@students.uettaxila.edu.pk', '37735755788', '3630283596423', 'Bahawalpur Pakistan', 'Pakistan', 'rida123', 7, '2015'),
('Sheeraz Ahmad', 'Muhammad Ahmad', '15-CP-54', 'Computer Engineering', '15-CP-54@students.uettaxila.edu.pk', '0333618231', '3630256842365', 'Multan Pakistan', 'Pakistan', 'sheeraz123', 7, '2015'),
('Muhammad Danyal', 'ADGHFJJK', '15-CP-55', 'Computer Engineering', '15-CP-55@students.uettaxila.edu.pk', '03317629156', '3630267523498', 'Jehlum Pakistan', 'Pakistan', 'danyal123', 7, '2015'),
('Zain-ul-Abidin', 'AHJDGHKFK', '15-CP-57', 'Computer Engineering', '15-CP-57@students.uettaxila.edu.pk', '03115674593', '363024589742', 'Rawalpindi Pakistan', 'Pakistan', 'zain123', 7, '2015'),
('Hamza Irfan', 'Muhammad Irfan', '15-CP-58', 'Computer Engineering', '15-CP-58@students.uettaxila.edu.pk', '03334678953', '3630267234598', 'IIUI-Pakistan', 'Pakistan', 'hamza123', 7, '2015'),
('Anees Iqbal', 'Muhammad Iqbal', '15-CP-59', 'Computer Engineering', '15-CP-59@students.uettaxila.edu.pk', '03007490263', '3630289672356', 'Gujrawala Pakistan', 'Pakistan', 'anees123', 7, '2015'),
('Affan Qureshi', 'AHJDGKFKF', '15-CP-60', 'Computer Engineering', '15-CP-60@students.uettaxila.edu.pk', '03245030790', '3630289675321', 'Rawalpindi Pakistan', 'Pakistan', 'affan123', 7, '2015'),
('Hadiqa Azam', 'Muhammad Azam', '15-CP-63', 'Computer Engineering', '15-CP-63@students.uettaxila.edu.pk', '91468586000', '3630212345678', 'IIUI-Pakistan', 'Pakistan', 'hadiqa123', 7, '2015'),
('Muhammad Usaid', 'Muhammad Abdullah', '15-CP-64', 'Computer Engineering', '15-CP-64@students.uettaxila.edu.pk', '94987383581', '3630256349876', 'IIUI-Pakistan', 'Pakistan', 'usaid123', 7, '2015'),
('Muhammad Talha', 'AJFHJGFGD', '15-CP-72', 'Computer Engineering', '15-CP-72@students.uettaxila.edu.pk', '03004655973', '3630278564321', 'Rawalpindi Pakistan', 'Pakistan', 'talha123', 7, '2015'),
('Zain Ali', 'Muhammad Ali', '15-CP-74', 'Computer Engineering', '15-CP-74@students.uettaxila.edu.pk', '03331409233', '3630289674532', 'IIUI-Pakistan', 'Pakistan', 'zainali123', 7, '2015'),
('Faria Gulzar', 'Muhammad Gulzar', '15-CP-75', 'Computer Engineering', '15-CP-75@students.uettaxila.edu.pk', '03344838561', '3630284855940', 'Jehlum Pakistan', 'Pakistan', 'faria123', 7, '2015'),
('Shakir Azeem', 'Muhammad Azeem', '15-CP-81', 'Computer Engineering', '15-CP-81@students.uettaxila.edu.pk', '03005454942', '3630256487623', 'Jehlum Pakistan', 'Pakistan', 'shakir123', 7, '2015');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
