-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 27 2017 г., 14:54
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(1, 'Joanne ', 'Rowling', 'rowling@mail', '+12222222222'),
(2, 'Stephen', 'King', 'king@mail', '+14454566436'),
(3, 'Margaret', 'Mitchell', 'not exist', 'not exist'),
(4, 'Alexandre', 'Dumas', 'not exist', 'not exist'),
(5, 'Mario', 'Puzo', 'not exist', 'not exist'),
(6, 'Agatha', 'Christie', 'not exist', 'not exist'),
(7, 'Erich Maria', 'Remarque', 'not exist', 'not exist'),
(8, 'O', 'Henry', 'not exist', 'not exist');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `price`, `author_id`, `category_id`) VALUES
(1, 'Harry Potter and the Prisoner of Azkaban', 'The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ron Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord Voldemort''s old allies', 500, 1, 1),
(2, 'The green mile', 'It tells the story of death row supervisor Paul Edgecombe''s encounter with John Coffey, an unusual inmate who displays inexplicable healing and empathetic abilities. The serial novel was originally released in six volumes before being republished as a single volume work', 600, 2, 2),
(3, 'Gone with the wind', 'The story is set in Clayton County and Atlanta, both in Georgia, during the American Civil War and Reconstruction Era. It depicts the struggles of young Scarlett O''Hara, the spoiled daughter of a well-to-do plantation owner, who must use every means at her disposal to claw her way out of poverty following the destructive Sherman''s March to the Sea', 600, 3, 3),
(4, 'The Count of Monte Cristo', 'The story takes place in France, Italy, and islands in the Mediterranean during the historical events of 1815–1839: the era of the Bourbon Restoration through the reign of Louis-Philippe of France. It begins just before the Hundred Days period (when Napoleon returned to power after his exile). The historical setting is a fundamental element of the book, an adventure story primarily concerned with themes of hope, justice, vengeance, mercy, and forgiveness. It centres around a man who is wrongfully imprisoned, escapes from jail, acquires a fortune, and sets about getting revenge on those responsible for his imprisonment. However, his plans have devastating consequences for the innocent as well as the guilty. In addition, it is a story that involves romance, loyalty, betrayal, and selfishness, shown throughout the story as characters slowly reveal their true inner nature', 500, 4, 4),
(5, 'The Godfather', 'It details the story of a fictional Mafia family based in New York City (and Long Beach, New York), headed by Vito Corleone. The novel covers the years 1945 to 1955, and also provides the back story of Vito Corleone from early childhood to adulthood', 700, 5, 2),
(6, 'Partners in Crime', 'The Beresfords'' old friend, Mr Carter (who works for an unnamed government intelligence agency), arrives bearing a proposition for the adventurous duo. They are to take over ''The International Detective Agency'', a recently cleaned-out spy stronghold, and pose as the owners so as to intercept any enemy messages coming through. But in the meantime Tommy and Tuppence are to do with the detective agency as they please – an opportunity that delights the young couple. They employ the hapless but well-meaning Albert, a young man also introduced in The Secret Adversary, as their assistant at the agency.', 500, 6, 5),
(7, 'Three Comrades', 'It is written in first person by the main character Robert Lohkamp, whose somewhat disillusioned outlook on life is due to his horrifying experiences in the trenches of the First World War''s French-German front. He shares these experiences with Otto Köster and Gottfried Lenz, his two comrades with whom he runs an auto-repair shop in late 1920s Berlin (probably)', 500, 7, 6),
(8, 'The Gift of the Magi', 'It is a short story about a young married couple and how they deal with the challenge of buying secret Christmas gifts for each other with very little money. As a sentimental story with a moral lesson about gift-giving, it has been a popular one for adaptation, especially for presentation at Christmas time', 600, 8, 7),
(9, 'The Three Musketeers', 'It recounts the adventures of a young man named d''Artagnan (based on Charles de Batz-Castelmore d''Artagnan) after he leaves home to travel to Paris, to join the Musketeers of the Guard. Although D''Artagnan is not able to join this elite corps immediately, he befriends the three most formidable musketeers of the age: Athos, Porthos and Aramis and gets involved in affairs of the state and court.', 550, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Fantazy'),
(2, 'Crime'),
(3, 'Historical fiction'),
(4, 'Historical novel'),
(5, 'Detective fiction'),
(6, 'War novel'),
(7, 'Short story');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_book_author` (`author_id`),
  ADD KEY `fk_book_category` (`category_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_book_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
