-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1029.awardspace.net
-- Generation Time: Oct 31, 2024 at 08:19 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4535836_gamespace`
--
CREATE DATABASE IF NOT EXISTS `4535836_gamespace` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `4535836_gamespace`;

-- --------------------------------------------------------

--
-- Table structure for table `act`
--

CREATE TABLE `act` (
  `id` int NOT NULL,
  `disription` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start` datetime NOT NULL,
  `category_id` int NOT NULL,
  `gameName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `act`
--

INSERT INTO `act` (`id`, `disription`, `start`, `category_id`, `gameName`) VALUES
(4, '', '0000-00-00 00:00:00', 0, 'Valorant');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `game_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `images`, `price`, `game_id`) VALUES
(4, '', '199', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `images_profile` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `fname`, `lname`, `images_profile`) VALUES
(21, 'admin', 'Min', '670f8ddd26cf7_1729072605.jpg'),
(22, 'Patcharapong', 'Titivanich', '670f556d929a1_1729058157.jpg'),
(23, 'Patcharapong', 'Titivanich', '671e4c494c9c9_1730038857.jpg'),
(24, 'Hassaya', 'kanlaya', ''),
(25, 'Patcharapong', 'Titivanich', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_ln`
--

CREATE TABLE `user_ln` (
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `person_id` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_ln`
--

INSERT INTO `user_ln` (`email`, `password`, `username`, `role`, `person_id`, `id`) VALUES
('admin@gmail.com', '$2y$10$Z4Hsvfo2F5lFFM.AySPpW.8.YRzogAKZHQq84AqK6ugLRkHYgSON.', 'adad', 1, 21, 21),
('user@gmail.com', '$2y$10$xWGm6jAXzoaG6k8.ZsH68e0xJoSkWurG.9eONzd0KGX.zZxV6GEVq', 'user', 0, 22, 22),
('gamemingkung3@gmail.com', '$2y$10$dV6avs4mqUwldJT/ca3J5.QWa3yzdg05g8g2SZN042EpoLmSlG6CC', 'mmmonkey1', 1, 23, 23),
('viewview@gmail.com', '$2y$10$mohiYWv4/IldCacX6xUL6eWm3UVudqE6oJ/njs3MHTJ3XyMjhP3LO', 'view', 0, 24, 24),
('gamemingkung@gmail.com', '$2y$10$KFGfb9lOkMut6SsEIZD6D.tdFfDNuvem0mLCXYgFZBvSzJOBIn1oi', 'MM', 0, 25, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act`
--
ALTER TABLE `act`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ln`
--
ALTER TABLE `user_ln`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `act`
--
ALTER TABLE `act`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_ln`
--
ALTER TABLE `user_ln`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
