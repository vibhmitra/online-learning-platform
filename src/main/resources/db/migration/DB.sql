CREATE DATABASE  IF NOT EXISTS `adbolp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adbolp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: adbolp
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `auth_user_group`
--

DROP TABLE IF EXISTS `auth_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_group` (
  `auth_user_group_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `auth_group` varchar(128) NOT NULL,
  PRIMARY KEY (`auth_user_group_id`),
  UNIQUE KEY `username` (`username`,`auth_group`),
  CONSTRAINT `user_auth_user_group_fk` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_group`
--

LOCK TABLES `auth_user_group` WRITE;
/*!40000 ALTER TABLE `auth_user_group` DISABLE KEYS */;
INSERT INTO `auth_user_group` VALUES (3,'demo','USER'),(2,'vibhmitra','ADMIN'),(1,'vibhmitra','USER');
/*!40000 ALTER TABLE `auth_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseId` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL,
  `detail` varchar(1024) NOT NULL,
  `difficulty` varchar(128) NOT NULL,
  `tutorId` bigint NOT NULL,
  `url` varchar(1024) NOT NULL,
  `imgUrl` varchar(1024) NOT NULL,
  PRIMARY KEY (`courseId`),
  UNIQUE KEY `name` (`name`),
  KEY `course_fk` (`tutorId`),
  CONSTRAINT `course_fk` FOREIGN KEY (`tutorId`) REFERENCES `tutor` (`tutorId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Essential Java','Java course for beginners','If you are a computer science graduate or a programmer who wants to learn Java, or someone who wants to start programming with Java, and looking for some awesome resources like books, tutorials, and online courses then you have come to the right place.','Easy',1,'https://www.youtube.com/watch?v=eIrMbAQSU34','https://i.ytimg.com/vi/eIrMbAQSU34/maxresdefault.jpg'),(2,'Spring Boot Full Course','Full Stack Spring Boot & React (PROFESSIONAL)','Build and Automate Deployment Like Professionals using Spring Boot | React | Maven | Docker | AWS and CICD with Github Actions','Easy',2,'https://www.youtube.com/watch?v=xZq8wETULoM','https://img.youtube.com/vi/xZq8wETULoM/hqdefault.jpg'),(3,'Linux Full Course','Learn Linux and start self-hosting your apps like an open-source freedom fighter','Linux - The Full Course is a hands-on tutorial where you will learn the powerful skill of administering a Linux system to self-host your own code on a Virtual Private Server (VPS).','Advanced',3,'https://fireship.io/courses/linux/','https://fireship.io/courses/linux/img/featured.webp'),(4,'Essential Java 2','Java course for beginners','If you are a computer science graduate or a programmer who wants to learn Java, or someone who wants to start programming with Java, and looking for some awesome resources like books, tutorials, and online courses then you have come to the right place.','Easy',1,'https://www.youtube.com/watch?v=eIrMbAQSU34','https://i.ytimg.com/vi/eIrMbAQSU34/maxresdefault.jpg'),(5,'Docker for DevOps Engineers','Learn Docker essentials to enhance DevOps processes and software management','In this course, you\'ll get a deep understanding of Docker and its role in DevOps. You\'ll learn how Docker can help you create isolated, secure, and portable environments for running applications, making your software more reliable and easier to manage. You\'ll also discover how Docker integrates with other DevOps tools, helping you automate and streamline your development and deployment processes.','Intermediate',2,'https://www.amigoscode.com/courses/docker','https://www.amigoscode.com/assets/thumbnails/courses/docker.webp'),(6,'Next.js Full Course','Master the fundamentals of Next.js 14 and the App Router','Next.js - The Full Course provides a in-depth look into the Next.js App Router first introduced in version 13.2. It puts React Server Components into practice by building a full-stack application from scratch with PostgreSQL and Prisma.','Advanced',3,'https://fireship.io/courses/nextjs/','https://fireship.io/courses/nextjs/img/featured.webp'),(7,'Essential Java 3','Java course for beginners','If you are a computer science graduate or a programmer who wants to learn Java, or someone who wants to start programming with Java, and looking for some awesome resources like books, tutorials, and online courses then you have come to the right place.','Easy',1,'https://www.youtube.com/watch?v=eIrMbAQSU34','https://i.ytimg.com/vi/eIrMbAQSU34/maxresdefault.jpg'),(8,'Spring Boot Full Course 3','Full Stack Spring Boot & React (PROFESSIONAL)','Build and Automate Deployment Like Professionals using Spring Boot | React | Maven | Docker | AWS and CICD with Github Actions','Easy',2,'https://www.youtube.com/watch?v=xZq8wETULoM','https://img.youtube.com/vi/xZq8wETULoM/hqdefault.jpg'),(9,'SvelteKit Full Course','Learn how to build awesome full-stack apps with SvelteKit','SvelteKit - The Full Course is a hands-on tutorial where you will build a complete web app with SvelteKit and Firebase - the so-called FKIT stack.','Intermediate',3,'https://fireship.io/courses/sveltekit/','https://fireship.io/courses/sveltekit/img/featured.webp'),(10,'Essential Java 4','Java course for beginners','If you are a computer science graduate or a programmer who wants to learn Java, or someone who wants to start programming with Java, and looking for some awesome resources like books, tutorials, and online courses then you have come to the right place.','Easy',1,'https://www.youtube.com/watch?v=eIrMbAQSU34','https://i.ytimg.com/vi/eIrMbAQSU34/maxresdefault.jpg'),(11,'Spring Boot Full Course 4','Full Stack Spring Boot & React (PROFESSIONAL)','Build and Automate Deployment Like Professionals using Spring Boot | React | Maven | Docker | AWS and CICD with Github Actions','Easy',2,'https://www.youtube.com/watch?v=xZq8wETULoM','https://img.youtube.com/vi/xZq8wETULoM/hqdefault.jpg'),(12,'Modern JavaScript Full Course','Learn how to build real-world applications with JavaScript','The JavaScript Course teaches you how to build modern applications with vanilla JavaScript - no React, no TypeScript, no Frameworks - just plain old JavaScript.','Easy',3,'https://fireship.io/courses/js/','https://fireship.io/courses/js/img/featured.webp');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `enrollmentId` bigint NOT NULL AUTO_INCREMENT,
  `userId` bigint NOT NULL,
  `courseId` bigint NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`enrollmentId`),
  KEY `enrollment_user_fk` (`userId`),
  KEY `enrollment_course_fk` (`courseId`),
  CONSTRAINT `enrollment_course_fk` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `enrollment_user_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,1,3,'2024-08-15'),(2,2,1,'2024-08-17'),(3,2,2,'2024-08-23');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor` (
  `tutorId` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL,
  `detail` varchar(1024) DEFAULT NULL,
  `imgUrl` varchar(1024) NOT NULL,
  PRIMARY KEY (`tutorId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` VALUES (1,'Mosh','Hamedani','MoshHamedani@gmail.com','Java / JavaScript Tutor','I am a Computer Engineer and I really like to share my knowledge and experience as a programmer. I have worked in numerous companies in Argentina, the United States and Spain. I have 2 years of experience teaching the following subjects: Networks, Java, JavaScript, C#, Visual Basic and SQL Server, both in companies and as private students.','https://pbs.twimg.com/profile_images/1764748603443318784/EX4k-ffS_400x400.jpg'),(2,'Nelson','Amigos','amigoscode@hotmail.com','Java Tutor','Nelson is a Software Engineer and Entrepreneur that wants to make an impact in today\'s world. He runs a YouTube channel and Amigoscode website where he teaches people around the world how to code.','https://yt3.ggpht.com/ytc/AMLnZu-2A5Y5xaQjzgPf9V70eGfK2THrrGTJycV1POGumKM=s900-c-k-c0x00ffffff-no-rj'),(3,'Jeff','Delaney','jeffdelaney@fireship.com','Video Creator','GDE. Creator of @fireship-io','https://avatars.githubusercontent.com/u/10172199');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `registration_date` date NOT NULL,
  `detail` varchar(1024) DEFAULT NULL,
  `imgUrl` varchar(1024) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'vibhmitra','$2a$11$dp4wMyuqYE3KSwIyQmWZFeUb7jCsHAdk7ZhFc0qGw6i5J124imQBi','Vibhanshu','Mitra','vibh@example.com','2024-08-10','I am Admin!','https://cdn.icon-icons.com/icons2/4233/PNG/512/marshall_paw_patrol_canine_patrol_icon_263825.png'),(2,'demo','$2a$11$.NNQgUXukpCuvB5nG.5XGO/NFOESgfPSqETlg5Pj2paBYmStZiucO','Demo','Account','demo@demo.com','2024-08-10','This is dummy user account!','https://cdn.icon-icons.com/icons2/2643/PNG/512/female_woman_avatar_people_person_white_tone_icon_159370.png');
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

-- Dump completed on 2024-08-24 14:22:14
