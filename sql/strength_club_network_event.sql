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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `type` text,
  `updated_on` datetime(6) DEFAULT NULL,
  `club_id` int NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `FK8meg6nvkeiw3li6ufg06xww2d` (`club_id`),
  CONSTRAINT `FK8meg6nvkeiw3li6ufg06xww2d` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,NULL,'2023-12-21 10:30:00.000000','Interval training: Pikes Peak','/images/events/events01.jpg','2023-12-21 08:30:00.000000','Interval training is a type of training exercise that involves a series of high-intensity workouts interspersed with rest or break periods. The high-intensity periods are typically at or close to anaerobic exercise, while the recovery periods involve activity of lower intensity.[1] Varying the intensity of effort exercises the heart muscle, providing a cardiovascular workout, improving aerobic capacity and permitting the person to exercise for longer and/or at more intense levels','2023-12-20 14:35:07.413766',12),(4,'2023-12-20 14:45:57.243280','2024-06-01 14:00:00.000000','Trail Run: State Forest State Park','/images/events/events02.jpeg','2024-06-01 07:00:00.000000','Interval training is a type of training exercise that involves a series of high-intensity workouts interspersed with rest or break periods. The high-intensity periods are typically at or close to anaerobic exercise, while the recovery periods involve activity of lower intensity.[1] Varying the intensity of effort exercises the heart muscle, providing a cardiovascular workout, improving aerobic capacity and permitting the person to exercise for longer and/or at more intense levels','2023-12-20 14:45:57.243301',12),(5,'2023-12-20 15:31:17.481742','2024-04-07 16:30:00.000000','Sully\'s Air Force Showdown','/images/events/events03.jpg','2024-04-05 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:31:17.481759',13),(6,'2023-12-20 15:32:34.433291','2024-07-21 16:00:00.000000','Big Sully\'s Summer Strongman','/images/events/events04.jpg','2024-07-19 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:32:34.433304',13),(7,'2023-12-20 15:37:55.070638','2024-01-28 17:00:00.000000','North Side Strongman Showdown','/images/events/events11.jpg','2024-01-26 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:37:55.070653',18),(8,NULL,'2024-04-12 12:00:00.000000','North Siders Hawaii Retreat','/images/events/events08.jpg','2024-04-05 12:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:39:22.422463',18),(9,'2023-12-20 15:41:24.232723','2024-02-19 18:00:00.000000','Fifth Street Strongman Challenge','/images/events/events10.jpg','2024-02-16 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:41:24.232738',14),(10,'2023-12-20 15:42:39.120722','2024-06-17 18:00:00.000000','Fifth Street Summer Showdown','/images/events/events09.jpg','2024-06-14 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:42:39.120736',14),(11,'2023-12-20 15:43:53.812760','2024-08-11 18:00:00.000000','Olympia Strongman Challenge','/images/events/events09.jpg','2024-08-09 08:00:00.000000','In the 19th century, the term strongman referred to an exhibitor of strength or similar circus performers who performed feats of strength. Today, strength athletics, also known as strongman competitions, are composed of a variety of events in which competitors have to move the highest weights possible, the winner being the one having the highest tally across all events','2023-12-20 15:43:53.812772',17);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
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
