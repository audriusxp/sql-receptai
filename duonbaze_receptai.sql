-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2022 г., 14:28
-- Версия сервера: 5.7.36
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `duonbaze_receptai`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alergijos`
--

DROP TABLE IF EXISTS `alergijos`;
CREATE TABLE IF NOT EXISTS `alergijos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `alergeno_pavadinimas` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alergijos`
--

INSERT INTO `alergijos` (`id`, `alergeno_pavadinimas`) VALUES
(1, 'glitimas'),
(2, 'veziagyviai'),
(3, 'kiausiniai'),
(4, 'zuvys'),
(5, 'zemes riesutai'),
(6, 'soju pupeles'),
(7, 'pienas'),
(8, 'riesutai'),
(9, 'salieras'),
(10, 'garstycios'),
(11, 'sezamo seklos'),
(12, 'sieros dioksidas'),
(13, 'lubinai'),
(14, 'moliuskai');

-- --------------------------------------------------------

--
-- Структура таблицы `dieta`
--

DROP TABLE IF EXISTS `dieta`;
CREATE TABLE IF NOT EXISTS `dieta` (
  `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dienu_skaicius` decimal(4,0) NOT NULL,
  `patiekalu_per_diena_skaicius` decimal(4,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dieta`
--

INSERT INTO `dieta` (`id`, `dienu_skaicius`, `patiekalu_per_diena_skaicius`) VALUES
(1, '2', '2'),
(2, '2', '4'),
(3, '3', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `ingridijentas`
--

DROP TABLE IF EXISTS `ingridijentas`;
CREATE TABLE IF NOT EXISTS `ingridijentas` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  `kalorijos_per100g` int(40) NOT NULL,
  `kaina` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ingridijentas`
--

INSERT INTO `ingridijentas` (`id`, `pavadinimas`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Vištiena', 166, '6.12'),
(2, 'Jautienos faršas', 39, '8.55'),
(3, 'Braškės', 309, '3.53'),
(4, 'Pienas', 243, '4.53'),
(5, 'Avižiniai dribsniai', 45, '3.59'),
(6, 'Svogūnas', 72, '2.53'),
(7, 'Bulvės', 313, '9.44'),
(8, 'Grietinė', 307, '5.93'),
(9, 'Teriyaki marinatas', 134, '3.85'),
(10, 'Lęšiai', 290, '10.21'),
(11, 'Avinžirniai', 423, '6.99'),
(12, 'Petražolė', 318, '1.57'),
(13, 'Pomidoras', 311, '8.87'),
(14, 'Agurkas', 436, '3.59'),
(15, 'Couscous', 84, '2.57'),
(16, 'Duona', 44, '0.69');

-- --------------------------------------------------------

--
-- Структура таблицы `kategorija_virtuve`
--

DROP TABLE IF EXISTS `kategorija_virtuve`;
CREATE TABLE IF NOT EXISTS `kategorija_virtuve` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kategorija_virtuve`
--

INSERT INTO `kategorija_virtuve` (`id`, `pavadinimas`) VALUES
(1, 'vidurio rytu'),
(2, 'libanietiska'),
(3, 'universali'),
(4, 'azijieciu'),
(5, 'marokietiska'),
(6, 'lietuviska');

-- --------------------------------------------------------

--
-- Структура таблицы `receptas`
--

DROP TABLE IF EXISTS `receptas`;
CREATE TABLE IF NOT EXISTS `receptas` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  `murodymai` varchar(300) NOT NULL,
  `kalorijos_100g` decimal(6,0) NOT NULL,
  `kaina` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `receptas`
--

INSERT INTO `receptas` (`id`, `pavadinimas`, `murodymai`, `kalorijos_100g`, `kaina`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', '564', '6.85'),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', '831', '15.03'),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', '622', '12.97'),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', '663', '26.86'),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', '754', '19.22'),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', '352', '9.52'),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', '329', '18.76'),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', '1410', '27.23'),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', '288', '8.12'),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', '596', '8.75');

-- --------------------------------------------------------

--
-- Структура таблицы `receptas_alergenas`
--

DROP TABLE IF EXISTS `receptas_alergenas`;
CREATE TABLE IF NOT EXISTS `receptas_alergenas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recepto_id` smallint(5) UNSIGNED NOT NULL,
  `alergeno_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recepto_id` (`recepto_id`),
  KEY `alergeno_id` (`alergeno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `receptas_dieta`
--

DROP TABLE IF EXISTS `receptas_dieta`;
CREATE TABLE IF NOT EXISTS `receptas_dieta` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recepto_id` smallint(5) UNSIGNED NOT NULL,
  `dietos_id` smallint(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recepto_id` (`recepto_id`),
  KEY `dietos_id` (`dietos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `receptas_ingridijientas_sujungimas`
--

DROP TABLE IF EXISTS `receptas_ingridijientas_sujungimas`;
CREATE TABLE IF NOT EXISTS `receptas_ingridijientas_sujungimas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `ingridijentas_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingridijentas_id` (`ingridijentas_id`),
  KEY `receptas_id` (`receptas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `receptas_kategorija`
--

DROP TABLE IF EXISTS `receptas_kategorija`;
CREATE TABLE IF NOT EXISTS `receptas_kategorija` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recepto_id` smallint(5) UNSIGNED NOT NULL,
  `kategorijos_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recepto_id` (`recepto_id`),
  KEY `kategorijos_id` (`kategorijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vartotojas`
--

DROP TABLE IF EXISTS `vartotojas`;
CREATE TABLE IF NOT EXISTS `vartotojas` (
  `username` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vartotojas`
--

INSERT INTO `vartotojas` (`username`, `pasword`) VALUES
('Algimantas', '1299000'),
('Maryte', 'Aaaapp0988'),
('Petras', 'ajskl1121'),
('Rapolas', 'dkdk92990'),
('Zose', '102020kssjsj');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `receptas_alergenas`
--
ALTER TABLE `receptas_alergenas`
  ADD CONSTRAINT `receptas_alergenas_ibfk_1` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`),
  ADD CONSTRAINT `receptas_alergenas_ibfk_2` FOREIGN KEY (`alergeno_id`) REFERENCES `alergijos` (`id`);

--
-- Ограничения внешнего ключа таблицы `receptas_dieta`
--
ALTER TABLE `receptas_dieta`
  ADD CONSTRAINT `receptas_dieta_ibfk_1` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`),
  ADD CONSTRAINT `receptas_dieta_ibfk_2` FOREIGN KEY (`dietos_id`) REFERENCES `dieta` (`id`);

--
-- Ограничения внешнего ключа таблицы `receptas_ingridijientas_sujungimas`
--
ALTER TABLE `receptas_ingridijientas_sujungimas`
  ADD CONSTRAINT `receptas_ingridijientas_sujungimas_ibfk_1` FOREIGN KEY (`ingridijentas_id`) REFERENCES `ingridijentas` (`id`),
  ADD CONSTRAINT `receptas_ingridijientas_sujungimas_ibfk_2` FOREIGN KEY (`receptas_id`) REFERENCES `receptas` (`id`);

--
-- Ограничения внешнего ключа таблицы `receptas_kategorija`
--
ALTER TABLE `receptas_kategorija`
  ADD CONSTRAINT `receptas_kategorija_ibfk_1` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`),
  ADD CONSTRAINT `receptas_kategorija_ibfk_2` FOREIGN KEY (`kategorijos_id`) REFERENCES `kategorija_virtuve` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
