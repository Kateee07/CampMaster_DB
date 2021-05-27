-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: camp
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `badge_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`badge_id`),
  UNIQUE KEY `badge_id_UNIQUE` (`badge_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
INSERT INTO `badges` VALUES (1,'Tropiciel','Udział w podchodach w terenie pozamiejskim'),(2,'Nocny Tropiciel','Udział w podchodach w terenie pozamiejskim w godzinach nocnych'),(3,'Nawigator','Umiejętność orientacji w terenie za pomocą mapy i kompasu'),(4,'Nocny Nawigator','Umiejętność orientacji w terenie za pomocą mapy i kompasu w warunkach nocnych'),(5,'Sanitariusz','Umiejętność udzielania pierwszej pomocy'),(6,'Czarne stopy','Udane przeprowadzenie nocą dywersji w obozie przeciwnej drużyny'),(7,'Robin Hood','Kurs łucznictwa'),(8,'Kałasznikow','Kurs strzelectwa sportowego'),(9,'Pirania','Kurs pływania w naturalnych śródlądowych akwenach wodnych'),(10,'Rekin','Kurs pływania w warunkach morskich'),(11,'Żeglarz śródlądowy','Kurs żeglarstwa w akwenach śródlądowych'),(12,'Żeglarz morski','Kurs żeglarstwa w akwenach morskich'),(13,'Sternik morski','Ponad 1000 godzin jako kapitan jachtu morskiego'),(14,'Sternik śródlądowy','Ponad 500 godzin jako kapitan jachtu na wodach śródlądowych'),(15,'Motorwodniak','Kurs pływania łodziami o napędzie motorowym'),(16,'Sternik Motorwodniak','Ponad 500 godzin jako kapitan łodzi o napędzie motorowym'),(17,'Pająk','Kurs wspinaczki skałkowej'),(18,'Szalony Pająk','Kurs wspinaczki górskiej - taternicki'),(19,'Nie Byle Jak','Kurs turystyki wysokogórskiej'),(20,'Biały Jak','Kurs zimowej turystyki wysokogórskiej'),(21,'Zefir','Bóg wiatru - Za miesce na podium w regatach kończących obóz żeglarski');
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int NOT NULL,
  `age_range` tinyint NOT NULL,
  `categories_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `size` int NOT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_id_UNIQUE` (`group_id`),
  KEY `fk_groups_locations_idx` (`location_id`),
  KEY `fk_groups_categories_idx` (`categories_id`),
  CONSTRAINT `fk_groups_categories` FOREIGN KEY (`categories_id`) REFERENCES `groups_categories` (`category_id`),
  CONSTRAINT `fk_groups_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Żeglarskie Giżycko J',1,0,1,'2021-06-26','2021-07-10',16),(2,'Żeglarskie Giżycko',1,1,1,'2021-06-26','2021-07-10',16),(3,'Leśne Duchy J',8,0,2,'2021-06-26','2021-07-10',30),(4,'Leśne Duchy J',8,0,2,'2021-07-10','2021-07-24',30),(5,'Leśne Duchy',8,1,2,'2021-06-26','2021-07-10',30),(6,'Leśne Duchy',8,1,2,'2021-07-10','2021-07-24',30),(7,'Skały Kroczyckie',11,1,6,'2021-05-01','2021-05-08',4),(8,'Skały Kroczyckie',11,1,6,'2021-06-26','2021-07-03',8),(9,'Skały Kroczyckie',11,1,6,'2021-07-03','2021-07-10',8),(10,'Skały Kroczyckie',11,1,6,'2021-07-10','2021-07-17',8),(11,'Skały Kroczyckie',11,1,6,'2021-07-17','2021-07-24',8),(12,'Skały Kroczyckie',11,1,6,'2021-07-17','2021-07-24',8),(13,'Żeglarskie Giżycko J',1,0,1,'2021-07-10','2021-07-24',16),(14,'Żeglarskie Giżycko',1,1,1,'2021-07-10','2021-07-24',16);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_categories`
--

DROP TABLE IF EXISTS `groups_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_categories`
--

LOCK TABLES `groups_categories` WRITE;
/*!40000 ALTER TABLE `groups_categories` DISABLE KEYS */;
INSERT INTO `groups_categories` VALUES (1,'Obóz Żeglarski','Obóz żeglarski z możliwością zdania patentu żeglarskiego lub kontynuacji szkolenia na sternika'),(2,'Obóz Namiotowy','Wyjazd młodzieżowy z zakładaniem obozu namiotowego i elementami harcerstwa'),(3,'Obóz Młodzieżowy','Wyjazd młodzieżowy z grami towarzyskimi, zwiedzaniem okolicy i zajęciami sportowymi'),(4,'Obóz górski','Wyjazd młodzieżowy z turystyką górską i grami towarzyskimi'),(5,'Szkolenie wysokogórskie','Wyjazd dla starszej młodzieży ze szkoleniem teoretycznym i praktycznym z zasad bezpiecznej turystyki wysokogórskiej'),(6,'Kurs wspinaczkowy','Wyjazd dla starszej młodzieży z możliwością ukończenia kursu wspinaczki skałkowej'),(7,'Kurs taternicki','Wyjazd dla starszej młodzieży z możliwością ukończenia kursu taternickiego'),(8,'Obóz piłkarski','Obóz sportowy dla młodzieży z naciskiem na trening piłki nożnej'),(9,'Obóz siatkarski','Obóz sportowy dla młodzieży z naciskiem na trening piłki siatkowej'),(10,'Obóz koszykarski','Obóz sportowy dla młodzieży z naciskiem na trening piłki koszykowej'),(11,'Obóz szczypiornicki','Obóz sportowy dla młodzieży z naciskiem na trening piłki ręcznej'),(12,'Snow Camp','Obóz sportowy dla młodzieży z nauką i doszkalaniem jazdy na snowboardzie lub nartach'),(13,'Skwarki','Obóz młodzieżowy z plażowaniem, grami towarzyskimi, zwiedzaniem okolicy i zajęciami sportowymi');
/*!40000 ALTER TABLE `groups_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_persons`
--

DROP TABLE IF EXISTS `groups_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_persons` (
  `group_id` int NOT NULL,
  `person_id` int DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `pair_date` date NOT NULL,
  KEY `fk_gp_persons_idx` (`person_id`),
  KEY `fk_gp_offers_idx` (`offer_id`),
  CONSTRAINT `fk_gp_groups` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  CONSTRAINT `fk_gp_offers` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`),
  CONSTRAINT `fk_gp_persons` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_persons`
--

LOCK TABLES `groups_persons` WRITE;
/*!40000 ALTER TABLE `groups_persons` DISABLE KEYS */;
INSERT INTO `groups_persons` VALUES (1,5,NULL,'2021-04-30'),(1,17,1,'2021-04-30'),(2,4,NULL,'2021-04-30'),(2,5,NULL,'2021-04-30'),(2,16,2,'2021-04-30'),(7,3,NULL,'2021-04-30'),(13,5,NULL,'2021-04-30'),(14,4,NULL,'2021-04-30'),(14,5,NULL,'2021-04-30');
/*!40000 ALTER TABLE `groups_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Zatoka u Cześka','Giżycko','11-500'),(2,'COS OPO Cetniewo','Władysławowo','84-120'),(3,'Camping Chałupy 3','Władysławowo','84-120'),(4,'Powidzki Ośrodek Sportu i Rekreacji Sp.z o.o.','Powidz','62-430'),(5,'Pole Namiotowe Ślesin','Półwiostek Stary','62-561'),(6,'COS OPO Zakopane','Zakopane','34-500'),(7,'Camping nr 97 Pod Krokwią','Zakopane','34-500'),(8,'Camping Leśne Duchy','Zwierzyniec','22-470'),(9,'Stanica Wodna Swoboda PTTK Pole Namiotowe','Augustów','16-300'),(10,'OSIR Polanica-Zdrój','Polanica-Zdrój','57-320'),(11,'Agroturystyka Lidia Kulak','Kroczyce','42-425');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `offer_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `price` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`offer_id`),
  UNIQUE KEY `offer_id_UNIQUE` (`offer_id`),
  KEY `fk_offers_groups_idx` (`group_id`),
  CONSTRAINT `fk_offers_groups` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1,1,3500,1),(2,2,4000,1),(3,3,2500,1),(4,4,2500,1),(5,5,3000,1),(6,6,3000,1),(7,8,1500,1);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_badges`
--

DROP TABLE IF EXISTS `person_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_badges` (
  `badge_id` int NOT NULL,
  `person_id` int NOT NULL,
  `acquired` date NOT NULL,
  KEY `fk_badges_persons_idx` (`person_id`),
  KEY `fk_pb_badges_idx` (`badge_id`),
  CONSTRAINT `fk_pb_badges` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`badge_id`),
  CONSTRAINT `fk_pb_persons` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_badges`
--

LOCK TABLES `person_badges` WRITE;
/*!40000 ALTER TABLE `person_badges` DISABLE KEYS */;
INSERT INTO `person_badges` VALUES (9,3,'2010-11-21'),(10,4,'2010-11-20'),(1,4,'2010-11-17'),(1,3,'2010-11-25'),(1,16,'2020-10-01'),(6,16,'2020-10-05'),(7,17,'2020-10-01'),(8,17,'2020-10-02');
/*!40000 ALTER TABLE `person_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `role_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `privilege_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `person_id_UNIQUE` (`person_id`),
  KEY `fk_person_role_idx` (`role_id`),
  KEY `fk_person_parent_idx` (`parent_id`),
  CONSTRAINT `fk_person_parent` FOREIGN KEY (`parent_id`) REFERENCES `persons` (`person_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_person_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Pan','Tik-Tak','tiktak@campmaster.pl','jajestempantiktak','1960-06-29',1,NULL,'+48666123666',1),(2,'Robert','Lewandowski','robert@lewandowski.de','JESTEM mistrzem','1988-08-21',5,NULL,'+43464888464',2),(3,'Tomasz','Szpor','szport@szport.pl','wRozkroku','1980-06-15',12,NULL,'+48883325750',2),(4,'Mateusz','Kusznierewicz','maku@pzwzegl.pl','FlautA','1975-04-29',4,NULL,'+48545777865',2),(5,'Joanna','Burzyńska','bujo@pzwzegl.pl','fOkGroT','1968-07-26',3,NULL,'+48601602603',2),(6,'Tata','Kazika','tatakazika@kult.pl','BIEZYbaranek','1980-12-31',15,NULL,'+48501501501',3),(7,'Mia','Mamma','mammamia@abba.com','hereIgoAGAIN','1988-01-06',15,NULL,'+48123456789',3),(8,'Kazik','Staszewski','kazikstasz@kult.pl','GDYnieMAdzieci','2010-05-05',16,6,'+48123456789',4),(9,'Puszek','Okruszek','puszokrusz@kuku.ls','KOPNEgoWbrzuszek','2011-04-01',16,14,'+48987654321',4),(10,'Zuzia','Nieduża','lalka@nadodatek.pl','CalaJestZLatek','2010-11-01',16,7,'+48456123789',4),(11,'Ala','Makota','alko@ato.pl','KotMAale','2005-07-08',16,6,'+48951627843',4),(12,'Wojtek','Spopielnik','mruga@iskiereczka.pl','BAJKAbedzieDLUGA','2005-03-13',16,14,'+48326159487',4),(13,'Tsubasa','Ozora','kapitan@jastrzab.pl','HaWk','2006-10-19',16,7,'+48748159263',4),(14,'Mama','Muminka','mamamu@moomin.dk','tataMuminka','1990-02-24',15,NULL,'+48748159263',3),(15,'Tata','Muminka','tatamu@moomin.dk','mamaMuminka','1984-05-28',15,NULL,'+48547896321',3),(16,'Muminek','Muminka','mumin@moomin.dk','Migotka','2007-06-29',16,15,'+48789523651',4),(17,'Mi','Mała','mami@moomin.dk','Wloczykij','2011-09-11',16,15,'',4);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (18,'Administrator'),(1,'Boss'),(14,'Instrukor - przewodnik górski - Opiekun'),(9,'Instruktor lekkoatletyki - Opiekun'),(10,'Instruktor narciarstwa - Opiekun'),(7,'Instruktor piłki koszykowej - Opiekun'),(5,'Instruktor piłki nożnej - Opiekun'),(8,'Instruktor piłki ręcznej - Opiekun'),(6,'Instruktor piłki siatkowej - Opiekun'),(11,'Instruktor snowboardingu - Opiekun'),(12,'Instruktor wspinaczki skałkowej - Opiekun'),(13,'Instruktor wspinaczki tatrzańskiej - Opiekun'),(4,'Instruktor żeglarstwa morskiego - Opiekun'),(3,'Instruktor żeglarstwa śródlądowego - Opiekun'),(19,'Intruktor pływania - Opiekun'),(2,'Opiekun - Animator'),(15,'Rodzic - Opiekun prawny'),(17,'Sprzedawca'),(16,'Uczestnik/Uczestniczka');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 10:32:47
