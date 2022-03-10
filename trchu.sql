-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 déc. 2021 à 11:37
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `archchu`
--

-- --------------------------------------------------------

--
-- Structure de la table `classification`
--

CREATE TABLE `classification` (
  `id` int(11) NOT NULL,
  `IPP` int(11) NOT NULL,
  `Code_dia` int(11) NOT NULL,
  `Fracture_Col` varchar(40) NOT NULL,
  `fracture_Massif_Trochonterien` varchar(40) NOT NULL,
  `Fracture_Cheville` varchar(40) NOT NULL,
  `Fracture_Poignet` varchar(40) NOT NULL,
  `Tete_Humerale` varchar(40) NOT NULL,
  `Plateau_Tibial` varchar(40) NOT NULL,
  `Fracture_Cotyle` varchar(40) NOT NULL,
  `Nom_Utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classification`
--

INSERT INTO `classification` (`id`, `IPP`, `Code_dia`, `Fracture_Col`, `fracture_Massif_Trochonterien`, `Fracture_Cheville`, `Fracture_Poignet`, `Tete_Humerale`, `Plateau_Tibial`, `Fracture_Cotyle`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(7, 14785, 31, 'garden 2', 'pertrochanterienne', 'pronation abduction', 'cuneene externe', 'fracture du trochin', 'unituberositaire externe tassement', 'colonne anterieure', 'kirat_mourad', '11-08-2021 à  15:00:13', 'kirat_mourad', '11-12-2021 à  14:34:40', 'Activer'),
(8, 19, 31, 'garden 1', '', '', '', '', '', '', 'kirat_mourad', '11-08-2021 à  15:32:32', '', '', 'Activer'),
(9, 1564, 40, '', '', '', 'cuneene externe', '', 'unituberositaire externe tassement', 'paroie anterieure', 'kirat_mourad', '11-09-2021 à  10:26:29', 'kirat_mourad', '11-09-2021 à  10:34:36', 'Desactiver'),
(10, 85, 31, 'garden 1', '', '', '', '', 'unituberositaire interne simple', '', 'kirat_mourad', '11-10-2021 à  12:06:46', '', '', 'Activer'),
(11, 147, 31, 'garden 1', 'pertrochanterienne', '', '', '', '', '', 'kirat_mourad', '11-26-2021 à  12:05:31', '', '', 'Activer'),
(12, 236, 45, 'garden 2', 'sous trochonterienne', '', '', '', '', '', 'kirat_mourad', '11-29-2021 à  15:09:24', '', '', 'Activer'),
(13, 754, 31, 'garden 2', '', '', '', '', '', '', 'kirat_mourad', '11-29-2021 à  15:31:22', '', '', 'Activer'),
(14, 2, 31, 'garden 1', 'intertrochonterienne', '', '', '', '', '', 'kirat_mourad', '11-29-2021 à  15:36:46', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `diagnostic`
--

CREATE TABLE `diagnostic` (
  `id` int(11) NOT NULL,
  `IPP` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Nom_Utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `diagnostic`
--

INSERT INTO `diagnostic` (`id`, `IPP`, `code`, `Description`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(12, 14785, 31, 'bursite', 'kirat_mourad', '11-08-2021 à  15:00:05', 'kirat_mourad', '11-12-2021 à  14:34:40', 'Activer'),
(13, 19, 31, 'bursite', 'kirat_mourad', '11-08-2021 à  15:32:29', '', '', 'Activer'),
(14, 1564, 40, 'plaie de la hanche', 'kirat_mourad', '11-09-2021 à  10:26:20', 'kirat_mourad', '11-09-2021 à  10:34:36', 'Desactiver'),
(15, 85, 31, 'bursite', 'kirat_mourad', '11-10-2021 à  12:06:14', '', '', 'Activer'),
(16, 1254, 45, 'ecrasement du membre', 'kirat_mourad', '11-26-2021 à  11:52:06', '', '', 'Activer'),
(17, 147, 31, 'bursite', 'kirat_mourad', '11-26-2021 à  12:05:24', '', '', 'Activer'),
(18, 236, 45, 'ecrasement du membre', 'kirat_mourad', '11-29-2021 à  15:09:17', '', '', 'Activer'),
(19, 754, 31, 'bursite', 'kirat_mourad', '11-29-2021 à  15:31:18', '', '', 'Activer'),
(20, 2, 31, 'bursite', 'kirat_mourad', '11-29-2021 à  15:36:40', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `id` int(50) NOT NULL,
  `N°intervention` int(14) DEFAULT NULL,
  `Interventions` varchar(68) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `interventions`
--

INSERT INTO `interventions` (`id`, `N°intervention`, `Interventions`) VALUES
(2, 4, 'fracture du col femoral'),
(3, 5, 'fracture de la rotule'),
(4, 12, 'fracture du pilon tibial'),
(5, 13, 'fracture de la malleole externe'),
(6, 21, 'fracture du radius'),
(7, 29, 'fracture de la diaphyse humerale'),
(8, 31, 'bursite'),
(9, 35, 'fracture luxation de la cheville'),
(10, 40, 'plaie de la hanche'),
(11, 41, 'fracture bimalleolaire'),
(12, 43, 'luxation acromio-claviculaire'),
(13, 44, 'fracture trimalleolaire'),
(14, 45, 'ecrasement du membre'),
(15, 48, 'fracture luxation trans-scapho retrolunaire'),
(16, 49, 'fracture de la tete radiale'),
(17, 50, 'fracture de la base du 5eme metatarse'),
(18, 55, 'luxation du coude'),
(19, 57, 'fracture du plateau tibial'),
(20, 59, 'fracture des phalanges du pied'),
(21, 63, 'plaie de l\'avant bras'),
(22, 64, 'plaie de la main'),
(23, 67, 'arthroscopie du genou'),
(24, 73, 'rupture coiffe des rotateur'),
(25, 82, 'hypodermite necrosante'),
(26, 86, 'luxation du lisfranc'),
(27, 98, 'luxation du chopard'),
(28, 101, 'pseudarthrose du cubitus'),
(29, 103, 'amputation de la pulpe du 2em doigt'),
(30, 128, 'kyste poplité'),
(31, 129, 'kyste synovial'),
(32, 134, 'osteochondromatose du genou'),
(33, 138, 'pseudarthrose du scaphoide'),
(34, 140, 'corps etranger'),
(35, 152, 'fracture de la glene humerale'),
(36, 158, 'delabrement cutané'),
(37, 160, 'fracture du femur'),
(38, 162, 'reprise de PIH'),
(39, 163, 'tumeur osseuse'),
(40, 164, 'arthrite du coude'),
(41, 165, 'rétraction cutanée'),
(42, 166, 'rupture négligée du tendon flechisseur profond'),
(43, 167, 'osteite du calcaneum'),
(44, 169, 'hygroma du genou'),
(45, 185, 'exostose'),
(46, 188, 'fracture comminutive des os du tarse'),
(47, 189, 'pseudarthrose de l\'astragal'),
(48, 190, 'paralysie du nerf radial'),
(49, 191, 'fracture luxation des metatarses'),
(50, 192, 'fracture du scaphoide'),
(51, 193, 'arrachement du tendon d\'achile'),
(52, 195, 'Hallux Valgus'),
(53, 200, 'arthrite de la cheville'),
(54, 206, 'fracture de l\'olecrane'),
(55, 207, 'canal carpien'),
(56, 208, 'kyste du pouce'),
(57, 210, 'paralysie du nerf cubital'),
(58, 218, 'tumeur des parties molles'),
(59, 220, 'paralysie médio-cubitale'),
(60, 221, 'macrodactylie'),
(61, 222, 'fracture de la tete radial'),
(62, 224, 'ablation du matériel'),
(63, 231, 'hygroma'),
(64, 233, 'luxation épaule sujet agé'),
(65, 236, 'cubitus varus'),
(66, 237, 'osteomyelite chronique'),
(67, 244, 'plaie du poignet'),
(68, 248, 'rupture tendon long extenseur du pouce'),
(69, 249, 'fracture des metatarses'),
(70, 251, 'pseudarthrose du femur'),
(71, 252, 'fracture de l\'acromian'),
(72, 254, 'fracture de l\'extrémité inférieur de l\'humérus'),
(73, 260, 'luxation carpo métarpienne'),
(74, 263, 'fracture de l\'astragale'),
(75, 264, 'fracture de la clavicule'),
(76, 267, 'fracture pertrochanterienne'),
(77, 276, 'maladie de dupuytren'),
(78, 298, 'ongle incarné'),
(79, 302, 'pseudarthrose du radius'),
(80, 303, 'tuberculose osseuse'),
(81, 304, 'instabilité rotulienne'),
(82, 307, 'cal vicieux du radius'),
(83, 309, 'sectien tendineuse'),
(84, 310, 'abcé de la cuisse'),
(85, 314, 'paralysie cubitale'),
(86, 315, 'griffe cubitale'),
(87, 316, 'luxation récidivante de l\'épaule'),
(88, 320, 'entorse du genou'),
(89, 322, 'pied bot varus équin'),
(90, 335, 'fracture du cotyle'),
(91, 336, 'pied varus equin'),
(92, 338, 'luxation de la hanche'),
(93, 342, 'synovite villo-nodullaire'),
(94, 354, 'doigt porte'),
(95, 363, 'arrachement de la TTA'),
(96, 365, 'nécrose aséptique du naviculaire'),
(97, 375, 'traumatisme unguéal'),
(98, 378, 'luxation de la tete cubitale'),
(99, 381, 'liposarcome'),
(100, 383, 'lipome'),
(101, 387, 'fracture luxation de la hanche'),
(102, 388, 'fracture du grand trochanter'),
(103, 389, 'fracture de l\'hallux'),
(104, 390, 'fracture d\'une phalange'),
(105, 398, 'traumatisme pulpaire'),
(106, 403, 'fracture du bassin'),
(107, 404, 'plaie ancienne de la main'),
(108, 406, 'plaie de la cuisse'),
(109, 407, 'fracture des os du tarse'),
(110, 418, 'fracture base 5ème métacarpien'),
(111, 419, 'anse de sceau'),
(112, 420, 'luxation sous talienne'),
(113, 425, 'luxation négligé du coude'),
(114, 443, 'Fracture de Galeazzi'),
(115, 446, 'désarticulation du genou'),
(116, 447, 'arthrolyse du coude'),
(117, 450, 'fracture de la palette humérale'),
(118, 451, 'plaie du genou'),
(119, 453, 'main de meunuisier'),
(120, 456, 'orteil en griffe'),
(121, 469, 'compression du nerf cubital au niveau du coude'),
(122, 470, 'vascularite'),
(123, 475, 'plaie coude'),
(124, 477, 'kyste osseux'),
(125, 482, 'plaie du creux axillaire'),
(126, 489, 'pied diabétique'),
(127, 496, 'luxation négligée de l\'IPP'),
(128, 497, 'hygroma infecté'),
(129, 502, 'section du tendon flechisseur'),
(130, 504, 'ostéomyélite chronique'),
(131, 505, 'fracture du cubitus'),
(132, 507, 'dermo hypodermite'),
(133, 511, 'fracture de la malleole interne'),
(134, 516, 'coxalgie'),
(135, 519, 'desinsertion du tendon rotulien'),
(136, 520, 'fracture de l\'apophyse coronoide'),
(137, 534, 'ring finger'),
(138, 540, 'luxation du genou'),
(139, 544, 'tuméfaction de la cheville'),
(140, 547, 'tumeur à cellules géantes'),
(141, 549, 'nevrome de MORTON'),
(142, 562, 'fracture du tubercule de tillaux'),
(143, 563, 'luxation des tendons fibulaires'),
(144, 565, 'fasciite nécrosante'),
(145, 568, 'osteonecrose aspetique de la tete femorale'),
(146, 571, 'luxation de la cheville'),
(147, 575, 'morsure d\'animal'),
(148, 576, 'masse au niveau de la cheville'),
(149, 577, 'fracture de l\'épitrochlée'),
(150, 579, 'fracture du col chirurgical de l\'humérus'),
(151, 583, 'panaris'),
(152, 585, 'epiphysiolyse de la tete femorale'),
(153, 586, 'ostéochondrite du genou'),
(154, 593, 'luxation du pouce'),
(155, 594, 'fracture du tibia'),
(156, 597, 'kyste'),
(157, 599, 'arthrose du poignet'),
(158, 600, 'fracture du calcaneum'),
(159, 603, 'ténolyse des fléchisseurs'),
(160, 604, 'section du tendon long extenseur hallux'),
(161, 613, 'section du tendon extenseur'),
(162, 618, 'raideur du coude'),
(163, 620, 'délabrement cutané'),
(164, 621, 'maladie de kienbock'),
(165, 623, 'fracture des plateaux tibiaux'),
(166, 624, 'perte de substance musculaire'),
(167, 625, 'syndrome du canal tarsien'),
(168, 627, 'pied neurologique'),
(169, 628, 'raideur du genou'),
(170, 629, 'kyste méniscal'),
(171, 631, 'doigt en boutonnière'),
(172, 634, 'masse de la racine de la cuisse'),
(173, 635, 'tumeur du bassin'),
(174, 637, 'gonarthrose tricompartimentale'),
(175, 638, ' fracture du bassin'),
(176, 640, 'masse de l\'épaule'),
(177, 649, 'luxation négligée de l\'épaule'),
(178, 650, 'acromioplastie'),
(179, 654, 'masse au niveau de l\'index'),
(180, 658, 'ménisectomie'),
(181, 661, 'tendinoscopie'),
(182, 663, 'osteochondrite de la cheville'),
(183, 664, 'fracture luxation trans-scapho trans-triquetro retrolunaire du carpe'),
(184, 665, 'fracture du triquetrum'),
(185, 671, 'masse épaule'),
(186, 672, 'arthroscopie épaule'),
(187, 673, 'greffe nerveuse'),
(188, 674, 'arthroscopie du coude'),
(189, 676, 'PTH double mobilité'),
(190, 677, 'ARTHROLYSE DU GENOU'),
(191, 678, 'arthrolyse sous arthroscopie'),
(192, 680, 'canal carpien sous endoscopie'),
(193, 684, 'Maladie d\'Haglund'),
(194, 686, 'arthrodese de l\'hallux'),
(195, 691, 'chondrosarcome'),
(196, 693, 'pseudarthrose de la clavicule'),
(197, 695, 'plaie du pouce'),
(198, 698, 'Ostéite de la jambe'),
(199, 701, 'réimplantation de la main'),
(200, 703, 'Arthrite de l\'épaule'),
(201, 704, 'cross finger'),
(202, 708, 'phlégmon de la main'),
(203, 710, 'Erysipèle'),
(204, 714, 'luxation trans-scapho-retrolunaire'),
(205, 715, 'plaie de la cheville'),
(206, 718, 'fracture de l\'extrémité inférieure du fémur'),
(207, 722, 'conflit sous acromial'),
(208, 724, 'métastase osseuse'),
(209, 726, 'ostéome ostéoide'),
(210, 728, 'kyste pilosébacé'),
(211, 731, 'greffe cutanée'),
(212, 732, 'tendinopathie calcifiante de la coiffe'),
(213, 738, 'descellement de PTH'),
(214, 745, 'carcinome epidermoide'),
(215, 746, 'masse du genou'),
(216, 747, 'cal vicieux du femur'),
(217, 753, 'luxation de l\'épaule'),
(218, 758, 'fracture de l\'omoplate'),
(219, 759, 'fracture de l\'epaule'),
(220, 760, 'fracture de lépaule'),
(221, 763, 'blocage méniscal'),
(222, 767, 'plastie de l\'ongle'),
(223, 768, 'dermo-hypodermite non nécrosante'),
(224, 769, 'masse de l\'avant-bras'),
(225, 773, 'maladie exostosante'),
(226, 774, 'arthrorise'),
(227, 776, 'fracture d\'une metacarpe'),
(228, 779, 'séction fléchisseur négligé'),
(229, 782, 'rupture du tendon d\'achille'),
(230, 787, 'rupture negligée du tendon long extenseur du pouce'),
(231, 788, 'arthrite de la hanche'),
(232, 792, 'fracture du massif des épines'),
(233, 793, 'biopsie exerese de kyste plantaire'),
(234, 795, 'lésion tendineuse'),
(235, 796, 'lésion LLE genou'),
(236, 798, 'pouce à ressaut'),
(237, 799, 'fracture de la malléole interne'),
(238, 800, 'luxation de lisfranc'),
(239, 802, 'maladie de Freiberg'),
(240, 808, 'fracture du rachis'),
(241, 815, 'plaie du pied'),
(242, 817, 'kyste mucoide'),
(243, 818, 'luxation sur PTH'),
(244, 819, 'spondylarthrite ankylosante'),
(245, 820, 'dysplasie de la hanche'),
(246, 821, 'fracture sur prothese'),
(247, 822, 'reprise d\'une prothese de moore'),
(248, 823, 'cal vicieux du col femoral'),
(249, 827, 'fracture de bennet'),
(250, 829, 'syndrome de wolkman'),
(251, 831, 'fracture du peronée'),
(252, 833, 'osteoarthropathie neurogene'),
(253, 835, 'hématome de la cuisse'),
(254, 836, 'ossifications heterotopiques'),
(255, 840, 'fracture de monteggia'),
(256, 841, 'kyste de la patte d\'oie'),
(257, 842, 'arrachement du LLE'),
(258, 843, 'fracture de l\'acromion'),
(259, 844, 'fracture d\'une metatarse'),
(260, 845, 'luxation interphalangienne de l\'hallux'),
(261, 847, 'pseudarthrose de l\'humerus'),
(262, 854, 'myelome multiple'),
(263, 857, 'rupture du LCA'),
(264, 859, 'rupture du LCP'),
(265, 866, 'plaie du coude'),
(266, 869, 'tenosynovite de dequervin'),
(267, 870, 'escare'),
(268, 887, 'fracture péri-prothétique'),
(269, 888, 'dystrophie synoviale'),
(270, 889, 'tumeur de la main'),
(271, 895, 'pseudarthrose du tibia'),
(272, 904, 'tumeur a cellules geantes des gaines'),
(273, 905, 'epicondylite'),
(274, 908, 'synovite du genou'),
(275, 909, 'métatarsalgie'),
(276, 911, 'fracture de la tete humerale'),
(277, 914, 'hemangiome synoviale'),
(278, 915, 'abcés de l\'hallux'),
(279, 918, 'nevrome du nerf radial'),
(280, 919, 'nevrome de la main'),
(281, 921, 'rupture négligée d\'un tendon extenseur'),
(282, 924, 'rupture du tendon rotulien'),
(283, 928, 'nécrose aséptique de la tete fémorale'),
(284, 940, 'traumatisme de l\'avant pied'),
(285, 943, 'fracture luxation transtriquetro retrolunaire du carpe'),
(286, 945, 'chondrome'),
(287, 947, 'kyste du genou'),
(288, 949, 'tenosynovite du pied'),
(289, 950, 'maillet finger'),
(290, 952, 'rhumatisme psoriasique'),
(291, 954, 'inégalite de longueur des membres inferieurs'),
(292, 956, 'tendinite des peroniers'),
(293, 957, 'paralysie du plexus brachial'),
(294, 960, 'luxation retrolunaire du carpe'),
(295, 962, 'perte de substance cutanée'),
(296, 964, 'gonarthrose'),
(297, 965, 'fracture du trochiter'),
(298, 966, 'fracture de l\'extremite inferieure du radius'),
(299, 968, 'amputation pulpaire'),
(300, 971, 'syndactylie de la main'),
(301, 973, 'tumeur cutanée'),
(302, 974, 'pseudarthrose de la malleole externe'),
(303, 975, 'pseudarthrose de la malleole interne'),
(304, 976, 'kyste du LCA'),
(305, 977, 'abcé du mollet'),
(306, 979, 'raideur des doigts'),
(307, 981, 'Abcès du bras'),
(308, 982, 'reprise d\'une arthrodése de la cheville'),
(309, 983, 'arthrose de la soustalienne'),
(310, 984, 'arthrose de la cheville'),
(311, 985, 'arthrose talo-naviculaire'),
(312, 986, 'amputation traumatique de la main'),
(313, 987, 'maladie de léoburger'),
(314, 997, 'electrocution'),
(315, 998, 'Plaie du mollet'),
(316, 999, 'synostose radio-ulnaire'),
(317, 1000, 'ostéonécrose de la tete fémorale'),
(318, 1001, 'genu varum'),
(319, 1002, 'tuméfaction du doigt'),
(320, 1003, 'lésion LCA'),
(321, 1004, 'amputation doigt'),
(322, 1005, 'reprise PTH'),
(323, 1006, 'tendinopathie de la coiffe des rotateurs'),
(324, 1007, 'rupture de la coiffe des rotateurs'),
(325, 1010, 'instabilité de la cheville'),
(326, 1011, 'rhizarthrose'),
(327, 1013, 'deformation du pied'),
(328, 1014, 'kyste hydatique'),
(329, 1015, 'arthrodèse de la cheville'),
(330, 1017, 'rupture tendon d\'achille'),
(331, 1018, 'fracture ouverte de la main'),
(332, 1019, 'rupture de LCA'),
(333, 1020, 'rupture LCA'),
(334, 1021, 'arthrose du genou'),
(335, 1023, 'lésion meniscale'),
(336, 1025, 'arthrite du poignet'),
(337, 1027, 'escare talonnière'),
(338, 1028, 'luxation sterno-claviculaire'),
(339, 1029, 'fracture diaphyse femorale gauche'),
(340, 1031, 'syndrome du canal carpien'),
(341, 1032, 'tumeur de la scapula'),
(342, 1033, 'tumeur du poumon'),
(343, 1034, 'tumeur de l\'aileron sacrée'),
(344, 1035, 'fracture pathologique'),
(345, 1036, 'masse au niveau de la cuisse'),
(346, 1038, 'dysplasie fibreuse'),
(347, 1039, 'arthrose tibioastragalienne'),
(348, 1041, 'sub amputation poinet'),
(349, 1042, 'PTG'),
(350, 1044, 'farcture diaphyse femorale droite'),
(351, 1045, 'fracture diaphyse femorale droit'),
(352, 1046, 'fracture d\'une epine tibiale'),
(353, 1047, 'fracture de segond'),
(354, 1048, 'capsulite retractile'),
(355, 1049, 'pied creux varus'),
(356, 1050, 'cal vicieux de la palette humerale'),
(357, 1051, 'fracture de la jambe'),
(358, 1052, 'dépose de PTH'),
(359, 1053, 'parage'),
(360, 1054, 'kyste anevrysmal'),
(361, 1055, 'fracture ouverte du pied'),
(362, 1056, 'luxation  sous talienne'),
(363, 1057, 'luxation talo naviculaire'),
(364, 1058, 'paralysie du SPE'),
(365, 1059, 'fracture ouverte de la jambe'),
(366, 1060, 'melanome talonnière droit'),
(367, 1061, 'pied rhumatoide'),
(368, 1062, 'fracture sous trochantérienne'),
(369, 1064, 'MELANOME UNGUEALE'),
(370, 1065, 'ronoldo'),
(371, 1067, 'amputation'),
(372, 1068, 'désarticulation du poignet'),
(373, 1069, 'désarticulation de main'),
(374, 1070, 'ulcére cutané'),
(375, 1072, 'amputation de l\'avant pied'),
(376, 1073, 'syndrome des loges'),
(377, 1074, 'infection sur matériel d\'ostéosynthése'),
(378, 1076, 'infection'),
(379, 1077, 'fracture ouverte de la clavicule'),
(380, 1078, 'fracture sur matériel d\'ostéosynthése'),
(381, 1079, 'PTE'),
(382, 1080, 'fracture ouverte du coude'),
(383, 1081, 'coxite'),
(384, 1082, 'infection sur prothése'),
(385, 1083, 'psaudarthrose de la clavicule'),
(386, 1084, 'pth'),
(387, 1085, 'broiement de la main'),
(388, 1086, 'abcés de l\'avant bras'),
(389, 1087, 'fracture du capitatum'),
(390, 1088, 'pseudarthrose du métacarpien'),
(391, 1089, 'biopsie nerveuse'),
(392, 1090, 'luxation carpo-métacarpien'),
(393, 1091, 'luxation carpo-métacarpienne'),
(394, 1092, 'luxation carpo métacarpienne'),
(395, 1095, 'abcés du pied'),
(396, 1096, 'polytraumatisme'),
(397, 1097, 'fracture condylienne'),
(398, 1098, 'infection des parties molles'),
(399, 1099, 'fracture de métacarpien'),
(400, 1100, 'luxation invétéré de l\'épaule'),
(401, 1101, 'brulure de la main'),
(402, 1102, 'pseudarthrose de la palette humérale'),
(403, 1103, 'paralysie de la branche interosseux du nerf radial'),
(404, 1104, 'pih'),
(405, 1105, 'fracture luxation gléno-humérale'),
(406, 1107, 'pseudarthrose de la rotule'),
(407, 1108, 'sacro-iliite'),
(408, 1109, 'fracture des 2 os de l\'avant bras'),
(409, 1110, 'genu valgum'),
(410, 1112, 'biopsie synoviale'),
(411, 1113, 'lésion négligée de tendon fléchisseur'),
(412, 1114, 'lésion négligée du tendon fléchisseur'),
(413, 1116, 'fracture col du 5ème métacarpe'),
(414, 1117, 'PLAIE DU BRAS'),
(415, 1119, 'morsure de serpent'),
(416, 1120, 'plaie ancienne de la fesse'),
(417, 1121, 'ténosynovite'),
(418, 1123, 'biopsie exerese d\'un kyste'),
(419, 1124, 'arthrite septique du genou'),
(420, 1125, 'descellemnt septique'),
(421, 1127, 'fracture de rolando'),
(422, 1128, 'coxarthrose'),
(423, 1129, 'Arthrodèse du pouce'),
(424, 1130, 'tumefaction du mollet'),
(425, 1131, 'dysplasie de hanche'),
(426, 1132, 'doigt a ressaut'),
(427, 1133, 'biopsie d\'une récidive tumorale'),
(428, 1134, 'TUMEUR VASCULAIRE'),
(429, 1135, 'Luxation de la rotule'),
(430, 1136, 'biopsie musculaire'),
(431, 1137, 'luxation du poignet'),
(432, 1138, 'Luxation métacarpo-carpienne'),
(433, 1139, 'Luxation métacarpo-phanlangienne'),
(434, 1140, 'lesions ligamentaires complexes du genou'),
(435, 0, 'Interventions'),
(436, 4, 'fracture du col femoral'),
(437, 5, 'fracture de la rotule'),
(438, 12, 'fracture du pilon tibial'),
(439, 13, 'fracture de la malleole externe'),
(440, 21, 'fracture du radius'),
(441, 29, 'fracture de la diaphyse humerale'),
(442, 35, 'fracture luxation de la cheville'),
(443, 41, 'fracture bimalleolaire'),
(444, 43, 'luxation acromio-claviculaire'),
(445, 44, 'fracture trimalleolaire'),
(446, 48, 'fracture luxation trans-scapho retrolunaire'),
(447, 49, 'fracture de la tete radiale'),
(448, 50, 'fracture de la base du 5eme metatarse'),
(449, 57, 'fracture du plateau tibial'),
(450, 59, 'fracture des phalanges du pied'),
(451, 103, 'amputation de la pulpe du 2em doigt'),
(452, 152, 'fracture de la glene humerale'),
(453, 160, 'fracture du femur'),
(454, 188, 'fracture comminutive des os du tarse'),
(455, 191, 'fracture luxation des metatarses'),
(456, 192, 'fracture du scaphoide'),
(457, 206, 'fracture de l\'olecrane'),
(458, 222, 'fracture de la tete radial'),
(459, 249, 'fracture des metatarses'),
(460, 252, 'fracture de l\'acromian'),
(461, 263, 'fracture de l\'astragale'),
(462, 264, 'fracture de la clavicule'),
(463, 267, 'fracture pertrochanterienne'),
(464, 335, 'fracture du cotyle'),
(465, 387, 'fracture luxation de la hanche'),
(466, 388, 'fracture du grand trochanter'),
(467, 389, 'fracture de l\'hallux'),
(468, 390, 'fracture d\'une phalange'),
(469, 403, 'fracture du bassin'),
(470, 407, 'fracture des os du tarse'),
(471, 418, 'fracture base 5ème métacarpien'),
(472, 450, 'fracture de la palette humérale'),
(473, 505, 'fracture du cubitus'),
(474, 511, 'fracture de la malleole interne'),
(475, 519, 'desinsertion du tendon rotulien'),
(476, 520, 'fracture de l\'apophyse coronoide'),
(477, 562, 'fracture du tubercule de tillaux'),
(478, 577, 'fracture de l\'épitrochlée'),
(479, 579, 'fracture du col chirurgical de l\'humérus'),
(480, 594, 'fracture du tibia'),
(481, 600, 'fracture du calcaneum'),
(482, 623, 'fracture des plateaux tibiaux'),
(483, 638, ' fracture du bassin'),
(484, 664, 'fracture luxation trans-scapho trans-triquetro retrolunaire du carpe'),
(485, 665, 'fracture du triquetrum'),
(486, 714, 'luxation trans-scapho-retrolunaire'),
(487, 718, 'fracture de l\'extrémité inférieure du fémur'),
(488, 758, 'fracture de l\'omoplate'),
(489, 759, 'fracture de l\'epaule'),
(490, 760, 'fracture de lépaule'),
(491, 776, 'fracture d\'une metacarpe'),
(492, 792, 'fracture du massif des épines'),
(493, 799, 'fracture de la malléole interne'),
(494, 821, 'fracture sur prothese'),
(495, 827, 'fracture de bennet'),
(496, 831, 'fracture du peronée'),
(497, 840, 'fracture de monteggia'),
(498, 843, 'fracture de l\'acromion'),
(499, 844, 'fracture d\'une metatarse'),
(500, 887, 'fracture péri-prothétique'),
(501, 911, 'fracture de la tete humerale'),
(502, 943, 'fracture luxation transtriquetro retrolunaire du carpe'),
(503, 960, 'luxation retrolunaire du carpe'),
(504, 965, 'fracture du trochiter'),
(505, 966, 'fracture de l\'extremite inferieure du radius');

-- --------------------------------------------------------

--
-- Structure de la table `liste_des_services`
--

CREATE TABLE `liste_des_services` (
  `id` int(11) NOT NULL,
  `Code` varchar(5) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste_des_services`
--

INSERT INTO `liste_des_services` (`id`, `Code`, `Description`) VALUES
(1, 'ADMSP', 'ADMINISTRATION SPECIALITE'),
(2, 'ANAPA', 'ANAPTH'),
(3, 'AR', 'ANESTHESIE-REANIMATION'),
(4, 'ARO', 'ANESTHESIE-REANIMATION ONCOLOGIE'),
(5, 'ASS', 'ASSISTANTE SOCIALE'),
(6, 'BAFME', 'BAF MERE ENFANT'),
(7, 'BAFON', 'BAF ONCOLOGIE'),
(8, 'BAFPS', 'BAF PSYCHIATRIE'),
(9, 'BAFSP', 'BAF SPECIALITE'),
(10, 'BAFUP', 'BAF URGENCES PEDIATIRIQUES'),
(11, 'BAFUS', 'BAF URGENCE SPECIALITE'),
(12, 'BC', 'BLOC OPERATOIRE CENTRAL'),
(13, 'BCR', 'BRULES ET CHIRURGIE REPARATRICE'),
(14, 'BO', 'BLOC ONCOLOGIE'),
(15, 'BOMAR', 'BOUYA OMAR'),
(16, 'BONCO', 'BLOC SERVICE ONCOLOGIE'),
(17, 'BOS', 'BLOC OPERATOIRE SPECIALITE'),
(18, 'BO-S', 'BLOC OPERATOIRE SPECIALITE'),
(19, 'BU', 'BLOC OPERATOIRE DES URGENCES'),
(20, 'CCV', 'CHIRURGIE CARDIO-VASCULAIRE'),
(21, 'CHB', 'CHP BOUARFA'),
(22, 'CHIMI', 'CHIMIOTHERAPIE'),
(23, 'CHIR', 'CHIRURGIE - ONCOLOGIE'),
(24, 'CHPED', 'CHIRUGIE PEDIATRIQUE ORTHOPEDIQUE B'),
(25, 'CHPEO', 'CHIRURGIE PEDIATRIQUE ORTHOPEDIQUE B'),
(26, 'CHPEV', 'CHIRURGIE PEDIATRIQUE URO-VISCERALE A'),
(27, 'CMC', 'SERVICE COMMUNICATION'),
(28, 'CMT', 'CHIMIOTHERAPIE'),
(29, 'COV19', 'COVID 19'),
(30, 'CPSY', 'CONSULTATION PSYCHIATRIE'),
(31, 'CRA', 'CHIRURGIE GENERALE A'),
(32, 'CRB', 'CHIRURGIE GENERALE B'),
(33, 'CRD', 'CARDIOLOGIE'),
(34, 'CRT', 'CHIRURGIE THORACIQUE ET CARDIAQUE'),
(35, 'CRTSO', 'CENTRE REGIONAL DE TRANSFUSION SANGUINE OUJDA'),
(36, 'CS', 'CONSULTATION - SPECIALITE'),
(37, 'CSCHU', 'CONSULTATION -CHU'),
(38, 'CSME', 'CONSULATION - ME'),
(39, 'CSO', 'CONSULTATION - ONCOLOGIE'),
(40, 'CV', 'CHIRURGIE VASCULAIRE'),
(41, 'CVI', 'CHURIRGIEN VISCÉRALE'),
(42, 'CVIS', 'CHURIRGIE VISCERALE'),
(43, 'CYTOX', 'RECONSTITUTION CYTOTOXIQUE'),
(44, 'DAFL', 'DAFL'),
(45, 'DETP', 'DISPENSATION ET EDUCATION THERAPEUTIQUE ET PHARMAC'),
(46, 'DM', 'DERMATOLOGIE'),
(47, 'DS', 'DÉCHOCAGE SPÉCIALITE'),
(48, 'ED', 'ENDOCRINOLOGIE'),
(49, 'EF', 'EXPLORATION FONCTIONNEL'),
(50, 'FNC', 'SERVICE FINANCES'),
(51, 'GNM', 'GENETIQUE MEDICALE'),
(52, 'GS', 'GASTRO-ENTEROLOGIE'),
(53, 'GYN', 'GYNECOLOGIE-OBSTETRIQUE'),
(54, 'GYNO', 'GYNECOLOGIE-OBSTETRIQUE'),
(55, 'HEM', 'HEMATOLOGIE'),
(56, 'HJ', 'HOPITAL DU JOUR'),
(57, 'HO', 'HEMATOLOGIE - ONCOLOGIE'),
(58, 'HSP', 'HOSPITALISATION'),
(59, 'HYG', 'HYGIENE'),
(60, 'IK', 'INITIATIVE AL KARAMA'),
(61, 'INF', 'SERVICE INFORMATIQUE'),
(62, 'LAB', 'LABORATOIRE'),
(63, 'LOGI', 'LOGISTIQUE'),
(64, 'MEAS', 'ASSISTANCE SOCIALE HOP ME'),
(65, 'MI', 'MEDECINE INTERNE'),
(66, 'MN', 'MEDECINE NUCLEAIRE'),
(67, 'MP', 'MEDECINE PHYSIQUE'),
(68, 'MRCH', 'SERVICE DES MARCHES'),
(69, 'NEO', 'NEONATALOGIE ET REANIMATION NEONATALE'),
(70, 'NP', 'NEPHROLOGIE'),
(71, 'NR', 'NEUROLOGIE'),
(72, 'NRC', 'NEUROCHIRURGIE'),
(73, 'OBSFA', 'GYNECO-OBSTETRIQUE HOP FARABI'),
(74, 'OM', 'ONCOLOGIE MEDICALE'),
(75, 'ONCAS', 'ASSISTANCE SOCIALE CENTRE ONCOLOGIE'),
(76, 'OPHT', 'OPHTALMOLOGIE'),
(77, 'ORL', 'O.R.L'),
(78, 'ORTH', 'ORTHOPEDIE'),
(79, 'PDPSY', 'PEDOPSYCHIATRIE'),
(80, 'PED', 'PEDIATRIE'),
(81, 'PEDA', 'PEDIATRIE A'),
(82, 'PEDB', 'PEDIATRIE B'),
(83, 'PERSO', 'PERSONNEL CHU'),
(84, 'PH', 'PHARMACIE - ONCOLOGIE'),
(85, 'PHA', 'PHARMACIE - CHU'),
(86, 'PHA P', 'PHARMACIE : PSYCHIARIE'),
(87, 'PMA', 'PROCREATION MEDICALE ASSISTEE'),
(88, 'PN', 'PNEUMOLOGIE'),
(89, 'PSYAS', 'ASSISTANCE SOCIALE  HSMMP'),
(90, 'PSYCH', 'PSYCHIATRIE'),
(91, 'PSYFA', 'PSYCHIATRIE FEMME A'),
(92, 'PSYHA', 'PSYCHIATRIE HOMME A'),
(93, 'PSYHB', 'PSYCHIATRIE HOMME OUVERT'),
(94, 'PSYJ', 'PSYCHIATRIE SERVICE MEDICO-LEGAL'),
(95, 'RAD', 'RADIOTHERAPIE'),
(96, 'RADIO', 'RADIOLOGIE'),
(97, 'RADS', 'RADIOLOGIE'),
(98, 'RCOV', 'REANIMATION BLOC CENTRAL COVID-19'),
(99, 'REA', 'REANIMATION MÉRE ET ENFANTS'),
(100, 'REACO', 'REANIMATION COVID-19'),
(101, 'REAS', 'REANIMATION SPECIALITE'),
(102, 'RH', 'RHUMATOLOGIE'),
(103, 'RP', 'REANI-PEDIATRIQUE-GYNECO-OBSTETRIQUE'),
(104, 'SAMU', 'SERVICE ASSISTANCE MEDICALE URGENCE'),
(105, 'SAMU1', 'NOUVEAU SAMU'),
(106, 'SPAS', 'ASSISTANCE SOCIALE HOP SP'),
(107, 'SQGR', 'SERVICE DE QUALIT2 ET GESTION DES RISQUES'),
(108, 'SSI', 'SSI'),
(109, 'SSP', 'SERVICE DES SOINS PALLIATIFS'),
(110, 'ST', 'STATISTIQUE'),
(111, 'STR', 'STERILISATION'),
(112, 'TR', 'TRAUMATOLOGIE'),
(113, 'TRA', 'TRAUMATOLOGIE A'),
(114, 'TRB', 'TRAUMATOLOGIE B'),
(115, 'UGO', 'SERVICE URGENCES GYNECO OBSTETRIQUE'),
(116, 'UME', 'URGENCES MERE & ENFANT'),
(117, 'UP', 'URGENCE PEDIATRIE'),
(118, 'UR', 'UROLOGIE'),
(119, 'URG', 'URGENCE MATERNITE'),
(120, 'URGE', 'URGENCE'),
(121, 'URGO', 'URGENCES GYNECO-OBSTETRICALES'),
(122, 'URPSY', 'URGENCE PSYCHIATRIE'),
(123, 'URS', 'URGENCE SPECIALITE'),
(124, 'USIC', 'UNITE DE SOINS INTENSIFS CARDIAQUES');

-- --------------------------------------------------------

--
-- Structure de la table `liste_maladies`
--

CREATE TABLE `liste_maladies` (
  `id` int(11) NOT NULL,
  `Code` varchar(15) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste_maladies`
--

INSERT INTO `liste_maladies` (`id`, `Code`, `Description`) VALUES
(1, 'dia', 'diabete'),
(2, 'HTA', 'hypertension arterielle (HTA) '),
(3, 'CIM-10', 'cardiopathie'),
(4, NULL, 'grossesse'),
(5, NULL, 'allaitement'),
(6, NULL, 'alpha bloquant'),
(7, NULL, 'B bloquant'),
(8, NULL, 'antiparkinsonien'),
(9, NULL, 'maladie neurologique'),
(10, NULL, 'psychose'),
(11, NULL, 'maladie metabolique'),
(12, NULL, 'polyarthrite rhumatoide'),
(13, NULL, 'maladie de systeme'),
(14, NULL, 'tuberculose'),
(15, 'AVP', 'Action rénale de la vasopressine (AVP)'),
(16, NULL, 'craquement'),
(17, NULL, 'blocage'),
(18, NULL, 'instabilite'),
(19, NULL, 'paresthesie'),
(20, NULL, 'anesthesie');

-- --------------------------------------------------------

--
-- Structure de la table `liste_traitement`
--

CREATE TABLE `liste_traitement` (
  `id` int(11) NOT NULL,
  `Description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `liste_traitement`
--

INSERT INTO `liste_traitement` (`id`, `Description`) VALUES
(1, 'ADO'),
(2, 'insuline'),
(3, 'corticoide'),
(4, 'antihpertensseur'),
(5, 'hypocholesterolemiant'),
(6, 'antidepresseur'),
(7, 'antiagregant plaquetaire'),
(8, 'heparine'),
(9, 'anticoagulant'),
(10, 'tabac'),
(11, 'alchool'),
(12, 'obesite'),
(13, 'neurologique'),
(14, 'psychose'),
(15, 'maladie metabolique'),
(16, 'polyarthrite rhumatoide'),
(17, 'maladie de systeme'),
(18, 'tuberculose'),
(20, 'immunotherapie');

-- --------------------------------------------------------

--
-- Structure de la table `maladie`
--

CREATE TABLE `maladie` (
  `id` int(11) NOT NULL,
  `ipp` int(11) NOT NULL,
  `Motif_Hospitalisation` varchar(25) NOT NULL,
  `Maladie1` varchar(20) NOT NULL,
  `Maladie2` varchar(20) NOT NULL,
  `Maladie3` varchar(20) NOT NULL,
  `Maladie4` varchar(20) NOT NULL,
  `Nom_Utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `maladie`
--

INSERT INTO `maladie` (`id`, `ipp`, `Motif_Hospitalisation`, `Maladie1`, `Maladie2`, `Maladie3`, `Maladie4`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(1, 14785, 'infection', 'Tuberculose', 'Shigellose', 'Amibiase', 'Tularemie', '', '', 'kirat_mourad', '11-17-2021 à  12:13:40', 'Activer'),
(2, 12, 'infection', 'Autres salmonelloses', 'TularÃ©mie', 'TÃ©tanos nÃ©onatal', '', 'kirat_mourad', '11-15-2021 à  15:15:03', '', '', 'Activer'),
(3, 19, 'gonalgie', 'Tuberculose', 'Shigellose', '', '', 'kirat_mourad', '11-15-2021 à  15:19:18', '', '', 'Activer'),
(4, 13, 'infection', 'Charbon', 'Tuberculose', '', '', 'kirat_mourad', '11-15-2021 à  15:29:30', '', '', 'Activer'),
(5, 147, 'plaie', 'Shigellose', 'Amibiase', 'Cholera', 'Tularemie', 'kirat_mourad', '11-26-2021 à  12:05:09', '', '', 'Activer'),
(6, 2, 'infection', 'Cholera', 'Amibiase', '', '', 'kirat_mourad', '11-29-2021 à  15:36:14', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `ipp` int(11) NOT NULL,
  `Materiels` varchar(100) NOT NULL,
  `Nombre` int(50) NOT NULL,
  `Hospital` varchar(3) NOT NULL,
  `Nom_utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `ipp`, `Materiels`, `Nombre`, `Hospital`, `Nom_utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(1, 14785, 'croux', 4, '', 'kirat_mourad', '', 'kirat_mourad', '11-12-2021 à  14:34:40', 'Activer'),
(2, 13, '', 17, 'oui', 'kirat_mourad', '11-12-2021 à  11:13:25', 'kirat_mourad', '11-12-2021 à  12:36:14', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `materiel_utiliser`
--

CREATE TABLE `materiel_utiliser` (
  `id` int(11) NOT NULL,
  `Materiel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiel_utiliser`
--

INSERT INTO `materiel_utiliser` (`id`, `Materiel`) VALUES
(1, 'BROCHES DE KIRSCHNER 10/10'),
(2, 'BROCHES DE KIRSCHNER 12/10'),
(3, 'BROCHES DE KIRSCHNER 14/10'),
(4, 'BROCHES DE KIRSCHNER 16/10'),
(5, 'BROCHES DE KIRSCHNER 18/10'),
(6, 'BROCHES DE KIRSCHNER 20/10'),
(7, 'BROCHES DE KIRSCHNER 22/10'),
(8, 'BROCHES DE KIRSCHNER 25/10'),
(9, 'BROCHES DE KIRSCHNER 30/10'),
(10, 'PLAQUES VISSEES A COMPRESSION etroite  POUR JAMBE ET  HUMERUS de 6 à 14 TROUS.'),
(11, 'PLAQUES VISSEES A COMPRESSION POUR DIAPHYSE  FEMORALE de 10 à 16 TROUS.'),
(12, 'PLAQUE CLAVICULAIRE EN S DE 4 A 10 TROUS DROITE ET GAUCHE '),
(13, 'PLAQUES VISSEES POUR FRACTURES DE L AVANT-BRAS  speciale radius de 5 a 12 trous'),
(14, 'PLAQUES VISSEES POUR FRACTURES DE L AVANT-BRAS 1/3 de tube de 5 a 12 trous'),
(15, 'PLAQUE HUMERALE PROXIMALE DE 3 A 7 TROUS ANATOMIQUE DROITE ET GAUCHE '),
(16, 'PLAQUE DE LECESTRE DROITE ET GAUCHE  POUR FRACTURE DE LA PALETTE HUMÉRALE de 5 a 13 TROUS'),
(17, 'PLAQUE EN T POUR EXTRIMETE INFE DU RADIUS   droite ou oblique de 3a  8 TROUS POUR VIS 3.5 MM'),
(18, 'PLAQUE EN T POUR EXTRIMETE INFE DU RADIUS  OBLIQUE de 3a  8 TROUS POUR VIS 3.5 MM'),
(19, 'PLAQUE DE RECONSTRUCTION DU COTYLE COURBEES DE 6 À 12 TROUS VIS 4.5MM\r\n'),
(20, 'PLAQUE DE RECONSTRUCTION DU COTYLE droite  DE 6 À 12 TROUS VIS 4.5MM\r\n'),
(21, 'PLAQUE EN T POUR FRACTURE DU PLATEAU TIBIAL DE 3 à 14  TROUS POUR VIS 4.5 MM\r\n'),
(22, 'PLAQUE EN L POUR FRACTURE DU PLATEAU TIBIAL DE 3 a 14  TROUS POUR VIS 4.5 MM\r\n'),
(23, 'PLAQUE FEMORALE CONDYLIENNE (CUILLERE)DE 5 A 13 TROUS DROITE ET GAUCHE'),
(24, 'PLAQUE EN TREFLE POUR PILON TIBIAL POUR VIS 3.5MM DE 3 A 14 TROUS \r\n'),
(25, 'PLAQUE DISTALE DE LA FIBULA DE 3 A 8 TROUS '),
(26, 'PLAQUE CALCANIENNE petit moyen et grand modele '),
(27, 'PLAQUE VEROUILLEE DU RADIUS DISTAL A VEROULLAGE LCP DE 3 A 10 TROUS AVEC MISE  A DISPOSITION D UNE B'),
(28, 'Plaque a verrouillage LCP  Femorale diaphysaire de 10 a 16 trous'),
(29, 'PLAQUE A VEROUILLAGE LCP HUMERALE PROXIMALE ANATOMIQUE DROITE ET GAUCHE DE 5 A 10 TROUS'),
(30, 'Vis cannelees 4.0 mm long  de 20 a 60 mm de longueur'),
(31, ' Vis cannelees 6,5 mm avec un pas de vis 32 mm , de 40 a 110 mm de longueur'),
(32, ' Vis cannelees 6,5 mm avec un pas de vis 16 mm , de 40 a 110 mm de longueur'),
(33, 'VIS PLAQUE DHS 130°  DE 2 A 14 TROUS et vis cervicale de 60 a 110   mm  et vis de blocage (MISE A DI'),
(34, 'VIS PLAQUE DCS  DE 2A 14 TROUS et vis cervicale de 60 a 110   mm et vis de blocage (MISE A DISPOSION'),
(35, 'CLOU GAMMA COURT LONG 170 mm ET 240 mm  titanuim type PFNA avec possibilte de mettre une  Lame Hélic'),
(36, 'CLOU GAMMA long  titanuim type PFNA avec possibilte de mettre une  Lame Hélicoïdale ou vis cervicale'),
(37, 'VIS CORTICALES AUTOTARAUDEUSES 3.5MM L=16 À 38'),
(38, 'VIS CORTICALES AUTOTARAUDEUSES 4.5MM L=20 À 70'),
(39, 'VIS MALLÉOLAIRES 4.5 MM'),
(40, 'VIS SPONGIEUSES 6.5 MM Filetage 16 et 32 de 40 A 110 MM '),
(41, 'RONDELLES POUR VIS 3.5'),
(42, 'RONDELLES POUR VIS 4.5 ET6'),
(43, 'VIS CORTICALE VEROUILLEE DIAM 3,5 mm'),
(44, 'VIS CORTICALE VEROUILLEE DIAM 4 mm'),
(45, 'VIS CORTICALE VEROUILLEE DIAM 5 mm et 6,5 mm '),
(46, 'BROCHES DE MAITEZEAU EN TITANE DE 2/2.5/3/3.5 ET 4'),
(47, 'BOBINES DE FIL D\'ACIER STANDARD 16/10 18/1O ET 20/10'),
(48, 'MINI IMPLANTS POUR OSTEOSYNTHESES DES \r\nMETACARPIENS METATARSIENS ET PHALANGES droite ( DE 4 a 8 Tro'),
(49, 'MINI VIS CORTICALE DE 1.5 ,2 ET 2.7  BOITE DE POSE '),
(50, 'VIS DE HEBERT titanuim Diam 2.7 et 3 mm et long de 14 a 40 mm (boite de pose et jeu)'),
(51, 'CLOUS d humurs court   verrouille Diam 6, 7, 8 et 9 mm long 150 mm Vis de Verrouillage Diam 4 et 5 m'),
(52, 'CLOUS d humers standard verrouille Diam 7 ,8 et 9 mm et Long ; 200.220.240.260.280.et 300 mm  ,vis d'),
(53, 'CLOUS DE JAMBE verrouille Diam 9 et  10 et 11 mm long 280,300.320. 340.360.380 et 400 mm ,vis de Ver'),
(54, 'CLOUS FEMUR verrouille Diam 9 ,10 ,11 et 12 mm long. 340 360 380 400 420 et 440 mm  ,vis de Verrouil'),
(55, 'CLOUS DE STEINMAN'),
(56, 'ETRIER DE TRACTION TIBIAL ET FEMORAL'),
(57, 'FIXATEUR EXTERNE POUR MEMBRE INFE type HOFFMAN 2 ou equivalent (2 BARRES ,2 ROTULES ET 6 FICHES )\r\n'),
(58, 'FIXATEUR EXTERNE POUR MEMBRE SUP Type HOFFMAN 2 ou equivalent   (2 BARRES ,2 ROTULES ET 6 FICHES )\r\n'),
(59, 'FIXATEUR EXTERNE TYPE ORTHOFIX  MEMBRE INFÉ AVEC  4  FICHES \r\n'),
(60, 'agraffes de blount En U  en Chrome Cobalte mis a disposition d un  jeu complet '),
(61, 'agraffes de blount En U ligamentaire  En Chrome Cobalte  mis a disposition d un  jeu complet'),
(62, 'agraffes de blount En escalier  En Chrome Cobalte  mis a disposition d\'un  jeu complet '),
(63, 'agraffes de blount En U  en Inox  mis a disposition d un  jeu complet '),
(64, 'VIS D INTERFERENCE RESORBABLE livres en jeu longueurs 25 et 30 , tailles pour chaque longueure 7,8,9'),
(65, 'ENDOBOUTTON pour ligamentoplastie  livre en jeu de 20 - 25 & 30 mm '),
(66, 'HOUSSE DE CAMERA'),
(67, 'FRAISE OVALE DE SHAVER STERLING 4 MM ou mise a disposition d un generateur approprie jusqu a epuisem'),
(68, 'COUTEAU DE SHAVER CUDA STERLING 5,5MM-CONMED ou mise a disposition d un generateur approprie  jusqu '),
(69, 'COUTEAU DE SHAVER CUDA STERLING 4,2MM -CONMED ou mise a disposition d un generateur approprie  jusqu'),
(70, 'COUTEAU DE SHEVER GREAT WHITE 4,2 MM-CONMED ou mise a disposition d un generateur approprie  jusqu a'),
(71, 'BISTOURI ELECTRIQUE POUR ARTHROSCOPIE AVEC mise a disposition d un generateur approprie  jusqu a epu'),
(72, 'TUBULURE D IRRIGATION ASPIRATION CONMED  ou mise a disposition d un generateur approprie jusqu a epu'),
(73, 'SUTURE MENISCALE TYPE \"meniscal cinch  \" ou  SIMILAIRE'),
(74, 'Ancre de  fixation titanuim 2.8 et 3.5'),
(75, 'agrafe ligamentaire(pour fixation tibial du LCA) '),
(76, 'Ancre de Fixation Resorbable 4.5 et 5.5 mm'),
(77, 'ciment chirurgical GENTA '),
(78, 'VIS D INTERFERENCE RESORBABLE livres en jeu longueurs 25 et 30 , tailles pour chaque longueure 7,8,9'),
(79, 'ENDOBOUTTON pour ligamentoplastie  livre en jeu de 20 - 25 & 30 mm '),
(80, 'HOUSSE DE CAMERA'),
(81, 'FRAISE OVALE DE SHAVER STERLING 4 MM ou mise a disposition d\'un generateur approprie jusqu a epuisem'),
(82, 'COUTEAU DE SHAVER CUDA STERLING 5,5MM-CONMED ou mise a disposition d un generateur approprie  jusqu '),
(83, 'COUTEAU DE SHAVER CUDA STERLING 4,2MM -CONMED ou mise a disposition d un generateur approprie  jusqu'),
(84, 'COUTEAU DE SHEVER GREAT WHITE 4,2 MM-CONMED ou mise a disposition d un generateur approprie  jusqu a'),
(85, 'TUBULURE D IRRIGATION ASPIRATION CONMED  ou mise a disposition d un generateur approprie jusqu a epu'),
(86, 'SUTURE MENISCALE TYPE \"meniscal cinch  \" ou  SIMILAIRE'),
(87, 'Ancre de  fixation titanuim 2.8 et 3.5'),
(88, 'agrafe ligamentaire(pour fixation tibial du LCA) '),
(89, 'Ancre de Fixation Resorbable 4.5 et 5.5 mm'),
(90, 'ciment chirurgical GENTA '),
(91, 'Tige femorale droite revetement integrale HAP '),
(92, 'Tete femorale  en  acier inoxydable 22.2( col court moyen et long )ou 28 mm(col court ,moyen ;long e'),
(93, 'Cotyle sans ciment visse avec press fite equatorial et revetement HAP'),
(94, '1 Insert en polyethylene  renforce (polyethylene croise pour une durée de vie plus longue) diametre '),
(95, '3 VIS autotaraudeuses'),
(96, 'Tige femorale droite entierement poli-miroir cone '),
(97, 'cupule avec surface externe  poli-miroir en acier inoxydable, retention assuree par une bague se ver'),
(98, 'cotyle a double mobilite non cimente symetrique avec rebord permutant de reduire les risques de luxa'),
(99, 'Insert en polyethylene retentifs pour cotyle double mobilite pouvant recevoir des tetes 22.2 mm et 2'),
(100, 'Tige femorale droite entierement poli-miroir '),
(101, 'Condyle fémorale anatomique  de 7 Tailles'),
(102, 'insert mobile  de 7 taille et  5 épaisseurs: 10, 12, 14, 16 et 20 mm'),
(103, 'Embase tibiale  de 7 Taille'),
(104, 'Condyle femorale anatomique  de 7 Tailles'),
(105, 'insert mobile  de 7 taille et  5 epaisseurs: 10, 12, 14, 16 et 20 mm'),
(106, 'Embase tibiale  de 7 Taille'),
(107, '1 MEDAILLON ROTULIEN en version resurfaçage ou encastrée '),
(108, 'Fond de cotyle type kerboule droite et gauche taille   44,48,52,56,60 et 64 '),
(109, 'cotyle a double mobilite de reconstruction avec Insert retentifs pour cotyle double mobilite pouvant'),
(110, 'VIS D INTERFERENCE RESORBABLE livres en jeu longueurs 23 et 28 , tailles pour chaque longueure 7,8,9');

-- --------------------------------------------------------

--
-- Structure de la table `motif_hospitalisation`
--

CREATE TABLE `motif_hospitalisation` (
  `id` int(11) NOT NULL,
  `Description` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `motif_hospitalisation`
--

INSERT INTO `motif_hospitalisation` (`id`, `Description`) VALUES
(1, 'douleur aigue'),
(2, 'plaie'),
(3, 'infection'),
(4, 'impotence fonctionnelle post traumatique'),
(5, 'impotence fonctionnelle non traumatique'),
(6, 'gonalgie'),
(7, 'douleur de la hanche'),
(8, 'douleur de l\'epaule'),
(9, 'metetarsalgie'),
(10, 'douleur de la cheville'),
(11, 'douleur du poignet'),
(12, 'douleur du coude'),
(13, 'raideur articulaire'),
(14, 'instabilite articulaire'),
(15, 'maladies neurologiques');

-- --------------------------------------------------------

--
-- Structure de la table `ordonance`
--

CREATE TABLE `ordonance` (
  `id` int(11) NOT NULL,
  `ipp` int(50) NOT NULL,
  `AINS` varchar(20) NOT NULL,
  `Antalgique` varchar(20) NOT NULL,
  `Antibiotique` varchar(20) NOT NULL,
  `Anticoagulant` varchar(20) NOT NULL,
  `Antiarthrosique` varchar(20) NOT NULL,
  `Acide_hyaluronique` varchar(20) NOT NULL,
  `Nom_Utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ordonance`
--

INSERT INTO `ordonance` (`id`, `ipp`, `AINS`, `Antalgique`, `Antibiotique`, `Anticoagulant`, `Antiarthrosique`, `Acide_hyaluronique`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(1, 12, 'arcoxia60mg', 'codoliprane', 'pronation abduction', 'xarelto', 'piascledine', 'arthrovial', '', '', 'kirat_mourad', '11-11-2021 à  13:18:13', 'Desactiver'),
(2, 14785, 'voltarene 75', 'codoliprane', 'fucidine 250', 'xarelto', 'piascledine', 'hyalgan', 'kirat_mourad', '11-11-2021 à  10:48:50', 'kirat_mourad', '11-12-2021 à  14:34:40', 'Activer'),
(3, 12, 'voltfast', '', '', '', '', '', 'kirat_mourad', '11-30-2021 à  11:44:37', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `IPP` int(50) NOT NULL,
  `Nom_Prenom` varchar(30) NOT NULL,
  `Date_Naissance` varchar(11) NOT NULL,
  `Sexe` varchar(1) NOT NULL,
  `Cin` varchar(10) NOT NULL,
  `Ville` varchar(20) NOT NULL,
  `Adresse` varchar(60) NOT NULL,
  `Telephone_Protable` varchar(20) NOT NULL,
  `Telephone_Domicile` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Couverture_Sociale` varchar(10) NOT NULL,
  `Nom_Dossier` varchar(20) NOT NULL,
  `Nom_Utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat_Dossier` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `IPP`, `Nom_Prenom`, `Date_Naissance`, `Sexe`, `Cin`, `Ville`, `Adresse`, `Telephone_Protable`, `Telephone_Domicile`, `Email`, `Couverture_Sociale`, `Nom_Dossier`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat_Dossier`) VALUES
(21, 14785, 'KCKF Kirat58', '2021-11-10', 'M', 'FA155769', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '', 'mourad.kirat.9@gmail.com', 'AMO', 'KCKFKirat582021', 'kirat_mourad', '11-08-2021 à  14:59:57', 'kirat_mourad', '11-12-2021 à  14:34:40', 'Activer'),
(22, 12, 'OMAR Kirat', '1999-11-10', 'M', 'FA444444', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '06 00 58 54 56', 'mourad-marine-e50@outlook.fr', 'ANAM', 'OMARKirat1999', 'kirat_mourad', '11-08-2021 à  15:29:35', 'kirat_mourad', '11-11-2021 à  15:28:50', 'Activer'),
(23, 1564, 'AHMEDI Salama', '2000-12-18', 'F', 'F555575', 'NADOR', '02 RUE ZAWDI,HAY GORGOR,NADOR', '06 11 58 53 56', '', 'ahmedisalma@gamail.com', 'ANAPEC', 'AHMEDISalama2000', 'kirat_mourad', '11-09-2021 à  10:24:42', 'kirat_mourad', '11-09-2021 à  10:34:36', 'Desactiver'),
(24, 85, 'AHMED Kiy', '2018-11-26', 'M', 'FA155769', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '', '', 'ANAPEC', 'AHMEDKiy2018', 'kirat_mourad', '11-10-2021 à  12:05:27', '', '', 'Activer'),
(25, 55, 'ORTIKLI Zahooui', '2010-11-25', 'F', 'FA155789', 'NADOR', '20 RUE PLASOTATINE , NADOR', '06 00 58 54 58', '', 'kir@hh.com', 'FMI', 'ORTIKLIZahooui2010', 'kirat_mourad', '11-26-2021 à  11:40:16', '', '', 'Activer'),
(26, 1254, 'KCKFLFLF Kdj gkg', '1933-10-10', 'M', 'F1111111', 'AHFIR', '210 RUE PLASTINE ', '06 22 55 88 77', '', '', 'CMB', 'KCKFLFLFKdj gkg1933', 'kirat_mourad', '11-26-2021 à  11:51:28', '', '', 'Activer'),
(27, 147, 'GEGEGFU Fhfhvt ', '2020-10-19', 'M', 'FA155789', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 77', '06 00 58 54 25', 'a.dejours@email.com', 'CMB', 'GEGEGFUFhfhvt 2020', 'kirat_mourad', '11-26-2021 à  12:04:40', '', '', 'Activer'),
(28, 236, 'AHDJ  Cfhfhjhf', '2009-12-08', 'M', 'S4155', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '', '', 'sans', 'AHDJ Cfhfhjhf2009', 'kirat_mourad', '11-29-2021 à  15:08:38', '', '', 'Activer'),
(29, 754, 'KONH Kirtey', '1989-11-11', 'M', 'F4266', 'N!AFKF', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '', '', 'sans', 'KONHKirtey1989', 'kirat_mourad', '11-29-2021 à  15:30:54', '', '', 'Activer'),
(30, 2, 'A B', '1111-11-11', 'M', 'F756666', 'BERKANE', '210 RUE PLASTINE , BERKANE', '06 00 58 54 56', '', '', 'sans', 'AB1111', 'kirat_mourad', '11-29-2021 à  15:35:56', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `id` int(11) NOT NULL,
  `ipp` int(11) NOT NULL,
  `motif` varchar(50) NOT NULL,
  `traitement1` varchar(30) NOT NULL,
  `traitement2` varchar(30) NOT NULL,
  `traitement3` varchar(30) NOT NULL,
  `traitement4` varchar(30) NOT NULL,
  `traitement5` varchar(30) NOT NULL,
  `Nom_utilisateur_Cree` varchar(30) NOT NULL,
  `Date_Creation` varchar(25) NOT NULL,
  `Nom_Utilisateur_Modifier` varchar(30) NOT NULL,
  `Date_Modification` varchar(25) NOT NULL,
  `Etat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id`, `ipp`, `motif`, `traitement1`, `traitement2`, `traitement3`, `traitement4`, `traitement5`, `Nom_utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`, `Etat`) VALUES
(1, 12, 'infection', 'ADO', 'antihpertensseur', 'antiagregant plaquetaire', '', '', 'kirat_mourad', '11-15-2021 à  15:15:13', '', '', 'Activer'),
(2, 19, 'gonalgie', 'antidepresseur', '', '', '', '', 'kirat_mourad', '11-15-2021 à  15:19:23', '', '', 'Activer'),
(3, 48, 'impotence fonctionnelle post traumatique', 'corticoide', '', '', '', '', 'kirat_mourad', '11-15-2021 à  15:23:15', '', '', 'Activer'),
(4, 1458, 'infection', 'antihpertensseur', '', '', 'corticoide', '', 'kirat_mourad', '11-15-2021 à  15:24:40', '', '', 'Activer'),
(5, 1269, 'douleur de la hanche', 'hypocholesterolemiant', '', '', 'hypocholesterolemiant', '', 'kirat_mourad', '11-15-2021 à  15:26:49', '', '', 'Activer'),
(6, 753, 'douleur aigue', '', 'antihpertensseur', '', '', '', 'kirat_mourad', '11-15-2021 à  15:28:20', '', '', 'Activer'),
(7, 14785, 'infection', 'antihpertensseur', 'heparine', 'hypocholesterolemiant', 'obesite', 'ADO', 'kirat_mourad', '11-15-2021 à  15:29:35', 'kirat_mourad', '11-17-2021 à  12:11:24', 'Activer'),
(8, 55, 'plaie', 'insuline', 'corticoide', 'anticoagulant', '', '', 'kirat_mourad', '11-26-2021 à  11:41:03', '', '', 'Activer'),
(9, 1254, 'douleur de la hanche', 'heparine', 'insuline', 'corticoide', '', '', 'kirat_mourad', '11-26-2021 à  11:51:56', '', '', 'Activer'),
(10, 147, 'plaie', 'insuline', '', '', '', '', 'kirat_mourad', '11-26-2021 à  12:05:15', '', '', 'Activer'),
(11, 754, 'impotence fonctionnelle non traumatique', 'ADO', '', '', 'insuline', '', 'kirat_mourad', '11-29-2021 à  15:31:12', '', '', 'Activer'),
(12, 2, 'infection', 'insuline', 'hypocholesterolemiant', 'antidepresseur', '', '', 'kirat_mourad', '11-29-2021 à  15:36:33', '', '', 'Activer');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `Nom_Prenom` varchar(40) NOT NULL,
  `Nom_utilisateur` varchar(30) NOT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Mot_Passe` varchar(30) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Activer_Desactiver` varchar(15) NOT NULL,
  `Date_Creation` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `Nom_Prenom`, `Nom_utilisateur`, `Email`, `Mot_Passe`, `Role`, `Activer_Desactiver`, `Date_Creation`) VALUES
(1, 'Kirat Mourad', 'kirat_mourad', 'mourad.kirat.9@gmail.com', '102057479', 'Administrateur', 'Activer', NULL),
(3, 'kong  Kong', 'kong_kong', 'kir@hh.com', '3297821', 'ANAPTH', 'Activer', NULL),
(5, 'fjjgjghj', 'kkk', 'jj@gmail.com', '101187115', 'BAF PSYCHIATRIE', 'Activer', NULL),
(6, 'ahmed', 'ahmed', 'ah@gmail.com', '92787781', 'BAF SPECIALITE', 'Activer', '11-30-2021 à  11:55:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnostic`
--
ALTER TABLE `diagnostic`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `liste_des_services`
--
ALTER TABLE `liste_des_services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `liste_maladies`
--
ALTER TABLE `liste_maladies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `liste_traitement`
--
ALTER TABLE `liste_traitement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maladie`
--
ALTER TABLE `maladie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materiel_utiliser`
--
ALTER TABLE `materiel_utiliser`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motif_hospitalisation`
--
ALTER TABLE `motif_hospitalisation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordonance`
--
ALTER TABLE `ordonance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classification`
--
ALTER TABLE `classification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `diagnostic`
--
ALTER TABLE `diagnostic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT pour la table `liste_des_services`
--
ALTER TABLE `liste_des_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `liste_maladies`
--
ALTER TABLE `liste_maladies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `liste_traitement`
--
ALTER TABLE `liste_traitement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `maladie`
--
ALTER TABLE `maladie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `materiel_utiliser`
--
ALTER TABLE `materiel_utiliser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `motif_hospitalisation`
--
ALTER TABLE `motif_hospitalisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ordonance`
--
ALTER TABLE `ordonance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `traitement`
--
ALTER TABLE `traitement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
