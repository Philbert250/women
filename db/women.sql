-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 02:41 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `women`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `phone`, `password`, `role`) VALUES
(1, 'phil', 'ndzphilbert@gmail.com', '0785339987', 'phil123', 'admin'),
(5, 'kenny', 'kennyrugaba@gmail.com', '0786450098', 'phil123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `adversor`
--

CREATE TABLE `adversor` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `location` text NOT NULL,
  `role` text NOT NULL,
  `password` varchar(222) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adversor`
--

INSERT INTO `adversor` (`id`, `firstname`, `lastname`, `email`, `phone`, `location`, `role`, `password`, `admin_id`) VALUES
(1, 'FURAHA', 'Noble', 'ndpzhilbert@gmail.com', '0782999395', 'Gisagara', 'adversor', 'phil123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `locaction` varchar(255) NOT NULL,
  `role` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `registertime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tranfer`
--

CREATE TABLE `tranfer` (
  `id` int(11) NOT NULL,
  `woman` text NOT NULL,
  `sponsor` text NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `deseases` text NOT NULL,
  `Comments` text NOT NULL,
  `timesent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tranfer`
--

INSERT INTO `tranfer` (`id`, `woman`, `sponsor`, `hospital`, `deseases`, `Comments`, `timesent`, `admin_id`) VALUES
(1, '', '0000-00-00', 'Male', '', '', '2022-11-29 23:58:56', 1),
(2, '', '0000-00-00', 'CHK', 'dsjhdfjh', 'hjfdjhf', '2022-11-30 00:07:15', 1),
(3, '4', '0000-00-00', 'CHK', 'dsjhdfjh', 'hjfdjhf', '2022-11-30 00:08:08', 1),
(4, '4', 'dsd', 'CHK', 'dsjhdfjh', 'hjfdjhf', '2022-11-30 00:08:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `treat`
--

CREATE TABLE `treat` (
  `id` int(11) NOT NULL,
  `woman` text NOT NULL,
  `treat` varchar(222) NOT NULL,
  `dose` varchar(222) NOT NULL,
  `advice` text NOT NULL,
  `period` varchar(222) NOT NULL,
  `comment` text NOT NULL,
  `adversor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treat`
--

INSERT INTO `treat` (`id`, `woman`, `treat`, `dose`, `advice`, `period`, `comment`, `adversor_id`) VALUES
(1, '1', 'fdf', '32', 'dmf', 'month', 'come', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id` int(11) NOT NULL,
  `woman` varchar(222) NOT NULL,
  `vaccine` text NOT NULL,
  `dose` text NOT NULL,
  `period` varchar(222) NOT NULL,
  `comment` text NOT NULL,
  `timesent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `women`
--

CREATE TABLE `women` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `timesent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `women`
--

INSERT INTO `women` (`id`, `name`, `gender`, `dob`, `email`, `phone`, `location`, `timesent`, `state`) VALUES
(4, 'Gisiment', 'Male', '2022-11-11', 'davidkay@gmail.com', '0782999395', 'Tumba', '2022-11-29 22:54:09', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adversor`
--
ALTER TABLE `adversor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tranfer`
--
ALTER TABLE `tranfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `treat`
--
ALTER TABLE `treat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adversor_id` (`adversor_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `women`
--
ALTER TABLE `women`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adversor`
--
ALTER TABLE `adversor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tranfer`
--
ALTER TABLE `tranfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treat`
--
ALTER TABLE `treat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `women`
--
ALTER TABLE `women`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
