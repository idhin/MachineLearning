-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2019 at 01:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naive`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `dataset_order` int(11) NOT NULL,
  `petal_length` double NOT NULL,
  `petal_width` double NOT NULL,
  `spesies` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`dataset_order`, `petal_length`, `petal_width`, `spesies`) VALUES
(1, 1.4, 0.2, 'setosa'),
(2, 1.4, 0.2, 'setosa'),
(3, 1.3, 0.2, 'setosa'),
(4, 1.5, 0.2, 'setosa'),
(5, 1.4, 0.3, 'setosa'),
(6, 1.7, 0.4, 'setosa'),
(7, 1.4, 0.3, 'setosa'),
(8, 1.5, 0.2, 'setosa'),
(9, 1.4, 0.2, 'setosa'),
(10, 1.5, 0.1, 'setosa'),
(11, 1.5, 0.2, 'setosa'),
(12, 1.6, 0.2, 'setosa'),
(13, 1.4, 0.1, 'setosa'),
(14, 1.1, 0.1, 'setosa'),
(15, 1.2, 0.2, 'setosa'),
(16, 1.5, 0.4, 'setosa'),
(17, 1.3, 0.4, 'setosa'),
(18, 1.4, 0.3, 'setosa'),
(19, 1.7, 0.3, 'setosa'),
(20, 1.5, 0.3, 'setosa'),
(21, 1.7, 0.2, 'setosa'),
(22, 1.5, 0.4, 'setosa'),
(23, 1, 0.2, 'setosa'),
(24, 1.7, 0.5, 'setosa'),
(25, 1.9, 0.2, 'setosa'),
(26, 1.6, 0.2, 'setosa'),
(27, 1.6, 0.4, 'setosa'),
(28, 1.5, 0.2, 'setosa'),
(29, 1.4, 0.2, 'setosa'),
(30, 1.6, 0.2, 'setosa'),
(31, 1.6, 0.2, 'setosa'),
(32, 1.5, 0.4, 'setosa'),
(33, 1.5, 0.1, 'setosa'),
(34, 1.4, 0.2, 'setosa'),
(35, 1.5, 0.2, 'setosa'),
(36, 1.2, 0.2, 'setosa'),
(37, 1.3, 0.2, 'setosa'),
(38, 1.4, 0.1, 'setosa'),
(39, 1.3, 0.2, 'setosa'),
(40, 1.5, 0.2, 'setosa'),
(41, 4.7, 1.4, 'versicolor'),
(42, 4.5, 1.5, 'versicolor'),
(43, 4.9, 1.5, 'versicolor'),
(44, 4, 1.3, 'versicolor'),
(45, 4.6, 1.5, 'versicolor'),
(46, 4.5, 1.3, 'versicolor'),
(47, 4.7, 1.6, 'versicolor'),
(48, 3.3, 1, 'versicolor'),
(49, 4.6, 1.3, 'versicolor'),
(50, 3.9, 1.4, 'versicolor'),
(51, 3.5, 1, 'versicolor'),
(52, 4.2, 1.5, 'versicolor'),
(53, 4, 1, 'versicolor'),
(54, 4.7, 1.4, 'versicolor'),
(55, 3.6, 1.3, 'versicolor'),
(56, 4.4, 1.4, 'versicolor'),
(57, 4.5, 1.5, 'versicolor'),
(58, 4.1, 1, 'versicolor'),
(59, 4.5, 1.5, 'versicolor'),
(60, 3.9, 1.1, 'versicolor'),
(61, 4.8, 1.8, 'versicolor'),
(62, 4, 1.3, 'versicolor'),
(63, 4.9, 1.5, 'versicolor'),
(64, 4.7, 1.2, 'versicolor'),
(65, 4.3, 1.3, 'versicolor'),
(66, 4.4, 1.4, 'versicolor'),
(67, 4.8, 1.4, 'versicolor'),
(68, 5, 1.7, 'versicolor'),
(69, 4.5, 1.5, 'versicolor'),
(70, 3.5, 1, 'versicolor'),
(71, 3.8, 1.1, 'versicolor'),
(72, 3.7, 1, 'versicolor'),
(73, 3.9, 1.2, 'versicolor'),
(74, 5.1, 1.6, 'versicolor'),
(75, 4.5, 1.5, 'versicolor'),
(76, 4.5, 1.6, 'versicolor'),
(77, 4.7, 1.5, 'versicolor'),
(78, 4.4, 1.3, 'versicolor'),
(79, 4.1, 1.3, 'versicolor'),
(80, 4, 1.3, 'versicolor'),
(81, 6, 2.5, 'virginica'),
(82, 5.1, 1.9, 'virginica'),
(83, 5.9, 2.1, 'virginica'),
(84, 5.6, 1.8, 'virginica'),
(85, 5.8, 2.2, 'virginica'),
(86, 6.6, 2.1, 'virginica'),
(87, 4.5, 1.7, 'virginica'),
(88, 6.3, 1.8, 'virginica'),
(89, 5.8, 1.8, 'virginica'),
(90, 6.1, 2.5, 'virginica'),
(91, 5.1, 2, 'virginica'),
(92, 5.3, 1.9, 'virginica'),
(93, 5.5, 2.1, 'virginica'),
(94, 5, 2, 'virginica'),
(95, 5.1, 2.4, 'virginica'),
(96, 5.3, 2.3, 'virginica'),
(97, 5.5, 1.8, 'virginica'),
(98, 6.7, 2.2, 'virginica'),
(99, 6.9, 2.3, 'virginica'),
(100, 5, 1.5, 'virginica'),
(101, 5.7, 2.3, 'virginica'),
(102, 4.9, 2, 'virginica'),
(103, 6.7, 2, 'virginica'),
(104, 4.9, 1.8, 'virginica'),
(105, 5.7, 2.1, 'virginica'),
(106, 6, 1.8, 'virginica'),
(107, 4.8, 1.8, 'virginica'),
(108, 4.9, 1.8, 'virginica'),
(109, 5.6, 2.1, 'virginica'),
(110, 5.8, 1.6, 'virginica'),
(111, 6.1, 1.9, 'virginica'),
(112, 6.4, 2, 'virginica'),
(113, 5.6, 2.2, 'virginica'),
(114, 5.1, 1.5, 'virginica'),
(115, 5.6, 1.4, 'virginica'),
(116, 6.1, 2.3, 'virginica'),
(117, 5.6, 2.4, 'virginica'),
(118, 5.5, 1.8, 'virginica'),
(119, 4.8, 1.8, 'virginica'),
(120, 5.4, 2.1, 'virginica');

-- --------------------------------------------------------

--
-- Table structure for table `datatrain`
--

CREATE TABLE `datatrain` (
  `datatrain_order` int(11) NOT NULL,
  `petal_length` double NOT NULL,
  `petal_width` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatrain`
--

INSERT INTO `datatrain` (`datatrain_order`, `petal_length`, `petal_width`) VALUES
(1, 1.3, 0.3),
(2, 1.3, 0.3),
(3, 1.3, 0.2),
(4, 1.6, 0.6),
(5, 1.9, 0.4),
(6, 1.4, 0.3),
(7, 1.6, 0.2),
(8, 1.4, 0.2),
(9, 1.5, 0.2),
(10, 1.4, 0.2),
(11, 4.4, 1.2),
(12, 4.6, 1.4),
(13, 4, 1.2),
(14, 3.3, 1),
(15, 4.2, 1.3),
(16, 4.2, 1.2),
(17, 4.2, 1.3),
(18, 4.3, 1.3),
(19, 3, 1.1),
(20, 4.1, 1.3),
(21, 5.6, 2.4),
(22, 5.1, 2.3),
(23, 5.1, 1.9),
(24, 5.9, 2.3),
(25, 5.7, 2.5),
(26, 5.2, 2.3),
(27, 5, 1.9),
(28, 5.2, 2),
(29, 5.4, 2.3),
(30, 5.1, 1.8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`dataset_order`);

--
-- Indexes for table `datatrain`
--
ALTER TABLE `datatrain`
  ADD PRIMARY KEY (`datatrain_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatrain`
--
ALTER TABLE `datatrain`
  MODIFY `datatrain_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
