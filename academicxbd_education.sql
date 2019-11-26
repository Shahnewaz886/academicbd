-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2019 at 08:16 AM
-- Server version: 10.3.20-MariaDB
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
-- Database: `academicxbd_education`
--

-- --------------------------------------------------------

--
-- Table structure for table `ht_blogs`
--

CREATE TABLE `ht_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text NOT NULL,
  `detail` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_blogs`
--

INSERT INTO `ht_blogs` (`id`, `title`, `short_desc`, `detail`, `type`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'lenovo laptop hj', 'oiuoru', '<p>iouipiopo</p>', 'Blog', 54, 'Active', '2018-09-11 01:20:59', '2018-09-10 19:20:59'),
(2, 'This is new blog', 'This is new blog', '<p>okkkkkkkkkkkkk</p>', 'Scholarship', 54, 'Active', '2018-09-11 01:08:32', '2018-09-10 19:08:32'),
(3, 'lenovo laptop ok', 'j;ijiklu', '<p><span style=\"background-color: #ff0000;\"><img src=\"../../photos/72/Penguins.jpg\" alt=\"\" />jhkhyu </span></p>\r\n<p>&nbsp;</p>', 'Scholarship', 72, 'Active', '2018-09-25 02:16:39', '2018-09-24 20:16:39'),
(4, 'lenovo laptop', 'xbgfh', NULL, 'Blog', 72, 'Active', '2018-09-10 19:25:08', '2018-09-10 19:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `ht_classes`
--

CREATE TABLE `ht_classes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_classes`
--

INSERT INTO `ht_classes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(29, 'Class One', '2018-08-02 11:08:58', '2018-08-02 04:54:05'),
(30, 'Class Two', '2018-08-02 11:09:01', '2018-08-02 04:54:34'),
(31, 'Class Three', '2018-08-02 11:09:05', '2018-08-02 04:54:49'),
(32, 'Class Four', '2018-08-02 11:09:09', '2018-08-02 04:55:03'),
(45, 'Class Five', '2018-09-06 18:05:48', '2018-09-06 18:05:48'),
(50, 'Class Six', '2019-07-21 04:39:47', '2019-07-21 04:39:47'),
(51, 'Class Seven', '2019-07-21 10:42:35', '2019-07-21 04:42:35'),
(52, 'Class Eight', '2019-07-21 10:43:17', '2019-07-21 04:43:17'),
(53, 'Class Nine', '2019-07-21 10:42:44', '2019-07-21 04:42:44'),
(54, 'Class Ten', '2019-07-21 10:42:52', '2019-07-21 04:42:52'),
(55, 'Class Eleven', '2019-07-21 04:43:53', '2019-07-21 04:43:53'),
(56, 'Class Twelve', '2019-07-21 04:44:03', '2019-07-21 04:44:03'),
(57, '1st Year', '2019-07-21 04:44:16', '2019-07-21 04:44:16'),
(58, '2nd Year', '2019-07-21 04:44:24', '2019-07-21 04:44:24'),
(59, '3rd Year', '2019-07-21 04:44:33', '2019-07-21 04:44:33'),
(60, '4th Year', '2019-07-21 04:44:41', '2019-07-21 04:44:41'),
(61, '5th Year', '2019-07-21 04:44:50', '2019-07-21 04:44:50'),
(62, 'Intern', '2019-07-21 04:45:02', '2019-07-21 04:45:02'),
(63, 'Level - 1, Term - 1', '2019-07-21 04:45:23', '2019-07-21 04:45:23'),
(64, 'Level - 1, Term - 2', '2019-07-21 04:45:31', '2019-07-21 04:45:31'),
(65, 'Level - 1, Term - 3', '2019-07-21 04:45:39', '2019-07-21 04:45:39'),
(66, 'Level - 2, Term - 1', '2019-07-21 04:45:50', '2019-07-21 04:45:50'),
(67, 'Level - 2, Term - 2', '2019-07-21 04:45:56', '2019-07-21 04:45:56'),
(68, 'Level - 2, Term - 3', '2019-07-21 04:46:04', '2019-07-21 04:46:04'),
(69, 'Level - 3, Term - 1', '2019-07-21 04:46:14', '2019-07-21 04:46:14'),
(70, 'Level - 3, Term - 2', '2019-07-21 04:46:21', '2019-07-21 04:46:21'),
(71, 'Level - 3, Term - 3', '2019-07-21 04:46:28', '2019-07-21 04:46:28'),
(72, 'Level - 4, Term - 1', '2019-07-21 04:46:58', '2019-07-21 04:46:58'),
(73, 'Level - 4, Term - 2', '2019-07-21 04:47:05', '2019-07-21 04:47:05'),
(74, 'Level - 4, Term - 3', '2019-07-21 04:47:12', '2019-07-21 04:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `ht_class_room`
--

CREATE TABLE `ht_class_room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_all_open` int(11) NOT NULL DEFAULT 0,
  `class_type` int(11) NOT NULL DEFAULT 0,
  `embed_code` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_class_room`
--

INSERT INTO `ht_class_room` (`id`, `name`, `class_date`, `is_all_open`, `class_type`, `embed_code`, `teacher_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(8, 'Physics Lecture - 1 - Introduction to Physics', '2019-05-02 05:46:00', 1, 0, 'https://www.youtube.com/watch?v=6wb29I_79lA', 77, '/files/ca7f149499d69e735c3d2e488e75370f.png', 'physics lecture', '2019-05-30 23:20:09', '2019-05-30 23:47:47'),
(9, 'Lecture: Chemical Bonding and Molecular Structure - 1', '2019-05-02 05:37:00', 1, 0, 'https://www.youtube.com/watch?v=bQ7i2BvShKg', 77, '/files/a16533a52ecbb00dde05c15401fe7cb0.jpg', 'chemistry lecture', '2019-05-30 23:21:16', '2019-05-30 23:40:11'),
(10, 'Mahabub Alam', '2019-05-07 05:35:00', 1, 0, 'https://www.youtube.com/watch?v=hCH4rs-KEeA', 77, '/files/83f92bc829f3643ae73fbba2a3771ab9.jpg', 'math lecture', '2019-05-30 23:37:34', '2019-05-30 23:37:34'),
(11, 'Biology: Cell Structure I Nucleus Medical Media', '2019-05-09 05:41:00', 1, 0, 'https://www.youtube.com/watch?v=URUJD5NEXC8', 77, '/files/7e117e1c770d4e2fa0ebe94022ec1a65.jpg', 'biology lecture', '2019-05-30 23:42:14', '2019-05-30 23:42:14'),
(12, 'How to learn coding language or programming language easily.', '2019-05-04 05:44:00', 1, 0, 'https://www.youtube.com/watch?v=VZzaqgxyHJs', 77, '/files/67e60917cede666fd1a5e80675b2fee8.png', 'programing learning', '2019-05-30 23:46:15', '2019-05-30 23:46:15'),
(13, 'Best Quran Recitation in the World 2016 Emotional Recitation |Heart Soothing by Abdur Rahman Al Ossi', '2019-05-02 17:21:00', 1, 0, 'https://www.youtube.com/watch?v=ef8Ci5Zc3ZA&t=16s', 79, '/files/45d09dc8e0c06ac95c3795020c7ac0ac.jpg', 'tilawat', '2019-05-31 11:10:18', '2019-05-31 11:21:30'),
(14, 'Maher Zain - Ya Nabi Salam Alayka (Arabic)', '2019-05-04 17:16:00', 1, 0, 'https://www.youtube.com/watch?v=Vqfy4ScRXFQ', 79, '/files/ae43905bcafefde72aabe1e64360e6d0.jpg', 'islamic gojol', '2019-05-31 11:16:53', '2019-05-31 11:16:53'),
(15, 'sorat albaqara', '2019-05-07 17:17:00', 1, 0, 'https://www.youtube.com/watch?v=96xg6AGxrRE', 79, '/files/350a580536e208a3c8bd5bc381671428.jpg', 'tilawat', '2019-05-31 11:19:00', '2019-05-31 11:19:00'),
(16, 'Surah RAHMAN', '2019-05-16 17:19:00', 1, 0, 'https://www.youtube.com/watch?v=e0rU1lUhzjY', 79, '/files/9df4f1733165e724429ae5a2c7070d6f.jpg', 'shurah ar rahman', '2019-05-31 11:20:47', '2019-05-31 11:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `ht_contents`
--

CREATE TABLE `ht_contents` (
  `id` int(11) NOT NULL,
  `content_section_id` int(11) NOT NULL COMMENT 'School, College',
  `institution_category_id` int(11) DEFAULT NULL,
  `institution_type_id` int(11) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `material_type_id` int(11) DEFAULT NULL COMMENT 'all material type id',
  `subject_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `tests_id` int(11) DEFAULT NULL COMMENT 'standardize_test_id or job_exam_id',
  `skill_development_category_id` int(11) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `content_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_location` varchar(255) DEFAULT NULL,
  `file_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_contents`
--

INSERT INTO `ht_contents` (`id`, `content_section_id`, `institution_category_id`, `institution_type_id`, `institution_id`, `class_id`, `material_type_id`, `subject_id`, `department_id`, `tests_id`, `skill_development_category_id`, `content_type_id`, `content_name`, `file_location`, `file_content`, `writer_id`, `user_id`, `content_status`, `created_at`, `updated_at`) VALUES
(4, 1, 0, NULL, 5, 6, 0, 3, 0, 0, 0, 5, 'Class Eight bangla book', NULL, '<p>dgdhgj</p>', NULL, 48, NULL, '2018-06-24 17:25:20', '2018-06-24 11:25:20'),
(5, 1, 0, NULL, 5, 6, 0, 3, 0, 0, 0, 6, 'English for today', NULL, '<p>dfgetry ru678</p>', NULL, 48, NULL, '2018-06-24 11:32:24', '2018-06-24 11:32:24'),
(7, 5, 0, NULL, 4, 6, 0, 3, 0, 0, 0, 5, 'this for test ed', NULL, '<p>fdhhrthty</p>', NULL, 48, NULL, '2018-06-24 11:50:33', '2018-06-24 11:50:33'),
(8, 4, 0, NULL, 5, 6, 0, 3, 0, 0, 0, 5, 'this for test', NULL, '<p>ccvngjn fhtyuy6</p>', NULL, 48, NULL, '2018-06-24 12:07:52', '2018-06-24 12:07:52'),
(9, 3, 0, NULL, 4, 5, 0, 3, 0, 0, 0, 5, 'this for test ed', NULL, '<p>vbngfhn ftytuy</p>', NULL, 48, NULL, '2018-06-24 12:08:36', '2018-06-24 12:08:36'),
(13, 10, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, 3, 'Higher Study', NULL, '<p>srhyrtuyt</p>', NULL, 48, NULL, '2018-06-29 05:10:13', '2018-06-28 23:10:13'),
(14, 11, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, 5, 'this for test ed', NULL, '<p>uwwehieuj erjy54</p>', NULL, 48, NULL, '2018-06-28 23:19:51', '2018-06-28 23:19:51'),
(15, 12, NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, 0, 5, 'this for test ed', NULL, '<p>beeuhte ht43</p>', NULL, 48, NULL, '2018-06-29 05:23:37', '2018-06-28 23:23:37'),
(16, 6, NULL, NULL, 5, 6, NULL, 3, NULL, 0, 0, 3, 'Technology and vocational', NULL, '<p>vmh</p>', NULL, 48, NULL, '2018-06-29 04:15:24', '2018-06-29 04:15:24'),
(17, 7, 6, NULL, 6, NULL, 2, 3, NULL, 0, 0, 5, 'vcv cvccvcvc cvc', NULL, '<p><img src=\"http://localhost:8000/assets/uploaded/unnamed.png\" alt=\"unnamed\" /></p>', NULL, 48, NULL, '2018-06-30 00:09:20', '2018-06-30 00:09:20'),
(19, 12, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, 5, 'this for test', NULL, '<p>trthrejtrjht</p>', NULL, 54, NULL, '2018-07-04 10:26:28', '2018-07-04 10:26:28'),
(22, 10, NULL, NULL, NULL, NULL, 3, NULL, NULL, 2, NULL, 5, 'this for test', NULL, '<p>fdhfjtyiuyoiuo</p>', NULL, 54, NULL, '2018-07-05 01:59:39', '2018-07-04 19:59:39'),
(23, 11, NULL, NULL, NULL, NULL, 3, NULL, NULL, 3, NULL, 3, 'this for test ed', NULL, '<p>fcjfgjtyjiu</p>', NULL, 54, NULL, '2018-07-04 20:03:01', '2018-07-04 20:03:01'),
(25, 6, NULL, NULL, 4, 6, NULL, 3, NULL, NULL, NULL, 4, 'this for test', NULL, '<p>uihire rejrtioyjt</p>', NULL, 54, NULL, '2018-07-05 14:27:46', '2018-07-05 08:27:46'),
(26, 12, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 2, 5, 'this for test', NULL, '<p>This for test</p>', NULL, 54, NULL, '2018-07-05 08:36:09', '2018-07-05 08:36:09'),
(27, 1, NULL, NULL, 4, 7, NULL, 5, NULL, NULL, NULL, 4, 'English for today', NULL, '<p>This for test</p>', NULL, 54, NULL, '2018-07-08 16:38:51', '2018-07-08 10:38:51'),
(28, 7, 4, NULL, 19, NULL, 3, 26, NULL, NULL, NULL, 4, 'this for test ed', NULL, '<p>,khjlkjlk;o</p>', NULL, 54, NULL, '2018-08-08 15:06:04', '2018-08-08 09:06:04'),
(29, 6, NULL, NULL, 7, 7, NULL, 5, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>this for test</p>', NULL, 54, NULL, '2018-07-08 10:33:42', '2018-07-08 10:33:42'),
(30, 3, NULL, NULL, 5, 6, NULL, 3, NULL, NULL, NULL, 5, 'this for test ed', NULL, '<p>thid ijyitr riytr yerkt jry</p>', NULL, 54, NULL, '2018-07-08 10:37:49', '2018-07-08 10:37:49'),
(31, 9, 5, NULL, 7, NULL, 3, 5, 3, NULL, NULL, 5, 'this for test', NULL, '<p>okkkkkkkkkkkk</p>', NULL, 54, NULL, '2018-07-09 18:07:10', '2018-07-09 18:07:10'),
(33, 8, 5, NULL, 7, NULL, 3, 5, 3, NULL, NULL, 5, 'this for test', NULL, '<p>This for test</p>', NULL, 54, NULL, '2018-07-10 00:22:43', '2018-07-09 18:22:43'),
(34, 1, NULL, NULL, 6, 8, NULL, 4, NULL, NULL, NULL, 5, 'this for test ed', NULL, NULL, NULL, 54, NULL, '2018-07-09 19:03:45', '2018-07-09 19:03:45'),
(35, 1, NULL, NULL, 6, 8, NULL, 4, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>আই আমার বাংলা</p>', NULL, 54, NULL, '2018-07-10 16:03:55', '2018-07-10 16:03:55'),
(36, 1, NULL, NULL, 4, 7, NULL, 5, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>tguwtioetnbtu</p>', NULL, 54, NULL, '2018-07-14 04:43:20', '2018-07-14 04:43:20'),
(37, 1, NULL, NULL, 6, 8, NULL, 4, NULL, NULL, NULL, 5, 'this for test ed', NULL, '<p>shdg yhtru</p>', NULL, 54, NULL, '2018-07-14 04:51:38', '2018-07-14 04:51:38'),
(38, 1, NULL, NULL, NULL, 8, NULL, 4, NULL, NULL, NULL, 5, 'this for test ed', NULL, '<p>hrty try</p>', NULL, 54, NULL, '2018-07-14 04:52:12', '2018-07-14 04:52:12'),
(39, 1, NULL, 10, NULL, 8, NULL, 4, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>xfhftht fhtruytu</p>', NULL, 54, NULL, '2018-07-14 11:05:32', '2018-07-14 05:05:32'),
(40, 1, NULL, 10, NULL, 7, NULL, 5, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>hbjfgjhght hytu</p>', NULL, 54, NULL, '2018-07-14 11:07:15', '2018-07-14 05:07:15'),
(42, 1, NULL, NULL, 5, 15, NULL, 6, NULL, NULL, NULL, 4, 'this for test', NULL, '<p>হ্যফুরে জ্রেগ রগতের&nbsp;</p>', NULL, 54, NULL, '2018-07-21 06:41:58', '2018-07-21 00:41:58'),
(43, 1, NULL, 11, 5, 15, NULL, 6, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>এক্সবফহগফহ</p>', NULL, 54, NULL, '2018-07-21 00:45:21', '2018-07-21 00:45:21'),
(44, 1, NULL, 11, NULL, 15, NULL, 6, NULL, NULL, NULL, 5, 'this for test', NULL, '<p>সদ্গেরত্র </p>', NULL, 54, NULL, '2018-07-21 06:46:36', '2018-07-21 00:46:36'),
(45, 1, NULL, 11, NULL, 15, 4, 6, NULL, NULL, NULL, 6, 'বাংলা প্রথম পত্র', NULL, NULL, NULL, 54, NULL, '2018-07-28 11:52:40', '2018-07-28 05:52:40'),
(48, 2, NULL, 13, 17, 34, 3, 8, NULL, NULL, NULL, 5, 'ইসলামিক', NULL, '<p><a title=\"Rabiuls CV\" href=\"http://localhost:8181/assets/uploaded/Rabiuls CV.docx\">Rabiuls CV</a></p>', NULL, 54, NULL, '2018-08-04 12:22:30', '2018-08-04 06:22:30'),
(49, 3, NULL, 11, 16, 42, 3, 35, NULL, NULL, NULL, 5, 'this for test', '/files/72/annual_report_2009.pdf', '<p><a title=\"Rabiuls CV\" href=\"/files/72/annual_report_2009.pdf\">Rabiuls CV&nbsp;</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>ok</p>', NULL, 54, NULL, '2018-09-06 01:30:29', '2018-09-05 19:30:29'),
(50, 4, NULL, 11, 27, 35, 2, 35, NULL, NULL, NULL, 3, 'this for test', '/files/72/EEE_11_EEE_101_11-12.pdf', '<p><a title=\"annual_report_2009\" href=\"/assets/uploaded/annual_report_2009.pdf\">annual_report_2009</a></p>', NULL, 54, NULL, '2018-09-06 01:30:48', '2018-09-05 19:30:48'),
(51, 5, NULL, 11, 13, 28, 3, 34, NULL, NULL, NULL, 3, 'this for test', '/files/72/EEE_11_EEE_101_11-12.pdf', '<p><a title=\"p601\" href=\"/assets/uploaded/p601.pdf\">p601</a></p>', NULL, 54, NULL, '2018-09-06 01:31:34', '2018-09-05 19:31:34'),
(52, 6, NULL, 11, 18, 43, 3, 25, NULL, NULL, NULL, 2, 'Test', NULL, '<p><iframe src=\"http://www.youtube.com/embed/awCtmkJqqg8\" width=\"425\" height=\"350\"></iframe></p>', NULL, 54, NULL, '2018-08-19 13:53:42', '2018-08-19 07:53:42'),
(57, 7, 4, NULL, 21, NULL, 3, 27, NULL, NULL, NULL, 4, 'this for test', NULL, '<p>svgdfgdfgd</p>', NULL, 54, NULL, '2018-08-12 10:14:11', '2018-08-12 10:14:11'),
(58, 7, 4, NULL, 25, NULL, 1, 27, NULL, NULL, NULL, 2, 'A Catholic sister', NULL, '<p><iframe src=\"http://www.youtube.com/embed/so03cpPPNYw\" width=\"425\" height=\"350\"></iframe></p>', NULL, 54, NULL, '2018-08-19 06:44:26', '2018-08-19 00:44:26'),
(59, 7, 4, NULL, 10, NULL, 1, 27, NULL, NULL, NULL, 2, 'A Catholic sister', NULL, '<p><iframe src=\"http://www.youtube.com/embed/so03cpPPNYw\" width=\"425\" height=\"350\"></iframe></p>', NULL, 54, NULL, '2018-08-19 06:45:50', '2018-08-19 00:45:50'),
(60, 9, 4, NULL, 25, 41, 1, 30, 4, NULL, NULL, 2, 'A Catholic sister', NULL, '<p><iframe src=\"http://www.youtube.com/embed/9A6JMPjFaOw\" width=\"425\" height=\"350\"></iframe></p>', NULL, 54, NULL, '2018-08-14 17:37:51', '2018-08-14 11:37:51'),
(61, 9, 4, NULL, 25, 41, 1, 30, 4, NULL, NULL, 2, 'A Catholic sister', NULL, '<p><iframe src=\"http://www.youtube.com/embed/9A6JMPjFaOw\" width=\"425\" height=\"350\"></iframe></p>', NULL, 54, NULL, '2018-08-14 11:16:35', '2018-08-14 11:16:35'),
(62, 8, 4, NULL, 28, 41, 2, 28, 4, NULL, NULL, 4, 'A Catholic sister', NULL, '<p>rhgi wrjiryt</p>', NULL, 54, NULL, '2018-08-19 06:09:38', '2018-08-19 00:09:38'),
(63, 1, NULL, 11, 4, 30, 1, 34, NULL, NULL, NULL, 4, 'A Catholic sister', NULL, '<p>vdfgfhgh</p>', NULL, 54, NULL, '2018-09-02 09:08:07', '2018-09-02 03:08:07'),
(64, 1, NULL, 11, 27, 29, 3, 34, NULL, NULL, NULL, 4, 'Test', NULL, '<p>this fror test</p>', NULL, 54, NULL, '2018-08-20 07:11:28', '2018-08-20 01:11:28'),
(65, 2, NULL, 13, 26, 17, 3, 26, NULL, NULL, NULL, 4, 'A Catholic sister', '/files/72/annual_report_2009.pdf', '<p>djjty</p>', NULL, 54, NULL, '2018-09-03 02:20:10', '2018-09-02 20:20:10'),
(66, 9, 4, NULL, 10, 41, 3, 30, 4, NULL, NULL, 3, 'A Catholic sister', '/files/72/annual_report_2009.pdf', NULL, NULL, 54, NULL, '2018-09-06 17:17:54', '2018-09-06 11:17:54'),
(67, 8, 4, NULL, 28, 41, 3, 28, 4, NULL, NULL, 2, 'PDF file', '/files/72/annual_report_2009.pdf', '<p>drrty hrtytu</p>', NULL, 54, NULL, '2018-09-06 01:49:25', '2018-09-05 19:49:25'),
(68, 7, 4, NULL, 25, NULL, 1, 27, NULL, NULL, NULL, 2, 'PDF file', '/files/72/annual_report_2009.pdf', '<p><a title=\"annual_report_2009\" href=\"/assets/uploaded/annual_report_2009.pdf\">annual_report_2009</a></p>', NULL, 54, NULL, '2018-09-06 01:49:48', '2018-09-05 19:49:48'),
(69, 6, NULL, 11, 18, 43, 3, 25, NULL, NULL, NULL, 3, 'Test', '/files/72/EEE_11_EEE_101_11-12.pdf', '<p>sfgdgrt</p>', NULL, 54, NULL, '2018-09-06 01:31:52', '2018-09-05 19:31:52'),
(70, 1, NULL, 11, 4, 29, 3, 34, NULL, NULL, NULL, 5, 'A Catholic sister', '/files/72/EEE_11_EEE_101_11-12.pdf', '<p><a title=\"annual_report_2009\" href=\"/assets/uploaded/annual_report_2009.pdf\" target=\"_blank\" rel=\"noopener\">annual_report_2009</a></p>', NULL, 54, NULL, '2018-09-03 01:51:35', '2018-09-02 19:51:35'),
(71, 1, NULL, 11, 4, 29, 4, 34, NULL, NULL, NULL, 5, 'eeee', NULL, NULL, NULL, 72, NULL, '2018-09-06 16:38:24', '2018-09-06 10:38:24'),
(72, 2, NULL, 13, 17, 17, 4, 26, NULL, NULL, NULL, 4, 'A Catholic sister', NULL, '<p>hfhrt</p>', NULL, 72, NULL, '2018-09-20 16:27:48', '2018-09-20 10:27:48'),
(73, 1, NULL, 11, 4, 29, 2, 34, NULL, NULL, NULL, 2, 'this for test', '_TbOxyWXr-I', NULL, NULL, 72, NULL, '2018-09-06 18:48:49', '2018-09-06 12:48:49'),
(74, 1, NULL, 11, 4, 29, 1, 34, NULL, NULL, NULL, 3, 'this for test', '/files/72/EEE_11_EEE_101_11-12.pdf', NULL, NULL, 72, NULL, '2018-09-06 18:27:10', '2018-09-06 12:27:10'),
(75, 9, 4, NULL, 10, 41, 4, 30, 4, NULL, NULL, 3, 'this for test', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-06 11:18:43', '2018-09-06 11:18:43'),
(76, 1, NULL, 11, 27, 30, 1, 34, NULL, NULL, NULL, 3, 'A Catholic sister asked Yusuf Estes-Why he accepted Islam- 2011', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-06 18:25:53', '2018-09-06 18:25:53'),
(77, 1, NULL, 11, NULL, 29, 1, 34, NULL, NULL, NULL, 3, 'PDF file', NULL, NULL, NULL, 72, NULL, '2018-09-19 01:44:34', '2018-09-18 19:44:34'),
(78, 12, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 2, 4, 'this for test', NULL, '<p>This for test</p>', NULL, 72, NULL, '2018-09-09 19:37:55', '2018-09-09 19:37:55'),
(79, 10, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 2, 5, 'this for test ok', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-10 01:55:58', '2018-09-09 19:55:58'),
(80, 10, NULL, NULL, NULL, NULL, 4, NULL, NULL, 4, NULL, 4, 'this for test', NULL, NULL, NULL, 72, NULL, '2018-09-10 09:54:23', '2018-09-10 09:54:23'),
(81, 11, NULL, NULL, NULL, NULL, 3, NULL, NULL, 6, NULL, 3, 'this for test ok', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-13 01:16:14', '2018-09-12 19:16:14'),
(82, 11, NULL, NULL, NULL, NULL, 4, 1, NULL, 1, NULL, 5, 'this for test', '/files/72/EEE_11_EEE_101_11-12.pdf', NULL, NULL, 72, NULL, '2018-09-10 18:17:33', '2018-09-10 18:17:33'),
(83, 12, NULL, NULL, NULL, NULL, 3, 2, NULL, 1, NULL, 3, 'this for test', '/files/72/EEE_11_EEE_101_11-12.pdf', NULL, NULL, 72, NULL, '2018-09-11 00:39:45', '2018-09-10 18:39:45'),
(84, 11, NULL, NULL, NULL, NULL, 3, NULL, NULL, 4, NULL, 5, 'A Catholic sister', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-13 01:20:48', '2018-09-12 19:20:48'),
(85, 12, NULL, NULL, NULL, NULL, 4, 1, NULL, 2, NULL, 4, 'Test', '/files/72/EEE_11_EEE_101_11-12.pdf', '<p>tedsfguhduh</p>', NULL, 72, NULL, '2018-09-19 15:45:13', '2018-09-19 09:45:13'),
(86, 10, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 3, 2, 'A Catholic sister', 'https://www.youtube.com/watch?v=IUpoCjxPzyo', NULL, NULL, 72, NULL, '2018-09-16 20:02:47', '2018-09-16 20:02:47'),
(87, 12, NULL, NULL, NULL, NULL, 4, 1, NULL, 2, NULL, 4, 'A Catholic sister', NULL, '<p>This for test</p>', NULL, 72, NULL, '2018-09-19 09:46:04', '2018-09-19 09:46:04'),
(88, 12, NULL, NULL, NULL, NULL, 4, 1, NULL, 2, NULL, 5, 'PDF file', '/files/72/annual_report_2009.pdf', NULL, NULL, 72, NULL, '2018-09-19 09:53:10', '2018-09-19 09:53:10'),
(89, 10, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 10, 3, 'PDF file', '/files/72/EEE_11_EEE_101_11-12.pdf', NULL, NULL, 72, NULL, '2018-09-24 18:39:57', '2018-09-24 18:39:57'),
(90, 1, NULL, NULL, 4, 9, 4, 31, NULL, NULL, NULL, 3, 'users contents', '/files/72/annual_report_2009.pdf', NULL, NULL, NULL, NULL, '2018-10-06 00:34:05', '2018-10-05 18:34:05'),
(91, 1, NULL, NULL, 4, 9, 4, 31, NULL, NULL, NULL, 5, 'this for test', NULL, NULL, NULL, NULL, NULL, '2018-10-05 07:14:37', '2018-10-05 07:14:37'),
(92, 2, NULL, NULL, 4, 9, 3, 31, NULL, NULL, NULL, 3, 'this for test', NULL, NULL, NULL, NULL, NULL, '2018-10-05 07:18:19', '2018-10-05 07:18:19'),
(93, 2, NULL, NULL, 24, 29, 4, 34, NULL, NULL, NULL, 5, 'this for test', NULL, NULL, NULL, NULL, NULL, '2018-10-05 07:20:54', '2018-10-05 07:20:54'),
(98, 1, NULL, NULL, 4, 9, 4, 31, NULL, NULL, NULL, 2, 'harie jacce  iman', 'https://www.youtube.com/watch?v=dGseVuvwGeE', NULL, NULL, NULL, NULL, '2018-10-05 07:31:36', '2018-10-05 07:31:36'),
(99, 1, NULL, NULL, 24, 29, 4, 34, NULL, NULL, NULL, 2, 'this for test ok', 'https://www.youtube.com/watch?v=dGseVuvwGeE', NULL, NULL, NULL, NULL, '2018-10-05 07:39:57', '2018-10-05 07:39:57'),
(100, 1, NULL, NULL, 24, 9, 4, 31, NULL, NULL, NULL, 2, 'this for test', 'dGseVuvwGeE', NULL, NULL, NULL, NULL, '2018-10-05 07:58:44', '2018-10-05 07:58:44'),
(101, 1, NULL, NULL, 4, 9, 4, 31, NULL, NULL, NULL, 3, 'user file', 'files/eeb104024a1183af71516d830cd80a24.pdf', NULL, NULL, NULL, NULL, '2018-10-05 18:43:47', '2018-10-05 18:43:47'),
(102, 1, NULL, NULL, 4, 9, 3, 31, NULL, NULL, NULL, 3, 'user file 2', '/files/e128c536173293c309c9635278bd299a.pdf', NULL, NULL, NULL, NULL, '2018-10-05 18:46:35', '2018-10-05 18:46:35'),
(103, 1, NULL, NULL, 4, 9, 4, 31, NULL, NULL, NULL, 3, 'user test 3', '/files/d684b1927561d6d7c5595ac80fcea251.pdf', NULL, NULL, NULL, NULL, '2018-10-05 18:50:58', '2018-10-05 18:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `ht_content_section`
--

CREATE TABLE `ht_content_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_content_section`
--

INSERT INTO `ht_content_section` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'School & College', '2018-06-21 06:11:25', '0000-00-00 00:00:00'),
(2, 'Madrasha', '2018-06-21 06:11:43', '0000-00-00 00:00:00'),
(3, 'English Medium', '2018-06-24 17:41:35', '0000-00-00 00:00:00'),
(4, 'English Version', '2018-06-24 17:41:35', '0000-00-00 00:00:00'),
(5, 'Qawmi', '2018-06-24 17:41:56', '0000-00-00 00:00:00'),
(6, 'Technical & Vocational', '2018-06-27 01:43:17', '0000-00-00 00:00:00'),
(7, 'Admission Test', '2018-06-27 01:43:17', '0000-00-00 00:00:00'),
(8, 'Under Graduate', '2018-06-27 01:44:01', '0000-00-00 00:00:00'),
(9, 'Post Graduate', '2018-06-27 01:44:01', '0000-00-00 00:00:00'),
(10, 'Skill Development', '2018-10-06 00:18:59', '0000-00-00 00:00:00'),
(11, 'Higher Study', '2018-10-06 00:19:11', '0000-00-00 00:00:00'),
(12, 'Job Preparation', '2018-10-06 00:19:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_content_type`
--

CREATE TABLE `ht_content_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_content_type`
--

INSERT INTO `ht_content_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '.ppt', '2019-05-18 10:42:06', '2019-05-18 04:42:06'),
(2, 'Video', '2018-05-28 14:27:25', '2018-05-28 08:27:25'),
(3, '.pdf', '2019-05-18 10:41:43', '2019-05-18 04:41:43'),
(4, '.text', '2019-05-18 10:41:32', '2019-05-18 04:41:32'),
(5, '.doc/.docx', '2019-05-18 10:41:57', '2019-05-18 04:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `ht_department`
--

CREATE TABLE `ht_department` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_department`
--

INSERT INTO `ht_department` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'Law', '2018-05-28 08:29:54', '2018-05-28 08:29:54'),
(3, 'English', '2018-05-31 22:07:43', '2018-05-31 22:07:43'),
(4, 'CSE', '2018-08-08 11:20:34', '2018-08-08 11:20:34'),
(5, 'Fabric engineering', '2019-07-31 00:07:09', '2019-07-31 00:07:09'),
(6, 'Bengali', '2019-11-04 00:44:19', '2019-11-04 00:44:19'),
(7, 'Arabic', '2019-11-04 00:44:32', '2019-11-04 00:44:32'),
(8, 'Persian Language and Literature', '2019-11-04 00:44:53', '2019-11-04 00:44:53'),
(9, 'Urdu', '2019-11-04 00:45:09', '2019-11-04 00:45:09'),
(10, 'Sanskrit', '2019-11-04 00:45:38', '2019-11-04 00:45:38'),
(11, 'Pali and Buddhist Studies', '2019-11-04 00:46:34', '2019-11-04 00:46:34'),
(12, 'History', '2019-11-04 00:46:47', '2019-11-04 00:46:47'),
(13, 'Philosophy', '2019-11-04 00:47:08', '2019-11-04 00:47:08'),
(14, 'Islamic Studies', '2019-11-04 00:47:30', '2019-11-04 00:47:30'),
(15, 'Islamic History & Culture', '2019-11-04 00:47:47', '2019-11-04 00:47:47'),
(16, 'Information Science and Library Management', '2019-11-04 00:48:01', '2019-11-04 00:48:01'),
(17, 'Theatre and Performance Studies', '2019-11-04 00:48:15', '2019-11-04 00:48:15'),
(18, 'Linguistics', '2019-11-04 00:48:27', '2019-11-04 00:48:27'),
(19, 'Music', '2019-11-04 00:48:39', '2019-11-04 00:48:39'),
(20, 'World Religions and Culture', '2019-11-04 00:48:53', '2019-11-04 00:48:53'),
(21, 'Dance', '2019-11-04 00:49:04', '2019-11-04 00:49:04'),
(22, 'Physics', '2019-11-04 00:54:41', '2019-11-04 00:54:41'),
(23, 'Mathematics', '2019-11-04 00:54:52', '2019-11-04 00:54:52'),
(24, 'Chemistry', '2019-11-04 00:55:03', '2019-11-04 00:55:03'),
(25, 'Statistics', '2019-11-04 00:55:22', '2019-11-04 00:55:22'),
(26, 'Theoretical Physics', '2019-11-04 00:55:53', '2019-11-04 00:55:53'),
(27, 'Biomedical Physics & Technology', '2019-11-04 00:56:24', '2019-11-04 00:56:24'),
(28, 'Applied Mathematics', '2019-11-04 00:56:53', '2019-11-04 00:56:53'),
(29, 'Theoretical and Computational Chemistry', '2019-11-04 01:48:27', '2019-11-04 01:48:27'),
(30, 'Management', '2019-11-04 01:49:25', '2019-11-04 01:49:25'),
(31, 'Accounting & Information Systems', '2019-11-04 01:49:38', '2019-11-04 01:49:38'),
(32, 'Marketing', '2019-11-04 01:49:51', '2019-11-04 01:49:51'),
(33, 'Finance', '2019-11-04 01:50:04', '2019-11-04 01:50:04'),
(34, 'Banking and Insurance', '2019-11-04 01:50:16', '2019-11-04 01:50:16'),
(35, 'Management Information Systems (MIS)', '2019-11-04 01:50:28', '2019-11-04 01:50:28'),
(36, 'International Business', '2019-11-04 01:50:40', '2019-11-04 01:50:40'),
(37, 'Tourism and Hospitality Management', '2019-11-04 01:50:53', '2019-11-04 01:50:53'),
(38, 'Organization Strategy and Leadership', '2019-11-04 01:51:06', '2019-11-04 01:51:06'),
(39, 'Economics', '2019-11-04 01:52:00', '2019-11-04 01:52:00'),
(40, 'Political Science', '2019-11-04 01:52:13', '2019-11-04 01:52:13'),
(41, 'International Relations', '2019-11-04 01:52:24', '2019-11-04 01:52:24'),
(42, 'Sociology', '2019-11-04 01:53:00', '2019-11-04 01:53:00'),
(43, 'Mass Communication & Journalism', '2019-11-04 01:53:27', '2019-11-04 01:53:27'),
(44, 'Public Administration', '2019-11-04 01:53:38', '2019-11-04 01:53:38'),
(45, 'Anthropology', '2019-11-04 01:53:54', '2019-11-04 01:53:54'),
(46, 'Population Sciences', '2019-11-04 01:54:05', '2019-11-04 01:54:05'),
(47, 'Peace and Conflict Studies', '2019-11-04 01:54:15', '2019-11-04 01:54:15'),
(48, 'Women and Gender Studies', '2019-11-04 01:54:28', '2019-11-04 01:54:28'),
(49, 'Development Studies', '2019-11-04 01:54:44', '2019-11-04 01:54:44'),
(50, 'Television, Film and Photography', '2019-11-04 01:55:04', '2019-11-04 01:55:04'),
(51, 'Criminology', '2019-11-04 01:55:20', '2019-11-04 01:55:20'),
(52, 'Communication Disorders', '2019-11-04 01:55:32', '2019-11-04 01:55:32'),
(53, 'Printing and Publication Studies', '2019-11-04 01:55:48', '2019-11-04 01:55:48'),
(54, 'Japanese Studies', '2019-11-04 01:56:00', '2019-11-04 01:56:00'),
(55, 'Soil, Water & Environment', '2019-11-04 01:56:31', '2019-11-04 01:56:31'),
(56, 'Botany', '2019-11-04 01:56:42', '2019-11-04 01:56:42'),
(57, 'Zoology', '2019-11-04 01:56:52', '2019-11-04 01:56:52'),
(58, 'Biochemistry and Molecular Biology', '2019-11-04 01:57:03', '2019-11-04 01:57:03'),
(59, 'Psychology', '2019-11-04 01:57:14', '2019-11-04 01:57:14'),
(60, 'Microbiology', '2019-11-04 01:57:25', '2019-11-04 01:57:25'),
(61, 'Fisheries', '2019-11-04 01:57:35', '2019-11-04 01:57:35'),
(62, 'Clinical Psychology', '2019-11-04 01:57:45', '2019-11-04 01:57:45'),
(63, 'Genetic Engineering and Biotechnology', '2019-11-04 01:57:56', '2019-11-04 01:57:56'),
(64, 'Educational and Counselling Psychology', '2019-11-04 01:58:07', '2019-11-04 01:58:07'),
(65, 'Pharmaceutical Chemistry', '2019-11-04 01:58:28', '2019-11-04 01:58:28'),
(66, 'Clinical Pharmacy and Pharmacology', '2019-11-04 01:58:38', '2019-11-04 01:58:38'),
(67, 'Pharmaceutical Technology', '2019-11-04 01:58:50', '2019-11-04 01:58:50'),
(68, 'Pharmacy', '2019-11-04 01:59:11', '2019-11-04 01:59:11'),
(69, 'Geography & Environment', '2019-11-04 01:59:31', '2019-11-04 01:59:31'),
(70, 'Geology', '2019-11-04 02:19:23', '2019-11-04 02:19:23'),
(71, 'Oceanography', '2019-11-04 02:19:32', '2019-11-04 02:19:32'),
(72, 'Disaster Science and Management', '2019-11-04 02:19:42', '2019-11-04 02:19:42'),
(73, 'Meteorology', '2019-11-04 02:19:53', '2019-11-04 02:19:53'),
(74, 'Electrical and Electronic Engineering', '2019-11-04 02:20:33', '2019-11-04 02:20:33'),
(75, 'Applied Chemistry & Chemical Engineering', '2019-11-04 02:21:00', '2019-11-04 02:21:00'),
(76, 'Computer Science and Engineering', '2019-11-04 02:21:11', '2019-11-04 02:21:11'),
(77, 'Nuclear Engineering', '2019-11-04 02:21:21', '2019-11-04 02:21:21'),
(78, 'Robotics and Mechatronics Engineering', '2019-11-04 02:21:33', '2019-11-04 02:21:33'),
(79, 'Drawing and Painting', '2019-11-04 02:22:00', '2019-11-04 02:22:00'),
(80, 'Graphic Design', '2019-11-04 02:22:10', '2019-11-04 02:22:10'),
(81, 'Printmaking', '2019-11-04 02:22:20', '2019-11-04 02:22:20'),
(82, 'Oriental Art', '2019-11-04 02:22:30', '2019-11-04 02:22:30'),
(83, 'Ceramic', '2019-11-04 02:22:40', '2019-11-04 02:22:40'),
(84, 'Sculpture', '2019-11-04 02:22:50', '2019-11-04 02:22:50'),
(85, 'Craft', '2019-11-04 02:23:04', '2019-11-04 02:23:04'),
(86, 'History of Art', '2019-11-04 02:23:13', '2019-11-04 02:23:13'),
(87, 'Applied Physics', '2019-11-08 09:57:38', '2019-11-08 09:57:38'),
(88, 'materials and metallurgical engineering', '2019-11-09 01:16:47', '2019-11-09 01:16:47'),
(89, 'Glass and Ceramil engineering', '2019-11-09 01:17:44', '2019-11-09 01:17:44'),
(90, 'Petroleum and mineral resources engineering', '2019-11-09 01:19:11', '2019-11-09 01:19:11'),
(91, 'Civil Engineering', '2019-11-09 01:19:52', '2019-11-09 01:19:52'),
(92, 'Watter Resources enginearing', '2019-11-09 02:13:48', '2019-11-09 02:13:48'),
(93, 'Naval architecture and marine enginearing', '2019-11-09 02:15:14', '2019-11-09 02:15:14'),
(94, 'production enginearing', '2019-11-09 08:16:09', '2019-11-09 02:16:09'),
(95, 'Biomedical Enginearing', '2019-11-09 02:17:32', '2019-11-09 02:17:32'),
(96, 'Architecture enginearing', '2019-11-09 02:18:26', '2019-11-09 02:18:26'),
(97, 'Humanities', '2019-11-09 02:18:58', '2019-11-09 02:18:58'),
(98, 'Urban and Regional planning', '2019-11-09 02:19:38', '2019-11-09 02:19:38'),
(99, 'Dermatology & Venereology', '2019-11-09 02:46:56', '2019-11-09 02:46:56'),
(100, 'Cardiology', '2019-11-09 03:43:43', '2019-11-09 03:43:43'),
(101, 'Endocrinology & Metabolism', '2019-11-09 03:45:27', '2019-11-09 03:45:27'),
(102, 'Gastroenterology', '2019-11-09 03:45:40', '2019-11-09 03:45:40'),
(103, 'Hematology', '2019-11-09 03:45:52', '2019-11-09 03:45:52'),
(104, 'Hepatology', '2019-11-09 03:46:04', '2019-11-09 03:46:04'),
(105, 'Internal Medicine', '2019-11-09 03:46:16', '2019-11-09 03:46:16'),
(106, 'Nephrology', '2019-11-09 03:46:25', '2019-11-09 03:46:25'),
(107, 'Neurology', '2019-11-09 03:46:36', '2019-11-09 03:46:36'),
(108, 'Oncology', '2019-11-09 03:46:47', '2019-11-09 03:46:47'),
(109, 'Physical Medicine & Rehabilitation', '2019-11-09 03:47:00', '2019-11-09 03:47:00'),
(110, 'Psychiatry', '2019-11-09 03:47:15', '2019-11-09 03:47:15'),
(111, 'Rheumatology', '2019-11-09 03:53:25', '2019-11-09 03:53:25'),
(112, 'Transfusion Medicine', '2019-11-09 03:53:42', '2019-11-09 03:53:42'),
(113, 'Respiratory Medicine', '2019-11-09 03:53:53', '2019-11-09 03:53:53'),
(114, 'Palliative Medicine', '2019-11-09 03:54:07', '2019-11-09 03:54:07'),
(115, 'Anaesthesia, Analgesia and Intensive Care Medicine', '2019-11-09 03:54:18', '2019-11-09 03:54:18'),
(116, 'Cardiac Surgery', '2019-11-09 03:54:27', '2019-11-09 03:54:27'),
(117, 'Community Ophthalmology', '2019-11-09 03:54:38', '2019-11-09 03:54:38'),
(118, 'Neuro Surgery', '2019-11-09 03:54:46', '2019-11-09 03:54:46'),
(119, 'Obstetrics & Gynecology', '2019-11-09 03:54:56', '2019-11-09 03:54:56'),
(120, 'Ophthalmology', '2019-11-09 03:55:42', '2019-11-09 03:55:42'),
(121, 'Orthopedic Surgery', '2019-11-09 03:55:54', '2019-11-09 03:55:54'),
(122, 'Otolaryngology', '2019-11-09 03:56:03', '2019-11-09 03:56:03'),
(123, 'Paediatric Surgery', '2019-11-09 03:56:14', '2019-11-09 03:56:14'),
(124, 'Radiology & Imaging', '2019-11-09 03:56:26', '2019-11-09 03:56:26'),
(125, 'Surgery', '2019-11-09 03:56:46', '2019-11-09 03:56:46'),
(126, 'Urology', '2019-11-09 03:56:59', '2019-11-09 03:56:59'),
(127, 'Vascular Surgery', '2019-11-09 03:57:23', '2019-11-09 03:57:23'),
(128, 'Hepatobiliary, Pancreatic and Liver Transplantation Surgery', '2019-11-09 03:57:32', '2019-11-09 03:57:32'),
(129, 'Colorectal Surgery', '2019-11-09 03:57:42', '2019-11-09 03:57:42'),
(130, 'Reproductive Endocrinology and Infertility', '2019-11-09 03:57:53', '2019-11-09 03:57:53'),
(131, 'Fetomaternal Medicine', '2019-11-09 03:58:04', '2019-11-09 03:58:04'),
(132, 'Gynecological Oncology', '2019-11-09 03:58:13', '2019-11-09 03:58:13'),
(133, 'Anatomy', '2019-11-09 03:58:23', '2019-11-09 03:58:23'),
(134, 'Laboratory Medicine', '2019-11-09 03:58:53', '2019-11-09 03:58:53'),
(135, 'Microbiology & Immunology', '2019-11-09 03:59:02', '2019-11-09 03:59:02'),
(136, 'Pathology', '2019-11-09 03:59:14', '2019-11-09 03:59:14'),
(137, 'Pharmacology', '2019-11-09 03:59:31', '2019-11-09 03:59:31'),
(138, 'Physiology', '2019-11-09 03:59:40', '2019-11-09 03:59:40'),
(139, 'Virology', '2019-11-09 03:59:51', '2019-11-09 03:59:51'),
(140, 'Conservative Dentistry & Endodontics', '2019-11-09 04:00:05', '2019-11-09 04:00:05'),
(141, 'Oral & Maxiliofacial Surgery', '2019-11-09 04:00:15', '2019-11-09 04:00:15'),
(142, 'Orthodontics', '2019-11-09 04:00:25', '2019-11-09 04:00:25'),
(143, 'Prosthodontics', '2019-11-09 04:00:34', '2019-11-09 04:00:34'),
(144, 'Pedodontics', '2019-11-09 04:00:43', '2019-11-09 04:00:43'),
(145, 'Neonatology', '2019-11-09 04:00:52', '2019-11-09 04:00:52'),
(146, 'Paediatrics', '2019-11-09 04:01:01', '2019-11-09 04:01:01'),
(147, 'Paediatric Gastroenterology and Nutrition', '2019-11-09 04:01:11', '2019-11-09 04:01:11'),
(148, 'Paediatric Haematology & Oncology', '2019-11-09 04:01:20', '2019-11-09 04:01:20'),
(149, 'Paediatric Nephrology', '2019-11-09 04:01:29', '2019-11-09 04:01:29'),
(150, 'Paediatric Neurology', '2019-11-09 04:01:42', '2019-11-09 04:01:42'),
(151, 'Paediatric Cardiology', '2019-11-09 04:01:50', '2019-11-09 04:01:50'),
(152, 'Graduate Nursing', '2019-11-09 04:01:59', '2019-11-09 04:01:59'),
(153, 'Mechatronics Engineering', '2019-11-12 04:59:31', '2019-11-12 04:59:31'),
(154, 'Textile Engineering', '2019-11-12 04:59:48', '2019-11-12 04:59:48'),
(155, 'Leather Engineering', '2019-11-12 05:00:06', '2019-11-12 05:00:06'),
(156, 'Energy Science and Engineering', '2019-11-12 05:00:54', '2019-11-12 05:00:54'),
(157, 'Industrial Engineering and Management', '2019-11-12 05:01:25', '2019-11-12 05:01:25'),
(158, 'Mechanical Engineering', '2019-11-12 05:01:42', '2019-11-12 05:01:42'),
(159, 'Electronics and Communication Engineering', '2019-11-12 05:02:07', '2019-11-12 05:02:07'),
(160, 'Building Engineering and Construction Management', '2019-11-12 05:02:29', '2019-11-12 05:02:29'),
(161, 'Chemical and Food Process Engineering', '2019-11-12 05:02:53', '2019-11-12 05:02:53'),
(162, 'Industrial and Production Engineering', '2019-11-12 05:03:42', '2019-11-12 05:03:42'),
(163, 'Electronics & Telecommunication Engineering', '2019-11-12 05:12:44', '2019-11-12 05:12:44'),
(164, 'Electrical and Computer Engineering (ECE)', '2019-11-12 05:13:01', '2019-11-12 05:13:01'),
(165, 'Mechatronics & Industrial Engineering', '2019-11-12 05:13:51', '2019-11-12 05:13:51'),
(166, 'Disaster & Environmental Engineering', '2019-11-12 05:14:11', '2019-11-12 05:14:11'),
(167, 'Land Management and Law', '2019-11-12 05:14:36', '2019-11-12 05:14:36'),
(168, 'Social Work', '2019-11-12 05:14:56', '2019-11-12 05:14:56'),
(169, 'Fine Arts', '2019-11-12 05:15:14', '2019-11-12 05:15:14'),
(170, 'Dramatics', '2019-11-12 05:15:33', '2019-11-12 05:15:33'),
(171, 'Modern Languages', '2019-11-12 05:15:55', '2019-11-12 05:15:55'),
(172, 'Bangladesh Studies', '2019-11-12 05:16:05', '2019-11-12 05:16:05'),
(173, 'Education And Research', '2019-11-12 05:16:14', '2019-11-12 05:16:14'),
(174, 'Forestry and Environmental Sciences', '2019-11-12 05:16:23', '2019-11-12 05:16:23'),
(175, 'Human Resource Management', '2019-11-12 05:16:34', '2019-11-12 05:16:34'),
(176, 'Chittagong University Center for Business Administration', '2019-11-12 05:16:43', '2019-11-12 05:16:43'),
(177, 'Social Science Research', '2019-11-12 05:16:54', '2019-11-12 05:16:54'),
(178, 'Physical Education and Sports Science', '2019-11-12 05:17:03', '2019-11-12 05:17:03'),
(179, 'Marine Sciences', '2019-11-12 05:17:13', '2019-11-12 05:17:13'),
(180, 'Drama and Dramatics', '2019-11-12 05:17:34', '2019-11-12 05:17:34'),
(181, 'Archaeology', '2019-11-12 05:17:47', '2019-11-12 05:17:47'),
(182, 'Environmental Sciences', '2019-11-12 05:18:26', '2019-11-12 05:18:26'),
(183, 'Government and Politics', '2019-11-12 05:18:37', '2019-11-12 05:18:37'),
(184, 'Public Health and Informatics', '2019-11-12 05:18:47', '2019-11-12 05:18:47'),
(185, 'Graphic Design, Crafts & History of Art', '2019-11-12 05:19:14', '2019-11-12 05:19:14'),
(186, 'Painting, Oriental Art & Printmaking', '2019-11-12 05:19:32', '2019-11-12 05:19:32'),
(187, 'Information & Communication Engineering', '2019-11-12 05:19:49', '2019-11-12 05:19:49'),
(188, 'Crop Science and Technology', '2019-11-12 05:20:05', '2019-11-12 05:20:05'),
(189, 'Veterinary & Animal Sciences', '2019-11-12 05:20:21', '2019-11-12 05:20:21'),
(190, 'Agronomy and Agricultural Extension', '2019-11-12 05:20:46', '2019-11-12 05:20:46'),
(191, 'Geology & Mining', '2019-11-12 05:21:08', '2019-11-12 05:21:08'),
(192, 'Yarn Engineering', '2019-11-21 11:54:37', '2019-11-21 11:54:37'),
(193, 'Wet Process Engineering', '2019-11-21 11:55:05', '2019-11-21 11:55:05'),
(194, 'Apparel Engineering', '2019-11-21 11:55:25', '2019-11-21 11:55:25'),
(195, 'Textile Engineering Management', '2019-11-21 11:55:55', '2019-11-21 11:55:55'),
(196, 'Textile Fashion and Design', '2019-11-21 11:56:23', '2019-11-21 11:56:23'),
(197, 'Industrial and Production Engineering', '2019-11-21 11:56:51', '2019-11-21 11:56:51'),
(198, 'Textile Machinery Design and Maintenance', '2019-11-21 11:57:28', '2019-11-21 11:57:28'),
(199, 'Dyes & Chemical Engineering', '2019-11-21 11:57:56', '2019-11-21 11:57:56'),
(200, 'Environmental Science & Engineering', '2019-11-21 11:59:35', '2019-11-21 11:59:35'),
(201, 'Fabric Engineering', '2019-11-21 12:13:23', '2019-11-21 12:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `ht_feedback`
--

CREATE TABLE `ht_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` varchar(255) NOT NULL DEFAULT 'No',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_feedback`
--

INSERT INTO `ht_feedback` (`id`, `name`, `email`, `heading`, `message`, `is_read`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Amir', 'amir@gmail.com', 'Testing Message', 'This for testing', 'Yes', 5, '2018-07-21 14:23:54', '2018-07-21 08:23:54'),
(2, 'Abir alam', 'abir@gmail.com', 'this for another test', 'this for another test dexc', 'No', 0, '2018-07-21 14:25:22', '0000-00-00 00:00:00'),
(3, 'rashed khan', 'rabiul0420@gmail.com', 'hfuwrhgerg', 'fhfgjhg', 'No', NULL, '2018-07-26 15:41:43', '2018-07-26 15:41:43'),
(4, 'rashed khan', 'rabiul0420@gmail.com', 'hfuwrhgerg', 'xfbfhfghg', 'No', NULL, '2018-07-26 15:44:24', '2018-07-26 15:44:24'),
(5, 'rashed khan', 'rabiul0420@gmail.com', 'hfuwrhgerg', 'grtt', 'No', NULL, '2018-07-26 16:01:45', '2018-07-26 16:01:45'),
(6, 'rashed khan', 'rabiul0420@gmail.com', 'This for test', 'Content here', 'Yes', NULL, '2018-07-27 03:23:52', '2018-07-26 21:23:52'),
(7, 'rashed khan', 'rabiul0420@gmail.com', 'This for test', 'This for test This for testThis for test', 'No', NULL, '2018-07-26 21:26:39', '2018-07-26 21:26:39'),
(8, 'rahat adnan', 'rahat@gmail.com', 'test', 'retreytr tyiuyo', 'Yes', NULL, '2018-09-24 16:11:07', '2018-09-24 10:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `ht_global_setting`
--

CREATE TABLE `ht_global_setting` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `company_logo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_global_setting`
--

INSERT INTO `ht_global_setting` (`id`, `company_name`, `company_logo`, `favicon`, `email`, `phone`, `facebook`, `twitter`, `google_plus`, `youtube`, `linkedin`, `_token`, `created_at`, `updated_at`) VALUES
(1, 'My Study', 'images/6a2de77471e7306e01aa81d71b52941d.png', 'images/220915b5cf39c53ea79111bf2b55c086.jpg', 'education@gmail.com', '01787841565', NULL, 'https://mobile.twitter.com', 'https://mobile.twitter.com', 'https://mobile.twitter.com', 'https://mobile.twitter.com', 'UpqbGmXKRoSMNW41rvmDgFtSLfhJYHGYPdk1ubMD', '2018-08-11 07:15:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_higher_job_material_type`
--

CREATE TABLE `ht_higher_job_material_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_higher_job_material_type`
--

INSERT INTO `ht_higher_job_material_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Lectures', '2018-09-12 16:29:55', '2018-06-20 23:50:03'),
(2, 'Reference books', '2018-09-12 16:30:08', '2018-05-28 08:27:25'),
(3, 'Mock Test', '2018-09-12 16:30:21', '2018-05-31 22:09:09'),
(4, 'Previous Question\r\n& Answers', '2018-09-12 16:30:51', '2018-06-20 23:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution`
--

CREATE TABLE `ht_institution` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `institution_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution`
--

INSERT INTO `ht_institution` (`id`, `name`, `address`, `institution_category_id`, `image`, `created_at`, `updated_at`) VALUES
(25, 'Bangladesh University of Engineering and Technology (BUET)', 'Dhaka', 4, 'images/d19e22c17c13260d02013789c0539e2a.png', '2019-05-18 10:33:50', '2019-05-18 04:33:50'),
(28, 'Rajshahi University of Engineering and Technology (RUET)', 'Rajshahi', 4, '/photos/72/Penguins.jpg', '2019-05-18 10:33:02', '2019-05-18 04:33:02'),
(29, 'Bangladesh University of Textile (BUTEX)', 'Tejgaon, Dhaka', 4, NULL, '2019-05-18 04:34:56', '2019-05-18 04:34:56'),
(30, 'Khulna University of Engineering and Technology (KUET)', 'Khulna', 4, NULL, '2019-07-21 10:58:54', '2019-07-21 04:58:54'),
(31, 'Chittagong University of Engineering and Technology (CUET)', 'Chittagong', 4, NULL, '2019-07-21 05:00:17', '2019-07-21 05:00:17'),
(32, 'University of Dhaka', 'Dhaka', 8, NULL, '2019-09-01 05:26:13', '2019-09-01 05:26:13'),
(33, 'Sonargaon University', '47/A, Panthapath, Dhaka', 8, NULL, '2019-09-01 11:44:32', '2019-09-01 05:44:32'),
(34, 'National University, Bangladesh', 'Gazipur', 8, NULL, '2019-09-04 00:04:03', '2019-09-04 00:04:03'),
(35, 'Rajshahi University', 'Rajshahi', 8, NULL, '2019-09-04 00:07:12', '2019-09-04 00:07:12'),
(36, 'University of Chittagong', 'Chittagong', 8, NULL, '2019-09-04 00:10:24', '2019-09-04 00:10:24'),
(37, 'Bangladesh Agricultural University', 'Mymensingh', 11, NULL, '2019-09-04 00:12:08', '2019-09-04 00:12:08'),
(38, 'Islamic University', 'Kushtia', 8, NULL, '2019-09-04 00:13:49', '2019-09-04 00:13:49'),
(39, 'Shahjalal University of Science and Technology', 'Sylhet', 12, NULL, '2019-09-05 06:52:28', '2019-09-05 00:52:28'),
(40, 'Jahangirnagar University', 'Savar', 8, NULL, '2019-09-04 00:18:19', '2019-09-04 00:18:19'),
(41, 'Bangladesh University of Professionals', 'Mirpur', 8, NULL, '2019-09-04 00:21:03', '2019-09-04 00:21:03'),
(42, 'Islamic Arabic University', 'dhaka', 8, NULL, '2019-09-04 00:22:33', '2019-09-04 00:22:33'),
(43, 'Islamic University of Technology', 'Gazipur', 12, NULL, '2019-09-05 06:53:13', '2019-09-05 00:53:13'),
(44, 'Jagannath University', 'Dhaka', 8, NULL, '2019-09-04 00:31:17', '2019-09-04 00:31:17'),
(45, 'Bangabandhu Sheikh Mujib Medical University', 'dhaka', 5, NULL, '2019-09-04 00:33:01', '2019-09-04 00:33:01'),
(46, 'Dhaka University of Engineering and Technology', 'Gazipur', 12, NULL, '2019-09-05 06:53:38', '2019-09-05 00:53:38'),
(47, 'Jessore University of Science and Technology', 'Jessore', 12, NULL, '2019-09-05 06:54:58', '2019-09-05 00:54:58'),
(48, 'Khulna University', 'Khulna', 8, NULL, '2019-09-04 00:52:00', '2019-09-04 00:52:00'),
(49, 'Bangabandhu Sheikh Mujibur Rahman Agricultural University', 'Gazipur', 11, NULL, '2019-09-04 00:53:09', '2019-09-04 00:53:09'),
(50, 'Hajee Mohammad Danesh Science and Technology University', 'Dinajpur', 12, NULL, '2019-09-05 06:55:28', '2019-09-05 00:55:28'),
(51, 'Chittagong Veterinary and Animal Sciences University', 'Chittagong', 8, NULL, '2019-09-04 00:57:06', '2019-09-04 00:57:06'),
(52, 'Begum Rokeya University', 'Rangpur', 8, NULL, '2019-09-04 00:58:26', '2019-09-04 00:58:26'),
(53, 'Sylhet Agricultural University', 'Sylhe', 11, NULL, '2019-09-04 00:59:52', '2019-09-04 00:59:52'),
(54, 'Noakhali Science and Technology University', 'Noakhali', 12, NULL, '2019-09-05 06:55:50', '2019-09-05 00:55:50'),
(55, 'Bangabandhu Sheikh Mujibur Rahman Science and Technology University', 'Gopalganj', 12, NULL, '2019-09-05 06:57:03', '2019-09-05 00:57:03'),
(56, 'Mawlana Bhashani Science and Technology University', 'Tangail', 12, NULL, '2019-09-05 06:57:27', '2019-09-05 00:57:27'),
(57, 'Pabna Science and Technology University', 'Pabna', 12, NULL, '2019-09-05 06:57:44', '2019-09-05 00:57:44'),
(58, 'Jatiya Kabi Kazi Nazrul Islam University', 'Mymensingh', 8, NULL, '2019-09-04 01:07:48', '2019-09-04 01:07:48'),
(59, 'Comilla University', 'Comilla', 8, NULL, '2019-09-04 01:08:55', '2019-09-04 01:08:55'),
(60, 'Patuakhali Science and Technology University', 'Patuakhali', 12, NULL, '2019-09-05 06:56:13', '2019-09-05 00:56:13'),
(61, 'University of Barisal', 'Barisal', 8, NULL, '2019-09-04 01:18:05', '2019-09-04 01:18:05'),
(63, 'Sher-e-Bangla Agricultural University', 'Dhaka', 11, NULL, '2019-09-04 01:27:43', '2019-09-04 01:27:43'),
(64, 'Bangabandhu Sheikh Mujibur Rahman Maritime University', 'Dhaka', 8, NULL, '2019-09-04 01:30:07', '2019-09-04 01:30:07'),
(65, 'Chittagong Medical University', 'Chittagong', 5, NULL, '2019-09-04 01:31:08', '2019-09-04 01:31:08'),
(66, 'Rangamati University of Science and Technology', 'Rangamati', 12, NULL, '2019-09-05 06:56:33', '2019-09-05 00:56:33'),
(67, 'Rabindra University, Bangladesh', 'Shahjadpur', 8, NULL, '2019-09-04 01:33:35', '2019-09-04 01:33:35'),
(68, 'Rajshahi Medical University', 'Rajshah', 5, NULL, '2019-09-04 01:34:36', '2019-09-04 01:34:36'),
(69, 'North South University', 'Dhaka', 8, NULL, '2019-09-04 03:16:06', '2019-09-04 03:16:06'),
(70, 'BRAC University', 'Dhaka', 8, NULL, '2019-09-04 09:19:16', '2019-09-04 03:19:16'),
(71, 'American International University-Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:18:41', '2019-09-04 03:18:41'),
(72, 'Daffodil International University', 'Dhaka', 8, NULL, '2019-09-04 03:22:05', '2019-09-04 03:22:05'),
(73, 'Ahsanullah University of Science and Technology', 'Dhaka', 8, NULL, '2019-09-04 03:23:31', '2019-09-04 03:23:31'),
(74, 'East West University', 'Dhaka', 8, NULL, '2019-09-04 03:25:04', '2019-09-04 03:25:04'),
(75, 'Independent University, Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:26:14', '2019-09-04 03:26:14'),
(76, 'Bangladesh University of Business and Technology', 'Dhaka', 12, NULL, '2019-09-04 03:27:11', '2019-09-04 03:27:11'),
(77, 'United International University', 'Dhaka', 8, NULL, '2019-09-04 03:29:06', '2019-09-04 03:29:06'),
(78, 'International Islamic University, Chittagong', 'Chittagong', 8, NULL, '2019-09-04 03:35:14', '2019-09-04 03:35:14'),
(79, 'University of Asia Pacific', 'Dhaka', 8, NULL, '2019-09-04 03:36:26', '2019-09-04 03:36:26'),
(80, 'Asian University for Women', 'Chittagong', 8, NULL, '2019-09-04 03:37:44', '2019-09-04 03:37:44'),
(81, 'International University of Business Agriculture and Technology', 'Dhaka', 8, NULL, '2019-09-04 03:39:00', '2019-09-04 03:39:00'),
(82, 'Green University of Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:40:47', '2019-09-04 03:40:47'),
(83, 'Southeast University, Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:41:50', '2019-09-04 03:41:50'),
(84, 'University of Liberal Arts Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:43:20', '2019-09-04 03:43:20'),
(85, 'Eastern University, Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:44:19', '2019-09-04 03:44:19'),
(86, 'Stamford University Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:45:30', '2019-09-04 03:45:30'),
(87, 'University of Information Technology and Sciences', 'Dhaka', 8, NULL, '2019-09-04 03:46:30', '2019-09-04 03:46:30'),
(88, 'Northern University of Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:47:33', '2019-09-04 03:47:33'),
(89, 'Uttara University', 'Dhaka', 8, NULL, '2019-09-04 03:48:22', '2019-09-04 03:48:22'),
(90, 'Dhaka International University', 'Dhaka', 8, NULL, '2019-09-04 03:49:49', '2019-09-04 03:49:49'),
(91, 'World University of Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:50:35', '2019-09-04 03:50:35'),
(92, 'BGMEA University of Fashion and Technology', 'Dhaka', 8, NULL, '2019-09-04 03:51:24', '2019-09-04 03:51:24'),
(93, 'Presidency University, Bangladesh', 'Dhaka', 8, NULL, '2019-09-04 03:52:20', '2019-09-04 03:52:20'),
(94, 'Bangabandhu Sheikh Mujibur Rahman Digital University', 'Gazipur', 12, NULL, '2019-09-05 00:32:18', '2019-09-05 00:32:18'),
(95, 'Sheikh Hasina University', 'Netrokona', 8, NULL, '2019-09-05 00:40:12', '2019-09-05 00:40:12'),
(96, 'Khulna Agricultural University', 'Khulna', 11, NULL, '2019-09-05 06:43:34', '2019-09-05 00:43:34'),
(97, 'Bangamata Sheikh Fojilatunnesa Mujib Science and Technology University', 'Jmalpur', 12, NULL, '2019-09-05 00:45:16', '2019-09-05 00:45:16'),
(98, 'Sylhet Medical University', 'Sylhe', 5, NULL, '2019-09-05 00:51:29', '2019-09-05 00:51:29'),
(99, 'University of Science & Technology Chittagong', 'University of Science & Technology Chittagong', 12, NULL, '2019-09-05 02:24:49', '2019-09-05 02:24:49'),
(100, 'Gono Bishwabidyalay', 'Savar', 12, NULL, '2019-09-05 02:26:48', '2019-09-05 02:26:48'),
(101, 'The People\'s University of Bangladesh', 'Dhaka', 8, NULL, '2019-09-05 02:28:24', '2019-09-05 02:28:24'),
(102, 'Manarat International University', 'Dhaka', 8, NULL, '2019-09-05 02:30:05', '2019-09-05 02:30:05'),
(103, 'Bangladesh University', 'Dhaka', 8, NULL, '2019-09-05 02:34:01', '2019-09-05 02:34:01'),
(104, 'Leading University', 'Dhaka', 8, NULL, '2019-09-05 02:37:09', '2019-09-05 02:37:09'),
(105, 'BGC Trust University Bangladesh', 'Dhaka', 8, NULL, '2019-09-05 02:38:25', '2019-09-05 02:38:25'),
(106, 'Sylhet International University', 'Sylhet', 8, NULL, '2019-09-05 02:40:07', '2019-09-05 02:40:07'),
(107, 'University of Development Alternative *', 'Dhaka', 8, NULL, '2019-09-05 02:42:09', '2019-09-05 02:42:09'),
(108, 'Premier University', 'Dhaka', 8, NULL, '2019-09-05 02:43:15', '2019-09-05 02:43:15'),
(109, 'State University of Bangladesh', 'Dhaka', 8, NULL, '2019-09-05 02:47:35', '2019-09-05 02:47:35'),
(110, 'City University', 'Dhaka', 8, NULL, '2019-09-05 02:49:14', '2019-09-05 02:49:14'),
(111, 'Prime University', 'Dhaka', 8, '/photos/72/Prime University.png', '2019-11-08 16:10:00', '2019-11-08 10:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_category`
--

CREATE TABLE `ht_institution_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_category`
--

INSERT INTO `ht_institution_category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(4, 'Engineering', '2018-06-01 05:24:29', '2018-05-31 23:24:29'),
(5, 'Medical', '2018-05-31 23:24:53', '2018-05-31 23:24:53'),
(6, 'Technical', '2018-05-31 23:25:13', '2018-05-31 23:25:13'),
(7, 'Business School', '2018-07-26 23:39:04', '2018-07-26 23:39:04'),
(8, 'General University', '2019-05-18 10:31:26', '2019-05-18 04:31:26'),
(9, 'School', '2019-07-21 04:48:04', '2019-07-21 04:48:04'),
(10, 'College', '2019-07-21 04:48:11', '2019-07-21 04:48:11'),
(11, 'Agricultural University', '2019-09-04 00:00:19', '2019-09-04 00:00:19'),
(12, 'Science & Technology', '2019-09-04 03:10:31', '2019-09-04 03:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_has_class`
--

CREATE TABLE `ht_institution_has_class` (
  `institution_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_has_class`
--

INSERT INTO `ht_institution_has_class` (`institution_id`, `class_id`) VALUES
(22, 14),
(23, 11),
(5, 9),
(4, 9),
(4, 12),
(4, 14),
(17, 34),
(26, 17),
(16, 36),
(13, 27),
(13, 28),
(10, 41),
(18, 43),
(18, 44),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(24, 14),
(27, 30),
(27, 36),
(27, 42),
(33, 63),
(33, 64),
(33, 65),
(33, 66),
(33, 67),
(33, 68),
(33, 69),
(33, 70),
(33, 71),
(33, 72),
(33, 73),
(33, 74),
(34, 57),
(34, 58),
(34, 59),
(34, 60),
(37, 57),
(37, 58),
(37, 63),
(37, 64),
(37, 66),
(37, 67),
(37, 69),
(37, 70),
(37, 72),
(37, 73),
(38, 57),
(38, 58),
(38, 59),
(38, 60),
(38, 63),
(38, 64),
(38, 66),
(38, 67),
(38, 69),
(38, 70),
(38, 72),
(38, 73),
(41, 57),
(41, 58),
(41, 63),
(41, 64),
(41, 66),
(41, 67),
(41, 69),
(41, 70),
(41, 72),
(41, 73),
(42, 57),
(42, 58),
(42, 59),
(42, 60),
(42, 63),
(42, 64),
(42, 66),
(42, 67),
(42, 69),
(42, 70),
(42, 72),
(42, 73),
(48, 57),
(48, 58),
(48, 63),
(48, 64),
(48, 66),
(48, 67),
(48, 69),
(48, 70),
(48, 72),
(48, 73),
(49, 57),
(49, 58),
(49, 63),
(49, 64),
(49, 66),
(49, 67),
(49, 69),
(49, 70),
(49, 72),
(49, 73),
(51, 57),
(51, 58),
(51, 63),
(51, 64),
(51, 66),
(51, 67),
(51, 69),
(51, 70),
(51, 72),
(51, 73),
(52, 57),
(52, 58),
(52, 63),
(52, 64),
(52, 66),
(52, 67),
(52, 69),
(52, 70),
(52, 72),
(52, 73),
(53, 57),
(53, 58),
(53, 63),
(53, 64),
(53, 66),
(53, 67),
(53, 69),
(53, 70),
(53, 72),
(53, 73),
(58, 57),
(58, 58),
(58, 63),
(58, 64),
(58, 66),
(58, 67),
(58, 69),
(58, 70),
(58, 72),
(58, 73),
(59, 57),
(59, 58),
(59, 63),
(59, 64),
(59, 66),
(59, 67),
(59, 69),
(59, 70),
(59, 72),
(59, 73),
(61, 57),
(61, 58),
(61, 63),
(61, 64),
(61, 66),
(61, 67),
(61, 69),
(61, 70),
(61, 72),
(61, 73),
(62, 57),
(62, 58),
(62, 63),
(62, 64),
(62, 66),
(62, 67),
(62, 69),
(62, 70),
(62, 72),
(62, 73),
(63, 57),
(63, 58),
(63, 63),
(63, 64),
(63, 66),
(63, 67),
(63, 69),
(63, 70),
(63, 72),
(63, 73),
(64, 57),
(64, 58),
(64, 63),
(64, 64),
(64, 66),
(64, 67),
(64, 69),
(64, 70),
(64, 72),
(64, 73),
(65, 57),
(65, 58),
(65, 63),
(65, 64),
(65, 66),
(65, 67),
(65, 69),
(65, 70),
(65, 72),
(65, 73),
(67, 57),
(67, 58),
(67, 63),
(67, 64),
(67, 66),
(67, 67),
(67, 69),
(67, 70),
(67, 72),
(67, 73),
(68, 57),
(68, 58),
(68, 63),
(68, 64),
(68, 66),
(68, 67),
(68, 69),
(68, 70),
(68, 72),
(68, 73),
(69, 63),
(69, 64),
(69, 65),
(69, 66),
(69, 67),
(69, 68),
(69, 69),
(69, 70),
(69, 71),
(69, 72),
(69, 73),
(69, 74),
(71, 63),
(71, 64),
(71, 65),
(71, 66),
(71, 67),
(71, 68),
(71, 69),
(71, 70),
(71, 71),
(71, 72),
(71, 73),
(71, 74),
(70, 63),
(70, 64),
(70, 65),
(70, 66),
(70, 67),
(70, 68),
(70, 69),
(70, 70),
(70, 71),
(70, 72),
(70, 73),
(70, 74),
(72, 63),
(72, 64),
(72, 65),
(72, 66),
(72, 67),
(72, 68),
(72, 69),
(72, 70),
(72, 71),
(72, 72),
(72, 73),
(72, 74),
(73, 63),
(73, 64),
(73, 65),
(73, 66),
(73, 67),
(73, 68),
(73, 69),
(73, 70),
(73, 71),
(73, 72),
(73, 73),
(73, 74),
(74, 63),
(74, 64),
(74, 65),
(74, 66),
(74, 67),
(74, 68),
(74, 69),
(74, 70),
(74, 71),
(74, 72),
(74, 73),
(74, 74),
(75, 63),
(75, 64),
(75, 65),
(75, 66),
(75, 67),
(75, 68),
(75, 69),
(75, 70),
(75, 71),
(75, 72),
(75, 73),
(75, 74),
(76, 63),
(76, 64),
(76, 65),
(76, 66),
(76, 67),
(76, 68),
(76, 69),
(76, 70),
(76, 71),
(76, 72),
(76, 73),
(76, 74),
(77, 63),
(77, 64),
(77, 65),
(77, 66),
(77, 67),
(77, 68),
(77, 69),
(77, 70),
(77, 71),
(77, 72),
(77, 73),
(77, 74),
(78, 63),
(78, 64),
(78, 65),
(78, 66),
(78, 67),
(78, 68),
(78, 69),
(78, 70),
(78, 71),
(78, 72),
(78, 73),
(78, 74),
(79, 63),
(79, 64),
(79, 65),
(79, 66),
(79, 67),
(79, 68),
(79, 69),
(79, 70),
(79, 71),
(79, 72),
(79, 73),
(79, 74),
(80, 63),
(80, 64),
(80, 65),
(80, 66),
(80, 67),
(80, 68),
(80, 69),
(80, 70),
(80, 71),
(80, 72),
(80, 73),
(80, 74),
(81, 63),
(81, 64),
(81, 65),
(81, 66),
(81, 67),
(81, 68),
(81, 69),
(81, 70),
(81, 71),
(81, 72),
(81, 73),
(81, 74),
(82, 63),
(82, 64),
(82, 65),
(82, 66),
(82, 67),
(82, 68),
(82, 69),
(82, 70),
(82, 71),
(82, 72),
(82, 73),
(82, 74),
(83, 63),
(83, 64),
(83, 65),
(83, 66),
(83, 67),
(83, 68),
(83, 69),
(83, 70),
(83, 71),
(83, 72),
(83, 73),
(83, 74),
(84, 63),
(84, 64),
(84, 65),
(84, 66),
(84, 67),
(84, 68),
(84, 69),
(84, 70),
(84, 71),
(84, 72),
(84, 73),
(84, 74),
(85, 63),
(85, 64),
(85, 65),
(85, 66),
(85, 67),
(85, 68),
(85, 69),
(85, 70),
(85, 71),
(85, 72),
(85, 73),
(85, 74),
(86, 63),
(86, 64),
(86, 65),
(86, 66),
(86, 67),
(86, 68),
(86, 69),
(86, 70),
(86, 71),
(86, 72),
(86, 73),
(86, 74),
(87, 63),
(87, 64),
(87, 65),
(87, 66),
(87, 67),
(87, 68),
(87, 69),
(87, 70),
(87, 71),
(87, 72),
(87, 73),
(87, 74),
(88, 63),
(88, 64),
(88, 65),
(88, 66),
(88, 67),
(88, 68),
(88, 69),
(88, 70),
(88, 71),
(88, 72),
(88, 73),
(88, 74),
(89, 63),
(89, 64),
(89, 65),
(89, 66),
(89, 67),
(89, 68),
(89, 69),
(89, 70),
(89, 71),
(89, 72),
(89, 73),
(89, 74),
(90, 63),
(90, 64),
(90, 65),
(90, 66),
(90, 67),
(90, 68),
(90, 69),
(90, 70),
(90, 71),
(90, 72),
(90, 73),
(90, 74),
(91, 63),
(91, 64),
(91, 65),
(91, 66),
(91, 67),
(91, 68),
(91, 69),
(91, 70),
(91, 71),
(91, 72),
(91, 73),
(91, 74),
(92, 63),
(92, 64),
(92, 65),
(92, 66),
(92, 67),
(92, 68),
(92, 69),
(92, 70),
(92, 71),
(92, 72),
(92, 73),
(92, 74),
(93, 63),
(93, 64),
(93, 65),
(93, 66),
(93, 67),
(93, 68),
(93, 69),
(93, 70),
(93, 71),
(93, 72),
(93, 73),
(93, 74),
(94, 63),
(94, 64),
(94, 66),
(94, 67),
(94, 69),
(94, 70),
(94, 72),
(94, 73),
(95, 63),
(95, 64),
(95, 66),
(95, 67),
(95, 69),
(95, 70),
(95, 72),
(95, 73),
(96, 57),
(96, 58),
(96, 63),
(96, 64),
(96, 66),
(96, 67),
(96, 69),
(96, 70),
(96, 72),
(96, 73),
(97, 57),
(97, 58),
(97, 63),
(97, 64),
(97, 66),
(97, 67),
(97, 69),
(97, 70),
(97, 72),
(97, 73),
(98, 63),
(98, 64),
(98, 66),
(98, 67),
(98, 69),
(98, 70),
(98, 72),
(98, 73),
(39, 57),
(39, 58),
(39, 63),
(39, 64),
(39, 66),
(39, 67),
(39, 69),
(39, 70),
(39, 72),
(39, 73),
(43, 57),
(43, 58),
(43, 63),
(43, 64),
(43, 66),
(43, 67),
(43, 69),
(43, 70),
(43, 72),
(43, 73),
(46, 57),
(46, 58),
(46, 63),
(46, 64),
(46, 66),
(46, 67),
(46, 69),
(46, 70),
(46, 72),
(46, 73),
(47, 57),
(47, 58),
(47, 63),
(47, 64),
(47, 66),
(47, 67),
(47, 69),
(47, 70),
(47, 72),
(47, 73),
(50, 57),
(50, 58),
(50, 63),
(50, 64),
(50, 66),
(50, 67),
(50, 69),
(50, 70),
(50, 72),
(50, 73),
(54, 57),
(54, 58),
(54, 63),
(54, 64),
(54, 66),
(54, 67),
(54, 69),
(54, 70),
(54, 72),
(54, 73),
(60, 57),
(60, 58),
(60, 63),
(60, 64),
(60, 66),
(60, 67),
(60, 69),
(60, 70),
(60, 72),
(60, 73),
(66, 57),
(66, 58),
(66, 63),
(66, 64),
(66, 66),
(66, 67),
(66, 69),
(66, 70),
(66, 72),
(66, 73),
(55, 57),
(55, 58),
(55, 63),
(55, 64),
(55, 66),
(55, 67),
(55, 69),
(55, 70),
(55, 72),
(55, 73),
(56, 57),
(56, 58),
(56, 63),
(56, 64),
(56, 66),
(56, 67),
(56, 69),
(56, 70),
(56, 72),
(56, 73),
(57, 57),
(57, 58),
(57, 63),
(57, 64),
(57, 66),
(57, 67),
(57, 69),
(57, 70),
(57, 72),
(57, 73),
(99, 57),
(99, 58),
(99, 63),
(99, 64),
(99, 66),
(99, 67),
(99, 69),
(99, 70),
(99, 72),
(99, 73),
(100, 57),
(100, 58),
(100, 63),
(100, 64),
(100, 65),
(100, 66),
(100, 67),
(100, 68),
(100, 69),
(100, 70),
(100, 71),
(100, 72),
(100, 73),
(100, 74),
(101, 57),
(101, 58),
(101, 63),
(101, 64),
(101, 65),
(101, 66),
(101, 67),
(101, 68),
(101, 69),
(101, 70),
(101, 71),
(101, 72),
(101, 73),
(101, 74),
(102, 57),
(102, 58),
(102, 63),
(102, 64),
(102, 65),
(102, 66),
(102, 67),
(102, 68),
(102, 69),
(102, 70),
(102, 71),
(102, 72),
(102, 73),
(102, 74),
(103, 57),
(103, 58),
(103, 63),
(103, 64),
(103, 65),
(103, 66),
(103, 67),
(103, 68),
(103, 69),
(103, 70),
(103, 71),
(103, 72),
(103, 73),
(103, 74),
(104, 57),
(104, 58),
(104, 63),
(104, 64),
(104, 65),
(104, 66),
(104, 67),
(104, 68),
(104, 69),
(104, 70),
(104, 71),
(104, 72),
(104, 73),
(104, 74),
(105, 57),
(105, 58),
(105, 63),
(105, 64),
(105, 65),
(105, 66),
(105, 67),
(105, 68),
(105, 69),
(105, 70),
(105, 71),
(105, 72),
(105, 73),
(105, 74),
(106, 57),
(106, 58),
(106, 63),
(106, 64),
(106, 65),
(106, 66),
(106, 67),
(106, 68),
(106, 69),
(106, 70),
(106, 71),
(106, 72),
(106, 73),
(106, 74),
(107, 57),
(107, 58),
(107, 63),
(107, 64),
(107, 65),
(107, 66),
(107, 67),
(107, 68),
(107, 69),
(107, 70),
(107, 71),
(107, 72),
(107, 73),
(107, 74),
(108, 57),
(108, 58),
(108, 63),
(108, 64),
(108, 65),
(108, 66),
(108, 67),
(108, 68),
(108, 69),
(108, 70),
(108, 71),
(108, 72),
(108, 73),
(108, 74),
(109, 57),
(109, 58),
(109, 63),
(109, 64),
(109, 65),
(109, 66),
(109, 67),
(109, 68),
(109, 69),
(109, 70),
(109, 71),
(109, 72),
(109, 73),
(109, 74),
(110, 57),
(110, 58),
(110, 63),
(110, 64),
(110, 65),
(110, 66),
(110, 67),
(110, 68),
(110, 69),
(110, 70),
(110, 71),
(110, 72),
(110, 73),
(110, 74),
(111, 57),
(111, 58),
(111, 63),
(111, 64),
(111, 65),
(111, 66),
(111, 67),
(111, 68),
(111, 69),
(111, 70),
(111, 71),
(111, 72),
(111, 73),
(111, 74),
(32, 57),
(32, 58),
(32, 63),
(32, 64),
(32, 66),
(32, 67),
(32, 69),
(32, 70),
(32, 72),
(32, 73),
(25, 63),
(25, 64),
(25, 66),
(25, 67),
(25, 69),
(25, 70),
(25, 72),
(25, 73),
(45, 57),
(45, 58),
(45, 63),
(45, 64),
(45, 66),
(45, 67),
(45, 69),
(45, 70),
(45, 72),
(45, 73),
(35, 57),
(35, 58),
(35, 59),
(35, 60),
(40, 57),
(40, 58),
(40, 63),
(40, 64),
(40, 66),
(40, 67),
(40, 69),
(40, 70),
(40, 72),
(40, 73),
(36, 57),
(36, 58),
(36, 59),
(36, 60),
(36, 63),
(36, 64),
(36, 66),
(36, 67),
(36, 69),
(36, 70),
(36, 72),
(36, 73),
(44, 57),
(44, 58),
(44, 63),
(44, 64),
(44, 66),
(44, 67),
(44, 69),
(44, 70),
(44, 72),
(44, 73),
(31, 63),
(31, 64),
(31, 66),
(31, 67),
(31, 69),
(31, 70),
(31, 72),
(31, 73),
(28, 63),
(28, 64),
(28, 66),
(28, 67),
(28, 69),
(28, 70),
(28, 72),
(28, 73),
(30, 63),
(30, 64),
(30, 66),
(30, 67),
(30, 69),
(30, 70),
(30, 72),
(30, 73),
(29, 63),
(29, 64),
(29, 66),
(29, 67),
(29, 69),
(29, 70),
(29, 72),
(29, 73);

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_has_department`
--

CREATE TABLE `ht_institution_has_department` (
  `institution_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_has_department`
--

INSERT INTO `ht_institution_has_department` (`institution_id`, `department_id`) VALUES
(111, 4),
(32, 2),
(32, 3),
(32, 4),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(32, 15),
(32, 16),
(32, 17),
(32, 18),
(32, 19),
(32, 20),
(32, 21),
(32, 22),
(32, 23),
(32, 24),
(32, 25),
(32, 26),
(32, 27),
(32, 28),
(32, 29),
(32, 30),
(32, 31),
(32, 32),
(32, 33),
(32, 34),
(32, 35),
(32, 36),
(32, 37),
(32, 38),
(32, 39),
(32, 40),
(32, 41),
(32, 42),
(32, 43),
(32, 44),
(32, 45),
(32, 46),
(32, 47),
(32, 48),
(32, 49),
(32, 50),
(32, 51),
(32, 52),
(32, 53),
(32, 54),
(32, 55),
(32, 56),
(32, 57),
(32, 58),
(32, 59),
(32, 60),
(32, 61),
(32, 62),
(32, 63),
(32, 64),
(32, 65),
(32, 66),
(32, 67),
(32, 68),
(32, 69),
(32, 70),
(32, 71),
(32, 72),
(32, 73),
(32, 74),
(32, 75),
(32, 76),
(32, 77),
(32, 78),
(32, 79),
(32, 80),
(32, 81),
(32, 82),
(32, 83),
(32, 84),
(32, 85),
(32, 86),
(25, 4),
(25, 22),
(25, 23),
(25, 24),
(25, 74),
(25, 75),
(25, 78),
(25, 88),
(25, 89),
(25, 90),
(25, 91),
(25, 92),
(25, 93),
(25, 94),
(25, 95),
(25, 96),
(25, 97),
(25, 98),
(45, 99),
(45, 100),
(45, 101),
(45, 102),
(45, 103),
(45, 104),
(45, 105),
(45, 106),
(45, 107),
(45, 108),
(45, 109),
(45, 110),
(45, 111),
(45, 112),
(45, 113),
(45, 114),
(45, 115),
(45, 116),
(45, 117),
(45, 118),
(45, 119),
(45, 120),
(45, 121),
(45, 122),
(45, 123),
(45, 124),
(45, 125),
(45, 126),
(45, 127),
(45, 128),
(45, 129),
(45, 130),
(45, 131),
(45, 132),
(45, 133),
(45, 134),
(45, 135),
(45, 136),
(45, 137),
(45, 138),
(45, 139),
(45, 140),
(45, 141),
(45, 142),
(45, 143),
(45, 144),
(45, 145),
(45, 146),
(45, 147),
(45, 148),
(45, 149),
(45, 150),
(45, 151),
(45, 152),
(35, 2),
(35, 3),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(35, 12),
(35, 13),
(35, 14),
(35, 15),
(35, 16),
(35, 19),
(35, 22),
(35, 23),
(35, 24),
(35, 25),
(35, 28),
(35, 30),
(35, 31),
(35, 33),
(35, 34),
(35, 37),
(35, 39),
(35, 40),
(35, 41),
(35, 42),
(35, 43),
(35, 44),
(35, 45),
(35, 46),
(35, 56),
(35, 57),
(35, 58),
(35, 59),
(35, 61),
(35, 63),
(35, 66),
(35, 68),
(35, 69),
(35, 74),
(35, 75),
(35, 76),
(35, 83),
(35, 88),
(35, 109),
(35, 168),
(35, 185),
(35, 186),
(35, 187),
(35, 188),
(35, 189),
(35, 190),
(35, 191),
(40, 2),
(40, 3),
(40, 6),
(40, 12),
(40, 13),
(40, 22),
(40, 23),
(40, 24),
(40, 25),
(40, 30),
(40, 31),
(40, 32),
(40, 33),
(40, 34),
(40, 39),
(40, 41),
(40, 43),
(40, 44),
(40, 45),
(40, 56),
(40, 57),
(40, 58),
(40, 60),
(40, 63),
(40, 68),
(40, 69),
(40, 70),
(40, 76),
(40, 98),
(40, 169),
(40, 180),
(40, 181),
(40, 182),
(40, 183),
(40, 184),
(36, 2),
(36, 3),
(36, 6),
(36, 7),
(36, 8),
(36, 10),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(36, 15),
(36, 19),
(36, 22),
(36, 23),
(36, 24),
(36, 25),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(36, 34),
(36, 39),
(36, 40),
(36, 41),
(36, 42),
(36, 43),
(36, 44),
(36, 45),
(36, 49),
(36, 51),
(36, 55),
(36, 56),
(36, 57),
(36, 58),
(36, 59),
(36, 60),
(36, 61),
(36, 63),
(36, 68),
(36, 69),
(36, 71),
(36, 74),
(36, 75),
(36, 76),
(36, 117),
(36, 169),
(36, 170),
(36, 171),
(36, 172),
(36, 173),
(36, 174),
(36, 175),
(36, 176),
(36, 177),
(36, 178),
(36, 179),
(44, 2),
(44, 3),
(44, 6),
(44, 12),
(44, 13),
(44, 14),
(44, 15),
(44, 17),
(44, 19),
(44, 22),
(44, 23),
(44, 24),
(44, 25),
(44, 30),
(44, 31),
(44, 32),
(44, 33),
(44, 39),
(44, 40),
(44, 42),
(44, 43),
(44, 44),
(44, 45),
(44, 50),
(44, 56),
(44, 57),
(44, 58),
(44, 59),
(44, 60),
(44, 63),
(44, 68),
(44, 69),
(44, 76),
(44, 167),
(44, 168),
(44, 169),
(31, 22),
(31, 23),
(31, 24),
(31, 74),
(31, 76),
(31, 77),
(31, 88),
(31, 90),
(31, 91),
(31, 92),
(31, 95),
(31, 96),
(31, 97),
(31, 98),
(31, 158),
(31, 163),
(31, 165),
(31, 166),
(28, 22),
(28, 23),
(28, 24),
(28, 74),
(28, 76),
(28, 88),
(28, 89),
(28, 91),
(28, 96),
(28, 97),
(28, 98),
(28, 153),
(28, 158),
(28, 161),
(28, 162),
(28, 163),
(28, 164),
(30, 22),
(30, 23),
(30, 24),
(30, 74),
(30, 75),
(30, 76),
(30, 88),
(30, 91),
(30, 95),
(30, 96),
(30, 97),
(30, 98),
(30, 153),
(30, 154),
(30, 155),
(30, 156),
(30, 157),
(30, 158),
(30, 159),
(30, 160),
(29, 162),
(29, 192),
(29, 193),
(29, 194),
(29, 195),
(29, 196),
(29, 198),
(29, 199),
(29, 200),
(29, 201);

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_has_type`
--

CREATE TABLE `ht_institution_has_type` (
  `institution_id` int(11) NOT NULL,
  `institution_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_has_type`
--

INSERT INTO `ht_institution_has_type` (`institution_id`, `institution_type_id`) VALUES
(4, 1),
(17, 2),
(26, 2),
(16, 3),
(13, 5),
(10, 9),
(10, 8),
(10, 7),
(18, 6),
(24, 1),
(27, 4),
(27, 1),
(33, 9),
(33, 8),
(34, 9),
(34, 8),
(37, 9),
(37, 8),
(37, 7),
(38, 9),
(38, 8),
(38, 7),
(41, 9),
(41, 8),
(41, 7),
(42, 9),
(42, 8),
(48, 9),
(48, 8),
(48, 7),
(49, 9),
(49, 8),
(49, 7),
(51, 9),
(51, 8),
(51, 7),
(52, 9),
(52, 8),
(52, 7),
(53, 9),
(53, 8),
(53, 7),
(58, 9),
(58, 8),
(58, 7),
(59, 9),
(59, 8),
(59, 7),
(61, 9),
(61, 8),
(61, 7),
(62, 9),
(62, 8),
(62, 7),
(63, 9),
(63, 8),
(63, 7),
(64, 9),
(64, 8),
(64, 7),
(65, 9),
(65, 8),
(65, 7),
(67, 9),
(67, 8),
(67, 7),
(68, 9),
(68, 8),
(68, 7),
(69, 9),
(69, 8),
(69, 7),
(71, 9),
(71, 8),
(71, 7),
(70, 9),
(70, 8),
(70, 7),
(72, 9),
(72, 8),
(72, 7),
(73, 9),
(73, 8),
(73, 7),
(74, 9),
(74, 8),
(75, 9),
(75, 8),
(76, 9),
(76, 8),
(77, 9),
(77, 8),
(78, 9),
(78, 8),
(79, 9),
(79, 8),
(80, 9),
(80, 8),
(81, 9),
(81, 8),
(82, 9),
(82, 8),
(83, 9),
(83, 8),
(84, 9),
(84, 8),
(85, 9),
(85, 8),
(86, 9),
(86, 8),
(87, 9),
(87, 8),
(88, 9),
(88, 8),
(89, 9),
(89, 8),
(90, 9),
(90, 8),
(91, 9),
(91, 8),
(92, 9),
(92, 8),
(92, 7),
(93, 9),
(93, 8),
(94, 8),
(94, 7),
(95, 8),
(96, 9),
(96, 8),
(96, 7),
(97, 9),
(97, 7),
(98, 9),
(98, 7),
(39, 9),
(39, 8),
(39, 7),
(43, 9),
(43, 8),
(43, 7),
(46, 9),
(46, 8),
(46, 7),
(47, 9),
(47, 8),
(47, 7),
(50, 9),
(50, 8),
(50, 7),
(54, 9),
(54, 8),
(54, 7),
(60, 9),
(60, 8),
(60, 7),
(66, 9),
(66, 8),
(66, 7),
(55, 9),
(55, 8),
(55, 7),
(56, 9),
(56, 8),
(56, 7),
(57, 9),
(57, 8),
(57, 7),
(99, 9),
(99, 8),
(99, 7),
(100, 9),
(100, 8),
(100, 7),
(101, 9),
(101, 8),
(101, 7),
(102, 9),
(102, 8),
(102, 7),
(103, 9),
(103, 8),
(103, 7),
(104, 9),
(104, 8),
(105, 9),
(105, 8),
(106, 9),
(106, 8),
(107, 9),
(107, 8),
(108, 9),
(108, 8),
(109, 9),
(109, 8),
(110, 9),
(110, 8),
(111, 9),
(111, 8),
(32, 9),
(32, 8),
(32, 7),
(25, 9),
(25, 8),
(25, 7),
(45, 9),
(45, 8),
(45, 7),
(35, 9),
(35, 8),
(35, 7),
(40, 9),
(40, 8),
(40, 7),
(36, 9),
(36, 8),
(36, 7),
(44, 9),
(44, 8),
(44, 7),
(31, 9),
(31, 8),
(31, 7),
(28, 9),
(28, 8),
(28, 7),
(30, 9),
(30, 8),
(30, 7),
(29, 9),
(29, 8),
(29, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_type`
--

CREATE TABLE `ht_institution_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_type`
--

INSERT INTO `ht_institution_type` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'School & College', '/photos/72/school_college.png', '2018-09-06 17:38:38', '2018-09-06 11:38:38'),
(2, 'Madrasah', '/photos/72/madrasha.png', '2019-05-18 10:30:55', '2019-05-18 04:30:55'),
(3, 'English Medium', 'images/4ee884a51d401a6b47bbaa2ad908fbd5.png', '2019-05-31 01:56:00', '2019-05-30 19:56:00'),
(4, 'English Version', 'images/2e21af0f11b1e33f0e0cdbc1b1c9a624.png', '2019-05-31 01:56:18', '2019-05-30 19:56:18'),
(5, 'Qawmi', 'images/09d4adb1e405211ba87c9ea0cc646332.png', '2019-05-31 01:57:03', '2019-05-30 19:57:03'),
(6, 'Technical & Vocational', 'images/98878e092336245eacd47d4249c32f6f.png', '2019-05-31 01:57:18', '2019-05-30 19:57:18'),
(7, 'Admission Test', 'images/7dddf5f95463a3231ba5eaf782862ce1.png', '2019-05-31 01:57:37', '2019-05-30 19:57:37'),
(8, 'Undergraduate', 'images/d59008ca559275899411f4811cfc3cdb.png', '2019-05-31 01:56:50', '2019-05-30 19:56:50'),
(9, 'Postgraduate', '/photos/72/postgraduate.png', '2018-09-04 02:25:50', '2018-09-03 20:25:50'),
(10, 'Skill Development', '/photos/72/skill_development.png', '2018-09-12 01:24:45', '2018-09-11 19:24:45'),
(11, 'Higher Study', '/photos/72/higher_study.png', '2018-09-12 01:25:19', '2018-09-11 19:25:19'),
(12, 'Job Preparation', '/photos/72/job_preparation.png', '2018-09-12 01:27:06', '2018-09-11 19:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `ht_institution_type_has_class`
--

CREATE TABLE `ht_institution_type_has_class` (
  `institution_type_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_institution_type_has_class`
--

INSERT INTO `ht_institution_type_has_class` (`institution_type_id`, `class_id`) VALUES
(9, 41),
(10, 10),
(11, 10),
(12, 12),
(1, 9),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 45),
(2, 17),
(2, 18),
(2, 19),
(2, 34),
(3, 36),
(4, 35),
(4, 36),
(8, 41),
(5, 12),
(5, 27),
(5, 28),
(6, 43),
(6, 44),
(7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ht_job_circular`
--

CREATE TABLE `ht_job_circular` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_job_circular`
--

INSERT INTO `ht_job_circular` (`id`, `title`, `short_desc`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Assistant Teacher', 'Masters in Chemistry, Mathematics, English, Bengali, Physics, Computer Science.', 'http://jobs.bdjobs.com/jobdetails.asp?id=790974&fcatId=4&ln=1', 'Active', '2018-09-17 00:31:03', '2018-09-16 18:31:03'),
(2, 'Professor/ Associate Professor', 'Khwaja Yunus Ali University (KYAU) requires qualified and competent faculty members for the Department of Management Information Systems: Graduated from Computer Science, Computer Science & Engineering, Information Technology, Information Communication Technology, Information System Management and Management', 'http://jobs.bdjobs.com/jobdetails.asp?id=790974&fcatId=4&ln=1', 'InActive', '2018-09-25 00:14:36', '2018-09-24 18:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `ht_job_exam`
--

CREATE TABLE `ht_job_exam` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_job_exam`
--

INSERT INTO `ht_job_exam` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Prymary School Teacher', '2018-09-09 18:20:29', '2018-09-09 18:20:29'),
(2, 'BCS', '2018-09-13 02:11:14', '0000-00-00 00:00:00'),
(3, 'EXIM Bank', '2018-09-24 18:02:58', '2018-09-24 18:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `ht_job_exam_has_subject`
--

CREATE TABLE `ht_job_exam_has_subject` (
  `job_exam_id` int(11) NOT NULL,
  `job_exam_subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_job_exam_has_subject`
--

INSERT INTO `ht_job_exam_has_subject` (`job_exam_id`, `job_exam_subject_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ht_job_exam_subject`
--

CREATE TABLE `ht_job_exam_subject` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_job_exam_subject`
--

INSERT INTO `ht_job_exam_subject` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'English', '2018-09-10 00:07:29', '2018-09-09 18:07:29'),
(2, 'Physics', '2018-09-09 18:07:18', '2018-09-09 18:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `ht_level_year`
--

CREATE TABLE `ht_level_year` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_level_year`
--

INSERT INTO `ht_level_year` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '1st year', '2018-06-01 04:08:36', '2018-05-31 22:08:36'),
(2, '2nd Year', '2018-05-31 23:24:05', '2018-05-31 23:24:05'),
(3, 'Level-1, Term-1', '2018-08-08 11:18:04', '2018-08-08 11:18:04'),
(4, 'Level-1, Term-2', '2018-08-08 11:18:36', '2018-08-08 11:18:36'),
(5, 'Level-1, Term-3', '2018-08-08 11:19:28', '2018-08-08 11:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `ht_locations`
--

CREATE TABLE `ht_locations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_locations`
--

INSERT INTO `ht_locations` (`id`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 0, '2018-09-08 10:28:01', '2018-09-08 10:28:01'),
(4, 'India', 0, '2018-09-18 03:41:02', '2018-09-18 03:41:02'),
(5, 'Canada', 0, '2019-02-17 21:11:34', '2019-02-17 21:11:34'),
(7, 'Dhaka', 1, '2019-05-18 04:22:10', '2019-05-18 04:22:10'),
(9, 'Chittagong', 1, '2019-05-18 04:24:33', '2019-05-18 04:24:33'),
(10, 'Rajshahi', 1, '2019-05-18 04:24:45', '2019-05-18 04:24:45'),
(11, 'Khulna', 1, '2019-05-18 04:25:02', '2019-05-18 04:25:02'),
(12, 'Barishal', 1, '2019-05-18 04:25:21', '2019-05-18 04:25:21'),
(13, 'Rangpur', 1, '2019-05-18 04:25:33', '2019-05-18 04:25:33'),
(14, 'Mymensingh', 1, '2019-05-18 04:25:55', '2019-05-18 04:25:55'),
(15, 'Sylhet', 1, '2019-05-18 04:26:18', '2019-05-18 04:26:18'),
(16, 'Tejgaon', 7, '2019-05-18 04:26:40', '2019-05-18 04:26:40'),
(17, 'Uttara', 7, '2019-05-18 04:27:00', '2019-05-18 04:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_material_type`
--

CREATE TABLE `ht_material_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_material_type`
--

INSERT INTO `ht_material_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'lecture', '2018-06-09 06:20:07', '0000-00-00 00:00:00'),
(2, 'Text Book', '2018-06-09 06:20:07', '0000-00-00 00:00:00'),
(3, 'Model Q', '2018-06-09 06:20:36', '0000-00-00 00:00:00'),
(4, 'Prev. Q&A', '2018-06-09 06:20:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_menu`
--

CREATE TABLE `ht_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 100,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_menu`
--

INSERT INTO `ht_menu` (`id`, `title`, `parent_id`, `link`, `target`, `priority`, `menu_type`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, '/', '_self', 1, NULL, 'Active', 1, '2018-07-12 05:16:28', '2018-07-15 10:40:14'),
(2, 'About FMMSB', 0, '#', '_self', 2, NULL, 'Active', 1, '2018-07-15 04:32:35', '2018-07-15 10:43:16'),
(11, 'About Bangladesh', 0, 'bangladesh.html', '_self', 5, NULL, 'Active', 1, '2018-07-15 10:01:37', '2018-07-16 09:27:29'),
(12, 'Conference Information', 0, '#', '_self', 3, NULL, 'Active', 1, '2018-07-15 10:09:17', '2018-07-15 10:43:00'),
(13, 'About', 2, 'about-fmmsb.html', '_self', 100, NULL, 'Active', 1, '2018-07-15 10:15:47', '2018-07-15 10:15:47'),
(14, 'General Information', 12, 'conference-information.html', '_self', 100, NULL, 'Active', 1, '2018-07-15 10:16:56', '2018-07-16 04:25:31'),
(15, 'Executivee Committee', 12, 'executive-committee.html', '_self', 100, NULL, 'Active', 1, '2018-07-15 10:23:47', '2018-07-16 08:09:35'),
(16, 'Sub Committee', 12, 'sub-committee.html', '_self', 100, NULL, 'Active', 1, '2018-07-15 10:24:18', '2018-07-15 10:24:18'),
(17, 'Message', 2, 'message.html', '_self', 3, NULL, 'Active', 1, '2018-07-16 05:25:28', '2018-07-16 05:27:41'),
(18, 'Registration Information', 12, 'registration-information.html', '_self', 12, NULL, 'Active', 1, '2018-07-16 06:49:21', '2018-07-16 06:49:21'),
(19, 'Program', 0, 'program.html', '_self', 4, NULL, 'Active', 1, '2018-07-16 09:15:42', '2018-07-16 09:15:42'),
(20, 'venue', 0, 'venue.html', '_self', 5, NULL, 'Active', 1, '2018-07-16 09:20:00', '2018-07-16 09:20:00'),
(21, 'Latest News', 0, 'latest-news.html', '_self', 13, NULL, 'Active', 1, '2018-07-16 09:26:12', '2018-07-16 09:26:12'),
(22, 'Contact Us', 0, 'contact-us.html', '_self', 14, NULL, 'Active', 1, '2018-07-16 09:31:59', '2018-07-16 09:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `ht_model_has_permissions`
--

CREATE TABLE `ht_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ht_model_has_roles`
--

CREATE TABLE `ht_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_model_has_roles`
--

INSERT INTO `ht_model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(1, 72, 'App\\User'),
(1, 73, 'App\\User'),
(1, 81, 'App\\User'),
(1, 82, 'App\\User'),
(3, 1, 'App\\User'),
(4, 49, 'App\\User'),
(4, 55, 'App\\User'),
(5, 53, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `ht_pages`
--

CREATE TABLE `ht_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_pages`
--

INSERT INTO `ht_pages` (`id`, `title`, `slug`, `detail`, `user_id`, `template`, `created_at`, `updated_at`) VALUES
(1, 'lenovo laptop ok', 'lenovo-laptop-ok', '<p>sdgg ed</p>', NULL, 'general', '2018-07-26 19:17:37', '2018-07-26 13:17:37'),
(2, 'About', 'about', '<p><span style=\"font-size: 24pt;\">Our founding</span></p>\r\n<p>Moz was founded by Rand Fishkin and Gillian Muessig in 2004. It was called SEOmoz, and started as a blog and an online community where some of the world\'s first SEO experts shared their research and ideas. We launched the Beginner\'s Guide to SEO and our first Search Ranking Factors study, and that hub of industry expertise transformed into a small consulting firm and led us to create some of our first SEO tools.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Early growth &amp; funding</p>\r\n<p>After a glimpse of the demand, we shifted our focus from consulting to our software, taking our first round of funding in 2007 to power the development of new tools and ideas. By 2009, we tallied our first 5,000 subscribers and codified our core values in the acronym TAGFEE, continuing to lead the industry with our educational content in an effort to demystify SEO (this is also when we started filming Whiteboard Fridays!).</p>\r\n<p>&nbsp;</p>\r\n<p>Series B funding</p>\r\n<p>A series B investment from The Foundry Group propelled our efforts into the broader realm of inbound marketing, a concept that rejects pushy sales in favor of attracting customers with real value. We acquired a Twitter analytics tool called Followerwonk as well as GetListed, a local SEO tool that has evolved into today\'s Moz Local.</p>', 54, 'general', '2018-07-27 06:07:42', '2018-07-27 00:07:42'),
(3, 'Tems and condition', 'tems-and-condition', '<p>This for test</p>', 54, 'general', '2018-07-26 19:17:18', '2018-07-26 13:17:18'),
(4, 'Policy', 'policy', '<p>What information we collect<br />We collect the following categories of information for the purposes listed below:</p>\r\n<p>When using our Website &ndash; our webserver will collect information like your IP-address, the website from which you were referred to our website, the webpages you are visiting on our Website, the browser you are using and its display settings, your operating system as well as date and duration of your visit. Further personal data will only be stored and processed if you voluntarily provide it to us, e.g. through a contact form.</p>\r\n<p>Device and app information &ndash; this category includes your device\'s type and model, system language, the device\'s operating system (such as Android or iOS), SDK version, mobile carrier name, mobile browsers installed on the device (such as Chrome or Safari), app history and usage information (such as information about running and installed apps on the device), information regarding downloads and installations of mobile applications and any information regarding in-app events (such as in-app purchases), your device\'s IP address, and identifiers assigned to your device, such as its iOS Identifier for Advertising (IDFA), Android Advertising ID, or other types of unique device identifiers (a number uniquely allocated to your device by your device manufacturer).</p>\r\n<p>Ad information &ndash; this category includes information about the online ads and personalized content we have served (or attempted to serve) to you. It includes things like how many times an ad has been served to you, what page the ad appeared on, whether you viewed, clicked on or otherwise interacted with the ad, ad engagement history and whether you visited the Advertiser&rsquo;s website, downloaded an app or purchased the product or service advertised.</p>\r\n<p>Location information &ndash; Appnext collects information about your general location (such as city and country). For example, we may use the IP address to identify your general location. This information does not tell us where your device is precisely located. This information is sent as a normal part of internet traffic. In addition, we also collect implicit location information, which allows us to infer that you are either interested in a place or that you might be at the place &ndash; this information does not actually tell us where your device is precisely located.</p>\r\n<p>In addition, Appnext may collect the precise location of your device (using GPS signals, device sensors, Wi-Fi access points, Bluetooth signals, Beacons signals and cell tower ids that can be used to derive or estimate precise location, or other geo-location data), when location services have been enabled by the end user for the mobile app or website that uses our SDK (you typically have to choose to turn on device-based location services).</p>\r\n<p>Log information &ndash; this category includes the app or website visited, session start/stop time, time zone, and network connection type (e.g., WiFi, cellular), and cookie information.</p>\r\n<p>Information from advertising partners (\"Advertisers\") and other third parties &ndash; this category includes information we receive from our Publishers, Advertisers and other Partners that we work with to help us deliver ads and personalized content to you and recognize you across browsers and devices. This may include pseudonymous advertiser identifiers that some Advertisers or other third party ad platforms choose to share with us. This information is also used to enhance data points about a particular unique browser or device.</p>\r\n<p>How We Use the Information We Collect<br />We use the information we collect for the following purposes:</p>\r\n<p>Serving ads and promoting apps &ndash; allow our Publishers to promote advertising, apps and content in their mobile apps, and to allow Advertisers to bid on Publishers&rsquo; inventory.</p>\r\n<p>Serve interest-based advertising and personalized content &ndash; enable our partners to infer interests and serve ads and personalized content to users based on their behavior, app activity and inferred interests. We will not serve interest-based ads or personalized content based on information that we consider sensitive, such as race, religion or health.</p>\r\n<p>Ad reporting and conversions &ndash; measure ad performance, report to Advertisers when and how users have viewed or clicked on their ads, or visited their website, and to report to Publishers when and how ads were shown on their properties and were clicked on.</p>\r\n<p>Analytics and frequency capping &ndash; allow our Publishers to analyze their applications (for this purpose, we use aggregated and anonymous benchmark data) and prevent users from seeing the same ad too many times.</p>\r\n<p>Fraud detection and prevention &ndash; identify invalid or incentivized clicks (or ad queries) and protect Appnext and our partners from fraudulent behavior.</p>\r\n<p>Enforce our policies, resolve disputes and communicate with you.</p>\r\n<p>Providing and improving our services &ndash; audit, research and analyze information in order to maintain, protect, and improve our services and develop new services, and to ensure that our technologies function properly.</p>', 54, 'general', '2018-07-26 19:48:45', '2018-07-26 13:48:45'),
(5, 'Privacy and policy', 'privacy-and-policy', '<p>ssdhrtyhtu</p>', 54, 'general', '2018-07-26 13:15:52', '2018-07-26 13:15:52'),
(6, 'Feedback', 'feedback', '<p>this for test</p>', 54, 'feedback', '2018-07-26 13:30:53', '2018-07-26 13:30:53'),
(7, 'Contact', 'contact', '<p>This for test</p>', 54, 'contact', '2018-07-26 13:31:55', '2018-07-26 13:31:55'),
(8, 'Terms', 'terms', '<p>What are Terms and Conditions<br />Terms and Conditions are a set of rules and guidelines that a user must agree to in order to use your website or mobile app. It acts as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.</p>\r\n<p>It&rsquo;s up to you to set the rules and guidelines that the user must agree to. You can think of your Terms and Conditions agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, and where you maintain your legal rights against potential app abusers, and so on.</p>\r\n<p>Terms and Conditions are also known as Terms of Service or Terms of Use.</p>\r\n<p>This type of legal agreement can be used for both your website and your mobile app. It&rsquo;s not required (it&rsquo;s not recommended actually) to have separate Terms and Conditions agreements: one for your website and one for your mobile app.</p>', 54, 'general', '2018-07-26 19:50:06', '2018-07-26 13:50:06'),
(9, 'Sitemap', 'sitemap', '<p>This for test&nbsp; <img src=\"/photos/72/admission_test.png\" alt=\"\" /></p>', 54, 'general', '2018-09-19 01:23:56', '2018-09-18 19:23:55'),
(10, 'Contents Upload successfully', 'contents-upload-successfully', '<p>Contents Upload successfully</p>', 72, 'general', '2018-10-05 07:16:14', '2018-10-05 07:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `ht_password_resets`
--

CREATE TABLE `ht_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_password_resets`
--

INSERT INTO `ht_password_resets` (`email`, `token`, `created_at`) VALUES
('rashed@gmail.com', '$2y$10$MMGnSZ/tk1tOOcdBeoE6FejTaUjK9lsmR56HrcOj6WkdyVKrBjEHK', '2018-07-26 21:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `ht_permissions`
--

CREATE TABLE `ht_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_permissions`
--

INSERT INTO `ht_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'users_manage', 'web', '2018-04-21 22:34:11', '2018-04-23 01:10:38'),
(2, 'Institution Type', 'web', '2018-04-21 22:44:25', '2018-07-02 19:12:11'),
(13, 'Settings Manager', 'web', '2018-04-23 06:04:12', '2018-04-25 03:32:32'),
(15, 'Institution Management', 'web', '2018-07-02 18:58:12', '2018-07-02 19:01:18'),
(16, 'Institution Category', 'web', '2018-07-03 10:09:18', '2018-07-03 10:09:18'),
(17, 'Institution', 'web', '2018-07-03 10:09:36', '2018-07-03 10:09:36'),
(18, 'Class', 'web', '2018-07-03 10:09:47', '2018-07-03 10:09:47'),
(19, 'Subject', 'web', '2018-07-03 10:16:53', '2018-07-03 10:16:53'),
(20, 'Department', 'web', '2018-07-03 10:17:04', '2018-07-03 10:17:04'),
(21, 'Level/Year', 'web', '2018-07-03 10:17:15', '2018-07-03 10:17:15'),
(22, 'Writer', 'web', '2018-07-03 10:17:25', '2018-07-03 10:17:25'),
(23, 'Content Type', 'web', '2018-07-03 10:17:36', '2018-07-03 10:17:36'),
(24, 'School & College', 'web', '2018-07-03 10:17:51', '2018-07-03 10:17:51'),
(25, 'Madrasha', 'web', '2018-07-03 10:18:01', '2018-07-03 10:18:01'),
(26, 'English Medium', 'web', '2018-07-03 10:18:16', '2018-07-03 10:18:16'),
(27, 'English Version', 'web', '2018-07-03 10:18:27', '2018-07-03 10:18:27'),
(28, 'Qawmi', 'web', '2018-07-03 10:18:37', '2018-07-03 10:18:37'),
(29, 'Technical & Vocational', 'web', '2018-07-03 10:18:50', '2018-07-03 10:18:50'),
(30, 'Admission Test', 'web', '2018-07-03 10:19:02', '2018-07-03 10:19:02'),
(31, 'Under Graduate', 'web', '2018-07-03 10:19:13', '2018-07-03 10:19:13'),
(32, 'Post Graduate', 'web', '2018-07-03 10:19:25', '2018-07-03 10:19:25'),
(33, 'Higher Study', 'web', '2018-07-03 10:19:36', '2018-07-03 10:19:36'),
(34, 'Job', 'web', '2018-07-03 10:19:46', '2018-07-03 10:19:46'),
(35, 'Skill Development', 'web', '2018-07-03 10:19:58', '2018-07-03 10:19:58'),
(36, 'Approve Manager', 'web', '2018-07-26 23:06:37', '2018-07-26 23:06:37'),
(37, 'Pages Manager', 'web', '2018-07-26 23:06:51', '2018-07-26 23:06:51'),
(38, 'Blogs Manager', 'web', '2018-07-26 23:07:02', '2018-07-26 23:07:02'),
(39, 'Feedback Manager', 'web', '2018-07-26 23:07:18', '2018-07-26 23:07:18'),
(40, 'Location', 'web', '2018-09-08 09:28:51', '2018-09-08 09:28:51'),
(41, 'University Manager', 'web', '2018-09-08 10:41:14', '2018-09-08 10:41:14'),
(42, 'Job Exam Subject', 'web', '2018-09-09 18:48:30', '2018-09-09 18:48:30'),
(43, 'Job Exam', 'web', '2018-09-09 18:48:48', '2018-09-09 18:48:48'),
(44, 'Skill Development Category', 'web', '2018-09-09 19:00:36', '2018-09-09 19:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `ht_role`
--

CREATE TABLE `ht_role` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_role`
--

INSERT INTO `ht_role` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-01 04:14:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_roles`
--

CREATE TABLE `ht_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_roles`
--

INSERT INTO `ht_roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2018-04-21 22:34:11', '2018-04-21 22:34:11'),
(2, 'Institutional Representative - University', 'web', '2018-04-21 22:58:52', '2019-07-21 04:34:23'),
(3, 'users', 'web', '2018-04-23 04:57:15', '2018-04-23 04:57:15'),
(6, 'Supervisor', 'web', '2018-07-26 23:00:36', '2018-07-26 23:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `ht_role_has_permissions`
--

CREATE TABLE `ht_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_role_has_permissions`
--

INSERT INTO `ht_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(13, 1),
(13, 6),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(17, 6),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(25, 6),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(43, 1),
(44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ht_settings`
--

CREATE TABLE `ht_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_settings`
--

INSERT INTO `ht_settings` (`id`, `key`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'for_information', 'FOR INFORMATION', 'FOR INFORMATION', 'label', NULL, '2018-08-27 12:00:37'),
(2, 'registration', 'Registretion', 'Cardiology', 'label', NULL, '2018-07-19 09:19:16'),
(3, 'registration_link', 'Registration Link', 'Cardiology', 'label', NULL, '2018-07-19 09:20:23'),
(4, 'conference_sponsor', 'CONFERENCE SPONSOR', 'Cardiology', 'label', NULL, NULL),
(5, 'home', 'Home', 'Cardiology', 'label', NULL, NULL),
(6, 'address', 'Address', 'Cardiology', 'label', NULL, NULL),
(7, 'phone', 'Phone', 'Phone', 'label', NULL, '2018-08-27 12:03:59'),
(8, 'email', 'Email', 'Email', 'label', NULL, '2018-08-27 12:03:47'),
(9, 'dusai_resort', 'DUSAI RESORT', 'Cardiology', 'label', NULL, NULL),
(10, 'the_conference', 'THE CONFERENCE', 'Cardiology', 'label', NULL, '2018-07-19 10:50:18'),
(11, 'support_organization', 'SUPPORT & ORGANISATION', 'Cardiology', 'label', NULL, NULL),
(12, 'all_rights_reserved', 'All rights reserved. ', 'Cardiology', 'label', NULL, NULL),
(13, 'design_developed_by', 'Design & Developed By', 'Cardiology', 'label', NULL, NULL),
(14, 'programme', 'PROGRAMME', 'Cardiology', 'label', NULL, NULL),
(15, 'organizers', 'ORGANIZERS', 'Cardiology', 'label', NULL, NULL),
(16, 'travel_to_marketting_food', 'TRAVELTO MARKETTING & FOOD', 'Cardiology', 'label', NULL, NULL),
(17, 'continue_reading', 'Continue Reading', 'Cardiology', 'label', NULL, '2018-07-23 09:30:30'),
(18, 'send_us_a_message', 'SEND US A MESSAGE', 'Cardiology', 'label', NULL, NULL),
(19, 'categories', 'Categories', 'Cardiology', 'label', NULL, NULL),
(20, 'recent_post', 'Recent Post', 'Cardiology', 'label', NULL, NULL),
(22, 'side_title', 'SIDE TITLE', 'Cardiology', 'label', NULL, NULL),
(25, 'join_fmmsb', 'Join FMMSB Conference', 'Cardiology', 'label', NULL, NULL),
(26, 'join_fmmsb_link', 'Join FMMSB Link', 'Cardiology', 'label', NULL, '2018-07-19 09:31:34'),
(27, 'join_fmmsb_desct', 'Join FMMSB Conference Short Description', 'Cardiology', 'label', NULL, '2018-07-19 09:30:39'),
(28, 'registration_program', 'Registration Now for Progme ', 'Cardiology', 'label', NULL, NULL),
(29, 'registration_program_link', 'Registration Now for Progme  Link', 'Cardiology', 'label', NULL, NULL),
(30, 'registration_type', 'Registration Type', 'Cardiology', 'label', NULL, NULL),
(31, 'please_inform', 'Please inform your personal information', 'Cardiology', 'label', NULL, NULL),
(32, 'registration_now', 'Registration now', 'Cardiology', 'label', NULL, NULL),
(33, 'committee_per_page', 'Committee/Speaker Per Page', 'Cardiology', 'label', NULL, '2018-08-16 09:20:50'),
(34, 'site_title', 'test', 'Academic BD', 'system', NULL, '2018-08-27 09:29:06'),
(35, 'site_slogan', '', 'Education for all', 'system', NULL, NULL),
(45, 'site_phone', NULL, '01770823204', 'system', NULL, NULL),
(46, 'site_email', NULL, 'info@bangladeshheart.com', 'system', NULL, NULL),
(47, 'site_address', NULL, '274, Mazar Road, Chalabon, Dokkhin Khan, Dhaka-1230, Bangladesh', 'system', NULL, NULL),
(48, 'site_facebook', NULL, 'https://www.facebook.com/', 'system', NULL, NULL),
(49, 'site_twitter', NULL, 'https://twitter.com', 'system', NULL, NULL),
(50, 'site_linkedin', NULL, 'https://bd.linkedin.com/', 'system', NULL, NULL),
(51, 'site_google_plus', NULL, 'https://plus.google.com', 'system', NULL, NULL),
(52, 'site_instagram', NULL, 'https://www.instagram.com', 'system', NULL, NULL),
(53, 'site_pinterest', NULL, 'https://www.pinterest.com/', 'system', NULL, NULL),
(54, 'site_sub_slogan', NULL, 'Humanity & Research Program', 'system', NULL, NULL),
(55, 'site_sister_concern', NULL, 'A sister concern of change the lives foundation', 'system', NULL, NULL),
(56, 'site_fevicon', NULL, '/photos/72/logo.png', 'system', NULL, NULL),
(57, 'site_logo', NULL, '/photos/72/logo.png', 'system', NULL, NULL),
(58, 'site_alt_logo', NULL, '/photos/1/logo2.png', 'system', NULL, NULL),
(59, 'show_statistics_section', NULL, 'no', 'system', NULL, NULL),
(60, 'spaecial_job_exam_id', NULL, '1', 'system', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ht_skills`
--

CREATE TABLE `ht_skills` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_skills`
--

INSERT INTO `ht_skills` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Skill 1', '2018-07-04 16:40:35', '0000-00-00 00:00:00'),
(2, 'Skill 2', '2018-07-04 16:40:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_skills_type`
--

CREATE TABLE `ht_skills_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_skills_type`
--

INSERT INTO `ht_skills_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Soft Skills', '2018-07-04 16:38:02', '0000-00-00 00:00:00'),
(2, 'Computer Skills', '2018-07-04 16:39:04', '0000-00-00 00:00:00'),
(3, 'Sports Skills', '2018-07-04 16:39:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ht_skill_development_category`
--

CREATE TABLE `ht_skill_development_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_skill_development_category`
--

INSERT INTO `ht_skill_development_category` (`id`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Soft Skills', 0, '2018-09-09 19:12:48', '2018-09-09 19:12:48'),
(2, 'Interview', 1, '2018-09-09 19:13:28', '2018-09-09 19:13:28'),
(3, 'Communication', 1, '2018-09-16 19:31:52', '2018-09-16 19:31:52'),
(4, 'Leadership', 1, '2018-09-16 19:32:09', '2018-09-16 19:32:09'),
(5, 'Computer Skills', 0, '2018-09-16 19:33:09', '2018-09-16 19:33:09'),
(6, 'Excell', 5, '2018-09-16 19:33:43', '2018-09-16 19:33:43'),
(7, 'MS Word', 5, '2018-09-16 19:33:57', '2018-09-16 19:33:57'),
(8, 'Photoshop Design', 5, '2018-09-24 18:37:30', '2018-09-24 18:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `ht_standarized_tests`
--

CREATE TABLE `ht_standarized_tests` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_standarized_tests`
--

INSERT INTO `ht_standarized_tests` (`id`, `title`, `created_at`, `updated_at`) VALUES
(4, 'IELTS', '2018-09-13 01:10:07', '2018-09-12 19:10:07'),
(6, 'GRE', '2019-05-18 10:43:10', '2019-05-18 04:43:10'),
(7, 'TOEFL', '2019-05-18 04:43:29', '2019-05-18 04:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `ht_subject`
--

CREATE TABLE `ht_subject` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `institution_category_id` int(11) DEFAULT NULL,
  `level_year_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_subject`
--

INSERT INTO `ht_subject` (`id`, `title`, `institution_category_id`, `level_year_id`, `department_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(3, 'English Today', 0, 0, 3, 4, '2018-07-21 14:05:08', '2018-07-21 08:05:08'),
(4, 'strength of materials', 0, 0, 2, 4, '2018-07-21 14:06:04', '2018-07-21 08:06:04'),
(5, 'physics', 0, 0, 3, 4, '2018-07-21 14:08:48', '2018-07-21 08:08:48'),
(6, 'বাংলা প্রথম পত্র', 0, 0, NULL, 4, '2018-07-21 00:03:03', '2018-07-21 00:03:03'),
(7, 'সাধারন গনিত', 0, 0, NULL, 2, '2018-07-21 00:05:36', '2018-07-21 00:05:36'),
(8, 'আরবি প্রথম পত্র', 0, 0, NULL, 4, '2018-08-04 10:16:58', '2018-08-04 04:16:58'),
(9, 'কুরআন ও হাদিস', 0, 0, NULL, 4, '2018-07-21 01:01:10', '2018-07-21 01:01:10'),
(10, 'সাধারন গনিত', 0, 0, NULL, 4, '2018-07-21 01:02:05', '2018-07-21 01:02:05'),
(11, 'Electricity', 0, NULL, 3, 4, '2018-07-21 04:59:16', '2018-07-21 04:59:16'),
(12, 'English Today', 0, NULL, NULL, 4, '2018-07-21 07:19:49', '2018-07-21 07:19:49'),
(13, 'Professor', 0, NULL, NULL, 4, '2018-07-21 13:35:01', '2018-07-21 07:35:01'),
(14, 'নাহু মীর', 0, NULL, NULL, 4, '2018-07-21 07:37:24', '2018-07-21 07:37:24'),
(15, 'Electronics', 0, NULL, NULL, 4, '2018-07-21 07:40:42', '2018-07-21 07:40:42'),
(16, 'lenovo laptop', 0, NULL, NULL, 4, '2018-07-21 07:41:57', '2018-07-21 07:41:57'),
(17, 'lenovo laptop', 0, NULL, 3, 4, '2018-07-21 07:59:14', '2018-07-21 07:59:14'),
(18, 'Chemistry', 0, NULL, 3, 4, '2018-07-28 05:59:07', '2018-07-28 05:59:07'),
(19, 'Electricity', 0, NULL, 3, 4, '2018-07-28 06:13:21', '2018-07-28 06:13:21'),
(20, 'সাধারন গনিত', 0, NULL, NULL, NULL, '2018-08-02 20:20:57', '2018-08-02 20:20:57'),
(21, 'সাধারন বিজ্ঞান', 0, NULL, NULL, NULL, '2018-08-02 20:21:50', '2018-08-02 20:21:50'),
(23, 'English Language', 0, NULL, NULL, NULL, '2018-08-04 11:52:33', '2018-08-04 05:52:33'),
(24, 'আদর্শ বাংলা পাঠ', 0, NULL, NULL, NULL, '2018-08-04 06:03:45', '2018-08-04 06:03:45'),
(25, 'মেকানিক্স', 6, NULL, NULL, NULL, '2018-08-19 13:30:51', '2018-08-19 07:30:51'),
(26, 'Physics', 4, NULL, NULL, NULL, '2018-08-07 16:04:02', '2018-08-07 10:04:01'),
(27, 'Chemistry', 4, NULL, NULL, NULL, '2018-08-07 10:04:36', '2018-08-07 10:04:36'),
(28, 'Introduction To Programming', 4, NULL, 4, NULL, '2018-08-08 17:21:17', '2018-08-08 11:21:17'),
(29, 'A’ Level Accounting', 7, NULL, 3, 2, '2018-08-13 10:15:04', '2018-08-13 10:15:04'),
(30, 'Social Studies', 4, NULL, 4, 4, '2018-08-14 01:49:34', '2018-08-13 19:49:34'),
(31, 'সাধারন গনিত', 8, NULL, 4, 2, '2018-08-16 15:45:12', '2018-08-16 09:45:12'),
(32, 'A’ Level Accounting', NULL, NULL, NULL, NULL, '2018-08-17 23:34:11', '2018-08-17 23:34:11'),
(33, 'english 1', NULL, NULL, NULL, NULL, '2018-08-17 23:49:37', '2018-08-17 23:49:37'),
(34, 'English for today', NULL, NULL, NULL, NULL, '2018-08-20 01:10:57', '2018-08-20 01:10:57'),
(35, 'social science', NULL, NULL, NULL, NULL, '2018-08-20 01:17:02', '2018-08-20 01:17:02'),
(36, 'amar bangla', NULL, NULL, NULL, NULL, '2018-09-02 03:10:34', '2018-09-02 03:10:34'),
(37, 'Mathematics-1', 4, NULL, 5, NULL, '2019-11-21 18:05:06', '2019-11-21 12:05:06'),
(38, 'Mathematics-1', 4, NULL, 201, NULL, '2019-11-21 12:15:33', '2019-11-21 12:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `ht_subject_has_class`
--

CREATE TABLE `ht_subject_has_class` (
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_subject_has_class`
--

INSERT INTO `ht_subject_has_class` (`subject_id`, `class_id`) VALUES
(29, 11),
(29, 12),
(30, 41),
(31, 9),
(31, 10),
(31, 11),
(28, 41),
(32, 36),
(33, 42),
(34, 28),
(34, 27),
(25, 43),
(26, 17),
(26, 43),
(34, 32),
(34, 31),
(34, 30),
(34, 29),
(35, 35),
(35, 42),
(36, 31),
(37, 63),
(37, 70),
(38, 63);

-- --------------------------------------------------------

--
-- Table structure for table `ht_subject_has_type`
--

CREATE TABLE `ht_subject_has_type` (
  `subject_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_subject_has_type`
--

INSERT INTO `ht_subject_has_type` (`subject_id`, `type_id`) VALUES
(29, 8),
(29, 7),
(29, 6),
(30, 9),
(31, 1),
(28, 8),
(32, 3),
(33, 4),
(34, 5),
(27, 7),
(25, 6),
(26, 2),
(34, 1),
(35, 4),
(35, 3),
(36, 1),
(37, 8),
(38, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ht_templates`
--

CREATE TABLE `ht_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_templates`
--

INSERT INTO `ht_templates` (`id`, `title`, `page_name`, `created_at`, `updated_at`) VALUES
(1, 'General Page', 'general', NULL, NULL),
(2, 'About', 'about', NULL, NULL),
(11, 'Contact Us', 'contact_us', NULL, NULL),
(12, 'Feedback', 'feedback', NULL, NULL),
(13, 'Contact', 'contact', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ht_university`
--

CREATE TABLE `ht_university` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_useful_higher_education`
--

CREATE TABLE `ht_useful_higher_education` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_useful_higher_education`
--

INSERT INTO `ht_useful_higher_education` (`id`, `title`, `short_desc`, `link`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'lenovo laptop ok', 'lenovo laptop  lenovo laptop', 'https://www.facebook.com/', 1, '2018-09-11 16:21:24', '2018-09-11 10:21:24'),
(2, 'Privacy and policy', 'Privacy and policyPrivacy and policyPrivacy and policyPrivacy and policyPrivacy and policy', 'http://jobs.bdjobs.com/jobdetails.asp?id=790974&fcatId=4&ln=1', 4, '2018-09-24 18:32:43', '2018-09-24 18:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `ht_users`
--

CREATE TABLE `ht_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_users`
--

INSERT INTO `ht_users` (`id`, `name`, `email`, `password`, `phone`, `image`, `about`, `status`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'anam khan ed', 'anam@gmail.com', '$2y$10$aiV42mvvqqX8EPWGbcV24.7R.VNAFf.XASgsAQtTHzp7ESgEAMsWC', '01787841565', '/photos/1/BannerX4.jpg', '', 'Active', NULL, 'CDHIG5KSX62VDIkvhbcQtOgj4mdaevjBT8UvSCOmBCn9KYpwFKk2A005Y2cI', '2018-04-23 04:07:29', '2018-09-02 10:22:05'),
(72, 'rabiul islam', 'rabiul0420@gmail.com', '$2y$10$ESnYuIFvK.2.YwWqU4YbpOuDIG0y0elz3Xe381XcV8nFgOIFAuT0S', '0166789', '/photos/72/Penguins.jpg', '', 'Active', NULL, 'HYgFBYw2Hv2b6PUK9H4PuDNuggnFGQ2HAzr1EMkfRGcDz6gHzrvFvj1dgI4s', '2018-09-02 18:09:15', '2018-09-07 06:09:13'),
(73, 'amir khan', 'amir@gmail.com', '$2y$10$aCKP/TKOj/WlsIBM09wYVOkc.u337IsEuebA9vc7Tz1ZmFp2AU5ai', '016678', '/photos/1/BannerX4.jpg', '', 'Active', NULL, NULL, '2018-09-02 18:11:06', '2019-11-19 01:04:39'),
(74, 'rashed khan', 'ytyfy@gmail.com', '$2y$10$xNwtPVWcsKD4TcG7B8VR2ei7XZm5u4XlvBaIy0F5zMfgQdbnOHJ9i', NULL, NULL, '', NULL, 'Teacher', 'VXSPdcsTCTbimBlCDcWvEoJ1EC1Ot7DS1Fkg848znlGFLIHuVAZ5mQcwZzIF', '2018-09-06 23:37:47', '2018-09-06 23:37:47'),
(75, 'rashed khan', 'ddtr@wewqr.com', '$2y$10$YF6qald8F.ug0ls501a/o.SkfaTUTlEURiVwFP8MDvBCJQLSVOSEa', NULL, NULL, '', NULL, 'Student', 'rOur5QLlaytg9cMPtZWo9YrjlZ0JKOhbtc5AVuycHSlUxNWpWH2vY8v6Bmlf', '2018-09-06 23:43:30', '2018-09-06 23:43:30'),
(76, 'rashed khan', 'seller@gmail.com', '$2y$10$NJxM/KITMKdTz0UNubY5XeyVuajI5ePHQgPYgStu/8F2/2at6dALe', NULL, NULL, '', NULL, 'Student', NULL, '2018-09-06 23:44:27', '2018-09-06 23:44:27'),
(77, 'Rabiul Ruet', 'rabiul.ruet04@gmail.com', '$2y$10$gTZfP0tfDUKL7bL46Jtf1OwdgFdBMx1Cb7fIkkYDtn9Qwe4mS555i', NULL, NULL, NULL, NULL, 'Teacher', 'Khazxh7WmiwNijVRRIystMi5EiXxMOqY3OIWsX8MyurmxVHjfa1bRvVhhTyU', '2019-05-30 18:11:37', '2019-05-30 18:11:37'),
(81, 'Rahat Adnan', 'rahatadnan17@gmail.com', '$2y$10$FM5DjpzXlq9t3.K3RijLHu1t2rx8kK/PNIWA4Ei2NjliPmzOLZBx6', NULL, NULL, NULL, 'Active', NULL, 't72roXYOSqkQlXeZW7RAGlkrOKGsSTc3bBGFVjtV2X1hu3so7KBBAvOe0Tgz', '2019-07-30 05:37:52', '2019-11-19 01:07:33'),
(82, 'Mamun', 'mamun93hasan@gmail.com', '$2y$10$Pq3TxR.tG4OZmA2i81sGw.a3fv9zmgGOroDCn207fqbcxaEDzD2o.', '00000000000', NULL, NULL, 'Active', NULL, NULL, '2019-11-19 01:02:24', '2019-11-19 01:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `ht_writer`
--

CREATE TABLE `ht_writer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_writer`
--

INSERT INTO `ht_writer` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'karim joidan', '2018-05-28 08:27:49', '2018-05-28 08:27:49'),
(4, 'Abdur Rahim', '2018-05-31 23:23:39', '2018-05-31 23:23:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ht_blogs`
--
ALTER TABLE `ht_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_classes`
--
ALTER TABLE `ht_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_class_room`
--
ALTER TABLE `ht_class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_contents`
--
ALTER TABLE `ht_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_content_section`
--
ALTER TABLE `ht_content_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_content_type`
--
ALTER TABLE `ht_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_department`
--
ALTER TABLE `ht_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_feedback`
--
ALTER TABLE `ht_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_global_setting`
--
ALTER TABLE `ht_global_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_higher_job_material_type`
--
ALTER TABLE `ht_higher_job_material_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_institution`
--
ALTER TABLE `ht_institution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_institution_category`
--
ALTER TABLE `ht_institution_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_institution_type`
--
ALTER TABLE `ht_institution_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_job_circular`
--
ALTER TABLE `ht_job_circular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_job_exam`
--
ALTER TABLE `ht_job_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_job_exam_subject`
--
ALTER TABLE `ht_job_exam_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_level_year`
--
ALTER TABLE `ht_level_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_locations`
--
ALTER TABLE `ht_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_material_type`
--
ALTER TABLE `ht_material_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_menu`
--
ALTER TABLE `ht_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_model_has_permissions`
--
ALTER TABLE `ht_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ht_model_has_roles`
--
ALTER TABLE `ht_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ht_pages`
--
ALTER TABLE `ht_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_password_resets`
--
ALTER TABLE `ht_password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ht_permissions`
--
ALTER TABLE `ht_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_role`
--
ALTER TABLE `ht_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_roles`
--
ALTER TABLE `ht_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_role_has_permissions`
--
ALTER TABLE `ht_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ht_settings`
--
ALTER TABLE `ht_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_skills`
--
ALTER TABLE `ht_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_skills_type`
--
ALTER TABLE `ht_skills_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_skill_development_category`
--
ALTER TABLE `ht_skill_development_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_standarized_tests`
--
ALTER TABLE `ht_standarized_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_subject`
--
ALTER TABLE `ht_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_templates`
--
ALTER TABLE `ht_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_university`
--
ALTER TABLE `ht_university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_useful_higher_education`
--
ALTER TABLE `ht_useful_higher_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_users`
--
ALTER TABLE `ht_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_writer`
--
ALTER TABLE `ht_writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ht_blogs`
--
ALTER TABLE `ht_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ht_classes`
--
ALTER TABLE `ht_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `ht_class_room`
--
ALTER TABLE `ht_class_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ht_contents`
--
ALTER TABLE `ht_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `ht_content_section`
--
ALTER TABLE `ht_content_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ht_content_type`
--
ALTER TABLE `ht_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ht_department`
--
ALTER TABLE `ht_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `ht_feedback`
--
ALTER TABLE `ht_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ht_global_setting`
--
ALTER TABLE `ht_global_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ht_higher_job_material_type`
--
ALTER TABLE `ht_higher_job_material_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ht_institution`
--
ALTER TABLE `ht_institution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `ht_institution_category`
--
ALTER TABLE `ht_institution_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ht_institution_type`
--
ALTER TABLE `ht_institution_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ht_job_circular`
--
ALTER TABLE `ht_job_circular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ht_job_exam`
--
ALTER TABLE `ht_job_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ht_job_exam_subject`
--
ALTER TABLE `ht_job_exam_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ht_level_year`
--
ALTER TABLE `ht_level_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ht_locations`
--
ALTER TABLE `ht_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ht_material_type`
--
ALTER TABLE `ht_material_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ht_menu`
--
ALTER TABLE `ht_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ht_pages`
--
ALTER TABLE `ht_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ht_permissions`
--
ALTER TABLE `ht_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ht_role`
--
ALTER TABLE `ht_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ht_roles`
--
ALTER TABLE `ht_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ht_settings`
--
ALTER TABLE `ht_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ht_skills`
--
ALTER TABLE `ht_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ht_skills_type`
--
ALTER TABLE `ht_skills_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ht_skill_development_category`
--
ALTER TABLE `ht_skill_development_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ht_standarized_tests`
--
ALTER TABLE `ht_standarized_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ht_subject`
--
ALTER TABLE `ht_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ht_templates`
--
ALTER TABLE `ht_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ht_university`
--
ALTER TABLE `ht_university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_useful_higher_education`
--
ALTER TABLE `ht_useful_higher_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ht_users`
--
ALTER TABLE `ht_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `ht_writer`
--
ALTER TABLE `ht_writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
