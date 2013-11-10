-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 08 nov 2013 om 06:16
-- Serverversie: 5.5.24-log
-- PHP-versie: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `warquest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clan`
--

CREATE TABLE IF NOT EXISTS `clan` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `clan`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 08 nov 2013 om 06:17
-- Serverversie: 5.5.24-log
-- PHP-versie: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `warquest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player_clan`
--

CREATE TABLE IF NOT EXISTS `player_clan` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `player_clan`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DELETE FROM mission_group WHERE mgid = 40;
DELETE FROM mission_group WHERE mgid = 41;
DELETE FROM mission_group WHERE mgid = 42;
DELETE FROM mission_group WHERE mgid = 43;
DELETE FROM mission_group WHERE mgid = 44;
DELETE FROM mission_group WHERE mgid = 45;
DELETE FROM mission_group WHERE mgid = 46;
DELETE FROM mission_group WHERE mgid = 47;
DELETE FROM mission_group WHERE mgid = 48;

DELETE FROM mission WHERE mid >= 400;

DELETE FROM player_mission WHERE mid >= 400;

CREATE TABLE IF NOT EXISTS `sector` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `strength` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0;


INSERT INTO `sector` (`sid`, `x`, `y`, `cid`, `planet`, `strength`) VALUES
(1, 0, 0, 0, 0, 0),
(2, 0, 1, 0, 0, 0),
(3, 0, 2, 0, 0, 0),
(4, 0, 3, 0, 0, 0),
(5, 0, 4, 0, 0, 0),
(6, 0, 5, 0, 0, 0),
(7, 0, 6, 0, 0, 0),
(8, 0, 7, 0, 0, 0),
(9, 0, 8, 0, 0, 0),
(10, 0, 9, 0, 0, 0),
(11, 0, 10, 0, 0, 0),
(12, 0, 11, 0, 0, 0),
(13, 0, 12, 0, 0, 0),
(14, 0, 13, 0, 0, 0),
(15, 0, 14, 0, 0, 0),
(16, 1, 0, 0, 0, 0),
(17, 1, 1, 0, 0, 0),
(18, 1, 2, 0, 0, 0),
(19, 1, 3, 0, 0, 0),
(20, 1, 4, 0, 0, 0),
(21, 1, 5, 0, 0, 0),
(22, 1, 6, 0, 0, 0),
(23, 1, 7, 0, 0, 0),
(24, 1, 8, 0, 0, 0),
(25, 1, 9, 0, 0, 0),
(26, 1, 10, 0, 0, 0),
(27, 1, 11, 0, 0, 0),
(28, 1, 12, 0, 0, 0),
(29, 1, 13, 0, 0, 0),
(30, 1, 14, 0, 0, 0),
(31, 2, 0, 0, 0, 0),
(32, 2, 1, 0, 0, 0),
(33, 2, 2, 0, 0, 0),
(34, 2, 3, 0, 0, 0),
(35, 2, 4, 0, 0, 0),
(36, 2, 5, 0, 0, 0),
(37, 2, 7, 0, 0, 0),
(38, 2, 6, 0, 0, 0),
(39, 2, 8, 0, 0, 0),
(40, 2, 9, 0, 0, 0),
(41, 2, 10, 0, 0, 0),
(42, 2, 11, 0, 0, 0),
(43, 2, 12, 0, 0, 0),
(44, 2, 13, 0, 0, 0),
(45, 2, 14, 0, 0, 0),
(46, 3, 0, 0, 0, 0),
(47, 3, 1, 0, 0, 0),
(48, 3, 2, 0, 0, 0),
(49, 3, 3, 0, 0, 0),
(50, 3, 4, 0, 0, 0),
(51, 3, 5, 0, 0, 0),
(52, 3, 6, 0, 0, 0),
(53, 3, 7, 0, 0, 0),
(54, 3, 8, 0, 0, 0),
(55, 3, 9, 0, 0, 0),
(56, 3, 10, 0, 0, 0),
(57, 3, 11, 0, 0, 0),
(58, 3, 12, 0, 0, 0),
(59, 3, 13, 0, 0, 0),
(60, 3, 14, 0, 0, 0),
(61, 4, 0, 0, 0, 0),
(62, 4, 1, 0, 0, 0),
(63, 4, 2, 0, 0, 0),
(64, 4, 3, 0, 0, 0),
(65, 4, 4, 0, 0, 0),
(66, 4, 5, 0, 0, 0),
(67, 4, 6, 0, 0, 0),
(68, 4, 7, 0, 0, 0),
(69, 4, 8, 0, 0, 0),
(70, 4, 9, 0, 0, 0),
(71, 4, 10, 0, 0, 0),
(72, 4, 11, 0, 0, 0),
(73, 4, 12, 0, 0, 0),
(74, 4, 13, 0, 0, 0),
(75, 4, 14, 0, 0, 0);


INSERT INTO `sector` (`sid`, `x`, `y`, `cid`, `planet`, `strength`) VALUES
(101, 0, 0, 0, 1, 0),
(102, 0, 1, 0, 1, 0),
(103, 0, 2, 0, 1, 0),
(104, 0, 3, 0, 1, 0),
(105, 0, 4, 0, 1, 0),
(106, 0, 5, 0, 1, 0),
(107, 0, 6, 0, 1, 0),
(108, 0, 7, 0, 1, 0),
(109, 0, 8, 0, 1, 0),
(110, 0, 9, 0, 1, 0),
(111, 0, 10, 0, 1, 0),
(112, 0, 11, 0, 1, 0),
(113, 0, 12, 0, 1, 0),
(114, 0, 13, 0, 1, 0),
(115, 0, 14, 0, 1, 0),
(116, 1, 0, 0, 1, 0),
(117, 1, 1, 0, 1, 0),
(118, 1, 2, 0, 1, 0),
(119, 1, 3, 0, 1, 0),
(120, 1, 4, 0, 1, 0),
(121, 1, 5, 0, 1, 0),
(122, 1, 6, 0, 1, 0),
(123, 1, 7, 0, 1, 0),
(124, 1, 8, 0, 1, 0),
(125, 1, 9, 0, 1, 0),
(126, 1, 10, 0, 1, 0),
(127, 1, 11, 0, 1, 0),
(128, 1, 12, 0, 1, 0),
(129, 1, 13, 0, 1, 0),
(130, 1, 14, 0, 1, 0),
(131, 2, 0, 0, 1, 0),
(132, 2, 1, 0, 1, 0),
(133, 2, 2, 0, 1, 0),
(134, 2, 3, 0, 1, 0),
(135, 2, 4, 0, 1, 0),
(136, 2, 5, 0, 1, 0),
(137, 2, 7, 0, 1, 0),
(138, 2, 6, 0, 1, 0),
(139, 2, 8, 0, 1, 0),
(140, 2, 9, 0, 1, 0),
(141, 2, 10, 0, 1, 0),
(142, 2, 11, 0, 1, 0),
(143, 2, 12, 0, 1, 0),
(144, 2, 13, 0, 1, 0),
(145, 2, 14, 0, 1, 0),
(146, 3, 0, 0, 1, 0),
(147, 3, 1, 0, 1, 0),
(148, 3, 2, 0, 1, 0),
(149, 3, 3, 0, 1, 0),
(150, 3, 4, 0, 1, 0),
(151, 3, 5, 0, 1, 0),
(152, 3, 6, 0, 1, 0),
(153, 3, 7, 0, 1, 0),
(154, 3, 8, 0, 1, 0),
(155, 3, 9, 0, 1, 0),
(156, 3, 10, 0, 1, 0),
(157, 3, 11, 0, 1, 0),
(158, 3, 12, 0, 1, 0),
(159, 3, 13, 0, 1, 0),
(160, 3, 14, 0, 1, 0),
(161, 4, 0, 0, 1, 0),
(162, 4, 1, 0, 1, 0),
(163, 4, 2, 0, 1, 0),
(164, 4, 3, 0, 1, 0),
(165, 4, 4, 0, 1, 0),
(166, 4, 5, 0, 1, 0),
(167, 4, 6, 0, 1, 0),
(168, 4, 7, 0, 1, 0),
(169, 4, 8, 0, 1, 0),
(170, 4, 9, 0, 1, 0),
(171, 4, 10, 0, 1, 0),
(172, 4, 11, 0, 1, 0),
(173, 4, 12, 0, 1, 0),
(174, 4, 13, 0, 1, 0),
(175, 4, 14, 0, 1, 0);


INSERT INTO `sector` (`sid`, `x`, `y`, `cid`, `planet`, `strength`) VALUES
(201, 0, 0, 0, 2, 0),
(202, 0, 1, 0, 2, 0),
(203, 0, 2, 0, 2, 0),
(204, 0, 3, 0, 2, 0),
(205, 0, 4, 0, 2, 0),
(206, 0, 5, 0, 2, 0),
(207, 0, 6, 0, 2, 0),
(208, 0, 7, 0, 2, 0),
(209, 0, 8, 0, 2, 0),
(210, 0, 9, 0, 2, 0),
(211, 0, 10, 0, 2, 0),
(212, 0, 11, 0, 2, 0),
(213, 0, 12, 0, 2, 0),
(214, 0, 13, 0, 2, 0),
(215, 0, 14, 0, 2, 0),
(216, 1, 0, 0, 2, 0),
(217, 1, 1, 0, 2, 0),
(218, 1, 2, 0, 2, 0),
(219, 1, 3, 0, 2, 0),
(220, 1, 4, 0, 2, 0),
(221, 1, 5, 0, 2, 0),
(222, 1, 6, 0, 2, 0),
(223, 1, 7, 0, 2, 0),
(224, 1, 8, 0, 2, 0),
(225, 1, 9, 0, 2, 0),
(226, 1, 10, 0, 2, 0),
(227, 1, 11, 0, 2, 0),
(228, 1, 12, 0, 2, 0),
(229, 1, 13, 0, 2, 0),
(230, 1, 14, 0, 2, 0),
(231, 2, 0, 0, 2, 0),
(232, 2, 1, 0, 2, 0),
(233, 2, 2, 0, 2, 0),
(234, 2, 3, 0, 2, 0),
(235, 2, 4, 0, 2, 0),
(236, 2, 5, 0, 2, 0),
(237, 2, 7, 0, 2, 0),
(238, 2, 6, 0, 2, 0),
(239, 2, 8, 0, 2, 0),
(240, 2, 9, 0, 2, 0),
(241, 2, 10, 0, 2, 0),
(242, 2, 11, 0, 2, 0),
(243, 2, 12, 0, 2, 0),
(244, 2, 13, 0, 2, 0),
(245, 2, 14, 0, 2, 0),
(246, 3, 0, 0, 2, 0),
(247, 3, 1, 0, 2, 0),
(248, 3, 2, 0, 2, 0),
(249, 3, 3, 0, 2, 0),
(250, 3, 4, 0, 2, 0),
(251, 3, 5, 0, 2, 0),
(252, 3, 6, 0, 2, 0),
(253, 3, 7, 0, 2, 0),
(254, 3, 8, 0, 2, 0),
(255, 3, 9, 0, 2, 0),
(256, 3, 10, 0, 2, 0),
(257, 3, 11, 0, 2, 0),
(258, 3, 12, 0, 2, 0),
(259, 3, 13, 0, 2, 0),
(260, 3, 14, 0, 2, 0),
(261, 4, 0, 0, 2, 0),
(262, 4, 1, 0, 2, 0),
(263, 4, 2, 0, 2, 0),
(264, 4, 3, 0, 2, 0),
(265, 4, 4, 0, 2, 0),
(266, 4, 5, 0, 2, 0),
(267, 4, 6, 0, 2, 0),
(268, 4, 7, 0, 2, 0),
(269, 4, 8, 0, 2, 0),
(270, 4, 9, 0, 2, 0),
(271, 4, 10, 0, 2, 0),
(272, 4, 11, 0, 2, 0),
(273, 4, 12, 0, 2, 0),
(274, 4, 13, 0, 2, 0),
(275, 4, 14, 0, 2, 0);



INSERT INTO `sector` (`sid`, `x`, `y`, `cid`, `planet`, `strength`) VALUES
(301, 0, 0, 0, 3, 0),
(302, 0, 1, 0, 3, 0),
(303, 0, 2, 0, 3, 0),
(304, 0, 3, 0, 3, 0),
(305, 0, 4, 0, 3, 0),
(306, 0, 5, 0, 3, 0),
(307, 0, 6, 0, 3, 0),
(308, 0, 7, 0, 3, 0),
(309, 0, 8, 0, 3, 0),
(310, 0, 9, 0, 3, 0),
(311, 0, 10, 0, 3, 0),
(312, 0, 11, 0, 3, 0),
(313, 0, 12, 0, 3, 0),
(314, 0, 13, 0, 3, 0),
(315, 0, 14, 0, 3, 0),
(316, 1, 0, 0, 3, 0),
(317, 1, 1, 0, 3, 0),
(318, 1, 2, 0, 3, 0),
(319, 1, 3, 0, 3, 0),
(320, 1, 4, 0, 3, 0),
(321, 1, 5, 0, 3, 0),
(322, 1, 6, 0, 3, 0),
(323, 1, 7, 0, 3, 0),
(324, 1, 8, 0, 3, 0),
(325, 1, 9, 0, 3, 0),
(326, 1, 10, 0, 3, 0),
(327, 1, 11, 0, 3, 0),
(328, 1, 12, 0, 3, 0),
(329, 1, 13, 0, 3, 0),
(330, 1, 14, 0, 3, 0),
(331, 2, 0, 0, 3, 0),
(332, 2, 1, 0, 3, 0),
(333, 2, 2, 0, 3, 0),
(334, 2, 3, 0, 3, 0),
(335, 2, 4, 0, 3, 0),
(336, 2, 5, 0, 3, 0),
(337, 2, 7, 0, 3, 0),
(338, 2, 6, 0, 3, 0),
(339, 2, 8, 0, 3, 0),
(340, 2, 9, 0, 3, 0),
(341, 2, 10, 0, 3, 0),
(342, 2, 11, 0, 3, 0),
(343, 2, 12, 0, 3, 0),
(344, 2, 13, 0, 3, 0),
(345, 2, 14, 0, 3, 0),
(346, 3, 0, 0, 3, 0),
(347, 3, 1, 0, 3, 0),
(348, 3, 2, 0, 3, 0),
(349, 3, 3, 0, 3, 0),
(350, 3, 4, 0, 3, 0),
(351, 3, 5, 0, 3, 0),
(352, 3, 6, 0, 3, 0),
(353, 3, 7, 0, 3, 0),
(354, 3, 8, 0, 3, 0),
(355, 3, 9, 0, 3, 0),
(356, 3, 10, 0, 3, 0),
(357, 3, 11, 0, 3, 0),
(358, 3, 12, 0, 3, 0),
(359, 3, 13, 0, 3, 0),
(360, 3, 14, 0, 3, 0),
(361, 4, 0, 0, 3, 0),
(362, 4, 1, 0, 3, 0),
(363, 4, 2, 0, 3, 0),
(364, 4, 3, 0, 3, 0),
(365, 4, 4, 0, 3, 0),
(366, 4, 5, 0, 3, 0),
(367, 4, 6, 0, 3, 0),
(368, 4, 7, 0, 3, 0),
(369, 4, 8, 0, 3, 0),
(370, 4, 9, 0, 3, 0),
(371, 4, 10, 0, 3, 0),
(372, 4, 11, 0, 3, 0),
(373, 4, 12, 0, 3, 0),
(374, 4, 13, 0, 3, 0),
(375, 4, 14, 0, 3, 0);





			