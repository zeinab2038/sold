-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 12:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todolist`
--

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `name` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `54` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`name`, `user_id`, `create_at`, `54`, `id`) VALUES
('ffff', 0, '2023-02-09 02:15:29', 0, 1),
('kopkpok', 0, '2023-02-03 02:10:06', 0, 2),
('nev', 0, '2023-02-03 01:43:15', 0, 3),
('personal', 1, '2023-02-01 10:08:04', 0, 4),
('work', 1, '0000-00-00 00:00:00', 0, 5),
('زینب', 0, '2023-02-03 01:52:52', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `title` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `is_done` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`title`, `user_id`, `folder_id`, `is_done`, `created_at`, `id`) VALUES
('xx', '', 1, 0, '0000-00-00 00:00:00', 1),
('task1-2', '1', 1, 1, '2023-01-23 22:17:57', 2),
('task2-2', '1', 1, 0, '2023-01-23 22:17:57', 3),
('task4', '1', 2, 1, '2023-02-01 19:09:30', 4),
('task7', '1', 3, 0, '2023-02-01 19:09:59', 5),
('bb', '', 1, 0, '0000-00-00 00:00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `create_at`, `password`) VALUES
(1, 'zeinab2038', 'zynb.iranelementor@gmail.com', '2023-02-14 01:20:21', '$2y$10$HdM/9XUCTllCmD3iikjTpO19wfQTmwREgol/53ivqMtXQZ0YT0SWK'),
(2, 'zeinab', 'zynb@gmail.com', '2022-12-27 07:55:54', '1321132163'),
(3, 'zeinab2038', 'zynb.iranelementor@gmail.com', '2023-01-26 10:08:19', 'zynb.iranelementor@gmail.com'),
(4, 'amir', 'amir2016.moallemi@gmail.com', '2023-02-24 05:29:51', '$2y$10$Cjfd.yrGr3MFRBR.Ia3hkuGmaba/nUJ4D58x1iYh5rXumIHwqe.ay'),
(5, 'amir', 'amir2016.moallemi@gmail.com', '2023-02-24 05:30:57', '$2y$10$gbz/nHw1TGzBANGwEqtR9emRN.N4G9taWzJ1Qwzo7e4q7QbczVdGi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
