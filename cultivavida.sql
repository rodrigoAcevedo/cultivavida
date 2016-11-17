-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2016 a las 16:45:50
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cultivavida`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buys`
--

CREATE TABLE IF NOT EXISTS `buys` (
  `id` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `requested` datetime NOT NULL,
  `delivered` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `buys`
--

INSERT INTO `buys` (`id`, `idClient`, `idProduct`, `cost`, `quantity`, `requested`, `delivered`) VALUES
(6, 56, 20, 100, 1, '2016-11-17 15:31:08', '2016-11-17 15:31:08'),
(7, 56, 17, 20, 1, '2016-11-17 15:33:01', '2016-11-17 15:33:01'),
(8, 56, 21, 65, 1, '2016-11-17 15:33:17', '2016-11-17 15:33:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `direction` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `telephone`, `direction`, `active`, `created`, `modified`) VALUES
(1, 'Jillian Jerde', 'susie92@example.com', '45820138', '8340 Krista Lock Suite 641\nLake Adele, MS 29520-6278', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(2, 'Dewitt Wyman', 'deondre84@example.net', '45820138', '673 Garett Fall\nStrackeland, FL 55592', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(3, 'Kassandra Quigley', 'kweber@example.com', '45820138', '81960 Karine Route Apt. 743\nKleinmouth, NE 24174', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(4, 'Catalina Lockman', 'dahlia.kub@example.org', '45820138', '3893 Legros Common Apt. 017\nKirlinside, CT 18315', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(5, 'Prof. Ubaldo Reinger II', 'ocie53@example.org', '45820138', '660 Olson Estates Apt. 246\nDamarisside, NJ 05746', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(6, 'Keyon Harber', 'gregg55@example.net', '45820138', '61097 Gibson Spur Suite 338\nFramishire, IL 95842-2971', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(7, 'Ralph Jakubowski', 'titus.schaden@example.net', '45820138', '4032 Morar Tunnel\nNew Aurelioside, NJ 48753-6227', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(8, 'Aileen Schiller DDS', 'merl.ledner@example.org', '45820138', '5091 Leonard Ferry\nWest Leland, VA 78916', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(9, 'Mrs. Gladys Kuvalis', 'sedrick05@example.org', '45820138', '4775 Ari Pike Apt. 675\nLurlineview, CT 40046', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(10, 'Irma Considine', 'cheyenne.ohara@example.net', '45820138', '1071 Hermann Place Suite 652\nNatbury, NC 58594', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(11, 'Cathy Rodriguez', 'haag.golden@example.com', '45820138', '97720 Steuber Lane\nBotsfordview, IN 64872', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(12, 'Zion Olson II', 'hilll.sigurd@example.com', '45820138', '761 Maegan Highway Apt. 393\nKeeblerborough, OR 35206-4349', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(13, 'Gina Collins', 'carmen.gusikowski@example.com', '45820138', '116 Sarai Fords\nWatsonside, OH 28648', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(14, 'Braden Altenwerth', 'marvin.hellen@example.net', '45820138', '600 Lysanne Trail Suite 506\nPort Abe, AZ 31954-6682', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(15, 'Helga Kunde', 'susie.fadel@example.net', '45820138', '7371 Bergnaum Isle Suite 646\nEast Annetteburgh, UT 63313-6153', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(16, 'Seamus Mertz', 'ruth.gislason@example.org', '45820138', '44404 O''Connell Vista Apt. 129\nSouth Vivianmouth, NJ 69588', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(17, 'Edwardo Hilll', 'alberto87@example.com', '45820138', '778 Hickle Rest Apt. 014\nEast Kristopherstad, TN 29587', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(18, 'Ms. Kassandra Waters DVM', 'qheller@example.net', '45820138', '21589 Sven Causeway\nPort Gertrudehaven, NH 32409-5698', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(19, 'Margarete Flatley', 'gudrun.kreiger@example.net', '45820138', '414 Tillman Park Suite 860\nPort Lavada, NC 98354-2535', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(20, 'Ricky Sauer', 'skylar66@example.com', '45820138', '38392 Napoleon Mission Apt. 228\nNorth Maud, MA 47824-4987', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(21, 'Gwen Altenwerth', 'kris.stacy@example.org', '45820138', '2483 Champlin Court Apt. 386\nBernhardchester, NH 50592-6039', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(22, 'Carley Kozey PhD', 'jaclyn10@example.com', '45820138', '93965 Lakin Shores\nMrazmouth, NH 85364-9254', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(23, 'Mrs. Ericka Schmitt', 'derrick19@example.org', '45820138', '246 Batz Track\nJohnsonborough, AR 09533', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(24, 'Jacinto Connelly I', 'ghartmann@example.org', '45820138', '19555 Anderson Groves\nKeelingshire, OK 88590', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(25, 'Kaden Conn', 'carter.ryleigh@example.com', '45820138', '79290 Mraz Summit\nVestaberg, MN 04647', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(26, 'Emily Ebert', 'feest.carmela@example.org', '45820138', '134 Clinton Mount Apt. 299\nJacobsport, TX 43971', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(27, 'Mr. Royce Langosh', 'qoconnell@example.com', '45820138', '6494 Robel Land\nGreenfelderchester, MT 54475', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(28, 'Antone Miller', 'cbayer@example.com', '45820138', '9552 Emelie Pine Apt. 001\nEast Evertview, ID 33476-2105', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(29, 'Maddison Brekke', 'brenda71@example.com', '45820138', '324 Margaret Forge Apt. 034\nSpencerview, OK 33940', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(30, 'Adriana Aufderhar', 'ellen24@example.net', '45820138', '44394 Coy Common Apt. 362\nLake Estelle, WV 71015', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(31, 'Mrs. Emely Goyette II', 'horace11@example.com', '45820138', '79080 Von Valley Suite 902\nWolffview, MD 46277-1697', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(32, 'Prof. Maxine Leffler DDS', 'jsipes@example.com', '45820138', '3759 Bayer Walk Suite 344\nBotsfordside, NV 94344', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(33, 'Prof. Dominique Halvorson', 'miller.sallie@example.net', '45820138', '8015 Rickey Cape Apt. 870\nNew Raleighmouth, MO 01021', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(34, 'Sarina Hermann', 'elroy.lowe@example.org', '45820138', '513 Yvonne Square Apt. 536\nShieldsland, WA 00816-0572', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(35, 'Dr. Edwin Graham DDS', 'dolores10@example.com', '45820138', '1995 Zachery Crossroad Suite 023\nWeberfurt, WV 16578', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(36, 'Osvaldo Parisian Sr.', 'emayer@example.org', '45820138', '35754 Oscar Walks\nLake Flavioville, CA 39661', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(37, 'Prof. Idell Goyette III', 'ian.lebsack@example.com', '45820138', '413 Bradtke Walk Suite 735\nLake Beaulahside, NM 04206', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(38, 'Mavis Pacocha', 'mcclure.blaze@example.org', '45820138', '4483 Reichel Walks Apt. 764\nTrudieport, MT 75812-5838', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(39, 'Mr. Trace Sanford', 'zfranecki@example.net', '45820138', '41576 Adrian Crossroad\nWest Zoilaport, CA 93369', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(40, 'Prof. Oswald Turner', 'schroeder.hermann@example.net', '45820138', '922 Renner Islands Suite 766\nNew Ambrosehaven, WI 12404-6421', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(41, 'Mr. Kian Kunze Jr.', 'edd95@example.com', '45820138', '50933 Terrance Ford Apt. 045\nWest Vidal, AZ 34333-2450', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(42, 'Eliseo Langworth', 'sheridan.mcdermott@example.net', '45820138', '4560 Lorenzo Lock Apt. 560\nNolanshire, WV 67409', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(43, 'Hanna O''Reilly', 'pjones@example.com', '45820138', '9825 Schmidt Avenue Apt. 209\nNew Malloryshire, SD 24891-2445', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(44, 'Miss Arlene Schumm Sr.', 'ukerluke@example.com', '45820138', '923 Lester Ferry\nEast Kamronfurt, HI 10202', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(45, 'Deion Hilll', 'jessie.hagenes@example.net', '45820138', '439 Marisol Radial Suite 419\nNew Rose, ID 18230', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(46, 'Mrs. Brooke Ziemann', 'barrows.lenora@example.com', '45820138', '7625 Lubowitz Islands\nConroybury, AR 63163-1546', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(47, 'Claire Daugherty', 'uschroeder@example.net', '45820138', '5329 Yost Ports\nMaxieburgh, NJ 49983', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(48, 'Ella Brakus I', 'orlando.torphy@example.com', '45820138', '661 Smitham Cape\nWest Eli, OH 20621-0231', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(49, 'Colton Conn', 'gemard@example.net', '45820138', '46568 Ashly Hollow\nLake Darleneview, MI 27764-6193', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(50, 'Teresa Buckridge', 'chaim64@example.net', '45820138', '7779 Lilyan Divide Apt. 880\nFreidahaven, LA 16860', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(51, 'Mr. Kris Zulauf', 'kailee.macejkovic@example.org', '45820138', '8885 Legros Wall\nMagalifort, MN 00196', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(52, 'Darion Greenfelder', 'virgie00@example.net', '45820138', '92598 Brice Trail\nO''Keefeberg, SD 72919', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(53, 'Ms. Justine Wehner', 'yschumm@example.net', '45820138', '531 Elton Road Apt. 940\nWest Ervinfurt, FL 39878-1578', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(54, 'Aisha Considine', 'murazik.madyson@example.com', '45820138', '551 Morissette Park Suite 248\nKristoferborough, OK 32383-3639', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(55, 'Maureen Davis', 'charlie64@example.org', '45820138', '1255 Conroy Villages\nEast Nanniechester, NV 77737-6255', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(56, 'Shaylee Stark Sr.', 'rogahn.eloy@example.net', '45820138', '478 Jenkins Turnpike\nNew Randal, WI 20278', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(57, 'Dr. Alexander Stracke', 'xblick@example.com', '45820138', '879 Consuelo Track\nWest Salmachester, KY 24297', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(58, 'Lysanne Mayert DDS', 'brain.schaden@example.org', '45820138', '845 Carole Viaduct\nCharlenefurt, MS 81105-7496', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(59, 'Louvenia Tremblay MD', 'ctreutel@example.net', '45820138', '951 Murphy Lakes\nHymanfort, ME 17031-1299', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(60, 'Carmela Satterfield', 'paucek.loyal@example.com', '45820138', '8205 Lemuel Ramp Suite 487\nWoodrowberg, AR 96192-6988', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(61, 'Prof. Erich Kunze', 'mason05@example.com', '45820138', '7941 Nathen Motorway Suite 940\nEloyton, SC 11476', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(62, 'Adolf Rutherford', 'raymond72@example.org', '45820138', '2675 Kuphal Island\nSouth Judge, OR 49000-7884', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(63, 'Mrs. Aniya Johnson PhD', 'marjorie44@example.net', '45820138', '2505 Stamm Bridge Apt. 899\nNorth Caleigh, SC 52335-6141', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(64, 'Cora Simonis', 'cwehner@example.com', '45820138', '84149 Caleb Mews Apt. 095\nSouth Kyleigh, VA 50409-7522', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(65, 'Prof. Rollin Kling', 'lonny.yundt@example.com', '45820138', '462 Casimer Row\nOkunevastad, IL 72656-1321', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(66, 'Valerie Zieme', 'runte.keira@example.net', '45820138', '24401 Kassandra Shoals Apt. 260\nLake Berenice, DE 92498-4248', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(67, 'Prof. Alfreda Lesch', 'vdach@example.net', '45820138', '6700 Ottis Coves Apt. 864\nPort Mariliehaven, FL 96894-5851', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(68, 'Dr. Bernita Lubowitz DDS', 'janiya23@example.net', '45820138', '4876 Ricardo Route Suite 405\nSouth Delta, MD 48567', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(69, 'Prof. Joe Fahey DDS', 'zoey63@example.net', '45820138', '120 Adrianna Fort Suite 979\nSouth Constantin, CO 52289-8064', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(70, 'Gordon Collier', 'jharris@example.com', '45820138', '33175 Bayer Camp Suite 546\nNew Nicoleberg, KS 08527', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(71, 'Andrew Medhurst II', 'justice73@example.com', '45820138', '15059 Wuckert Field\nJohannchester, NE 36122', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(72, 'Haskell Hessel', 'ivory89@example.net', '45820138', '4414 White Highway\nAltenwerthburgh, NM 47683-9103', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(73, 'Mrs. Fleta Hand DVM', 'clint92@example.org', '45820138', '584 Esperanza Trafficway\nNorth Noemibury, NH 14893', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(74, 'Ike Kautzer', 'durgan.gunner@example.org', '45820138', '6911 Okuneva Path Suite 048\nOrrinville, MD 28510', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(75, 'Elaina McCullough', 'christiansen.johnathon@example.org', '45820138', '38428 Marcel Meadow Apt. 923\nSouth Brianne, AL 39894', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(76, 'Prof. Theodora Tremblay MD', 'xsawayn@example.net', '45820138', '5599 Grady Cliff\nO''Connellmouth, MT 92480-0506', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(77, 'Scotty Beer', 'kaden.will@example.com', '45820138', '1452 Valentine Oval\nDollytown, AK 30796-0155', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(78, 'Ms. Joyce Kunze II', 'rosemary64@example.net', '45820138', '9527 Juliet Plaza Apt. 761\nTerrellhaven, OR 98385-1504', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(79, 'Prof. Mariane Leuschke Jr.', 'arnoldo95@example.com', '45820138', '6385 Howe Valleys\nLake Heavenchester, SC 91367-8894', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(80, 'Stewart Wilkinson', 'lcartwright@example.net', '45820138', '9548 Blick Islands\nHamillmouth, ME 12458-1650', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(81, 'Gilbert McLaughlin', 'trantow.kamron@example.net', '45820138', '662 Reynold Vista Apt. 885\nMrazburgh, ID 24493-1792', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(82, 'Anderson Wolff', 'genesis81@example.net', '45820138', '466 Fernando Shores Apt. 031\nEast Ralph, DC 26673', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(83, 'Davon Tillman', 'jacobs.rolando@example.com', '45820138', '68679 Ferry Falls Apt. 774\nNew Octaviafurt, MN 85192', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(84, 'Ms. Amelia Lubowitz', 'wilkinson.virginia@example.com', '45820138', '5213 Cole Island\nClaudeview, VA 69374', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(85, 'Maxime Kemmer II', 'sophia44@example.net', '45820138', '4187 Ledner Lake\nPredovicton, PA 43723-8981', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(86, 'Giles Stoltenberg', 'obie39@example.net', '45820138', '33620 Alfred Locks\nCronaberg, MN 49504-5511', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(87, 'Macey Wilkinson', 'jerel64@example.com', '45820138', '34890 Terry Canyon Apt. 278\nWest Andresview, KY 08687', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(88, 'Odie Collins', 'rebekah31@example.org', '45820138', '3690 Hane Flats Apt. 238\nNorth Hesterborough, AR 70340-7919', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(89, 'Kamron Halvorson', 'maximilian31@example.org', '45820138', '5112 Homenick Rue\nRyleighburgh, OK 32862-6895', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(90, 'Regan Marvin', 'bianka40@example.org', '45820138', '832 Ian Valleys Suite 210\nMillsbury, KY 81176', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(91, 'Luis Hayes', 'garrett27@example.net', '45820138', '25073 Daniel Loaf Suite 329\nEast Nash, MA 97847', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(92, 'Miss Rosanna Mann DDS', 'ettie88@example.net', '45820138', '1460 Ziemann Via Apt. 587\nLindaside, TN 90095-2873', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(93, 'Prof. Kiel Strosin', 'mina.moore@example.net', '45820138', '2268 Rau Vista Apt. 595\nVonhaven, MT 96742-5802', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(94, 'Prof. Velma Luettgen', 'luettgen.alexandrine@example.net', '45820138', '972 Marshall Squares\nOrvillechester, SC 14862', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(95, 'Jessika Veum', 'leffler.libby@example.com', '45820138', '12144 Dach Ports Apt. 767\nLittleborough, GA 12727', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(96, 'Carey Metz', 'wilmer02@example.org', '45820138', '3244 Eichmann Spur\nStehrfurt, SC 69990-2595', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(97, 'Sigrid Hilll', 'jonathon.carroll@example.com', '45820138', '7207 Lisette Brooks Suite 577\nPort Osbaldoberg, ME 25904', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(98, 'Ms. Estelle Sipes', 'albertha14@example.net', '45820138', '17796 Destiny Union Apt. 009\nLake Drew, OK 58576-2545', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(99, 'Miss Marcelle Little DVM', 'lmurazik@example.net', '45820138', '6364 Melany Roads Apt. 050\nNorth Jasen, AL 42841', 1, '2016-11-09 19:02:28', '2016-11-09 19:02:28'),
(100, 'Felicia Hackett', 'fpacocha@example.net', '45820138', '179 Frederik Isle Suite 101\nJudahside, CT 82978-3316', 0, '2016-11-09 19:02:28', '2016-11-09 19:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phinxlog`
--

CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`) VALUES
(20161019014044, 'CreateUsersTable', '2016-11-09 22:02:11', '2016-11-09 22:02:11'),
(20161019014649, 'CreateClientsTable', '2016-11-09 22:02:11', '2016-11-09 22:02:12'),
(20161019014657, 'CreateProductsTable', '2016-11-09 22:02:12', '2016-11-09 22:02:12'),
(20161019014702, 'CreateServicesTable', '2016-11-09 22:02:12', '2016-11-09 22:02:12'),
(20161020144229, 'CreateRequestsTable', '2016-11-09 22:02:12', '2016-11-09 22:02:14'),
(20161020144237, 'CreateBuysTable', '2016-11-09 22:02:14', '2016-11-09 22:02:18'),
(20161020154950, 'CreateAdminSeedMigration', '2016-11-09 22:02:18', '2016-11-09 22:02:19'),
(20161020160032, 'CreateDataSeedMigration', '2016-11-09 22:02:19', '2016-11-09 22:02:27'),
(20161027145100, 'CreateProductsSeedMigration', '2016-11-09 22:02:27', '2016-11-09 22:02:27'),
(20161027145844, 'CreateClientsSeedMigration', '2016-11-09 22:02:27', '2016-11-09 22:02:28'),
(20161109191011, 'CreateAdmin2SeedMigration', '2016-11-09 22:12:09', '2016-11-09 22:12:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `category` varchar(100) NOT NULL,
  `imageURL` text NOT NULL,
  `dir` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `imageURL`, `dir`, `created`, `modified`) VALUES
(17, 'Geranios', 'plantas de exterior con flores de atractivos y vivos colores.', 20, 'flores', 'geranios.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:13:55', '2016-11-17 15:13:55'),
(18, 'Helechos', 'son una de las plantas más antiguas del planeta y actualmente sirven como decoración en muchos hogares.', 30, 'plantas', 'helechos.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:15:12', '2016-11-17 15:15:12'),
(19, 'Jazmines', 'planta muy aromática que forma parte de la composición de muchos perfumes.', 40, 'flores', 'jazmines.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:15:57', '2016-11-17 15:15:57'),
(20, 'Lupinos', 'planta muy decorativa gracias a sus racimos de flores vistosos y llamativos.', 60, 'flores', 'lupinos.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:16:27', '2016-11-17 15:16:27'),
(21, 'Suculentas', 'dan la sensación de ser plantas en 3D o alconchonadas bondades para la vista, son muy populares.', 65, 'cactus', 'suculentas.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:17:24', '2016-11-17 15:17:24'),
(22, 'Lavandas', 'Estos arbustos son famosos por sus flores muy perfumadas y por su follaje aromático.', 40, 'plantas', 'lavandas.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:40:39', '2016-11-17 15:40:39'),
(23, 'Orquídeas', 'distinguen por la complejidad de sus flores y por sus interacciones ecológicas con los agentes polinizadores.', 90, 'flores', 'orquideas.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:41:56', '2016-11-17 15:41:56'),
(24, 'Agapantos', 'El agapanto tiene muchas flores hermosas de color púrpura o blanco brillante y es un agregado muy querido de muchos jardines.', 80, 'flores', 'agapanto.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:42:54', '2016-11-17 15:42:54'),
(25, 'Tulipanes', 'Son flores preciosas y son populares en primavera.', 40, 'flores', 'tulipan.jpg', 'webroot\\files\\Products\\imageURL\\', '2016-11-17 15:44:06', '2016-11-17 15:44:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idService` int(11) NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL,
  `requested` datetime NOT NULL,
  `started` datetime NOT NULL,
  `finished` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `imageURL` text NOT NULL,
  `dir` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `type`, `description`, `imageURL`, `dir`) VALUES
(1, 'image/jpeg', 'servicio', 'bruce.jpg', 'webroot\\files\\Services\\imageURL\\');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `active`, `created`, `modified`) VALUES
(1, 'Rodrigo', 'rodriacvdo@gmail.com', '$2y$10$i5OOKhfjdavTM4ecNv.P1uZFX1dKt7swACxlOkcLJNtt8Ja3OBAQ.', 'admin', 1, '2016-11-09 19:02:18', '2016-11-09 19:02:18'),
(2, 'Beaulah Rice V', 'gspinka@example.net', '$2y$10$HfVmBquUgy5p23o39CULA.QiZvXxzbflZI7OWoSn..QsqtCGHPUsO', 'user', 0, '2016-11-09 19:02:19', '2016-11-09 19:02:19'),
(3, 'Kenyon Wiegand', 'donnelly.noemi@example.net', '$2y$10$FutTaJSryGfRzcDg0dPTju5sSLDr.3vUcENOH/KJ.9/QrmewVDBI2', 'user', 0, '2016-11-09 19:02:19', '2016-11-09 19:02:19'),
(4, 'Wendy Quigley', 'timmy09@example.com', '$2y$10$iR4yLC88.zsFUasDLnGwf.weSktXdnwGp4FsGvWKBy23Z3sYMgZQm', 'user', 1, '2016-11-09 19:02:19', '2016-11-09 19:02:19'),
(5, 'Jeanette Lubowitz MD', 'jast.jaida@example.net', '$2y$10$SlEenRE6TV2TxI5KIkXirOhZjFi8AveFtqKZc6/FUpG/Tnv//cwCW', 'user', 0, '2016-11-09 19:02:19', '2016-11-09 19:02:19'),
(6, 'Julien Farrell', 'abe56@example.org', '$2y$10$8BtzD7y9CUPgXnN9LtX7D..az/xQnIOSC023VVBVZUs0s/FCafmxG', 'user', 0, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(7, 'Prof. Thomas Robel PhD', 'ywuckert@example.net', '$2y$10$ZcYqunReQ6yz.28wuBYlSO1ZTNJi99B9DHc20BegorHpaRC7PTz1O', 'user', 1, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(8, 'Hannah Schumm', 'gerson82@example.org', '$2y$10$oor3Jf/dBkmsXWdOhARHEON1Ac7I0Lh1RkvJgKwRRyjCJ28eMkC3i', 'user', 1, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(9, 'Katarina Kemmer', 'marco.streich@example.net', '$2y$10$w15aPMhPTU56Prvf.uEcFeb877JV03hth5h4KMKP2gMG7jDoHIb8C', 'user', 1, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(10, 'Mohammed Tremblay', 'khalil.abernathy@example.org', '$2y$10$uzc.M28moh9/fsRxb2n.XOwygtxHXLd8YNTpIHIFDvrs8HlnXaTJG', 'user', 1, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(11, 'Muhammad Roob Sr.', 'nking@example.net', '$2y$10$DH4GwmGRs.bsEW4TWrAen.XDvRQ13G5VwAGb5BJVkcvVGUzed5F6K', 'user', 1, '2016-11-09 19:02:20', '2016-11-09 19:02:20'),
(12, 'Dr. Alejandrin Block IV', 'august.runolfsson@example.net', '$2y$10$ZUuTiWFtPvr4VxYVzENXJuUCFt10IuVLRlNuR3h8IOhmOTzorVvKC', 'user', 0, '2016-11-09 19:02:21', '2016-11-09 19:02:21'),
(13, 'Ms. Earlene Predovic', 'kailyn66@example.org', '$2y$10$C.xsRUelRrDhwCwlLmkjlONAkVt0LqeiSrHiSVmdnSvgDDacTCq8m', 'user', 1, '2016-11-09 19:02:21', '2016-11-09 19:02:21'),
(14, 'Fay Haley', 'ally.konopelski@example.com', '$2y$10$AmM8ssNWs4wSqrDEkJTCBOsJSBVSQI8kdI35VYC3cKU11g/eAlnXC', 'user', 1, '2016-11-09 19:02:21', '2016-11-09 19:02:21'),
(15, 'Prof. Joaquin Nitzsche IV', 'borer.kip@example.org', '$2y$10$XMA7ogsHLTW8ZsLBBRwyuuxnx53ykshlLXHP1LkbCwEjcTjU1Tdk2', 'user', 1, '2016-11-09 19:02:21', '2016-11-09 19:02:21'),
(16, 'Amaya Ledner', 'lazaro.windler@example.org', '$2y$10$LmoKFBRee0KJBpJPivR4r.KMz.Zti.OY/j.NUQnqxLA9r4X1fzMK.', 'user', 0, '2016-11-09 19:02:21', '2016-11-09 19:02:21'),
(17, 'Mozell Batz', 'salvatore39@example.com', '$2y$10$JlJt9/YikTIm0Z0hQW0HVedqllMXyut8B3Ul5Q6iRx.97yExjsmLu', 'user', 0, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(18, 'Juvenal Wehner V', 'adonis.gulgowski@example.com', '$2y$10$7wXl9tkgrWchxrHngJXiseUzKnMfZr6PlSTZhbtqDA.bP/A3QSrsW', 'user', 1, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(19, 'Jaquan Friesen', 'ottilie.weber@example.com', '$2y$10$LFMB1t/WSyX3TQs8hgc4EOYQSYAcZmwq.E52BSuK8wRa3jrOlOdg6', 'user', 1, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(20, 'Kasandra Ziemann', 'tevin.watsica@example.com', '$2y$10$ILmucmg3WSr9JgyHG0saN.7hkvnW9uJ7GM60jMES6kVSFyC5nvJZW', 'user', 0, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(21, 'Marina Tillman', 'maybelle58@example.net', '$2y$10$HaWXwzF.Salo8WAJH7ulsux/MW4xGVEn4AF1RFgpKFq5uLMDvBpvG', 'user', 0, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(22, 'Mrs. Darlene Dickinson IV', 'percival.bechtelar@example.org', '$2y$10$g9BdXPnqHMl7q8n5Vqv61e5RCr18V3aeErgGGWB50EE6K352oti3G', 'user', 0, '2016-11-09 19:02:22', '2016-11-09 19:02:22'),
(23, 'Danial Wolf', 'ucasper@example.org', '$2y$10$kiUThiyjrOWjZzUWiH2SuuDR1tFXZ0Kbx87L7fbxVZuMZvUI1Sypq', 'user', 1, '2016-11-09 19:02:23', '2016-11-09 19:02:23'),
(24, 'Garett Halvorson', 'tracy39@example.com', '$2y$10$MSe4rEAZUXpYfMERLJEXGOnv3fd9Uve5XztAy08BjsHqJkSpxsUHq', 'user', 0, '2016-11-09 19:02:23', '2016-11-09 19:02:23'),
(25, 'Mr. Stanley Rohan', 'hilll.jacinthe@example.net', '$2y$10$TF1/7xgDnGXcP8YNP7GLWuVSCXzaLvd/1IrCRiTMppcpn60cMgGHW', 'user', 0, '2016-11-09 19:02:23', '2016-11-09 19:02:23'),
(26, 'Prof. Lue Langworth DDS', 'waelchi.ernestina@example.com', '$2y$10$1THDGMOXNJ82h1DXmJFC0.XN.oLynVpkMKJP6D/oNFmwk6Ub.x76C', 'user', 0, '2016-11-09 19:02:23', '2016-11-09 19:02:23'),
(27, 'Dr. Dan King MD', 'rheller@example.org', '$2y$10$1dBl8au0dmbtKLYsdr8kBu6Ls6VqfTC581BwUaiz0U8vBkxFTUkMe', 'user', 0, '2016-11-09 19:02:23', '2016-11-09 19:02:23'),
(28, 'Ayden Bernhard', 'emmett.veum@example.net', '$2y$10$iNDPkQJUrTdERKiP3NvLcurmrxBk0q5SVBe0pZzyS9aC0vNUB0EKe', 'user', 0, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(29, 'Alisa Satterfield', 'jesus.gerhold@example.org', '$2y$10$RQmJUbRQ8IpyKMLPZWx62OtmyFifu80IAy1fBS9U9KxkgBH17KBhe', 'user', 0, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(30, 'Jonathan Jakubowski PhD', 'carole.upton@example.com', '$2y$10$PzvGb3up2jNlhGD.59ZQ9eL8oczbsbkjBWSl0xU13NJ196VEN5PzS', 'user', 1, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(31, 'Dr. Melissa Graham', 'terrell.marvin@example.com', '$2y$10$79lFPbn1qSotsnev9mGSCOP09YBnWn84h1gHaoqFfmQfHfJVNEgxC', 'user', 0, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(32, 'Coy Price', 'nbuckridge@example.com', '$2y$10$iyYEI8QAxNK5pJgI.x6QWub90dc6WaUnPCY1OoscMJq3ttFwFRLom', 'user', 1, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(33, 'Prof. Gregoria Keebler II', 'sadie20@example.com', '$2y$10$JKDDbpKeQlk7ZnYGQOr0N.WRbFeSxCxrdljt2SxCafLU1kBbES8sq', 'user', 0, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(34, 'Margarette Corwin', 'king.litzy@example.net', '$2y$10$fFHd8LBBspRc58va7el/oec0m2tguqvQlofSpma8hvKKPxs2ep94S', 'user', 0, '2016-11-09 19:02:24', '2016-11-09 19:02:24'),
(35, 'Jany Hamill', 'giovani.breitenberg@example.net', '$2y$10$tx0iZaas9OYyXV3J1erNl..wo4GAKzuPYEi4D79.X6qTM7OlWscK2', 'user', 0, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(36, 'Dr. Rocio Bogisich', 'windler.morris@example.org', '$2y$10$qg63oJpuLGYj9rRqhJZI3ezRpgbIRDomaQOkTHNTcnbvAaSi5y6E6', 'user', 1, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(37, 'Braeden Schamberger', 'jacinto10@example.org', '$2y$10$OtdoAPj6Ar3NWyblqwJB0.1LuStYmuQQFEnb9Rbh850MnhtINGgNK', 'user', 1, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(38, 'Cleveland Gulgowski', 'ima.aufderhar@example.net', '$2y$10$1qFjtuGsYyIWC6I4Zo7Zwefbh1KiISixt6GXSp798L.IgxFFNsL86', 'user', 0, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(39, 'Kris Kuhn', 'lessie97@example.org', '$2y$10$QPmb6ykzY./.UWZv8nCzNO4x815WBQpfZlWgcNo0ntHV.DukF2ji2', 'user', 1, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(40, 'Dee Cruickshank', 'jessica72@example.com', '$2y$10$5HMXQ/MEAZ.XSJ7B4DB.Ker/TwIoksOg1H6QwpI2RG9Wa2tCwU6dK', 'user', 1, '2016-11-09 19:02:25', '2016-11-09 19:02:25'),
(41, 'Prof. Dino Zulauf IV', 'dpredovic@example.com', '$2y$10$r03oErTSM8qRUEzt/sH.Wexvm8vtF1oXxPej6tl4IjOor/iWSk2qm', 'user', 0, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(42, 'Ms. Elena Wuckert', 'bednar.furman@example.com', '$2y$10$.wjHvFF8WRkQc68Y4DEQleDB1LQhP8HoHdF1lc.G0YX0xkThWIFw2', 'user', 1, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(43, 'Moises Swift', 'waelchi.isaac@example.net', '$2y$10$ovgp59FkBFVHaXH5XzLAs.4JdJo6LI4k1gkpKR71WHfXRcdqnvyLa', 'user', 1, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(44, 'Mr. Stephen Abbott V', 'ugottlieb@example.org', '$2y$10$6xUzPtgApgpMrQzBuPbLseWrljq2LH37s0F8kOI7nUWt21IyYAPb6', 'user', 1, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(45, 'Wendy Rutherford', 'loyce.davis@example.com', '$2y$10$DHtvEXaSSt92dWOfph8Wj.L8RlRxjRJvnyf8HwRQVVqvqmcJ9KgcC', 'user', 1, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(46, 'April Boyer PhD', 'karley.douglas@example.org', '$2y$10$lDU6iCKbjsfxmoc76sq/LeczUZviAXdYXwEzXx1SnmZFq.I/9djMa', 'user', 1, '2016-11-09 19:02:26', '2016-11-09 19:02:26'),
(47, 'Cornell Jacobs', 'twisoky@example.com', '$2y$10$80DuYaaJP8cPv/1Pt5D4OeQIgN2zccSgvDGcS1FV2aMIVlSXXFGNy', 'user', 1, '2016-11-09 19:02:27', '2016-11-09 19:02:27'),
(48, 'Mr. Joseph Kovacek I', 'eryn.lind@example.net', '$2y$10$41ayI6JfnlemyFXu98tkyekD6P.A6mPqvLwJbz6Z5RbB.xdNClLg.', 'user', 1, '2016-11-09 19:02:27', '2016-11-09 19:02:27'),
(49, 'Mr. Johnathan Torp', 'arnold17@example.net', '$2y$10$E6rU0F.zdI0XvHzZSmPnaONrQfv1PLGtbH3qguG0BPzwCmGBp0SxG', 'user', 0, '2016-11-09 19:02:27', '2016-11-09 19:02:27'),
(50, 'Dr. Theodore Hagenes DVM', 'jgleason@example.com', '$2y$10$97JvmZ5VIaykQp49VxTqVueo.eXzQ4zLzI1ty.x0Y.XGuVc8Nsq5a', 'user', 0, '2016-11-09 19:02:27', '2016-11-09 19:02:27'),
(52, 'rodo', 'rodo@gmail.com', '$2y$10$wqKOxlR3fDN0yIWj0yvu5.TZlSlyed3a0orBHa3.gpOg6ejtQfclS', 'admin', 1, '2016-11-09 19:12:11', '2016-11-09 19:12:11'),
(54, 'admin', 'admin@admin.com', '$2y$10$UBRSV.FRbkEEzceTMgOYqOx9yYr8oQ9jzJKEHxG/zVN6AqDSq2IZW', 'admin', 1, '2016-11-09 19:20:09', '2016-11-09 19:20:09'),
(55, 'admin', 'admin2@admin.com', '$2y$10$HfVmBquUgy5p23o39CULA.QiZvXxzbflZI7OWoSn..QsqtCGHPUsO', 'admin', 1, '2016-11-16 14:06:59', '2016-11-16 14:06:59'),
(56, 'tito', 'tito@admin.com', '$2y$10$3.A3nBiaeXUipaM0U4h40Or9wH53uTtj7UZlXEcg1wJC7C2Yr9aIy', 'user', 1, '2016-11-17 14:31:10', '2016-11-17 14:31:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idService` (`idService`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buys`
--
ALTER TABLE `buys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`idService`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
