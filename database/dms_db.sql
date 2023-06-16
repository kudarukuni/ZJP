-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 04:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `cover_letter` text NOT NULL,
  `position_id` int(30) NOT NULL,
  `resume_path` text NOT NULL,
  `process_id` tinyint(30) NOT NULL DEFAULT 0 COMMENT '0=for review\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `contact`, `address`, `cover_letter`, `position_id`, `resume_path`, `process_id`, `date_created`) VALUES
(3, 'Rumbidzai', 'DFFF', 'Nyabasa', 'Male', 'rumbidzainyabasa@gmail.com', '666666', 'Budiriro\r\nHarare\r\nHarare\r\nZimbabwe\r\nZimbabwe\r\n00000', 'sdwsc', 9, '1683906180_PAPER 10.doc', 1, '2023-05-12 17:17:49'),
(4, 'tsvuura', 'life', 'nyasha', 'Female', 'nyasha @gmail.com', '+263 859345665434', 'BUDURIRO', 'WISH', 1, '1683974160_PAPER 9a.doc', 0, '2023-05-13 12:36:28'),
(5, 'magazine', 'nathy', 'life', 'Male', 'life@gmail.com', '+2688998009', 'DZ', 'job', 18, '1683977160_PAPER 2.pdf', 0, '2023-05-13 13:26:19'),
(6, 'cgjhkl;.', 'cvkl.m', 'dfgjiop;', 'Male', 'bmvhhlk@gmail.com', '9866', 'xdfguhkjil;op.lk', 'trsdfghujk;l/.lk', 18, '1684139340_PAPER 2.pdf', 0, '2023-05-15 10:29:40'),
(7, 'dghjhkjbj', 'hulknjk', 'tino', 'Male', 'ngionghj@gmail.com', '6909998998898', 'xdfguhkjil;op.lk', 'VJKLBJNL/JVK;L&amp;#x2019;L', 18, '1684239720_New_trafiic_signs.pdf', 0, '2023-05-16 14:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_status`
--

CREATE TABLE `enrollment_status` (
  `id` int(30) NOT NULL,
  `status_label` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment_status`
--

INSERT INTO `enrollment_status` (`id`, `status_label`, `status`) VALUES
(1, 'For Induction', 1),
(2, 'Missing Requirements and Documents', 1),
(3, 'Waiting List', 1),
(4, 'Rejected ', 1),
(10, 'User Has Withdrawn Application', 1),
(12, 'asdfgh', 0),
(13, 'sdfbghjhngfd', 0),
(14, 'adsfdghgdfsdc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(30) NOT NULL,
  `position` varchar(200) NOT NULL,
  `availability` int(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `position`, `availability`, `description`, `status`, `date_created`) VALUES
(1, 'Systems Planning Architect ', 0, '&lt;a href=&quot;https://drive.google.com/file/d/1-R5Pq25Ftn2B7sSi0bHhZZADTDZ6og3a/view&quot; target=&quot;_blank&quot;&gt;Download Brochure &lt;/a&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ZETDC is seeking to employ&amp;nbsp;Systems Planning Architt&amp;nbsp; click the link provided in the description to view the Job Description and requirements.&lt;/p&gt;', 1, '2021-03-21 07:36:22'),
(18, 'Account Intern', 0, '&lt;a href=&quot;https://drive.google.com/file/d/1-WyNZrRU9dlYOliurTaXZu6Oh0bIbHi_/view?&quot; target=&quot;_blank&quot;&gt;Download Brochure&lt;/a&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ZETDC is seeking to employ&amp;nbsp;Systems Planning Architt&amp;nbsp; click the link provided in the description to view the Job Description and requirements.&lt;/p&gt;', 1, '2023-05-13 12:55:11'),
(19, 'Office Adminstrator', 0, '&lt;p&gt;&lt;a href=&quot;https://drive.google.com/file/d/1-VIeSKnm_oNc9TuQhomEwUoFtreVVWvD/view?usp=drivesdk&quot; target=&quot;_blank&quot;&gt;Download Brochure&lt;/a&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ZETDC is seeking to employ&amp;nbsp;Office administrator reporting to the Administrator manager&amp;nbsp;&amp;nbsp; click the link provided in the description to view the Job Description and requirements.&lt;/p&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-13 13:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'ZETDC Vacancy Portal', 'vacancy@zetdc.co.zw', '+26324277777', '1683818760_Energy-Minister-Highlights-Huge-Renewable-Energy-Resources-In-Zimbabwe.png', '&lt;h2 style=&quot;margin-bottom: 10px; padding: 0px; clear: both; color: rgb(111, 111, 110); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Tahoma;&quot;&gt;Background&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 10px; padding: 0px; color: rgb(133, 134, 140); font-family: Roboto, Helvetica, Arial, Verdana, sans-serif; font-size: 15px;&quot;&gt;The Zimbabwe Electricity Transmission and Distribution Company (ZETDC) is a subsidiary of ZESA Holdings. ZETDC is responsible for the transmission of electricity from the power stations, the distribution of electricity as well as its retailing to end users.&lt;/p&gt;&lt;h2 style=&quot;margin-bottom: 10px; padding: 0px; clear: both; color: rgb(111, 111, 110); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Tahoma;&quot;&gt;Our Vision&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 10px; padding: 0px; color: rgb(133, 134, 140); font-family: Roboto, Helvetica, Arial, Verdana, sans-serif; font-size: 15px;&quot;&gt;To be the preferred provider of electricity regionally and related services globally.&lt;/p&gt;&lt;h2 style=&quot;margin-bottom: 10px; padding: 0px; clear: both; color: rgb(111, 111, 110); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Tahoma;&quot;&gt;Our Mission&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 10px; padding: 0px; color: rgb(133, 134, 140); font-family: Roboto, Helvetica, Arial, Verdana, sans-serif; font-size: 15px;&quot;&gt;To bring convenience to our valued customers through the provision of adequate, safe, reliable electricity and related services&lt;/p&gt;&lt;h2 style=&quot;margin-bottom: 10px; padding: 0px; clear: both; color: rgb(111, 111, 110); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: bold; font-stretch: normal; font-size: 18px; line-height: normal; font-family: Tahoma;&quot;&gt;Our Values&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 10px; padding: 0px; color: rgb(133, 134, 140); font-family: Roboto, Helvetica, Arial, Verdana, sans-serif; font-size: 15px;&quot;&gt;Teamwork, Customer focus, Integrity, Innovation and Social Responsibility&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(2, 'Kudzie Wedenga', 'Kudzie123', '12345678', 1),
(3, 'Nyasha Tsvuura', 'nyash123', '12345678', 2),
(4, 'Kingdom  Cheure', 'King123', '123456', 2),
(5, 'adminnyasha', 'nyasha', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment_status`
--
ALTER TABLE `enrollment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrollment_status`
--
ALTER TABLE `enrollment_status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
