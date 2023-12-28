-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: strength_club_network
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_on` datetime(6) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1e0ic3ghh6e36j1c3mh1o07f3` (`created_by`),
  CONSTRAINT `FK1e0ic3ghh6e36j1c3mh1o07f3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (5,'Powerlifting is a strength sport that consists of three attempts at maximal weight on three lifts: squat, bench press, and deadlift. As in the sport of Olympic weightlifting, it involves the athlete attempting a maximal weight single-lift effort of a barbell loaded with weight plates. Powerlifting evolved from a sport known as \"odd lifts\", which followed the same three-attempt format but used a wider variety of events, akin to strongman competition. Eventually, odd lifts became standardized to the current three. ',NULL,'/images/clubs/club02.jpg','Beginning Powerlifting Club','2023-12-20 13:16:53.877684',13),(6,'Bodybuilding is the practice of progressive resistance exercise to build, control, and develop one\'s muscles via hypertrophy.[1] An individual who engages in this activity is referred to as a bodybuilder. It is primarily undertaken for aesthetic purposes over functional ones, distinguishing it from similar activities such as powerlifting, which focuses solely on increasing the physical load one can exert. ','2023-12-20 13:17:48.229160','/images/clubs/club03.jpg','Classic Bodybuilding Training','2023-12-20 13:17:48.229173',13),(7,'Strength training, also known as weight training or resistance training, involves the performance of physical exercises that are designed to improve strength and endurance. It is often associated with the lifting of weights. It can also incorporate a variety of training techniques such as bodyweight exercises, isometrics, and plyometrics.[1] ','2023-12-20 13:19:20.391408','/images/clubs/club04.jpg','Stronger and Better Woman\'s Strength Training','2023-12-20 13:19:20.391421',13),(8,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events',NULL,'/images/clubs/club05.jpg','Wilderness Strongman Training','2023-12-20 13:33:53.795712',12),(9,'Strength training, also known as weight training or resistance training, involves the performance of physical exercises that are designed to improve strength and endurance. It is often associated with the lifting of weights. It can also incorporate a variety of training techniques such as bodyweight exercises, isometrics, and plyometrics.','2023-12-20 13:35:00.749911','/images/clubs/club06.jpg','Seal Training Club','2023-12-20 13:35:00.749923',12),(10,'Powerlifting is a strength sport that consists of three attempts at maximal weight on three lifts: squat, bench press, and deadlift. As in the sport of Olympic weightlifting, it involves the athlete attempting a maximal weight single-lift effort of a barbell loaded with weight plates. Powerlifting evolved from a sport known as \"odd lifts\", which followed the same three-attempt format but used a wider variety of events, akin to strongman competition. Eventually, odd lifts became standardized to the current three. ','2023-12-20 13:46:35.231499','/images/clubs/club09.jpg','Sully\'s Advanced Powerlifting Club','2023-12-20 13:46:35.231516',12),(11,'Strength training, also known as weight training or resistance training, involves the performance of physical exercises that are designed to improve strength and endurance. It is often associated with the lifting of weights. It can also incorporate a variety of training techniques such as bodyweight exercises, isometrics, and plyometrics.','2023-12-20 13:48:03.924770','/images/clubs/club08.jpg','Stronger Every Day','2023-12-20 13:48:03.924786',12),(12,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 14:07:25.013939','/images/clubs/club01.jpg','Mountain Man Strongman','2023-12-20 14:07:25.013993',11),(13,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:14:52.714502','/images/clubs/club07.jpg','Sully\'s Strong Man Club','2023-12-20 15:14:52.714519',11),(14,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:16:04.469867','/images/clubs/club10.jpg','Fifth Street Strongman Club','2023-12-20 15:16:04.469886',11),(15,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events',NULL,'/images/clubs/club11.png','Desert Strongman Club','2023-12-20 15:19:33.983396',11),(16,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:19:16.825531','/images/clubs/club12.jpeg','Big Mike\'s Strongman Elite','2023-12-20 15:19:16.825548',11),(17,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:21:02.410518','/images/clubs/club13.jpg','Olympia Gym Strongman Club','2023-12-20 15:21:02.410531',11),(18,'In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events',NULL,'/images/clubs/club14.jpg','North Side Strongman','2023-12-20 15:34:10.385838',11);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21  9:14:11
