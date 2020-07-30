-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 12:47 PM
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
-- Database: `votingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Admin', '$2y$10$4dJuMKYw8.nsO0GnneZdEui1ChlcMLQihBeX9lUv4ZsEwxOINc576', 'Project', 'Election', 'image7.jpg', '2020-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(28, 10, 'Nelson', 'N', 'image6.jpg', 'TEAM SUCCESS'),
(29, 10, 'Stellah', 'S', 'image14.jpg', 'TEAM FORWARD '),
(30, 10, 'Kenny ', 'Rodgers', '', 'TEAM C'),
(31, 11, 'Kelvin', 'K', 'image1.jpg', 'TEAM SUCCESS'),
(32, 11, 'John', 'J', '', 'TEAM FORWARD'),
(33, 12, 'Marystellah', 'Mrefu', 'image14.jpg', 'TEAM SUCCESS'),
(34, 12, 'Jane', 'J', 'image5.jpg', 'TEAM C'),
(35, 13, 'Samson', 'S', 'image9.jpg', 'TEAM SUCCESS'),
(36, 15, 'Elizabeth', 'E', 'image14.jpg', ''),
(37, 14, 'Edwin ', 'E', 'image13.jpg', 'TEAM C'),
(38, 16, 'Edwin', 'E', 'image3.jpg', 'TEAM C');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'CHAIRPERSON', 1, 1),
(11, 'ACADEMIC SECRETARY', 1, 2),
(12, 'VICE CHAIRPERSON', 1, 3),
(13, 'TREASURER', 1, 4),
(14, 'SECRETARY GENERAL', 1, 5),
(15, 'SPECIAL INTEREST SECRETARY', 1, 6),
(16, 'SECURITY AND ACCOMMODATION SECRETARY', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(22, 'JCmwe26LQ1q9yIP', '$2y$10$ZAgVslSsgutCM7CgCag.BO8MA6hrqEeBNg.YPPsVT9RlL22a.Tp..', 'Samwel', 'Sammy', 'image11.jpg'),
(23, 'KPMBwhCFep5yrTD', '$2y$10$qeYSz1InpHggxQhicIsAsOayZfcO60ZLfoJmYHjGUZQqrVRTUzaH2', 'Billy', 'Mrefu', 'image10.jpg'),
(24, 'gPyu4BcnIOlHhKj', '$2y$10$BR5sIqAkwaatUG.5s957Z.6iMVO2416z5s/VFLkuaRjeV9JYea0oK', 'Cynthia ', 'c', 'image14.jpg'),
(25, 'oYA8KgydRsGf2aF', '$2y$10$pGiwtQ7ahi50NxbEiLbKseZvF8KWFdCEaD4ix3Nz.8m2QhYHeCPXy', 'Mary', 'Mrefu', 'image15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(136, 22, 28, 10),
(137, 22, 31, 11),
(138, 22, 33, 12),
(139, 22, 35, 13),
(140, 22, 37, 14),
(141, 22, 36, 15),
(142, 22, 38, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
