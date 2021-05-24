-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 24 2021 г., 14:56
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wsr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Тестовая категория');

-- --------------------------------------------------------

--
-- Структура таблицы `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'Новая' COMMENT 'Статус заявки',
  `name` varchar(255) NOT NULL COMMENT 'Название ',
  `before_img` varchar(255) NOT NULL COMMENT 'Фото до',
  `after_img` varchar(255) DEFAULT NULL COMMENT 'Фото после ',
  `why_not` text COMMENT 'Причина отказа',
  `category_id` int(11) NOT NULL COMMENT 'Категория',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL COMMENT 'Автор',
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `request`
--

INSERT INTO `request` (`id`, `status`, `name`, `before_img`, `after_img`, `why_not`, `category_id`, `created_at`, `created_by`, `updated_by`) VALUES
(1, '', 'ffffffffffff', '1', '', '', 1, '2021-05-15 17:34:00', 100, 100),
(2, 'Новая', 'fff', 'uploads/gory_reka_ozero_trava_leto_99409_1920x1080.jpg', '', '', 1, '2021-05-15 20:23:20', 100, 100),
(3, 'Решена', 'ааааа', 'uploads/Без названия.png', '', '', 1, '2021-05-15 21:51:44', 100, 100),
(4, 'Решена', 'ffffffff', 'uploads/gory_reka_ozero_trava_leto_99409_1920x1080.jpg', '', '', 1, '2021-05-23 16:00:53', 100, 100),
(5, 'Новая', 'ffffffff13213', 'uploads/autumn-forest-road-scenery.jpg', '', '', 1, '2021-05-23 16:05:10', 100, 100),
(6, 'Новая', 'rE11', 'uploads/autumn-forest-road-scenery.jpg', '', '', 1, '2021-05-23 16:46:11', 101, 101),
(7, 'Решена', 'ffffffff312312311312', 'uploads/gory_reka_ozero_trava_leto_99409_1920x1080.jpg', '', 'FSDFSSFDSD', 1, '2021-05-23 17:20:49', 100, 100);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
