-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2022 at 12:27 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `number` varchar(3) NOT NULL,
  `type` int(1) UNSIGNED NOT NULL,
  `level` int(1) UNSIGNED NOT NULL,
  `period1` varchar(10) NOT NULL,
  `period2` varchar(10) NOT NULL,
  `id employee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`number`, `type`, `level`, `period1`, `period2`, `id employee`) VALUES
('1', 1, 1, '', '', ''),
('2', 1, 1, '', '', ''),
('3', 1, 1, '', '', ''),
('4', 1, 1, '', '', ''),
('5', 1, 1, '', '', ''),
('6', 1, 1, '', '', ''),
('7', 1, 1, '', '', ''),
('8', 1, 1, '', '', ''),
('9', 1, 1, '', '', ''),
('10', 1, 1, '', '', ''),
('11', 1, 2, '', '', ''),
('12', 1, 2, '', '', ''),
('13', 1, 2, '', '', ''),
('14', 2, 2, '29.11.2022', '11.12.2022', '11'),
('15', 1, 2, '', '', ''),
('16', 1, 2, '', '', ''),
('17', 1, 2, '', '', ''),
('18', 1, 2, '', '', ''),
('19', 1, 2, '', '', ''),
('20', 1, 2, '', '', ''),
('21', 1, 3, '', '', ''),
('22', 2, 3, '04.12.2022', '13.12.2022', '2'),
('23', 1, 3, '', '', ''),
('24', 1, 3, '', '', ''),
('25', 1, 3, '', '', ''),
('26', 1, 3, '', '', ''),
('27', 1, 3, '', '', ''),
('28', 1, 3, '', '', ''),
('29', 1, 3, '', '', ''),
('30', 1, 3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking history`
--

CREATE TABLE `booking history` (
  `id table` varchar(2) NOT NULL,
  `period1` varchar(10) NOT NULL,
  `period2` varchar(10) NOT NULL,
  `id employee` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking history`
--

INSERT INTO `booking history` (`id table`, `period1`, `period2`, `id employee`) VALUES
('17', '05.12.2022', '07.12.2022', '13'),
('18', '28.11.2022', '30.11.2022', '15'),
('22', '24.12.2022', '24.12.2022', '10'),
('21', '29.11.2022', '04.12.2022', '16'),
('24', '29.11.2022', '03.12.2022', '14'),
('14', '29.11.2022', '11.12.2022', '11'),
('6', '01.12.2022', '06.12.2022', '3'),
('1', '30.11.2022', '01.12.2022', '3'),
('15', '30.11.2022', '08.12.2022', '10'),
('12', '28.11.2022', '30.11.2022', '2'),
('30', '01.12.2022', '03.12.2022', '2'),
('22', '04.12.2022', '13.12.2022', '2'),
('24', '22.12.2022', '24.12.2022', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `FIO` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `type` int(1) UNSIGNED NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `FIO`, `email`, `phone`, `type`, `photo`) VALUES
(1, 'admin', 'admin', 'Кравчук Юлия Сергеевна', 'admin@gmail.com', '89197106043', 1, ''),
(2, 'employee', 'employee', 'Кравчук Юлия Сергеевна', 'k4vchuk.julia@yandex.ru', '89197106043', 2, 'https://drive.google.com/file/d/10EJEqjGBFLFv-9c4soDkxz3WMc6RmlZe/view?usp=share_link'),
(3, 'employee2', 'employee2', 'Радужный Единорог Счастья', 'employee2@gmail.com', '89197106043', 2, 'https://drive.google.com/file/d/10EJEqjGBFLFv-9c4soDkxz3WMc6RmlZe/view?usp=sharing'),
(10, 'Кравчук-ОВ', '0Ts6Ud5Dt', 'Кравчук Оксана Владимировна', 'emp@gmail.com', '89197106043', 2, 'https://drive.google.com/file/d/1VC8VqaOJv8Tn9AwodbdPqbj0V_wP6rUL/view?usp=sharing'),
(11, 'Кролик-МК', '3Dv8Cn7Cc', 'Кролик Милый Классный', 'krolik@mail.ru', '89567853645', 2, 'https://drive.google.com/file/d/1VC8VqaOJv8Tn9AwodbdPqbj0V_wP6rUL/view?usp=sharing'),
(12, 'Лунтик-ЛЛ', '3Ff7Qv0Rw', 'Лунтик Л Л', 'luna@yandex.ru', '465468935416', 2, 'https://drive.google.com/file/d/1VC8VqaOJv8Tn9AwodbdPqbj0V_wP6rUL/view?usp=sharing'),
(13, 'Чертенок-ИТ', '2Zo6Ac', 'Чертенок Из Табакерки', 'chert@gmail.com', '46464689789', 2, 'https://drive.google.com/file/d/1pIp5ZuEffa-2nQ16G_7VqBKMLL89UN1N/view?usp=sharing'),
(14, 'Ииусус-ХВ', '0Mk6Kf5Nl', 'Ииусус Христос Воскрес', 'svat@mail.ru', '45646351536', 2, 'https://drive.google.com/file/d/1RlUgQR8PF7lej6iKoFb52E2MLRhRKDZj/view?usp=sharing'),
(15, 'Мистер-ЛГ', '3Ju4Nu', 'Мистер Луинж Грейтер', 'fiasko@hjhkb.com', '89625341584', 2, 'https://drive.google.com/file/d/1bvj7a8GTlM2IJ3sH9ESvlwLrEqgxRv-f/view?usp=sharing'),
(16, 'Азматова-КВ', '5Rh4Fg7Wk', 'Азматова Карина Василевна', 'karina@mail.ru', '89125813699', 2, 'https://drive.google.com/file/d/1bvj7a8GTlM2IJ3sH9ESvlwLrEqgxRv-f/view?usp=sharing'),
(19, 'Суслик-УР', '4Gi7Ku', 'Суслик Устал Работать', 'jkbhkjh@gmail.com', '89197106043', 2, 'https://drive.google.com/file/d/1xcIzUOBrXHJEmt5dIxm2skfype2ZE8um/view?usp=sharing'),
(23, 'Стрелкова-ВЮ', '8Lz3Us5Cz', 'Стрелкова Валерия Юрьевна', 'strelkova@gmail.com', '89195632310', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
