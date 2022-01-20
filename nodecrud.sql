-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 12:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodecrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `city` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_no`, `city`) VALUES
(16, 'sneha1', 'sneha@gmail.com', '9022783280', 'Kolhapur'),
(27, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(28, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(31, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(33, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(34, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(36, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(43, 'rutu', 'rutu@gmail.com', '9022783282', 'Kolhapur'),
(44, 'snehawebsite777', 'aishwaryamole439@gmail.com', '9876543210', 'kop'),
(45, 'sneha', 'sneha@gmail.com', '9022783280', 'Kolhapur'),
(46, 'rutuja', 'rutu@gmail.com', '9080784563', 'Sangali'),
(47, 'rutuja', 'rutu@gmail.com', '9080784563', 'Sangali'),
(48, 'rutu', 'rutu@gmail.com', '9897564232', 'Sangali'),
(49, 'khushboo', 'khushi@gmail.com', '8974859636', 'Sangali'),
(50, 'rutu', 'rutu123@gmail.com', '9022783282', 'Kolhapur'),
(51, 'sneha1', 'sneha@gmail.com', '9022783280', 'Kolhapur'),
(52, 'sneha1', 'sneha@gmail.com', '9022783280', 'Kolhapur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
