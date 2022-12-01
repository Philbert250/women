-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 08:50 AM
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
(5, 'kenny', 'kennyrugaba@gmail.com', '0786450098', 'phil123', 'admin');

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
-- Table structure for table `event`
--

CREATE TABLE `event` (
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
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `woman`, `treat`, `dose`, `advice`, `period`, `comment`, `adversor_id`) VALUES
(1, '1', 'fdf', '32', 'dmf', 'month', 'come', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `names` text NOT NULL,
  `address` varchar(222) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notication`
--

CREATE TABLE `notication` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `reciver` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `child` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
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
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `name`, `gender`, `dob`, `email`, `phone`, `location`, `timesent`, `state`) VALUES
(4, 'Gisiment', 'Male', '2022-11-11', 'davidkay@gmail.com', '0782999395', 'Tumba', '2022-11-29 22:54:09', '');

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
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adversor_id` (`adversor_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notication`
--
ALTER TABLE `notication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tranfer`
--
ALTER TABLE `tranfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

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
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notication`
--
ALTER TABLE `notication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tranfer`
--
ALTER TABLE `tranfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
