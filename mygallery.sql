-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 06:35 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MyGallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL COMMENT 'Album ID',
  `featured` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Featured Image',
  `title` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Album Title',
  `created_on` date NOT NULL COMMENT 'Created Date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `featured`, `title`, `created_on`) VALUES
(6, 'DrMie98YgZ211225105954.png', '', '2021-12-25'),
(7, 'S7cEzTLcIZ211225012121.png', 'donut', '2021-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `album_pictures`
--

CREATE TABLE `album_pictures` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Image ID',
  `album_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Album ID',
  `image` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Image Name',
  `title` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Image Title'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_pictures`
--

INSERT INTO `album_pictures` (`id`, `album_id`, `image`, `title`) VALUES
(17, 6, '1-2-coffee-beans-free-png-image-thumb.png', ''),
(18, 6, '8c35f40d-ccea-4d0d-aad8-ce5237431321.png', ''),
(19, 6, '21_Bavarian_edit.png', ''),
(20, 6, '99d45ec9db9bbb905dcb55a5907cb867.jpg', ''),
(21, 7, '800px_COLOURBOX3993206.jpg', ''),
(22, 7, '83066694-donut-icon-cartoon-illustration-of-donut-', ''),
(23, 7, 'bacon-maple.png', ''),
(24, 7, 'bc9c5638a622f5ebb8beee5c6678c3f5.png', ''),
(25, 7, 'Caramel-Macchiato.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
(1, 'user', '$2y$10$NBJB92zGDQlnBCzJhDaR1uyHGx99OPXsZaAsGurD.dvKl28ZfVwme');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_pictures`
--
ALTER TABLE `album_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Album ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `album_pictures`
--
ALTER TABLE `album_pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Image ID', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
