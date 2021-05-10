-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 10:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'React Project Course Plan', 'The overall skills gained from tthis project based courses will prepare you for any type of project development. In this course you will be taught how to write a complete project with React JS including User Panel + Admin Panel. Source code will also be provided with each class of the course, so you can easily practice manually. This project uses React JS with PHP for the server site and MySQL for the database. ', '<ul>\r\n    <li>Creating API with PHP and using React JS</li>\r\n    <li>Use of JSON in Application</li>\r\n    <li>React\'s required plugins to project</li>\r\n    <li>React Bootstrap for Designing</li>\r\n    <li>Project Implementation with Database on Real Server</li>\r\n</ul>', 'https://youtu.be/G5DrB3mjRPw');

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
-- Table structure for table `information_etc`
--

CREATE TABLE `information_etc` (
  `id` int(255) NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_etc`
--

INSERT INTO `information_etc` (`id`, `about`, `refund`, `terms`, `privacy`) VALUES
(1, '<h2 className=\"serviceName\">Who i AM</h2>\r\n<hr/>\r\n<p className=\"serviceDescription\">I am a highly talented, experienced, professional and cooperative software engineer, I am working in programming and web world for more than 4 years .I assure you a wide range of quality IT services. Web development, mobile app development and UI design the major filed i am expert in. Moreover i have teaching passion. I makes video tutorial to share my knowledge. My over all skill makes me a complete software developer, so you can hire me for your projects </p>\r\n<h1 className=\"serviceName\">My Mission</h1>\r\n<hr/>\r\n                            <p className=\"serviceDescription\">My mission is to develop unique idea and quality software that will secure top ranking in marketplace, people\'s system and people\'s heart. Develop robust, secure, dynamic, responsive software for all platform (computer, tab, mobile phone). Provide top notch customer service, customization of our product according to customer demand and current technology. Planning advanced techniques for optimization, user experience and satisfaction of customer for our software. Planning flexible software that will not be bounded by any linguistic or regional restriction. I want to flourish software that can blow people\'s heart and soul </p>\r\n                            <h1 className=\"serviceName\">My Vision</h1>\r\n                            <hr/>\r\n                            <p className=\"serviceDescription\">My vision is to brand our firm as the best firm in the world. Secure the top place among software providers for both local and international market. Brand our country as the best software provider country. Create employment for youth on the field of both software and corporate level. Provide our country and world with superior software. Nurture youths to be highly skilled software engineers </p>', '                            <ul>\r\n                                <li>First 30 Days Money Back!</li>\r\n                                <li>THIS IS NOT A BUY-AND-TRY PRODUCT</li>\r\n                                <li>Refund is applicable for software and plugins, if the products aren\'t functioning, producing errors or you haven\'t received access to them at any time during the first 30 days after purchase, please get in touch with our support team immediately. If we are unable to provide you a working solution within 3 business days, simply delete all digital files and license keys you obtained from us, and ask for a full refund. You will get your refund processed within 30 days or early. That\'s a firm promise and commitment.</li>\r\n                                <li>After 30 Days : There is no refund offered after the first 30 days.</li>\r\n                                <li>To serve you and others better in the future, we require that you tell us why you want a refund and provide us with an opportunity to help you fix the issue. We want satisfied customers.</li>\r\n                                <li>Please remember that asking for a refund but continuing to use products purchased from us is the same thing as stealing and also violate applicable intellectual property rights law.</li>\r\n                            </ul>', '<p>BY ACCESSING OR USING THIS SITE YOU REPRESENT THAT YOU HAVE THE FULL AUTHORITY TO ACT TO BIND YOURSELF, ANY THIRD PARTY, COMPANY, OR LEGAL ENTITY, AND THAT YOUR USE AND/OR INTERACTION, AS WELL AS CONTINUING TO USE OR INTERACT, WITH THE SITE CONSTITUTES YOUR HAVING READ AND AGREED TO THESE TERMS OF USE AS WELL AS OTHER AGREEMENTS THAT WE MAY POST ON THE SITE.<p/><p>BY ACCESSING OR USING THIS SITE YOU REPRESENT THAT YOU HAVE THE FULL AUTHORITY TO ACT TO BIND YOURSELF, ANY THIRD PARTY, COMPANY, OR LEGAL ENTITY, AND THAT YOUR USE AND/OR INTERACTION, AS WELL AS CONTINUING TO USE OR INTERACT, WITH THE SITE CONSTITUTES YOUR HAVING READ AND AGREED TO THESE TERMS OF USE AS WELL AS OTHER AGREEMENTS THAT WE MAY POST ON THE SITE.<p/>\r\n', '<p>Unless you have entered into an express written contract with this website to the contrary, visitors, viewers, subscribers, members, affiliates, or customers have no right to use this information in a commercial or public setting; they have no right to broadcast it, copy it, save it, print it, sell it, or publish any portions of the content of this website. By accessing the contents of this website, you agree to this condition of access and you acknowledge that any unauthorized use is unlawful and may subject you to civil or criminal penalties. Again, Visitor has no rights whatsoever to use the content of, or portions thereof, including its databases, invisible pages, linked pages, underlying code, or other intellectual property the site may contain, for any reason or for any use whatsoever. In recognition of the fact that it may be difficult to quantify the exact damages arising from infringement of this provision, Visitor agrees to compensate the owners of this site with liquidated damages in the amount of U.S. $100,000, or, if it can be calculated, the actual costs and actual damages for breach of this provision, whichever is greater. Visitor warrants that he or she understands that accepting this provision is a condition of accessing this site and that accessing this site constitutes acceptance. </p>');

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
(1, '<p>\r\nSend your course fee XXXXXXXXX(Bkash Personal). After sending fee use Bkash Trxid and sender mobile number for registration\r\n</p>\r\n<p>\r\nThis is not buy and try product, after account activation course fee is not refundable.For Discussion contact with course manager Mr. X, mobile number- XXXXXXXX\r\n</p>\r\n<p>\r\nFor further help contact with Mr. Y, helpline mobile number YYYYYYYY\r\n</p>', '2000', 'storage/offer.png');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(255) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `bkash_number` varchar(1000) NOT NULL,
  `bkash_TrxID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `email`, `phone`, `password`, `bkash_number`, `bkash_TrxID`) VALUES
(19, 'Md Anwar Hossain', 'anwarhossain7736@gmail.com', '01794030592', 'asdfasddad', '01998839860', 'TD3434XFDF33'),
(20, 'Md Anwar Hossain', 'anwarhossain77364@gmail.com', '01794030591', 'asdfasddad', '01998839860', 'TD3434XFDF33');

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
-- Indexes for table `information_etc`
--
ALTER TABLE `information_etc`
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
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
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
-- AUTO_INCREMENT for table `information_etc`
--
ALTER TABLE `information_etc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
