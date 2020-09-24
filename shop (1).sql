-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 24 2020 г., 22:36
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `counter`
--

CREATE TABLE `counter` (
  `id` int(100) NOT NULL,
  `page_id` int(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `negative` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `counter`
--

INSERT INTO `counter` (`id`, `page_id`, `date`, `negative`) VALUES
(10, 1, '2020-09-24', 0),
(11, 4, '2020-09-24', 0),
(12, 5, '2020-09-24', 0),
(13, 2, '2020-09-24', 0),
(14, 2, '2020-09-24', 0),
(15, 5, '2020-09-24', 0),
(16, 1, '2020-09-24', 0),
(17, 1, '0000-00-00', 1),
(18, 2, '0000-00-00', 1),
(19, 4, '0000-00-00', 1),
(20, 5, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `category`, `price`) VALUES
(1, 'Наушники sennheiser', 'Звук и аудиотехника', 1500),
(2, 'Мкрофон Boya BY-M1', 'Звук и аудиотехника', 1699),
(4, 'Монитор AOC l3-37', 'Мониторы', 5600),
(5, 'тестовая запись', 'тестовая категория', 9000);

-- --------------------------------------------------------

--
-- Структура таблицы `goods_img`
--

CREATE TABLE `goods_img` (
  `pk` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `goods_img`
--

INSERT INTO `goods_img` (`pk`, `good_id`, `img`) VALUES
(1, 1, 'img/1/1.png'),
(2, 1, 'img/1/2.png'),
(3, 2, 'img/2/1.png'),
(4, 2, 'img/2/2.png'),
(5, 3, 'img/3/1.png'),
(6, 3, 'img/3/2.png'),
(7, 4, 'img/4/1.png'),
(8, 4, 'img/4/2.png'),
(9, 5, 'img/5/1.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods_img`
--
ALTER TABLE `goods_img`
  ADD PRIMARY KEY (`pk`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `goods_img`
--
ALTER TABLE `goods_img`
  MODIFY `pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
