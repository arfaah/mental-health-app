-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2026 at 03:42 PM
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
-- Database: `mental_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `year_name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `year_name`, `created_at`) VALUES
(1, '1st Year', '2026-02-27 13:48:19'),
(2, '2nd Year', '2026-02-27 13:48:19'),
(3, '3rd Year', '2026-02-27 13:48:19'),
(4, '4th Year', '2026-02-27 13:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `batch_name` varchar(50) NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch_name`, `start_year`, `end_year`, `created_at`) VALUES
(1, 'Batch 2021-2025', '2021', '2025', '2026-02-27 13:55:00'),
(2, 'Batch 2022-2026', '2022', '2026', '2026-02-27 13:55:00'),
(3, 'Batch 2023-2027', '2023', '2027', '2026-02-27 13:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_message` text DEFAULT NULL,
  `bot_reply` text DEFAULT NULL,
  `detected_emotion` varchar(50) DEFAULT NULL,
  `tip` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_history`
--

INSERT INTO `chat_history` (`id`, `user_id`, `user_message`, `bot_reply`, `detected_emotion`, `tip`, `created_at`) VALUES
(1, 2, 'hello', 'I understand you may be feeling neutral.', 'neutral', NULL, '2026-02-27 19:47:14'),
(2, 2, 'jee', 'I understand you may be feeling surprise.', 'surprise', NULL, '2026-02-27 19:49:39'),
(3, 2, 'I feel very lonely. It feels like no one understands me', 'I understand you may be feeling sadness.', 'sadness', NULL, '2026-02-27 19:50:15'),
(4, 2, 'I feel ashamed and embarrassed about my mistake', 'You are not defined by one moment. Would you like to talk about what made you feel this way?', 'shame', NULL, '2026-02-27 20:27:06'),
(5, 2, 'I am so frustrated and angry about what happened.', 'Take a deep breath. Let us calm your mind together.', 'anger', NULL, '2026-02-27 20:36:50'),
(6, 2, 'I feel so guilty about what I said yesterday.', 'It’s okay to make mistakes. What matters is learning and moving forward with kindness toward yourself.', 'guilt', NULL, '2026-02-27 20:45:39'),
(7, 2, 'I feel so guilty about what I said yesterday.', 'It’s okay to make mistakes. What matters is learning and moving forward with kindness toward yourself.', 'guilt', 'Maintain regular sleep schedule', '2026-02-27 21:06:40'),
(8, 2, '😀', 'I am here to listen. Tell me more.', 'neutral', 'Maintain regular sleep schedule', '2026-02-27 21:07:53'),
(9, 2, '😒', 'Take a deep breath. Let us calm your mind together.', 'anger', 'Try deep breathing', '2026-02-27 21:08:22'),
(10, 2, 'I feel very lonely. It feels like no one understands me.', 'Feeling alone can be very heavy. I\'m here with you right now. Would you like to talk more?', 'loneliness', 'Maintain regular sleep schedule', '2026-02-27 22:13:13'),
(11, 2, 'I am completely stressed and overwhelmed with work pressure.', 'It sounds like you are under pressure. Let’s take a short pause and try a calming breathing exercise.', 'stress', 'Maintain regular sleep schedule', '2026-02-28 06:36:53'),
(12, 2, 'How are you', 'I am here to listen. Tell me more.', 'neutral', 'Maintain regular sleep schedule', '2026-03-10 07:52:40'),
(13, 2, 'I am depressed because of exam', 'I understand you may be feeling sad. You are not alone.', 'sadness', 'Listen to relaxing music', '2026-03-10 07:53:18'),
(14, 2, 'Today is my birthday i am so happy', 'That is wonderful to hear! Keep smiling.', 'joy', 'Share happiness with friends', '2026-03-10 07:54:06'),
(15, 2, 'hello how are you', 'I am here to listen. Tell me more.', 'neutral', 'Maintain regular sleep schedule', '2026-03-18 18:05:40'),
(16, 2, 'I am not', 'I am here to listen. Tell me more.', 'neutral', 'Maintain regular sleep schedule', '2026-03-18 18:06:15'),
(17, 2, 'I am not feeling well', 'I understand you may be feeling sad. You are not alone.', 'sadness', 'Listen to relaxing music', '2026-03-18 18:06:24'),
(18, 2, 'I want to die', 'I’m really sorry you\'re feeling this way. Please seek immediate help.', 'crisis', 'Contact local emergency support immediately.', '2026-03-18 18:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `crisis_alerts`
--

CREATE TABLE `crisis_alerts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `alert_status` enum('pending','reviewed','resolved') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hod_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mood_history`
--

CREATE TABLE `mood_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `detected_emotion` varchar(50) NOT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `severity_level` enum('low','moderate','high') DEFAULT 'low',
  `recorded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tip` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `wellness_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mood_history`
--

INSERT INTO `mood_history` (`id`, `user_id`, `detected_emotion`, `confidence_score`, `severity_level`, `recorded_at`, `tip`, `activity`, `wellness_score`) VALUES
(1, 2, 'neutral', NULL, 'low', '2026-02-27 15:30:57', NULL, NULL, NULL),
(2, 2, 'neutral', NULL, 'low', '2026-02-27 15:31:45', NULL, NULL, NULL),
(3, 2, 'sadness', NULL, 'low', '2026-02-27 19:24:50', NULL, NULL, NULL),
(4, 2, 'sadness', NULL, 'low', '2026-02-27 19:42:38', NULL, NULL, NULL),
(5, 2, 'neutral', NULL, 'low', '2026-02-27 19:44:23', NULL, NULL, NULL),
(6, 2, 'neutral', NULL, 'low', '2026-02-27 19:44:41', NULL, NULL, NULL),
(7, 2, 'neutral', NULL, 'low', '2026-02-27 19:44:46', NULL, NULL, NULL),
(8, 2, 'neutral', NULL, 'low', '2026-02-27 19:44:57', NULL, NULL, NULL),
(9, 2, 'neutral', NULL, 'low', '2026-02-27 19:47:14', NULL, NULL, NULL),
(10, 2, 'surprise', NULL, 'low', '2026-02-27 19:49:39', NULL, NULL, NULL),
(11, 2, 'sadness', NULL, 'low', '2026-02-27 19:50:15', NULL, NULL, NULL),
(12, 2, 'shame', NULL, 'low', '2026-02-27 20:27:06', NULL, NULL, NULL),
(13, 2, 'anger', NULL, 'low', '2026-02-27 20:36:50', NULL, NULL, NULL),
(14, 2, 'guilt', NULL, 'low', '2026-02-27 20:45:39', NULL, NULL, NULL),
(15, 2, 'guilt', NULL, 'low', '2026-02-27 21:05:17', NULL, NULL, NULL),
(16, 2, 'guilt', NULL, 'low', '2026-02-27 21:06:40', NULL, NULL, NULL),
(17, 2, 'neutral', NULL, 'low', '2026-02-27 21:07:53', NULL, NULL, NULL),
(18, 2, 'anger', NULL, 'low', '2026-02-27 21:08:22', NULL, NULL, NULL),
(19, 2, 'loneliness', NULL, 'low', '2026-02-27 22:13:13', NULL, NULL, NULL),
(20, 2, 'stress', NULL, 'low', '2026-02-28 06:36:53', NULL, NULL, NULL),
(21, 2, 'neutral', NULL, 'low', '2026-03-10 07:52:40', NULL, NULL, NULL),
(22, 2, 'sadness', NULL, 'low', '2026-03-10 07:53:18', NULL, NULL, NULL),
(23, 2, 'joy', NULL, 'low', '2026-03-10 07:54:06', NULL, NULL, NULL),
(24, 2, 'neutral', NULL, 'low', '2026-03-18 18:05:40', 'Maintain regular sleep schedule', 'Take a short break', 100),
(25, 2, 'neutral', NULL, 'low', '2026-03-18 18:06:15', 'Maintain regular sleep schedule', 'Take a short break', 100),
(26, 2, 'sadness', NULL, 'low', '2026-03-18 18:06:24', 'Listen to relaxing music', 'Listen to calming music 🎧', 100);

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `designation` enum('Professor','Associate Professor','Assistant Professor','HOD','Counselor') NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `semester_name` varchar(20) NOT NULL,
  `year_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `semester_name`, `year_id`, `created_at`) VALUES
(1, 'Semester 1', 1, '2026-02-27 13:49:19'),
(2, 'Semester 2', 1, '2026-02-27 13:49:19'),
(3, 'Semester 3', 2, '2026-02-27 13:49:19'),
(4, 'Semester 4', 2, '2026-02-27 13:49:19'),
(5, 'Semester 5', 3, '2026-02-27 13:49:19'),
(6, 'Semester 6', 3, '2026-02-27 13:49:19'),
(7, 'Semester 7', 4, '2026-02-27 13:49:19'),
(8, 'Semester 8', 4, '2026-02-27 13:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_code` varchar(50) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `year_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `class_in_charge_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `full_name`, `student_code`, `department_id`, `phone`, `created_at`, `year_id`, `semester_id`, `class_in_charge_id`) VALUES
(1, 2, 'Sam', '', NULL, NULL, '2026-02-27 15:20:50', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('student','admin') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `role`, `is_active`, `created_at`) VALUES
(1, 'raj@gmail.com', '$2b$12$PFo.iWHvNwn0eqww6F9b9uIFPnr4lTGILbQlkzqEAao4.4dpd.m6e', 'student', 1, '2026-02-27 14:56:31'),
(2, 'sam@gmail.com', '$2b$12$Kc53Irhdbo0zdlH7SPm9a.alJPsfy/kUpCyx2vf499Q9LnJ91ISSm', 'student', 1, '2026-02-27 15:20:50'),
(3, 'admin@gmail.com', '$2b$12$z95Vvh7BRT.zs5en9StAleEPh87EpC7oPXz9SvPekbgVF3Xlkd3MW', 'admin', 1, '2026-02-27 15:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `wellness_scores`
--

CREATE TABLE `wellness_scores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `risk_level` enum('safe','warning','critical') DEFAULT 'safe',
  `calculated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year_name` (`year_name`);

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batch_name` (`batch_name`);

--
-- Indexes for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `crisis_alerts`
--
ALTER TABLE `crisis_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_name` (`department_name`),
  ADD UNIQUE KEY `department_code` (`department_code`),
  ADD KEY `hod_id` (`hod_id`);

--
-- Indexes for table `mood_history`
--
ALTER TABLE `mood_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_code` (`student_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `class_in_charge_id` (`class_in_charge_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wellness_scores`
--
ALTER TABLE `wellness_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `crisis_alerts`
--
ALTER TABLE `crisis_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mood_history`
--
ALTER TABLE `mood_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wellness_scores`
--
ALTER TABLE `wellness_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD CONSTRAINT `admin_logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD CONSTRAINT `chat_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `crisis_alerts`
--
ALTER TABLE `crisis_alerts`
  ADD CONSTRAINT `crisis_alerts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`hod_id`) REFERENCES `professors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `mood_history`
--
ALTER TABLE `mood_history`
  ADD CONSTRAINT `mood_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_ibfk_1` FOREIGN KEY (`year_id`) REFERENCES `academic_years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`year_id`) REFERENCES `academic_years` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_ibfk_5` FOREIGN KEY (`class_in_charge_id`) REFERENCES `professors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wellness_scores`
--
ALTER TABLE `wellness_scores`
  ADD CONSTRAINT `wellness_scores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
