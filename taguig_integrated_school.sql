-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 08:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taguig_integrated_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', '$2y$10$ddsm9XkNm9zkm1ytyrKJbuEtpwkR8hl5AdG7NkfQJ7wwjzqn7PRU2');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `announcement_title` varchar(256) NOT NULL,
  `announcement_content` varchar(1000) NOT NULL,
  `announcement_date` varchar(100) NOT NULL,
  `announcement_time` varchar(100) NOT NULL,
  `announcement_author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `announcement_title`, `announcement_content`, `announcement_date`, `announcement_time`, `announcement_author`) VALUES
(5, 'Exam day is on March 13, 2019', 'Exam day is coming', 'March 06, 2019', '08:51 AM', 'Principal');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(256) NOT NULL,
  `news_content` varchar(1000) NOT NULL,
  `news_date` varchar(100) NOT NULL,
  `news_time` varchar(100) NOT NULL,
  `news_author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_content`, `news_date`, `news_time`, `news_author`) VALUES
(12, 'May sunog sa city hall ng Taguig!', 'Ang city hall ng Taguig ay nasunog dahil sa hinihinalang droga. Mag-ingat kayong lahat.', 'March 06, 2019', '11:32 AM', 'Mayor'),
(13, 'Ang Taguig ay nag-announce ng walang pasok sa kadahilanan na may natagpuang droga sa STI.', 'Ang Taguig ay nag-announce ng walang pasok sa kadahilanan na may natagpuang droga sa STI. Ang droga ay hinihinalang dinala ng estudyante.', 'March 08, 2019', '07:11 AM', 'Mayor'),
(14, 'Casting', 'Do you want to be an actress ? <br>\r\nApply now on Self Casting Film!', 'March 09, 2019', '03:31 AM', 'Self');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(200) NOT NULL,
  `school_address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(200) DEFAULT NULL,
  `school_logo` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `school_address`, `contact_number`, `school_logo`) VALUES
(1, 'Taguig Integrated School', 'LIWAYWAY STREET, STA. ANA TAGUIG CITY 1632', '275-51-09', '5c81a8e8ce0105.49207710.png');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `student_id` varchar(100) NOT NULL,
  `student_type` varchar(100) NOT NULL,
  `student_grade_level` varchar(100) NOT NULL,
  `student_firstname` varchar(100) NOT NULL,
  `student_middlename` varchar(100) DEFAULT NULL,
  `student_lastname` varchar(100) NOT NULL,
  `student_birthdate` varchar(100) NOT NULL,
  `student_gender` varchar(100) NOT NULL,
  `student_street_address` varchar(100) NOT NULL,
  `student_city` varchar(100) NOT NULL,
  `student_province` varchar(100) NOT NULL,
  `guardian_relationship` varchar(100) NOT NULL,
  `guardian_firstname` varchar(100) NOT NULL,
  `guardian_middlename` varchar(100) NOT NULL,
  `guardian_lastname` varchar(100) NOT NULL,
  `guardian_mobile` varchar(100) NOT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `registration_date` varchar(100) NOT NULL,
  `registration_time` varchar(100) NOT NULL,
  `registration_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`student_id`, `student_type`, `student_grade_level`, `student_firstname`, `student_middlename`, `student_lastname`, `student_birthdate`, `student_gender`, `student_street_address`, `student_city`, `student_province`, `guardian_relationship`, `guardian_firstname`, `guardian_middlename`, `guardian_lastname`, `guardian_mobile`, `guardian_email`, `registration_date`, `registration_time`, `registration_status`) VALUES
('018f3b503a6706de56a3e13ac7979574', 'New Student', 'Grade 8', 'John', 'John', 'John', '2009-09-04', 'Female', 'Street', 'City', 'State', 'Wife', 'Mother', 'Mother', 'Mother', '92983928392', 'fuck@gmail.com', 'March 07, 2019', '07:38:19 PM', 'Pending'),
('11ab9c60ebbb72fe25282f8d07778f98', 'old', 'Grade 12', 'Keiji', 'Parema', 'Mizumura', '1999-06-01', 'male', '123D 11th Avenue, East Rembo', 'Makati City', 'Metro Manila', 'Mother', 'Maribeth', 'Parema', 'Mizumura', '09283984075', 'maribeth@gmail.com', 'March 07, 2019', '07:42:47 AM', 'Pending'),
('1cbb2125b4ade71df80b185b461273bd', 'Old Student', 'Grade 10', 'Keiji', 'Mizumura', 'Parema', '1999-09-19', 'Male', 'Street', 'City', 'State', 'Parent', 'First', 'Middle', 'Last', '09000092919', 'test@gmail.com', 'March 08, 2019', '06:29:12 AM', 'Pending'),
('2678cf4c1ff79462c785553399a05104', 'Old Student', 'Grade 3', 'Susej', 'Mary', 'Tsirhc', '2019-03-28', 'Male', 'Bethlehem', 'Israel', 'Jerusalem', 'Father', 'God', 'AllMight', 'God', '09939439493', 'god@gmail.com', 'March 07, 2019', '07:23:11 PM', 'Pending'),
('2c6528c3c933207ad341165bf493b497', 'New Student', 'Grade 10', 'Jesus', 'Fucking', 'Christ', '1980-12-25', 'Male', '123D 11th Avenue, East Rembo', 'Makati City', 'Nazareth', 'Mother', 'Mama', 'Joseph', 'Mary', '09283984075', 'mamamary@gmail.com', 'March 07, 2019', '04:55:27 PM', 'Pending'),
('3011b97e1d50e3a4b845d91ca4e3b6c5', 'New Student', 'Kinder', 'Test', 'Middle', 'Last', '1999-06-09', 'Male', '123D 11th Avenue, East Rembo', 'Makati City', 'Metro Manila', 'Test', 'Test', 'Test', 'Test', '09283984075', 'test@gmail.com', 'March 07, 2019', '05:02:44 PM', 'Pending'),
('30bb8148d84946d8d3658d6f2b550d3e', 'new', 'Kinder', 'asdfasdf', 'asdfsdfasdf', 'sdfsdfsdfasf', '2019-03-31', 'male', 'fgfsdgfg', 'sdfasfdasf', 'sdfsfsdfsdffs', 'sdsdfsfsdf', 'asfsdfsad', 'fsdfasdf', 'sdfsdfasdf', '232342342342', 'sdfsdfsdf@gmail.com', 'March 07, 2019', '07:49:00 AM', 'Pending'),
('37b8684d106637bb24c92ff1bc671fe3', 'New Student', 'Kinder', 'Test', 'Middle', 'lk', '2019-03-28', 'Male', '123D 11th Avenue, East Rembo', 'Makati City', 'Nazareth', 'Mother', 'Mama', 'Joseph', 'Mary', '09283984075', 'mamamary@gmail.com', 'March 08, 2019', '08:27:59 PM', 'Pending'),
('39a4a50778d734c0b4ab6df967163217', 'old', 'Grade 3', 'fgdfgdf', 'dfgsdfg', 'dfgsdgf', '2019-03-13', 'male', 'dfgsdfg', 'fgdfg', 'dfgdfgs', 'sdfgsdg', 'sdfgdfg', 'sdfgfsdfg', 'dfgsdfgfdg', '09283984075', 'sdfsdfsdf@gmail.com', 'March 07, 2019', '07:50:43 AM', 'Pending'),
('50e9aa543f5ab65fbcab8718fe51b556', 'old', 'Grade 12', 'Keijia', 'Parema', 'Mizumura', '1999-06-01', 'male', '123D 11th Avenue, East Rembo', 'Makati City', 'Metro Manila', 'Mother', 'Maribeth', 'Parema', 'Mizumura', '09283984075', 'maribeth@gmail.com', 'March 07, 2019', '07:46:20 AM', 'Pending'),
('71ab3942c5d2642497c9c18b5134557c', 'Old Student', 'Kinder', 'Christian', '', 'Asignacion', '2001-01-13', 'Male', '151 Mayon st', 'Makati City', 'Metro Manila', 'Mother', 'Guadalupe', '', 'Asignacion', '09066400619', 'christianasignacion@gmail.com', 'March 07, 2019', '08:37:09 PM', 'Pending'),
('80535aa78d09f7c27de9c312c849bde6', 'Old Student', 'Grade 12', 'Mizpha', 'Daria', 'Ariola', '2000-07-12', 'Female', '123D 11th Avenue, East Rembo', 'Makati City', 'Metro Manila', 'Mother', 'May', 'Daria', 'Ariola', '121546584512', 'mamamary@gmail.com', 'March 07, 2019', '08:41:01 PM', 'Pending'),
('ae4d816d7a5d91fcbed9b5c13a8206aa', 'New Student', 'Grade 11', 'Ren', 'Villarosa', 'Ramos', '2000-11-05', 'Male', 'Pagkalinawan st. Samaba Brgy. New Lower Bicutan', 'Taguig city', 'Metro Manila', 'Mother', 'Adfaa', 'adfdffdg', 'qerqerqer', '098475824', 'adfdafag@gmail.com', 'March 08, 2019', '12:17:53 AM', 'Pending'),
('b085d1bf4cff8b1045750706b11f8662', 'New Student', 'Kinder', 'Test', 'Test', 'Test', '1999-09-29', 'Male', 'nONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', '09283984075', 'none@gmail.com', 'March 07, 2019', '05:06:04 PM', 'Pending'),
('c92aeb412a1285178be6a082247ed499', 'Old Student', 'Grade 7', 'John', 'Proctor', 'Procter', '2009-09-29', 'Male', 'John Street', 'Jon', 'jhn', 'john', 'johhn', 'john', 'john', '09939439493', 'john@gmail.com', 'March 07, 2019', '05:20:21 PM', 'Pending'),
('ee6aa8565f29397f3cdc22bf15ba6763', 'Old Student', 'Kinder', 'Demo', 'Demo', 'Demo', '1999-09-09', 'Male', 'Demo me ', 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', '09283984075', 'demo@gmail.com', 'March 07, 2019', '05:40:29 PM', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
