-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 06:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hangedman`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataforgame`
--

CREATE TABLE `dataforgame` (
  `language` char(5) NOT NULL,
  `category` char(25) NOT NULL,
  `level` char(20) NOT NULL,
  `expression_in_Hungarian` char(50) NOT NULL,
  `expression` char(50) NOT NULL,
  `description_in_Hungarian` char(255) NOT NULL,
  `description_in_target_language` char(255) NOT NULL,
  `picture` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataforgame`
--

INSERT INTO `dataforgame` (`language`, `category`, `level`, `expression_in_Hungarian`, `expression`, `description_in_Hungarian`, `description_in_target_language`, `picture`) VALUES
('ru', 'biológia', 'easy', 'Alma', 'Яблоко', 'Fán termő piros gyümölcs.', 'Красный плод, который растет на дереве.', 'https://images.unsplash.com/photo-1570913149827-d2ac84ab3f9a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
('ru', 'biológia', 'medium', 'Delfin', 'Дельфин', 'A legokosabbnak tartott vízi állat.', 'читается самым умным водным животным.', 'https://static.euronews.com/articles/stories/06/98/17/92/1440x810_cmsv2_5d7d9385-089e-590f-be2c-f6b01e6e01d9-6981792.jpg'),
('ru', 'biológia', 'hard', 'Armadilló-gyík', 'Ящерица-броненосец', 'Sivatagi száraz éghajlatot kedvelő páncélos kis állat.', 'Небольшое бронированное животное, предпочитающее сухой пустынный климат.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTsc2oi_E3EpkGl5NEXKtdvrEQJH22CPuPvKxRhayJ-tDcr0zdN'),
('en', 'biológia', 'easy', 'Süni', 'Hedgehog', 'Kistermetű tüskés élőlény.', 'A small spiny creature.', 'https://i.pinimg.com/originals/34/dc/53/34dc535c346a393a2b2c5e1985e401a7.jpg'),
('en', 'biológia', 'medium', 'Gyűrűsfarkú maki', 'Ring-tailed lemur', 'Julien király ilyen állat volt.', 'King Julien was such an animal.', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/A_katták.jpg'),
('en', 'biológia', 'hard', 'Tengeri fecske', 'Sea swallow', 'Nyílt tengeri csupaszkopoltyús csiga, hirtelen kék színéről is híres.', 'It is an open-sea snail with naked gills, also famous for its sudden blue color.', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRpnHI5sHJlMEM1GbmKO6aFdfFXM7fOJcmHfG0CkIDrpp91-u6mwrIkPkUIFNGYnS2UsEHAJxmozj-Sb9Y'),
('en', 'épület', 'easy', 'Big Ben', 'Big Ben', 'A brit parlament épület toronyórájának harangja.', 'The bell of the tower clock of the British Parliament building.', 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Clock_Tower_-_Palace_of_Westminster%2C_London_-_September_2006.jpg'),
('en', 'épület', 'medium', 'Szabadságszobor', 'Statue of Liberty', 'Egy réz szobor New Yorkban, amelyet Franciaország népe ajándékozott.', 'A copper statue in New York which was a gift from the people of France.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Lady_Liberty_under_a_blue_sky_%28cropped%29.jpg/800px-Lady_Liberty_under_a_blue_sky_%28cropped%29.jpg'),
('en', 'épület', 'hard', 'Szent Pál székesegyház', 'St Paul\'s Cathedral', 'A Ludgate Hill tetején lévő katedrális Londonban.', 'The cathedral on top of Ludgate Hill in London.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/St_Pauls_aerial_%28cropped%29.jpg/1280px-St_Pauls_aerial_%28cropped%29.jpg'),
('ru', 'épület', 'easy', 'Téli Palota', 'Зимний дворец', 'Az épület Szentpétervárott található a Néva folyó partján.', 'Здание расположено в Санкт-Петербурге на берегу Невы.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Spb_06-2012_Palace_Embankment_various_14.jpg/1920px-Spb_06-2012_Palace_Embankment_various_14.jpg'),
('ru', 'épület', 'medium', 'Szpasszkaja torony', 'Спасская башняa', 'A moszkvai Kreml legismertebb kapubástyája.', 'Самый известный надвратный бастион Московского Кремля.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Spaskaja_Bašňa_%28спасская_башня%29_The_Saviour_tower_%286078983317%29.jpg/800px-Spaskaja_Bašňa_%28спасская_башня%29_The_Saviour_tower_%286078983317%29.jpg'),
('ru', 'épület', 'hard', 'Közép-Moszkva Hippodrom', 'Центральный Московский ипподром', 'Oroszország legnagyobb lóversenypályája.', 'Самый большой ипподром в России.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Moscow_Hippodrome_4.JPG/330px-Moscow_Hippodrome_4.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
