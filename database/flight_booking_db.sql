-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 08:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines_list`
--

CREATE TABLE `airlines_list` (
  `id` int(30) NOT NULL,
  `airlines` text NOT NULL,
  `logo_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines_list`
--

INSERT INTO `airlines_list` (`id`, `airlines`, `logo_path`) VALUES
(1, 'AirAsia', 'airasia-feat-logo.jpg'),
(2, 'Indigo Airlines', 'indigo-airlines-logo.jpg'),
(3, 'Spice Jet', 'GopikaChowflaDesign-Spicejet-logo.jpg'),
(4, 'Vistara', 'images.jpg'),
(5, 'GoAir Airlines', 'goair-agencies.jpg'),
(6, 'Jet Airways', '146784-jet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `airport_list`
--

CREATE TABLE `airport_list` (
  `id` int(30) NOT NULL,
  `airport` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport_list`
--

INSERT INTO `airport_list` (`id`, `airport`, `location`) VALUES
(1, 'Indira Gandhi International Airport', 'New Delhi'),
(2, 'Chennai International Airport', 'Chennai'),
(3, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai'),
(4, 'Kempegowda International Airport Bangalore', 'Bangalore'),
(5, 'Goa International Airport', 'Goa'),
(6, 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad, Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `booked_flight`
--

CREATE TABLE `booked_flight` (
  `id` int(30) NOT NULL,
  `flight_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_flight`
--

INSERT INTO `booked_flight` (`id`, `flight_id`, `name`, `address`, `contact`) VALUES
(4, 101, 'Deepashri ', 'Bangalore', '9467453211'),
(5, 103, 'Namrutha', 'Bangalore', '7878787878'),
(6, 103, 'Kavana', 'Bangalore', '9845367812');

-- --------------------------------------------------------

--
-- Table structure for table `flight_list`
--

CREATE TABLE `flight_list` (
  `id` int(30) NOT NULL,
  `airline_id` int(30) NOT NULL,
  `plane_no` text NOT NULL,
  `departure_airport_id` int(30) NOT NULL,
  `arrival_airport_id` int(30) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `seats` int(10) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_list`
--

INSERT INTO `flight_list` (`id`, `airline_id`, `plane_no`, `departure_airport_id`, `arrival_airport_id`, `departure_datetime`, `arrival_datetime`, `seats`, `price`, `date_created`) VALUES
(101, 1, 'ABC101', 1, 3, '2022-01-07 04:00:00', '2022-01-08 10:00:00', 150, 7500, '2021-12-29 11:23:52'),
(102, 2, 'ABC102', 2, 3, '2022-02-03 11:00:00', '2022-02-04 09:00:00', 100, 5000, '2022-01-25 11:46:12'),
(103, 3, 'ABC103', 3, 4, '2022-03-16 08:00:00', '2022-03-16 08:45:00', 200, 3600, '2022-02-28 11:57:31'),
(104, 4, 'ABC104', 4, 5, '2022-01-25 19:20:30', '2022-01-26 19:20:30', 350, 4000, '2022-01-12 23:50:30'),
(105, 5, 'ABC105', 5, 2, '2022-02-12 19:23:06', '2022-01-12 23:23:07', 250, 3500, '2022-01-13 23:53:07'),
(106, 6, 'ABC106', 6, 5, '2022-03-29 19:25:04', '2022-03-30 19:25:04', 180, 6000, '2022-01-25 23:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'FindmyFlights', 'findmyflights@gmail.com', '+91 9966382629', '1642003980_airline.jpg', '&lt;h1 style=&quot;text-align: center; background: transparent; position: relative; user-select: auto;&quot;&gt;&lt;b style=&quot;user-select: auto;&quot;&gt;WELCOME TO FINDmyFLIGHTS&lt;/b&gt;&lt;/h1&gt;&lt;h1 style=&quot;text-align: center; background: transparent; position: relative; user-select: auto;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;user-select: auto;&quot;&gt;&lt;b style=&quot;user-select: auto; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;color: rgb(7, 55, 99); user-select: auto; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:20px;color: rgb(7, 55, 99); user-select: auto;&quot;&gt;&lt;b style=&quot;font-size:20px;color: rgb(7, 55, 99); user-select: auto;&quot;&gt;On our website, you can find details of some of the specified Domestic Airlines.&lt;/b&gt;&lt;/span&gt;&lt;br style=&quot;user-select: auto;&quot;&gt;&lt;/span&gt;&lt;/b&gt;&lt;/font&gt;&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;/p&gt;&lt;/h1&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(1, 0, 'ADMINISTRATOR', '', '', 'ADMIN', '123ADMIN', 1),
(7, 0, 'Sarvath Anjum', 'Bangalore', '7899236478', 'sarvathanjum@gmail.com', 'sarvathanjum123', 2),
(9, 2, 'Gagan A', 'Mandya', '9878231235', 'gagana@gmail.com', 'gagana123', 2),
(10, 3, 'Sushmita S', 'Bangalore', '9923456323', 'sushmitas@gmail.com', 'sushmitas123', 2),
(11, 0, 'Pooja S', 'Bangalore', '9878784554', 'poojas@gmail.com', 'poojas123', 2),
(15, 9, 'Sparsha B S', 'Shivmoga', '9778344356', 'sparshabs@gmail.com', 'sparshabs123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines_list`
--
ALTER TABLE `airlines_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airport_list`
--
ALTER TABLE `airport_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_flight`
--
ALTER TABLE `booked_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_list`
--
ALTER TABLE `flight_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines_list`
--
ALTER TABLE `airlines_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `airport_list`
--
ALTER TABLE `airport_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booked_flight`
--
ALTER TABLE `booked_flight`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flight_list`
--
ALTER TABLE `flight_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
