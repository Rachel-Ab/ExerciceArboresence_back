# ************************************************************
# Sequel Ace SQL dump
# Version 3028
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.23)
# Database: test
# Generation Time: 2021-04-26 09:22:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `child` (`parentId`),
  CONSTRAINT `child` FOREIGN KEY (`parentId`) REFERENCES `parent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;

INSERT INTO `location` (`id`, `label`, `parentId`)
VALUES
	(1,'Nantes',NULL),
	(2,'Lombarderie / Batiment 31',1),
	(3,'EE23',2),
	(4,'Armoire',3),
	(5,'BAG',3),
	(6,'Dessicateur',3),
	(7,'EE24',2),
	(8,'Armoire',7),
	(9,'BAG',7),
	(10,'EE25',2),
	(11,'Armoire',10),
	(12,'BAG',10),
	(13,'EE26',2),
	(14,'Placard',13),
	(15,'EE36',2),
	(16,'Armoire 1',15),
	(17,'Armoire 2',15),
	(18,'Armoire 3',15),
	(19,'Armoire 4',15),
	(20,'PCM',2),
	(21,'Armoire',20),
	(22,'RCE69',2),
	(23,'BAG1',22),
	(24,'BAG2',22),
	(25,'BAG3',22),
	(26,'RCE70',2),
	(27,'Armoire Droite',26),
	(28,'Armoire Gauche',26),
	(29,'RCE72',2),
	(30,'Armoire',29),
	(31,'Armoire Solvant',29),
	(32,'Dessicateur/BAG',29),
	(33,'RCO32',2),
	(34,'Armoire',33),
	(35,'BAG',33),
	(36,'Frigo',33),
	(37,'Placard (non ventilé)',33),
	(38,'RJE29 : sulfu',2),
	(39,'Armoire Droite',38),
	(40,'Armoire Gauche',38),
	(41,'RJE30',2),
	(42,'Placard',41),
	(43,'RJE34',2),
	(44,'Armoire',43),
	(45,'BAG',43),
	(46,'RJE39-40',2),
	(47,'Armoire 1',46),
	(48,'Armoire 2',46),
	(49,'Dessicateur',46),
	(50,'Placard',46),
	(51,'RJE40Bis',2),
	(52,'Armoire 1',51),
	(53,'Armoire 2',51),
	(54,'Armoire 3',51),
	(55,'RJE49',2),
	(56,'Frigo 1',55),
	(57,'Frigo 2',55),
	(58,'RJO15',2),
	(59,'Armoire',58),
	(60,'RJO17-18',2),
	(61,'Armoire',60),
	(62,'Rennes',NULL),
	(63,'4',62),
	(64,'211',63),
	(65,'congélateur',64),
	(66,'étagère',64),
	(67,'frigo',64),
	(68,'318',63),
	(69,'-80°C',68),
	(70,'335/1',63),
	(71,'armoire solvant sous sorbonne',70),
	(72,'armoire ventilée CMR bas',70),
	(73,'armoire ventilée CMR haut',70),
	(74,'armoire ventilée Corrosifs',70),
	(75,'armoire ventilée solvant',70),
	(76,'étagère',70),
	(77,'340',63),
	(78,'congélateur',77),
	(79,'étagère',77),
	(80,'frigo',77),
	(81,'placard',77),
	(82,'344',63),
	(83,'Magasin',82),
	(84,'Roscoff',NULL),
	(85,'IGM',84),
	(86,'RDC',85),
	(87,'Laber',84),
	(88,'RDC',87),
	(89,'YD-GT',84),
	(90,'123',89),
	(91,'Armoire poisons',90),
	(92,'129',89),
	(93,'Armoire 1 E1',92),
	(94,'Armoire 1 E2',92),
	(95,'Armoire 1 E3',92),
	(96,'Armoire 1 E4',92),
	(97,'Armoire 1 E5',92),
	(98,'Armoire 1 E6',92),
	(99,'Armoire 2 E10',92),
	(100,'Armoire 2 E11',92),
	(101,'Armoire 2 E12',92),
	(102,'Armoire 2 E8',92),
	(103,'Armoire 2 E9',92),
	(104,'132',89),
	(105,'Congelateur Boite 1',104),
	(106,'204',89),
	(107,'Congelateur Boite 2',106),
	(108,'206',89),
	(109,'Congelateur Boite 3',108),
	(110,'207',89),
	(111,'Congelateur Boite 4',110),
	(112,'209',89),
	(113,'Congelateur Boite 5',112),
	(114,'210',89),
	(115,'Congelateur Boite 6',114),
	(116,'217',89),
	(117,'Congelateur Boite 7',116),
	(118,'223',89),
	(119,'Congelateur Boite 8',118),
	(120,'Université de Rennes',NULL),
	(121,'11C',120),
	(122,'RDC/030',121),
	(123,'Armoire chimique',122),
	(124,'Hotte',122),
	(125,'RDC/031',121),
	(126,'Réfrigérateur',125),
	(127,'11E',120),
	(128,'RDC BAS/902',127),
	(129,'Armoire chimique',128),
	(130,'Congélateur -20°C',128),
	(131,'Congélateur -80°C',128),
	(132,'Réfrigérateur',128),
	(133,'RDC HAUT/002',127),
	(134,'RDC HAUT/010',127);

/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table parent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `parent`;

CREATE TABLE `parent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;

INSERT INTO `parent` (`id`, `title`)
VALUES
	(1,'Nantes'),
	(2,'Lombarderie / Batiment 31'),
	(3,'EE23'),
	(4,'Armoire'),
	(5,'BAG'),
	(6,'Dessicateur'),
	(7,'EE24'),
	(8,'Armoire'),
	(9,'BAG'),
	(10,'EE25'),
	(11,'Armoire'),
	(12,'BAG'),
	(13,'EE26'),
	(14,'Placard'),
	(15,'EE36'),
	(16,'Armoire 1'),
	(17,'Armoire 2'),
	(18,'Armoire 3'),
	(19,'Armoire 4'),
	(20,'PCM'),
	(21,'Armoire'),
	(22,'RCE69'),
	(23,'BAG1'),
	(24,'BAG2'),
	(25,'BAG3'),
	(26,'RCE70'),
	(27,'Armoire Droite'),
	(28,'Armoire Gauche'),
	(29,'RCE72'),
	(30,'Armoire'),
	(31,'Armoire Solvant'),
	(32,'Dessicateur/BAG'),
	(33,'RCO32'),
	(34,'Armoire'),
	(35,'BAG'),
	(36,'Frigo'),
	(37,'Placard (non ventilé)'),
	(38,'RJE29 : sulfu'),
	(39,'Armoire Droite'),
	(40,'Armoire Gauche'),
	(41,'RJE30'),
	(42,'Placard'),
	(43,'RJE34'),
	(44,'Armoire'),
	(45,'BAG'),
	(46,'RJE39-40'),
	(47,'Armoire 1'),
	(48,'Armoire 2'),
	(49,'Dessicateur'),
	(50,'Placard'),
	(51,'RJE40Bis'),
	(52,'Armoire 1'),
	(53,'Armoire 2'),
	(54,'Armoire 3'),
	(55,'RJE49'),
	(56,'Frigo 1'),
	(57,'Frigo 2'),
	(58,'RJO15'),
	(59,'Armoire'),
	(60,'RJO17-18'),
	(61,'Armoire'),
	(62,'Rennes'),
	(63,'4'),
	(64,'211'),
	(65,'congélateur'),
	(66,'étagère'),
	(67,'frigo'),
	(68,'318'),
	(69,'-80°C'),
	(70,'335/1'),
	(71,'armoire solvant sous sorbonne'),
	(72,'armoire ventilée CMR bas'),
	(73,'armoire ventilée CMR haut'),
	(74,'armoire ventilée Corrosifs'),
	(75,'armoire ventilée solvant'),
	(76,'étagère'),
	(77,'340'),
	(78,'congélateur'),
	(79,'étagère'),
	(80,'frigo'),
	(81,'placard'),
	(82,'344'),
	(83,'Magasin'),
	(84,'Roscoff'),
	(85,'IGM'),
	(86,'RDC'),
	(87,'Laber'),
	(88,'RDC'),
	(89,'YD-GT'),
	(90,'123'),
	(91,'Armoire poisons'),
	(92,'129'),
	(93,'Armoire 1 E1'),
	(94,'Armoire 1 E2'),
	(95,'Armoire 1 E3'),
	(96,'Armoire 1 E4'),
	(97,'Armoire 1 E5'),
	(98,'Armoire 1 E6'),
	(99,'Armoire 2 E10'),
	(100,'Armoire 2 E11'),
	(101,'Armoire 2 E12'),
	(102,'Armoire 2 E8'),
	(103,'Armoire 2 E9'),
	(104,'132'),
	(105,'Congelateur Boite 1'),
	(106,'204'),
	(107,'Congelateur Boite 2'),
	(108,'206'),
	(109,'Congelateur Boite 3'),
	(110,'207'),
	(111,'Congelateur Boite 4'),
	(112,'209'),
	(113,'Congelateur Boite 5'),
	(114,'210'),
	(115,'Congelateur Boite 6'),
	(116,'217'),
	(117,'Congelateur Boite 7'),
	(118,'223'),
	(119,'Congelateur Boite 8'),
	(120,'Université de Rennes'),
	(121,'11C'),
	(122,'RDC/030'),
	(123,'Armoire chimique'),
	(124,'Hotte'),
	(125,'RDC/031'),
	(126,'Réfrigérateur'),
	(127,'11E'),
	(128,'RDC BAS/902'),
	(129,'Armoire chimique'),
	(130,'Congélateur -20°C'),
	(131,'Congélateur -80°C'),
	(132,'Réfrigérateur'),
	(133,'RDC HAUT/002'),
	(134,'RDC HAUT/010');

/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
