-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Трв 30 2022 р., 21:15
-- Версія сервера: 8.0.24
-- Версія PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `chat`
--

-- --------------------------------------------------------

--
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`name`, `comment`, `time`) VALUES
('', 'fdgdfbdb', NULL),
('', 'fdgdfbdb', NULL),
('', 'fdgdfbdb', NULL),
('Andrii', 'еиека', NULL),
('Andrii', 'еиека', NULL),
('Andri', 'rrthrthryhyt', NULL),
('Andri', 'rbrttynyt', NULL),
('Andri', 'rbrttynyt', NULL),
('Andri', 'rgrbrtbryn', NULL),
('Andri', 'rgrbrtbryn', NULL),
('Andri', 'rgrbrtbryn', NULL),
('Andri', 'rgrbrtbryn', NULL),
('Andri', 'fdgdfbdb', NULL),
('Andri', 'rgrbrtbryn', NULL),
('Andri', 'WHERE', NULL),
('Andri', 'WHERE ARE', '2022-05-29 21:45:08'),
('Andri', 'rgrbrtbryn', '2022-05-29 21:50:53'),
('Andri', 'rgrbrtbryn', '2022-05-29 23:09:09'),
('Andri', 'rgrbrtbryn', '2022-05-30 01:57:19'),
('Andri', 'rgrbrtbryn', '2022-05-30 02:00:42'),
('Andri', 'fvdfvdfv', '2022-05-30 02:04:53'),
('Andri', 'deree', '2022-05-30 02:04:56'),
('Andri', 'How are you?', '2022-05-30 02:18:46'),
('Andri', 'very well', '2022-05-30 02:21:10'),
('Andri', 'i am very well', '2022-05-30 02:28:01'),
('Andri', 'rgrbrtbryn', '2022-05-30 02:32:37'),
('Andri', 'rgrbrtbryn', '2022-05-30 02:37:05'),
('Andri', 'nice', '2022-05-30 02:42:08'),
('Andri', 'i lika anal', '2022-05-30 02:45:30'),
('Andri', 'who are you?', '2022-05-30 02:46:54'),
('Andri', '', '2022-05-30 02:52:55'),
('Andri', 'еиека', '2022-05-30 02:53:07'),
('Andri', 'dwqdq', '2022-05-30 03:02:38'),
('Andri', 'fferfe', '2022-05-30 03:02:44'),
('Andri', 'rgrt', '2022-05-30 03:03:34'),
('Andri', 'erve', '2022-05-30 03:03:36'),
('Andri', '', '2022-05-30 03:08:29'),
('Andri', 'rrthrth', '2022-05-30 13:33:30'),
('Andri', 'rttrbrt', '2022-05-30 13:37:52'),
('Andri', 'ergrgrtbr', '2022-05-30 13:38:58'),
('Andri', 'rgrbrtbryn', '2022-05-30 15:08:45'),
('Andri', 'how are you dude?', '2022-05-30 16:04:49'),
('Andri', 'who are you bitch', '2022-05-30 16:10:28'),
('Andri', '', '2022-05-30 17:16:19'),
('Andri', 'dsfvdsdd', '2022-05-30 17:16:25');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `pass`) VALUES
(13, 'Andri', 'andrij1997', '3466c00450e728dd14274fdf3a81f8a7'),
(12, 'Andrii', 'andrij97', '369f76bfc208fa205c4978ade6096596'),
(11, 'Andri', 'andrij97', '369f76bfc208fa205c4978ade6096596');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
