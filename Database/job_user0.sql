-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: job
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT 'default.jpg',
  `resume` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `seeker` varchar(45) DEFAULT '1',
  `placer` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (81,'prince','sonii','princesoni111183@gmail.com','123456','wallpaperflare.com_wallpaper (11).jpg','resume.pdf','0','1','1'),(82,'pratibha','patil','patil@gmail.com','123456','wallpaperflare.com_wallpaper (3).jpg','resume.pdf','1','1','0'),(83,'rahul','rajan','rajan@gmail.com','123456','1st.jpg',NULL,'1','1','1'),(84,'manu','damu','damu@gmail.com','123456','default.jpg',NULL,'0','1','1'),(85,'naarad','sarad','sahit@gmail.com','123456','default.jpg',NULL,'1','1','1'),(86,'pinsu','soni','pinsu@gmail.com','123456','IMG_20220328_231202.jpg','profile3.pdf','1','1','1'),(87,'laxmi','narayan','namo@gmail.com','123456','wallpaperflare.com_wallpaper (1).jpg',NULL,'1','1','1'),(88,'manala','ghamar','daamar@gmail.com','123456','icons8-programming-64.png',NULL,'1','1','1'),(90,'abc','def','abc@gmail.com','123456','default.jpg',NULL,'0','1','1'),(91,'devi','prasaad','prasaad@gmail.com','123456','1.jpg',NULL,'1','1','1'),(92,'Bharat','Parmar','Parmar@gmail.com','123456','5.jpg','my-resume(4).svg','0','1','1'),(93,'dhwar','paal','paal@gmail.com','123456','default.jpg','Screenshot (9).png','1','1','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28  9:52:01
