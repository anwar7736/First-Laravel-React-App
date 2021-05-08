-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 08:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_feature`
--

CREATE TABLE `course_feature` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_feature`
--

INSERT INTO `course_feature` (`id`, `img`, `title`, `des`) VALUES
(1, 'storage/basic.svg', 'REACT BASIC ', 'Free Videos Cover All Of Basics About React '),
(2, 'storage/webpage.svg', 'REACT FRONT ', 'Paid Videos 1-56 Cover React Front End Development '),
(3, 'storage/cube.svg', 'REST API ', 'Laravel Lumen Rest API Used For This Project '),
(4, 'storage/nucleus.svg', 'AXIOS HTTP ', 'Axios Http Client Use To Get Post Data To API End Point ');

-- --------------------------------------------------------

--
-- Table structure for table `course_plan`
--

CREATE TABLE `course_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_points` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_plan`
--

INSERT INTO `course_plan` (`id`, `title`, `short_des`, `key_points`, `video`) VALUES
(1, 'React Project Course Plan ', 'The overall skills gained from tthis project based courses will prepare you for any type of project development. In this course you will be taught how to write a complete project with React JS including User Panel + Admin Panel. Source code will also be provided with each class of the course, so you can easily practice manually. This project uses React JS with PHP for the server site and MySQL for the database. ', '<ul>\r\n    <li>Creating API with PHP and using React JS</li>\r\n    <li>Use of JSON in Application</li>\r\n    <li>React\'s required plugins to project</li>\r\n    <li>React Bootstrap for Designing</li>\r\n    <li>Project Implementation with Database on Real Server</li>\r\n</ul>', 'https://youtu.be/G5DrB3mjRPw');

-- --------------------------------------------------------

--
-- Table structure for table `free_class`
--

CREATE TABLE `free_class` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_class`
--

INSERT INTO `free_class` (`id`, `img`, `title`, `video`) VALUES
(1, 'storage/class1.svg', 'User Interface', 'http://codesilicon.com/paidvideos/video/1ToolsAndUserPanelUI.mp4'),
(2, 'storage/class2.svg', 'Create File Folder', 'http://codesilicon.com/paidvideos/video/2CreateFileFolder.mp4'),
(3, 'storage/class3.svg', 'Component Framework', 'http://codesilicon.com/paidvideos/video/04ComponentFramework.mp4'),
(4, 'storage/class4.svg', 'Google Font', 'http://codesilicon.com/paidvideos/video/5GoogleFont.mp4'),
(5, 'storage/class5.svg', 'Favicon & Div', 'http://codesilicon.com/paidvideos/video/6FaviconMainDiv.mp4'),
(6, 'storage/class6.svg', 'Top Banner Component', 'http://codesilicon.com/paidvideos/video/7TopBanner.mp4'),
(7, 'storage/class7.svg', 'Service Component', 'http://codesilicon.com/paidvideos/video/8ServiceComponent.mp4'),
(8, 'storage/class8.svg', 'Top Navigation', 'http://codesilicon.com/paidvideos/video/9 Top Navigation 1.mp4'),
(9, 'storage/class9.svg', 'Top Navigation', 'http://codesilicon.com/paidvideos/video/10TopNavigation2.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_04_185017_course_feature_table', 1),
(2, '2020_06_04_195529_course_plan_table', 2),
(3, '2020_06_04_204405_payment_guide_table', 3),
(4, '2020_06_05_001936_more_series_table', 4),
(5, '2020_06_05_184700_free_class_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `more_series`
--

CREATE TABLE `more_series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `more_series`
--

INSERT INTO `more_series` (`id`, `img`, `title`, `des`, `url`) VALUES
(1, 'storage/asp.png', 'ASP.NET', 'ASP.NET', 'https://asp.rabbil.com'),
(2, 'storage/laravellogo.png', 'Laravel Rest API', 'Laravel Rest API', 'https://lumen.rabbil.com'),
(3, 'storage/laravellogo.png', 'Laravel A-Z', 'Laravel A-Z', 'https://laravel.rabbil.com'),
(4, 'storage/androidlogo.png', 'Android Apps', 'Android Apps', 'https://www.youtube.com/watch?v=O95uA9b9S-o&list=PLkyGuIcLcmx0jiHcv_dps5wKMKjiI1AuD'),
(5, 'storage/dartlogo.png', 'Dart Programming', 'Dart Programming', 'https://www.youtube.com/watch?v=vYfUFWrkgJk&list=PLkyGuIcLcmx1mIPyMdVodlSVJqL7Y9Wv7'),
(6, 'storage/javalogo.png', 'Java Programming', 'Java Programming', 'https://www.youtube.com/watch?v=3dsIf-tIEMk&list=PLkyGuIcLcmx1WPp2s1LGsYMXrOzJdJxxg'),
(7, 'storage/reactlogo.png', 'React Native ', 'React Native ', 'http://reactNative.rabbil.com'),
(8, 'storage/es6.png', 'Javascript ES6', 'Javascript ES6', 'https://www.youtube.com/playlist?list=PLkyGuIcLcmx2Fw5adzhL7q9fJ0PQoU3i7');

-- --------------------------------------------------------

--
-- Table structure for table `payment_guide`
--

CREATE TABLE `payment_guide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_guide`
--

INSERT INTO `payment_guide` (`id`, `des`, `price`, `banner`) VALUES
(1, '<p>\r\nSend your course fee 01744827686 (Bkash Personal). After sending fee use Bkash Trxid and sender mobile number for registration\r\n</p>\r\n<p>\r\nThis is not buy and try product, after account activation course fee is not refundable.For Discussion contact with course manager SOBUJ AHMED, mobile number- 01744827686\r\n</p>\r\n<p>\r\nFor further help contact with SUMAIYA KHANOM , helpline mobile number 01774688159 \r\n</p>', '2000TK', 'storage/offer.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_feature`
--
ALTER TABLE `course_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_plan`
--
ALTER TABLE `course_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_class`
--
ALTER TABLE `free_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `more_series`
--
ALTER TABLE `more_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_guide`
--
ALTER TABLE `payment_guide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_feature`
--
ALTER TABLE `course_feature`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_plan`
--
ALTER TABLE `course_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `free_class`
--
ALTER TABLE `free_class`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `more_series`
--
ALTER TABLE `more_series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_guide`
--
ALTER TABLE `payment_guide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
