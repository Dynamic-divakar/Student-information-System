-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 06:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_history`
--

CREATE TABLE `academic_history` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `school_year` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1= New,\r\n2= Regular,\r\n3= Returnee,\r\n4= Transferee',
  `end_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=pending,\r\n1=Completed,\r\n2=Dropout,\r\n3=failed,\r\n4=Transferred-out,\r\n5=Graduated',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_history`
--

INSERT INTO `academic_history` (`id`, `student_id`, `course_id`, `semester`, `year`, `school_year`, `status`, `end_status`, `date_created`, `date_updated`) VALUES
(8, 3, 10, 'Forth Semester', '2', '2023-2024', 2, 0, '2024-05-23 12:49:14', '2024-05-23 21:28:14'),
(9, 4, 16, 'Third Semester', '2', '2023-2024', 2, 1, '2024-05-23 12:54:35', '2024-05-23 21:29:18'),
(10, 5, 10, 'Second Semester', '2023', '2022', 2, 2, '2024-05-23 12:56:27', NULL),
(11, 4, 4, 'Forth Semester', '2', '2022-2023', 2, 0, '2024-05-23 19:51:33', '2024-05-23 21:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `department_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 10, 'WCD', 'Web Coding and Development', 1, 0, '2022-01-27 10:03:25', '2024-05-23 12:35:35'),
(4, 4, 'FDS', 'Fundamentals of Data Science', 1, 0, '2022-01-27 10:07:52', '2024-05-23 12:38:27'),
(5, 5, 'DCMT', 'DC Machines and Transformers', 1, 0, '2022-01-27 10:08:21', '2024-05-23 12:36:31'),
(6, 1, 'SS', 'Signal And Systems', 1, 0, '2022-01-27 10:08:48', '2024-05-23 12:32:08'),
(10, 2, 'DAA', 'Design and Analysis of Algorithm', 1, 0, '2022-01-27 10:10:39', '2024-05-23 12:38:10'),
(11, 1, 'AD', 'Analog and Digital', 1, 0, '2022-01-27 10:12:23', '2024-05-23 12:32:33'),
(13, 3, 'FML', 'Fundamentals of Machine Learning', 1, 0, '2024-05-23 12:34:25', NULL),
(14, 8, 'SE', 'Soil Engineering', 1, 0, '2024-05-23 12:39:07', NULL),
(15, 7, 'FM', 'Fluid Mechanics', 1, 0, '2024-05-23 12:39:37', NULL),
(16, 2, 'DS', 'Data Structure', 1, 0, '2024-05-23 19:45:24', NULL),
(17, 1, 'EMFT', 'ElectroMagnetic Field Theory', 1, 1, '2024-05-24 20:33:24', '2024-05-24 20:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'ECE', 'Electronics and Communication Engineering', 1, 0, '2022-01-27 09:22:31', '2024-05-23 12:27:20'),
(2, 'CSE', 'Computer Science and Engineering', 1, 0, '2022-01-27 09:22:54', '2024-05-23 12:24:15'),
(3, 'CSE-AIML', 'Artificial Intelligence and Machine Learning(CSE)', 1, 0, '2022-01-27 09:23:20', '2024-05-23 12:25:17'),
(4, 'CSE-AIDS', 'Artificial intelligence and Data Science(CSE)', 1, 0, '2022-01-27 09:25:42', '2024-05-23 12:26:08'),
(5, 'EEE', 'Electrical and Eletronic Engineering', 1, 0, '2022-01-27 09:26:35', '2024-05-23 12:28:22'),
(7, 'ME', 'Mechanical Engineering', 1, 0, '2024-05-23 12:29:01', NULL),
(8, 'CE', 'Civil Engineering', 1, 0, '2024-05-23 12:29:25', NULL),
(9, 'ChE', 'Chemical Engineering', 0, 0, '2024-05-23 12:29:56', NULL),
(10, 'IT', 'Information Technology', 1, 0, '2024-05-23 12:35:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `dob` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `roll`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `present_address`, `permanent_address`, `dob`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(3, '22341A05D1', 'Pavan', '', 'Peddakota', 'Male', '8309402600', 'Rajam', 'Rajam', '2005-07-31', 1, 0, '2024-05-23 12:48:20', NULL),
(4, '22341A05D2', 'VAMSI', '', 'PELLA', 'Male', '9825195172', 'palakonda', 'palakonda', '2004-08-19', 1, 0, '2024-05-23 12:53:42', '2024-05-23 21:05:26'),
(5, '22341A05E8', 'Sarayu', '', 'Redddi', 'Female', '9871236418', 'Srikakulam', 'Srikakulam', '2005-05-05', 0, 0, '2024-05-23 12:55:52', '2024-05-23 12:57:05'),
(6, '22341A05D3', 'SRAVANTHI', '', 'PERICHARLA', 'Female', '8765256542', '23, Gandhi Nagar, Vijayawada, Andhra Pradesh, 520003', '23, Gandhi Nagar, Vijayawada, Andhra Pradesh, 520003', '2004-01-23', 1, 0, '2024-05-23 20:14:35', NULL),
(7, '22341A05D4', 'ABHINAV', 'MANO', 'PICHIKALA', 'Male', '8074726488', '12-1-45, Main Road, Guntur, Andhra Pradesh, 522001', '12-1-45, Main Road, Guntur, Andhra Pradesh, 522001', '2012-07-18', 1, 0, '2024-05-23 20:17:39', NULL),
(8, '22341A05D5', 'MOUNIKA', '', 'PILLA', 'Female', '8462875884', '5-4-87, Balaji Colony, Tirupati, Andhra Pradesh, 517501', '5-4-87, Balaji Colony, Tirupati, Andhra Pradesh, 517501', '2005-06-07', 1, 0, '2024-05-23 20:26:16', NULL),
(9, '22341A05D6', 'YUGANDHAR', '', 'PILLA ', 'Male', '9562634236', '7-56-34, Nehru Nagar, Kakinada, Andhra Pradesh, 533003', '7-56-34, Nehru Nagar, Kakinada, Andhra Pradesh, 533003', '2004-08-16', 1, 0, '2024-05-23 20:29:16', NULL),
(10, '22341A05D7', 'DEVI SREE ', 'SAI', 'PITCHIKA', 'Female', '7652643528', '8-6-23, Pothinamallayya Palem, Visakhapatnam, Andhra Pradesh, 530041', '8-6-23, Pothinamallayya Palem, Visakhapatnam, Andhra Pradesh, 530041', '2004-11-17', 1, 0, '2024-05-23 20:31:22', '2024-05-23 21:10:16'),
(11, '22341A05D8', 'ABHINAYA', '', 'POGIRI', 'Female', '7396284300', '9-3-78, Sai Nagar, Rajahmundry, Andhra Pradesh, 533101', '9-3-78, Sai Nagar, Rajahmundry, Andhra Pradesh, 533101', '2004-07-13', 1, 0, '2024-05-23 20:32:58', NULL),
(12, '22341A05D9', 'DEDEEPYA', '', 'POLISETTI', 'Female', '9502752004', '10-4-89, Santhi Nagar, Nellore, Andhra Pradesh, 524003', '10-4-89, Santhi Nagar, Nellore, Andhra Pradesh, 524003', '2004-10-07', 1, 0, '2024-05-23 20:34:31', '2024-05-23 20:41:38'),
(13, '22341A05E0', 'SRUTHI', '', 'POTHALA', 'Female', '8790167236', '6-2-45, Ram Nagar, Ongole, Andhra Pradesh, 523001', '6-2-45, Ram Nagar, Ongole, Andhra Pradesh, 523001', '2004-05-03', 1, 0, '2024-05-23 20:35:58', '2024-05-23 21:18:00'),
(14, '22341A05E1', 'DIVYA', '', 'POTNURU', 'Female', '9346585644', '4-1-67, Vinayak Nagar, Chittoor, Andhra Pradesh, 517001', '4-1-67, Vinayak Nagar, Chittoor, Andhra Pradesh, 517001', '2005-06-06', 1, 0, '2024-05-23 20:37:36', NULL),
(15, '22341A05E2', 'KEERTHAN', 'SAI', 'POTNURU', 'Male', '9676224565', '2-8-56, MG Road, Anantapur, Andhra Pradesh, 515001', '2-8-56, MG Road, Anantapur, Andhra Pradesh, 515001', '2004-07-30', 1, 0, '2024-05-23 20:39:42', NULL),
(16, '22341A05E3', 'SUSMITHA', '', 'POTTIPOGU', 'Female', '7386619878', '3-5-90, Krishna Nagar, Machilipatnam, Andhra Pradesh, 521001', '3-5-90, Krishna Nagar, Machilipatnam, Andhra Pradesh, 521001', '2005-03-02', 1, 0, '2024-05-23 20:41:10', '2024-05-23 20:55:03'),
(17, '22341A05E4', 'DHARANI', '', 'PUJARI', 'Female', '6301536723', '15-3-23, Lakshmi Puram, Eluru, Andhra Pradesh, 534001', '15-3-23, Lakshmi Puram, Eluru, Andhra Pradesh, 534001', '2004-07-23', 1, 0, '2024-05-23 20:57:34', NULL),
(18, '22341A05E5', 'TEJASWINI', '', 'PULAPARTHI ', 'Female', '9849331917', '1-7-89, Indira Colony, Kadapa, Andhra Pradesh, 516001', '1-7-89, Indira Colony, Kadapa, Andhra Pradesh, 516001', '2004-06-17', 1, 0, '2024-05-23 20:59:50', '2024-05-23 21:04:57'),
(19, '22341A05E6', 'RAMYA ', 'SAI', 'PUTHURI ', 'Female', '9835475382', '3-8-45, Railway Station Road, Srikakulam, Andhra Pradesh, 532001', '3-8-45, Railway Station Road, Srikakulam, Andhra Pradesh, 532001', '2004-10-12', 1, 0, '2024-05-23 21:01:22', '2024-05-23 21:18:12'),
(20, '22341A05E7', 'VIVEK', 'SAI', 'RATNALA', 'Male', '8639521396', '11-2-34, RTC Complex, Vizianagaram, Andhra Pradesh, 535001', '11-2-34, RTC Complex, Vizianagaram, Andhra Pradesh, 535001', '2004-12-08', 1, 0, '2024-05-23 21:03:09', '2024-05-23 21:10:39'),
(21, '22341A05E9', 'TEJESWARA', 'RAO', 'REDDI', 'Male', '8790714198', '14-1-23, Gandhi Bomma Center, Bhimavaram, Andhra Pradesh, 534201', '14-1-23, Gandhi Bomma Center, Bhimavaram, Andhra Pradesh, 534201', '2004-11-12', 1, 0, '2024-05-23 21:07:18', NULL),
(22, '22341A05F0', 'RISHITHA', '', 'AMPILI', 'Female', '8688511746', '16-5-45, Kothapet, Palakonda, Andhra Pradesh, 522201', '16-5-45, Kothapet, Palakonda, Andhra Pradesh, 522201', '2004-09-08', 1, 0, '2024-05-23 21:09:33', NULL),
(23, '22341A05F1', 'NAVACHAITANYA', '', 'S', 'Male', '9030976979', '8-9-23, Panduranga Nagar, Proddatur, Andhra Pradesh, 516360', '8-9-23, Panduranga Nagar, Proddatur, Andhra Pradesh, 516360', '2004-08-24', 1, 0, '2024-05-23 21:21:43', NULL),
(24, '22341A05F2', 'SAI BABA', '', 'SABBISETTY ', 'Male', '9692777797', '9-1-67, Subhash Road, Hindupur, Andhra Pradesh, 515201', '9-1-67, Subhash Road, Hindupur, Andhra Pradesh, 515201', '2005-06-15', 1, 0, '2024-05-23 21:23:21', NULL),
(25, '22341A05F3', 'SANJAY', 'KRISHNA', 'SADHU', 'Male', '8522972205', '6-4-45, Raghavendra Colony, Adoni, Andhra Pradesh, 518301', '6-4-45, Raghavendra Colony, Adoni, Andhra Pradesh, 518301', '2004-11-18', 1, 0, '2024-05-23 21:25:55', NULL),
(26, '22341A05F4', 'ADARSH', '', ' SAILAKA', 'Male', '7382142155', '5-2-34, NTR Nagar, Tadepalligudem, Andhra Pradesh, 534101', '5-2-34, NTR Nagar, Tadepalligudem, Andhra Pradesh, 534101', '2004-05-23', 1, 0, '2024-05-23 21:27:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Student Information System'),
(6, 'short_name', 'SIS - PHP'),
(11, 'logo', 'uploads/logo.jpeg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1643245863.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(9, 'Divakar', NULL, 'Sathivada', 'dynamic_divakar', '6f7b173e0af5a4de7136cffe7d0716b7', 'uploads/divakar.jpg', NULL, 2, 1, '2024-05-18 19:13:50', '2024-05-24 09:08:07'),
(10, 'Naveen', NULL, 'Seera', 'Naveen', '81d824ec5105fe0423b10651d8c83fa8', NULL, NULL, 2, 1, '2024-05-23 12:41:39', NULL),
(12, 'Afrin', NULL, 'Shaik', 'Afrin', '50aae7d77b87b4d10ed0c15de1c62e07', 'uploads/image.png', NULL, 2, 1, '2024-05-23 12:43:52', '2024-05-23 21:34:59'),
(13, 'Surekha', NULL, 'Seendarapu', 'surekha', '8442460f48338fe60a9497b8e0e9022f', 'uploads/surekha.png', NULL, 2, 1, '2024-05-23 12:45:28', '2024-05-24 20:23:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_history`
--
ALTER TABLE `academic_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_history`
--
ALTER TABLE `academic_history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_history`
--
ALTER TABLE `academic_history`
  ADD CONSTRAINT `academic_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `academic_history_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `course_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
