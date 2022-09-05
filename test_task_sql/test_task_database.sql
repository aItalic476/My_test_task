-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 05 2022 г., 14:05
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя пользователя',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='пользователи';

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `name`, `birthday`, `created`, `updated`) VALUES
(1, 'Иванов', '1991-03-31', '2021-03-31 23:16:11', '2021-03-31 23:16:24'),
(2, 'Петров', '1990-01-28', '2021-03-31 23:16:34', '2021-03-31 23:16:42'),
(3, 'Сидоров', '1992-06-01', '2021-03-31 23:17:02', '2021-03-31 23:17:02'),
(4, 'Малинин', '1982-05-01', '2021-03-31 23:21:12', '2021-03-31 23:21:12'),
(5, 'Третьяк', '1992-07-24', '2021-03-31 23:30:32', '2021-03-31 23:30:48'),
(6, 'Вишин', '1991-12-31', '2021-03-31 23:31:17', '2021-03-31 23:31:17'),
(7, 'Соловьев', '2001-03-31', '2021-03-31 23:31:43', '2021-03-31 23:31:43');

-- --------------------------------------------------------

--
-- Структура таблицы `request`
--

CREATE TABLE `request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Заказы';

--
-- Дамп данных таблицы `request`
--

INSERT INTO `request` (`id`, `user_id`, `created`, `updated`) VALUES
(1, 1, '2021-03-31 23:19:01', '2021-03-31 23:19:01'),
(2, 1, '2021-03-31 23:19:01', '2021-03-31 23:19:01'),
(3, 2, '2021-03-31 23:19:01', '2021-03-31 23:19:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_of_user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `request`
--
ALTER TABLE `request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
