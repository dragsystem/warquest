--
-- WarQuest v6.2 data model patch
--

-- Rebalance earth units
UPDATE unit SET attack=549, defense=450 WHERE uid=126;
UPDATE unit SET attack=607, defense=550 WHERE uid=127;
UPDATE unit SET attack=671, defense=575 WHERE uid=128;

UPDATE unit SET attack=525, defense=600 WHERE uid=227;
UPDATE unit SET attack=742, defense=700 WHERE uid=228;
UPDATE unit SET attack=797, defense=725 WHERE uid=229;

UPDATE unit SET attack=699, defense=500 WHERE uid=324;
UPDATE unit SET attack=735, defense=600 WHERE uid=325;
UPDATE unit SET attack=833, defense=800 WHERE uid=326;
UPDATE unit SET attack=882, defense=825 WHERE uid=327;

UPDATE unit SET attack=1024, defense=1024 WHERE uid=511;
UPDATE unit SET attack=2048, defense=1955 WHERE uid=512;
UPDATE unit SET attack=2112, defense=1980 WHERE uid=513;

-- Rebalance earth buildings
UPDATE building SET defense=15 WHERE bid=2;
UPDATE building SET defense=45 WHERE bid=5;
UPDATE building SET defense=155 WHERE bid=11;
UPDATE building SET defense=260 WHERE bid=15;
UPDATE building SET defense=325 WHERE bid=56;

UPDATE building SET defense=15 WHERE bid=21;
UPDATE building SET defense=135 WHERE bid=22;
UPDATE building SET defense=200 WHERE bid=23;
UPDATE building SET defense=250 WHERE bid=57;

UPDATE building SET defense=50 WHERE bid=7;
UPDATE building SET defense=75 WHERE bid=9;
UPDATE building SET defense=150 WHERE bid=20;
UPDATE building SET defense=200 WHERE bid=58;

UPDATE building SET defense=125 WHERE bid=51;
UPDATE building SET defense=150 WHERE bid=52;
UPDATE building SET defense=225 WHERE bid=53;
UPDATE building SET defense=275 WHERE bid=54;
UPDATE building SET defense=325 WHERE bid=59;

-- Add twenty levels
delete from level where lid>=280;

INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (280,1000000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (281,1050000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (282,1100000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (283,1150000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (284,1200000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (285,1250000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (286,1300000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (287,1350000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (288,1400000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (289,1500000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (290,1600000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (291,1700000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (292,1800000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (293,1900000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (294,2000000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (295,2200000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (296,2400000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (297,2600000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (298,2800000, 1, 1, 4);
INSERT INTO level (lid, experience, unit_lost, building_lost, planet) VALUES (299,3000000, 1, 1, 4);

-- Rebalance moon units
UPDATE unit SET attack=789 WHERE uid=710;
UPDATE unit SET attack=903 WHERE uid=711;

UPDATE unit SET attack=200 WHERE uid=807;
UPDATE unit SET attack=250 WHERE uid=808;
UPDATE unit SET attack=300 WHERE uid=809;
UPDATE unit SET attack=361 WHERE uid=810;
UPDATE unit SET attack=489 WHERE uid=811;

UPDATE unit SET attack=5384 WHERE uid=916;
UPDATE unit SET attack=5488 WHERE uid=917;

UPDATE unit SET attack=2736 WHERE uid=1211;
UPDATE unit SET attack=2918 WHERE uid=1212;

-- Rebalance moon buildings
UPDATE building SET defense=250 WHERE bid=701;
UPDATE building SET defense=300 WHERE bid=704;
UPDATE building SET defense=450 WHERE bid=707;
UPDATE building SET defense=550 WHERE bid=710;
UPDATE building SET defense=650 WHERE bid=717;

UPDATE building SET defense=100 WHERE bid=700;
UPDATE building SET defense=250 WHERE bid=703;
UPDATE building SET defense=350 WHERE bid=706;
UPDATE building SET defense=450 WHERE bid=709;
UPDATE building SET defense=550 WHERE bid=716;

UPDATE building SET defense=350 WHERE bid=708;
UPDATE building SET defense=450 WHERE bid=718;

UPDATE building SET defense=1000 WHERE bid=714;

-- Rebalance mars units
UPDATE unit SET attack=888 WHERE uid=1309;
UPDATE unit SET attack=1054, defense=700 WHERE uid=1310;

UPDATE unit SET attack=1928 WHERE uid=1409;
UPDATE unit SET attack=2092 WHERE uid=1410;

UPDATE unit SET attack=3000, defense=3600 WHERE uid=1507;
UPDATE unit SET attack=3858 WHERE uid=1509;
UPDATE unit SET attack=4028, defense=3650 WHERE uid=1510;

UPDATE unit SET attack=2022 WHERE uid=1609;
UPDATE unit SET attack=2210 WHERE uid=1610;

-- Rebalance Mercure buildings
UPDATE building SET defense=450 WHERE bid=1701;

-- Rebalance Mercure units
UPDATE unit SET attack=650 WHERE uid=1907;
UPDATE unit SET attack=790 WHERE uid=1909;
UPDATE unit SET attack=1022, defense=650 WHERE uid=1910;

UPDATE unit SET attack=1200 WHERE uid=2006;
UPDATE unit SET attack=1600 WHERE uid=2007;
UPDATE unit SET attack=1982 WHERE uid=2009;
UPDATE unit SET attack=2188 WHERE uid=2010;

UPDATE unit SET attack=3300 WHERE uid=2106;
UPDATE unit SET attack=2800, defense=3600 WHERE uid=2107;
UPDATE unit SET attack=3400 WHERE uid=2108;
UPDATE unit SET attack=3756 WHERE uid=2109;
UPDATE unit SET attack=3914, defense=3650 WHERE uid=2110;

UPDATE unit SET attack=1000 WHERE uid=2205;
UPDATE unit SET attack=1200 WHERE uid=2206;
UPDATE unit SET attack=1500 WHERE uid=2207;
UPDATE unit SET attack=1700 WHERE uid=2208;
UPDATE unit SET attack=1974 WHERE uid=2209;
UPDATE unit SET attack=2144 WHERE uid=2210;

------------------------------
-- NEPTUNE CONFIGURATION
------------------------------


-- Added Neptune unit groups
delete from unit_group where ugid>=25;

INSERT INTO unit_group (ugid , planet , type) VALUES ( 25, 5, 2);
INSERT INTO unit_group (ugid , planet , type) VALUES ( 26, 5, 3);
INSERT INTO unit_group (ugid , planet , type) VALUES ( 27, 5, 4);
INSERT INTO unit_group (ugid , planet , type) VALUES ( 28, 5, 5);
INSERT INTO unit_group (ugid , planet , type) VALUES ( 29, 5, 6);
INSERT INTO unit_group (ugid , planet , type) VALUES ( 30, 5, 0);

-- Added Neptune building groups
delete from building_group where bgid>=21;

INSERT INTO building_group ( bgid, planet, sell, type ) VALUES ( 21, 5, 1, 1);
INSERT INTO building_group ( bgid, planet, sell, type ) VALUES ( 22, 5, 1, 2);
INSERT INTO building_group ( bgid, planet, sell, type ) VALUES ( 23, 5, 0, 3);
INSERT INTO building_group ( bgid, planet, sell, type ) VALUES ( 24, 5, 0, 4);
INSERT INTO building_group ( bgid, planet, sell, type ) VALUES ( 25, 5, 0, 5);

-- Added Neptune mission groups
delete from mission_group where mgid>=40;

INSERT INTO mission_group (mgid , planet ) VALUES ( 40, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 41, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 42, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 43, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 44, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 45, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 46, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 47, 5 );
INSERT INTO mission_group (mgid , planet ) VALUES ( 48, 5 );

UPDATE mission_group SET planet=0 WHERE mgid=0;

-- Update level for Neptune planet
UPDATE level set planet=5 where lid>=250; 

-- Added neptune clan war sector data
delete from sector where sid>=400;

INSERT INTO sector (`sid`, `x`, `y`, `planet`, `cid`, `damage`, `mid`) VALUES
(401, 0, 0, 5, 0, 0, 400),
(402, 0, 1, 5, 0, 0, 401),
(403, 0, 2, 5, 0, 0, 402),
(404, 0, 3, 5, 0, 0, 403),
(405, 0, 4, 5, 0, 0, 404),
(406, 0, 5, 5, 0, 0, 405),
(407, 0, 6, 5, 0, 0, 406),
(408, 0, 7, 5, 0, 0, 407),
(409, 0, 8, 5, 0, 0, 410),
(410, 0, 9, 5, 0, 0, 411),
(411, 0, 10, 5, 0, 0, 412),
(412, 0, 11, 5, 0, 0, 413),
(413, 0, 12, 5, 0, 0, 414),
(414, 0, 13, 5, 0, 0, 415),
(415, 0, 14, 5, 0, 0, 416),
(416, 1, 0, 5, 0, 0, 417),
(417, 1, 1, 5, 0, 0, 420),
(418, 1, 2, 5, 0, 0, 421),
(419, 1, 3, 5, 0, 0, 422),
(420, 1, 4, 5, 0, 0, 423),
(421, 1, 5, 5, 0, 0, 424),
(422, 1, 6, 5, 0, 0, 425),
(423, 1, 7, 5, 0, 0, 426),
(424, 1, 8, 5, 0, 0, 427),
(425, 1, 9, 5, 0, 0, 430),
(426, 1, 10, 5, 0, 0, 431),
(427, 1, 11, 5, 0, 0, 432),
(428, 1, 12, 5, 0, 0, 433),
(429, 1, 13, 5, 0, 0, 434),
(430, 1, 14, 5, 0, 0, 435),
(431, 2, 0, 5, 0, 0, 436),
(432, 2, 1, 5, 0, 0, 437),
(433, 2, 2, 5, 0, 0, 440),
(434, 2, 3, 5, 0, 0, 441),
(435, 2, 4, 5, 0, 0, 442),
(436, 2, 5, 5, 0, 0, 443),
(437, 2, 7, 5, 0, 0, 444),
(438, 2, 6, 5, 0, 0, 445),
(439, 2, 8, 5, 0, 0, 446),
(440, 2, 9, 5, 0, 0, 447),
(441, 2, 10, 5, 0, 0, 450),
(442, 2, 11, 5, 0, 0, 451),
(443, 2, 12, 5, 0, 0, 452),
(444, 2, 13, 5, 0, 0, 453),
(445, 2, 14, 5, 0, 0, 454),
(446, 3, 0, 5, 0, 0, 455),
(447, 3, 1, 5, 0, 0, 456),
(448, 3, 2, 5, 0, 0, 457),
(449, 3, 3, 5, 0, 0, 460),
(450, 3, 4, 5, 0, 0, 461),
(451, 3, 5, 5, 0, 0, 462),
(452, 3, 6, 5, 0, 0, 463),
(453, 3, 7, 5, 0, 0, 464),
(454, 3, 8, 5, 0, 0, 465),
(455, 3, 9, 5, 0, 0, 466),
(456, 3, 10, 5, 0, 0, 467),
(457, 3, 11, 5, 0, 0, 470),
(458, 3, 12, 5, 0, 0, 471),
(459, 3, 13, 5, 0, 0, 472),
(460, 3, 14, 5, 0, 0, 473),
(461, 4, 0, 5, 0, 0, 474),
(462, 4, 1, 5, 0, 0, 475),
(463, 4, 2, 5, 0, 0, 476),
(464, 4, 3, 5, 0, 0, 477),
(465, 4, 4, 5, 0, 0, 480),
(466, 4, 5, 5, 0, 0, 481),
(467, 4, 6, 5, 0, 0, 482),
(468, 4, 7, 5, 0, 0, 483),
(469, 4, 8, 5, 0, 0, 484),
(470, 4, 9, 5, 0, 0, 485),
(471, 4, 10, 5, 0, 0, 486),
(472, 4, 11, 5, 0, 0, 487),
(473, 4, 12, 5, 0, 0, 487),
(474, 4, 13, 5, 0, 0, 487),
(475, 4, 14, 5, 0, 0, 487);

-- Added neptune units
delete from unit where uid>=2400;

INSERT INTO unit (uid, lid, price, gold, attack, defense, max, ugid, upkeep) VALUES

(2400, 250, 15000000, 0, 300, 100, 5382, 25, 15000),
(2401, 252, 17500000, 0, 315, 115, 5382, 25, 17000),
(2402, 256, 20200000, 0, 250, 225, 5382, 25, 19000),
(2403, 261, 24000000, 0, 350, 255, 5382, 25, 21000),
(2404, 268, 32600000, 0, 400, 135, 5382, 25, 23000),
(2405, 272, 35500000, 0, 375, 375, 5382, 25, 26000),
(2406, 275, 41000000, 0, 475, 450, 5382, 25, 28000),
(2407, 278, 46000000, 0, 525, 350, 5382, 25, 30000),
(2408, 280, 55000000, 0, 650, 350, 5382, 25, 45000),
(2409, 285, 0, 10, 790, 475, 5382, 25, 50000),

(2500, 251, 5000000, 0, 125, 125, 5382, 26, 10000),
(2501, 259, 8500000, 0, 250, 150, 5382, 26, 50000),
(2502, 262, 10000000, 0, 400, 250, 5382, 26, 55000),
(2503, 267, 14200000, 0, 650, 750, 5382, 26, 65000),
(2504, 270, 18500000, 0, 800, 900, 5382, 26, 70000),
(2505, 277, 20000000, 0, 1000, 750, 5382, 26, 80000),
(2506, 279, 32000000, 0, 1200, 900, 5382, 26, 90000),
(2507, 281, 42000000, 0, 1600, 1750, 5382, 26, 100000),
(2508, 283, 48000000, 0, 1900, 1250, 5382, 26, 110000),
(2509, 287, 0, 10, 2100, 1800, 5382, 26, 120000),

(2600, 253, 100000000, 0, 1000, 900, 5382, 27, 150000),
(2601, 257, 150000000, 0, 1250, 1100, 5382, 27, 180000),
(2602, 260, 220000000, 0, 1600, 1300, 5382, 27, 200000),
(2603, 263, 260000000, 0, 1050, 2000, 5382, 27, 250000),
(2604, 265, 320000000, 0, 2000, 1800, 5382, 27, 500000),
(2605, 273, 350000000, 0, 2500, 2050, 5382, 27, 600000),
(2606, 276, 380000000, 0, 3300, 2400, 5382, 27, 800000),
(2607, 279, 430000000, 0, 2800, 3200, 5382, 27, 150000),
(2608, 281, 480000000, 0, 3400, 2400, 5382, 27, 225000),
(2609, 284, 0, 10, 3700, 3400, 5382, 27, 350000),

(2700, 254, 20000000, 0, 50, 200, 5382, 28, 25000),
(2701, 258, 35000000, 0, 100, 400, 5382, 28, 27000),
(2702, 264, 40000000, 0, 200, 150, 5382, 28, 35000),
(2703, 266, 55000000, 0, 300, 400, 5382, 28, 40000),
(2704, 269, 60000000, 0, 500, 400, 5382, 28, 50000),
(2705, 271, 80000000, 0, 1000, 600, 5382, 28, 75000),
(2706, 274, 100000000, 0, 1200, 1200, 5382, 28, 100000),
(2707, 278, 150000000, 0, 1500, 1800, 5382, 28, 150000),
(2708, 282, 225000000, 0, 1700, 1000, 5382, 28, 200000),
(2709, 286, 0, 10, 2000, 1850, 5382, 28, 250000),

(2800, 0, 0, 0, 0, 0, 0, 29, 275),
(2801, 0, 0, 0, 0, 0, 0, 29, 240),
(2802, 0, 0, 0, 0, 0, 0, 29, 260);

-- Added neptune mission
delete from mission where mid>=400;

INSERT INTO `mission` (`mid`, `min_price`, `max_price`, `experience`, `loot`, `energy`, `alliance`, `lid`, `mgid`) VALUES
(400, 1000000, 1500000, 2, 1, 30, 700, 250, 40),
(401, 1500000, 2000000, 6, 1, 90, 701, 251, 40),
(402, 2000000, 3000000, 8, 1, 120, 702, 252, 40),
(403, 2500000, 3500000, 9, 1, 135, 703, 253, 40),
(404, 3000000, 3500000, 10, 1, 150, 704, 254, 40),
(405, 3500000, 4000000, 14, 1, 210, 705, 255, 40),
(406, 4000000, 4500000, 18, 1, 270, 706, 256, 40),
(407, 4500000, 5000000, 20, 0, 300, 707, 257, 40),
(410, 3500000, 5500000, 6, 1, 90, 710, 258, 41),
(411, 4000000, 5200000, 8, 0, 120, 715, 259, 41),
(412, 4400000, 5900000, 9, 0, 135, 720, 260, 41),
(413, 5100000, 6900000, 10, 1, 150, 721, 261, 41),
(414, 5300000, 6000000, 14, 0, 210, 722, 262, 41),
(415, 5500000, 6300000, 16, 0, 240, 723, 263, 41),
(416, 5700000, 6500000, 18, 1, 270, 724, 264, 41),
(417, 6000000, 7300000, 22, 0, 360, 725, 265, 41),
(420, 6100000, 7120000, 12, 1, 180, 726, 266, 42),
(421, 6300000, 7170000, 14, 0, 210, 727, 267, 42),
(422, 6700000, 7870000, 10, 1, 150, 728, 268, 42),
(423, 7100000, 8250000, 16, 1, 240, 729, 268, 42),
(424, 7200000, 8240000, 20, 1, 300, 730, 269, 42),
(425, 7580000, 8060000, 14, 1, 271, 731, 269, 42),
(426, 7930000, 8270000, 24, 1, 360, 732, 270, 42),
(427, 8130000, 8900000, 30, 0, 450, 733, 270, 42),
(430, 8270000, 8450000, 20, 1, 300, 734, 271, 43),
(431, 8530000, 8660000, 24, 0, 360, 735, 271, 43),
(432, 8720000, 8980000, 22, 0, 330, 736, 272, 43),
(433, 8970000, 9200000, 28, 0, 420, 737, 272, 43),
(434, 9240000, 9400000, 26, 1, 390, 738, 273, 43),
(435, 9580000, 9700000, 30, 0, 450, 739, 273, 43),
(436, 9670000, 9800000, 35, 1, 525, 740, 274, 43),
(437, 9810000, 9990000, 40, 1, 600, 741, 274, 43),
(440, 1180000, 1880000, 26, 0, 390, 742, 275, 44),
(441, 1410000, 3280000, 32, 1, 480, 743, 275, 44),
(442, 2004000, 2440000, 34, 0, 510, 744, 276, 44),
(443, 3280000, 4710000, 30, 1, 450, 745, 276, 44),
(444, 1950000, 5840000, 32, 0, 480, 746, 277, 44),
(445, 2140000, 4240000, 40, 0, 600, 747, 277, 44),
(446, 1790000, 5100000, 46, 1, 690, 748, 278, 44),
(447, 1140000, 1710000, 50, 0, 750, 749, 278, 44),
(450, 32300000, 35000000, 20, 0, 300, 750, 279, 45),
(451, 24000000, 25000000, 30, 0, 450, 751, 289, 45),
(452, 23300000, 25800000, 40, 0, 600, 752, 280, 45),
(453, 33900000, 35600000, 28, 0, 420, 757, 280, 45),
(454, 21000000, 45900000, 32, 1, 480, 758, 281, 45),
(455, 25900000, 35900000, 42, 1, 630, 760, 281, 45),
(456, 24000000, 40400000, 44, 0, 660, 762, 282, 45),
(457, 35800000, 43700000, 64, 1, 960, 764, 282, 45),
(460, 39500000, 42500000, 50, 0, 750, 766, 283, 46),
(461, 30800000, 35000000, 45, 0, 675, 768, 283, 46),
(462, 30700000, 35000000, 55, 0, 825, 770, 284, 46),
(463, 49500000, 50000000, 49, 1, 735, 772, 284, 46),
(464, 48200000, 52900000, 56, 0, 840, 774, 285, 46),
(465, 43600000, 56000000, 62, 1, 930, 776, 285, 46),
(466, 47700000, 59800000, 64, 0, 960, 778, 286, 46),
(467, 58000000, 60000000, 70, 1, 1050, 780, 286, 46),
(470, 181000000, 206000000, 60, 0, 900, 780, 287, 47),
(471, 102000000, 220000000, 70, 0, 1050, 782, 287, 47),
(472, 250000000, 280000000, 64, 0, 960, 784, 288, 47),
(473, 220000000, 250000000, 66, 1, 990, 786, 288, 47),
(474, 310000000, 470000000, 72, 0, 1080, 788, 289, 47),
(475, 340000000, 470000000, 74, 0, 1120, 790, 289, 47),
(476, 423000000, 550000000, 68, 0, 1020, 800, 290, 47),
(477, 470000000, 590000000, 80, 0, 1200, 810, 291, 47),
(480, 548100000, 585000000, 70, 1, 1050, 820, 292, 48),
(481, 550200000, 605000000, 76, 0, 1140, 824, 293, 48),
(482, 570000000, 650000000, 78, 1, 1170, 827, 294, 48),
(483, 602000000, 690000000, 82, 0, 1230, 830, 295, 48),
(484, 621000000, 650000000, 84, 1, 1260, 833, 296, 48),
(485, 642000000, 690000000, 92, 0, 1380, 836, 297, 48),
(486, 700000000, 750000000, 90, 0, 1350, 838, 298, 48),
(487, 800000000, 850000000, 98, 1, 1470, 840, 299, 48);

-- Added neptune mission units
delete from mission_unit where mid>=400;

INSERT INTO mission_unit (mid, uid, amount) VALUES
(400, 2400, 1),
(400, 2500, 1),
(400, 2600, 1),
(401, 2400, 2),
(401, 2500, 4),
(402, 2700, 5),
(402, 2600, 5),
(402, 2400, 5),
(403, 2500, 2),
(403, 2600, 5),
(404, 2600, 5),
(404, 2700, 6),
(405, 2400, 5),
(405, 2501, 6),
(406, 2401, 9),
(406, 2701, 1),
(406, 2601, 1),
(407, 2401, 5),
(407, 2501, 3),
(410, 2400, 100),
(410, 2501, 50),
(410, 2601, 25),
(411, 2400, 60),
(411, 2701, 50),
(412, 2402, 100),
(412, 2502, 5),
(412, 2602, 5),
(413, 2402, 5),
(413, 2502, 10),
(414, 2602, 15),
(414, 2702, 20),
(415, 2400, 150),
(415, 2702, 30),
(416, 2501, 115),
(416, 2602, 150),
(417, 2703, 50),
(417, 2603, 50),
(417, 2503, 50),
(420, 2403, 8),
(420, 2502, 1),
(421, 2703, 20),
(421, 2601, 3),
(421, 2501, 3),
(422, 2403, 10),
(422, 2503, 5),
(423, 2603, 35),
(423, 2702, 40),
(424, 2404, 35),
(424, 2704, 12),
(425, 2404, 8),
(425, 2504, 2),
(425, 2204, 2),
(426, 2604, 40),
(426, 2703, 8),
(427, 2701, 140),
(427, 2602, 46),
(427, 2502, 20),
(430, 2404, 18),
(430, 2504, 6),
(431, 2404, 6),
(431, 2505, 10),
(431, 2605, 4),
(432, 2403, 1),
(432, 2501, 1),
(432, 2601, 1),
(433, 2405, 3),
(433, 2504, 10),
(434, 2505, 11),
(434, 2605, 3),
(435, 2704, 5),
(435, 2603, 12),
(436, 2506, 10),
(436, 2406, 12),
(436, 2606, 12),
(437, 2406, 20),
(437, 2606, 20),
(440, 2706, 6),
(440, 2606, 8),
(440, 2506, 10),
(441, 2405, 15),
(441, 2505, 28),
(441, 2605, 28),
(442, 2404, 10),
(442, 2506, 5),
(443, 2607, 2),
(443, 2707, 2),
(444, 2707, 25),
(444, 2607, 13),
(445, 2407, 30),
(445, 2507, 8),
(446, 2605, 30),
(446, 2707, 21),
(446, 2608, 30),
(447, 2407, 3),
(447, 2507, 2),
(450, 2708, 20),
(450, 2608, 8),
(451, 2506, 15),
(451, 2404, 32),
(451, 2406, 32),
(452, 2408, 35),
(452, 2507, 20),
(453, 2607, 15),
(453, 2708, 21),
(454, 2404, 30),
(454, 2704, 32),
(455, 2508, 10),
(455, 2608, 10),
(456, 2705, 21),
(456, 2604, 20),
(456, 2605, 21),
(457, 2502, 60),
(457, 2404, 75),
(460, 2507, 20),
(460, 2608, 40),
(461, 2708, 30),
(461, 2604, 20),
(462, 2508, 40),
(462, 2402, 50),
(463, 2407, 50),
(463, 2508, 20),
(463, 2608, 20),
(464, 2705, 20),
(464, 2608, 50),
(465, 2602, 50),
(465, 2501, 20),
(465, 2504, 20),
(466, 2404, 50),
(466, 2502, 48),
(467, 2603, 60),
(467, 2605, 20),
(467, 2704, 20),
(470, 2603, 50),
(470, 2506, 100),
(471, 2404, 50),
(471, 2505, 25),
(472, 2603, 50),
(472, 2706, 25),
(472, 2506, 25),
(473, 2604, 100),
(473, 2406, 25),
(474, 2507, 50),
(474, 2608, 60),
(475, 2707, 30),
(475, 2608, 20),
(476, 2507, 125),
(476, 2408, 130),
(477, 2506, 150),
(477, 2607, 150),
(480, 2707, 160),
(480, 2603, 160),
(481, 2506, 155),
(481, 2407, 175),
(482, 2502, 120),
(482, 2606, 135),
(483, 2706, 140),
(483, 2602, 160),
(484, 2506, 150),
(484, 2407, 170),
(485, 2507, 160),
(485, 2608, 150),
(486, 2708, 150),
(486, 2607, 160),
(487, 1507, 250),
(487, 2408, 250),
(487, 2506, 250);

-- Neptune buildings
delete from building where bid>=2100;

INSERT INTO building (bid, price, gold, lid, income, defense, energy, discount, maintenance, max, bgid, ugid) VALUES
(2100, 1500000000,  0, 250, 1000000, 0, 0, 0, 0, 645, 21, 0),
(2101, 2000000000,  0, 255, 1500000, 0, 0, 0, 0, 645, 21, 0),
(2102, 2500000000,  0, 260, 2000000, 0, 0, 0, 0, 645, 21, 0),
(2103, 3000000000,  0, 265, 2500000, 0, 0, 0, 0, 645, 21, 0),
(2104, 3500000000,  0, 270, 3000000, 0, 0, 0, 0, 645, 21, 0),
(2105, 4000000000,  0, 275, 4000000, 0, 0, 0, 0, 645, 21, 0),

(2200, 1000000000, 0,  251, 0, 400, 0, 0, 0, 645, 22, 25),
(2201, 5000000000, 0,  256, 0, 600, 0, 0, 0, 645, 22, 25),
(2202, 0         , 10, 261, 0, 700, 0, 0, 0, 645, 22, 25),

(2203, 2000000000, 0 , 252, 0, 450, 0, 0, 0, 645, 22, 26),
(2204, 6000000000, 0 , 257, 0, 650, 0, 0, 0, 645, 22, 26),
(2205, 0         , 10, 262, 0, 750, 0, 0, 0, 645, 22, 26),

(2206, 3000000000, 0 , 253, 0, 500, 0, 0, 0, 645, 22, 27),
(2207, 9600000000, 0 , 258, 0, 700, 0, 0, 0, 645, 22, 27),
(2208, 0         , 10, 263, 0, 800, 0, 0, 0, 645, 22, 27),

(2209, 4000000000, 0 , 254, 0, 550, 0, 0, 0, 645, 22, 28),
(2210, 8000000000, 0 , 259, 0, 750, 0, 0, 0, 645, 22, 28),
(2211, 0         , 10, 264, 0, 850, 0, 0, 0, 645, 22, 28),

(2300, 10000000000,   0, 253, 0, 0, 1, 0, 0, 1, 23, 0),
(2301, 20000000000,   0, 258, 0, 0, 2, 0, 0, 1, 23, 0),
(2302, 40000000000,   0, 262, 0, 0, 3, 0, 0, 1, 23, 0),
(2303, 80000000000,   0, 267, 0, 0, 4, 0, 0, 1, 23, 0),
(2304, 100000000000,  0, 272, 0, 0, 5, 0, 0, 1, 23, 0),
(2305, 200000000000,  0, 277, 0, 0, 6, 0, 0, 1, 23, 0),
(2306, 300000000000,  0, 281, 0, 0, 7, 0, 0, 1, 23, 0),
(2307, 400000000000,  0, 283, 0, 0, 8, 0, 0, 1, 23, 0),
(2308, 500000000000,  0, 291, 0, 0, 9, 0, 0, 1, 23, 0),
(2309, 600000000000,  0, 295, 0, 0, 10, 0, 0, 1, 23, 0),

(2400, 10000000000,   0, 254, 0, 0, 0, 10, 0, 1, 24, 0),
(2401, 25000000000,   0, 259, 0, 0, 0, 12, 0, 1, 24, 0),
(2402, 50000000000,   0, 263, 0, 0, 0, 15, 0, 1, 24, 0),
(2403, 75000000000,   0, 270, 0, 0, 0, 20, 0, 1, 24, 0),
(2404, 90000000000,   0, 280, 0, 0, 0, 25, 0, 1, 24, 0),

(2500, 10000000000,   0, 253, 0, 0, 0, 0, 10, 1, 25, 0),
(2501, 25000000000,   0, 258, 0, 0, 0, 0, 12, 1, 25, 0),
(2502, 50000000000,   0, 264, 0, 0, 0, 0, 15, 1, 25, 0),
(2503, 75000000000,   0, 269, 0, 0, 0, 0, 20, 1, 25, 0),
(2504, 90000000000,   0, 274, 0, 0, 0, 0, 25, 1, 25, 0);

-- Neptune building units
delete from building_unit where bid>=2100;

INSERT INTO `building_unit` (`bid`, `uid`, `amount`) VALUES

(2100, 2800, 5),
(2100, 2801, 5),
(2100, 2802, 10),
(2101, 2800, 8),
(2101, 2801, 8),
(2101, 2802, 20),
(2102, 2800, 10),
(2102, 2801, 10),
(2102, 2802, 30),
(2103, 2800, 12),
(2103, 2801, 12),
(2103, 2802, 22),
(2104, 2800, 15),
(2104, 2801, 15),
(2104, 2802, 35),
(2105, 2800, 25),
(2105, 2801, 25),
(2105, 2802, 45),

(2200, 2800, 5),
(2200, 2801, 10),
(2200, 2802, 10),
(2201, 2800, 15),
(2201, 2801, 25),
(2201, 2802, 25),
(2202, 2800, 30),
(2202, 2801, 50),
(2202, 2802, 50),
(2203, 2800, 75),
(2203, 2801, 55),
(2203, 2802, 25),
(2204, 2800, 100),
(2204, 2801, 150),
(2204, 2802, 225),
(2205, 2800, 250),
(2205, 2801, 275),
(2205, 2802, 300),
(2206, 2800, 170),
(2206, 2801, 200),
(2206, 2802, 200),
(2207, 2800, 150),
(2207, 2801, 175),
(2207, 2802, 200),
(2208, 2800, 200),
(2208, 2801, 300),
(2208, 2802, 350),
(2209, 2800, 300),
(2209, 2801, 500),
(2209, 2802, 550),
(2210, 2800, 300),
(2210, 2801, 500),
(2210, 2802, 550),
(2211, 2800, 300),
(2211, 2801, 500),
(2211, 2802, 550),

(2300, 2800, 25),
(2300, 2801, 25),
(2300, 2802, 25),
(2301, 2800, 50),
(2301, 2801, 50),
(2301, 2802, 50),
(2302, 2800, 75),
(2302, 2801, 75),
(2302, 2802, 75),
(2303, 2800, 230),
(2303, 2801, 230),
(2303, 2802, 230),
(2304, 2800, 125),
(2304, 2801, 125),
(2304, 2802, 125),
(2305, 2800, 150),
(2305, 2801, 150),
(2306, 2802, 175),
(2307, 2800, 200),
(2307, 2801, 200),
(2307, 2802, 200),
(2308, 2800, 2500),
(2308, 2801, 2500),
(2308, 2802, 2500),
(2309, 2800, 9999),
(2309, 2801, 9999),
(2309, 2802, 9999),

(2400, 2800, 5),
(2400, 2801, 5),
(2400, 2802, 5),
(2401, 2800, 15),
(2401, 2801, 15),
(2401, 2802, 15),
(2402, 2800, 30),
(2402, 2801, 20),
(2402, 2802, 30),
(2403, 2800, 45),
(2403, 2801, 35),
(2403, 2802, 45),
(2404, 2800, 70),
(2404, 2801, 60),
(2404, 2802, 50),

(2500, 2800, 120),
(2500, 2801, 130),
(2500, 2802, 140),
(2501, 2800, 150),
(2501, 2801, 230),
(2501, 2802, 230),
(2502, 2800, 225),
(2502, 2801, 215),
(2502, 2802, 125),
(2503, 2800, 375),
(2503, 2801, 325),
(2503, 2802, 275),
(2504, 2800, 550),
(2504, 2801, 450),
(2504, 2802, 350);

-- Bugfix
UPDATE building SET `lid` = '218' WHERE `building`.`bid` =2001;

-- Increase building max to 645
UPDATE building SET max=645 WHERE max=600;

-- Increase unit max to 5382
UPDATE unit SET max=5382 WHERE max=5000;
UPDATE unit SET max=5500 WHERE max=5382;