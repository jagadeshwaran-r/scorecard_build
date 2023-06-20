-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `score_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_sc_config_codes`
--

CREATE TABLE `tb_sc_config_codes` (
  `id` bigint(20) NOT NULL,
  `config_type` varchar(500) NOT NULL,
  `config_code` varchar(500) NOT NULL,
  `config_value` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_date` datetime(6) NOT NULL,
  `delete_flag` varchar(1) NOT NULL,
  `is_active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_sc_config_codes`
--

INSERT INTO `tb_sc_config_codes` (`id`, `config_type`, `config_code`, `config_value`, `created_by`, `created_date`, `last_updated_by`, `last_updated_date`, `delete_flag`, `is_active`) VALUES
(1, 'Period Type', 'Beginning', 'beginning', 1, '2023-06-16 11:57:05.472010', 1, '2023-06-16 11:57:05.472010', 'N', 'Y'),
(2, 'Period Type', 'End', 'end', 1, '2023-06-16 11:57:38.955500', 1, '2023-06-16 11:57:38.955500', 'N', 'Y'),
(3, 'Frequency', 'Daily', 'daily', 1, '2023-06-16 12:57:47.503735', 1, '2023-06-16 12:57:47.503735', 'N', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_sc_config_codes`
--
ALTER TABLE `tb_sc_config_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_config_type_config_code` (`config_type`,`config_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_sc_config_codes`
--
ALTER TABLE `tb_sc_config_codes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
