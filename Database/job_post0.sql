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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `comapnyemail` varchar(45) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `des` varchar(1000) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `upid` int DEFAULT NULL,
  `status` varchar(45) DEFAULT 'active',
  `Department` varchar(45) DEFAULT NULL,
  `astatus` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `comapnyemail_UNIQUE` (`comapnyemail`),
  KEY `upid_idx` (`upid`),
  CONSTRAINT `upid` FOREIGN KEY (`upid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (15,'Netflix','Editor','250000','Ambli chok','rajkot','c@gmail.com','10 to 6','Netflix is a streaming service that offers a wide variety of movies, TV shows, documentaries, and more on thousands of internet-connected devices. With Netflix, you can watch as much as you want, anytime, anywhere, on any internet-connected device. You can play, pause, and resume watching, all without commercials or commitments.\r\n\r\nNetflix was founded in 1997 by Reed Hastings and Marc Randolph. It initially offered a DVD-by-mail service, but it has since expanded to offer streaming video content through the internet. Today, Netflix is available in more than 190 countries and has over 208 million subscribers. In addition to its extensive library of licensed content, Netflix also produces and distributes its own original TV shows and movies, which have been widely popular and have won numerous awards.\r\n                    \r\n                    \r\n\r\n                \r\n\r\n                ','wallpaperflare.com_wallpaper (12).jpg','2022-12-26 05:56:12',81,'active',NULL,NULL),(18,'alfa','python','2000000','small market near naani','jasdan','a@gmail.com','11 to 6','\"5 Tips for Finding the Right Job for You\" - This article provides some helpful advice for finding a job that is a good fit for your skills, interests, and career goals.\r\n\r\n\"The Future of Work: 10 Trends to Watch\" - This article discusses some of the trends that are shaping the future of work, including the rise of remote work, the increasing use of automation and artificial intelligence, and the growing importance of soft skills.\r\n                     \r\n                    \r\n                    \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                ','wallpaperflare.com_wallpaper (8).jpg','2022-12-29 05:55:06',81,'active',NULL,NULL),(21,'anatomyinc','cppdevloper','300,0000','hala vaadi','benglore','e@gmail.com','7 to 1','A C++ developer is a software developer who specializes in the development and maintenance of applications written in the C++ programming language. Some of the responsibilities of a C++ developer may include:\r\n\r\nDesigning and developing C++-based applications\r\nDebugging and troubleshooting C++ code\r\nMaintaining and updating existing C++-based applications\r\nCollaborating with cross-functional teams to define, design, and ship new features\r\nWriting and maintaining technical documentation\r\nTo be a C++ developer, you typically need to have a strong understanding of C++ programming, as well as experience with related technologies such as HTML, CSS, and JavaScript. You may also need to have experience with software development tools such as Visual Studio, Eclipse, and Git. Strong problem-solving skills and the ability to work effectively in a team environment are also important qualities for a C++ developer to have.\r\n                     \r\n                    \r\n                    \r\n\r\n      ','wallpaperflare.com_wallpaper (4).jpg','2022-12-31 05:02:05',86,'active',NULL,NULL),(27,'amazonn','java','2000000','near halol','haidrabad','ama@gmail.com','11 to 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                    \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                \r\n\r\n                ','wallpaperflare.com_wallpaper (6).jpg','2023-01-02 06:07:13',81,'active',NULL,NULL),(36,'infotech','java','2500000','aambali chok','pune','nava@gmail.com','250000','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                    \r\n\r\n                ','wallpaperflare.com_wallpaper (4).jpg','2023-01-02 08:26:35',86,'active',NULL,NULL),(39,'namune','c','200000','nang','tamh','abc@gmail.com','10 to 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n                    \r\n\r\n                \r\n\r\n                ','wallpaperflare.com_wallpaper (5).jpg','2023-01-02 08:40:18',86,'active',NULL,NULL),(43,'arya','zero','0000','Bharat:','bharatkhand','bhatt@gmail.com','0 to 0','   In addition to its use in mathematics, the concept of zero has important philosophical and cultural implications. The idea of zero was revolutionary when it was first introduced, as it allowed for the creation of a place-value number system, which made it possible to represent very large numbers using just a few digits. The number zero has played a significant role in the development of mathematics and science, and it continues to be an important part of modern technology and society.               ','IMG_20220328_231240.jpg','2023-01-07 15:44:14',81,'active',NULL,NULL),(45,'abc','efg','10000','hiij','jasdan','kbc@gmail.com','11','jsnsfidffsjfsfjos\r\n                    ','Screenshot (12).png','2023-02-13 11:26:41',81,'active',NULL,NULL),(46,'Infotech','Java','11111','klljljljl','jkljlj','mbc@gmail.com','11111','sfsf sdf dfs fsdf sdf\r\n                    ','Screenshot (13).png','2023-02-13 11:35:32',81,'active',NULL,NULL),(47,'Infotech','ffs','5554855','klljljljl','jkljlj','nbc@gmail.com','2154545','\r\n       55555             ','Screenshot (17).png','2023-02-14 11:33:15',86,'active',NULL,NULL),(48,'Infotech','dddf','554545','klljljljl','jkljlj','ac@gmail.com','545454545','\r\n                    fsfsfsfsfsfsf','Screenshot (9).png','2023-02-14 11:35:40',86,'active',NULL,NULL),(49,'Infotech','vddvdv','5555','klljljljl','jkljlj','oobc@gmail.com','dvd5','dvdvdvdvdvkdnvkd\r\n                    ','Screenshot (11).png','2023-02-14 11:36:53',86,'active',NULL,NULL),(50,'Infotech','vdvdv','vdvdvd','klljljljl','jkljlj','ajjc@gmail.com','xcxc','\r\n          vdvdv          ','Screenshot (14).png','2023-02-14 11:39:42',86,'active',NULL,NULL),(51,'Infotech','cbcbc','bcbcb','klljljljl','jkljlj','kkbc@gmail.com','bcbcbcb','bcbcbcbcb\r\n                    ','Screenshot (20).png','2023-02-14 11:41:33',86,'active',NULL,NULL),(54,'Infotech','jodgjogjdog','vddgjodgjo','klljljljl','jkljlj','quantao@gmail.com','ogjdogjdogjdogjo','gdgdgjodgjodg\r\n                    ','Screenshot (18).png','2023-02-14 12:07:03',86,'active',NULL,NULL),(56,'Infotech','llllllllllllllllllllllllllllllllllllllllllll','jjjjjjjjjjjjjjjjjjjjjjjjjjjjjj','klljljljl','jkljlj','quanto@gmail.com','llllllllllllllllllllllllllllllllllllllll','lllllllllllllllllllllllllllllllllllllllllllllllllllllllllll\r\n                    ','Screenshot (7).png','2023-02-14 12:13:44',86,'active',NULL,NULL),(57,'Infotech','knnnnnnnnnnnnnn','viiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii','klljljljl','jkljlj','qua@gmail.com','iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii','\r\n  iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii                  ','Screenshot (7).png','2023-02-14 12:15:18',86,'active',NULL,NULL),(58,'Infotech','qqqqqqqqqqqqqqqqqqqqqqqq','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq','klljljljl','jkljlj','abpp@gmail.com','qqqqqqqqqqqqqqqq','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\r\n                    ','Screenshot (1).png','2023-02-14 12:17:41',86,'active',NULL,NULL),(61,'Infotech','cccccccccccccccc','aaaaaaaaaaaaaaaaaaaaaaa','klljljljl','jkljlj','abop@gmail.com','aaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaa\r\n                    ','Screenshot (2).png','2023-02-14 12:19:52',86,'active',NULL,NULL),(62,'Infotech','uuuuuuuuuuuuuuuuuuuu','5555555555555555555555555','klljljljl','jkljlj','aii@gmail.com','mmmmmmmmmmmmmmmmm',',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\r\n                    ','Screenshot (15).png','2023-02-14 12:21:34',86,'active',NULL,NULL),(63,'Infotech','dddddddd','dddddddd','klljljljl','jkljlj','aici@gmail.com','dddddddddd','ddddddddd                    ','Screenshot (18).png','2023-02-14 12:27:06',86,'active',NULL,NULL),(64,'Infotech','cccccccccccccccc','555485','klljljljl','jkljlj','abo@gmail.com','09:00','llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll\r\n                    ','Screenshot (12).png','2023-02-14 12:36:11',86,'active',NULL,NULL),(65,'naravati','Devlopment','555485','abcffff','jajajaja','naravati@gmail.com','09:12','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n                    ','wallpaperflare.com_wallpaper (2).jpg','2023-02-14 14:13:32',82,'deactive','java',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
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
