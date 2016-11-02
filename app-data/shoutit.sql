-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2016 at 05:23 AM
-- Server version: 5.6.17-debug-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoutit`
--
CREATE DATABASE IF NOT EXISTS `shoutit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shoutit`;

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

DROP TABLE IF EXISTS `shouts`;
CREATE TABLE IF NOT EXISTS `shouts` (
`id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Truncate table before insert `shouts`
--

TRUNCATE TABLE `shouts`;
--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Beshoo', 'This is Hey Message', '05:14:10'),
(2, 'Mina', 'What''s Up Beshoo?', '10:34:23'),
(3, 'Beshoo', 'Hey! THere''s something wrong here!!', '12:15:55'),
(4, 'Sasa', 'asd kasjddlaksf ;asdfk jsad;lkf jsdlkfjsadl;kfjas', '15:12:11'),
(5, 'Mina', 'adasd asd asd asdasd', '10:11:15'),
(6, 'Mervat', 'sdasd', '06:46:15'),
(13, 'beshoo', '123', '07:08:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
