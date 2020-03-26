-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` double(11,2) NOT NULL,
  `sales` int NOT NULL,
  `stock` int NOT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (3,'中国哲学史','冯友兰',44.50,100106,9899994,'static/img/default.jpg'),(4,'忽然七日',' 劳伦',19.33,200,0,'static/img/default.jpg'),(5,'苏东坡传','林语堂',19.30,115,85,'static/img/default.jpg'),(6,'百年孤独','马尔克斯',29.50,102,98,'static/img/default.jpg'),(7,'扶桑','严歌苓',19.80,100,100,'static/img/default.jpg'),(8,'给孩子的诗','北岛',22.20,100,100,'static/img/default.jpg'),(9,'为奴十二年','所罗门',16.50,100,100,'static/img/default.jpg'),(10,'平凡的世界','路遥',55.00,100,100,'static/img/default.jpg'),(11,'悟空传','今何在',14.00,100,100,'static/img/default.jpg'),(12,'硬派健身','斌卡',31.20,100,100,'static/img/default.jpg'),(13,'从晚清到民国','唐德刚',39.90,100,100,'static/img/default.jpg'),(14,'三体','刘慈欣',56.50,100,100,'static/img/default.jpg'),(15,'看见','柴静',19.50,100,100,'static/img/default.jpg'),(16,'活着','余华',11.00,100,100,'static/img/default.jpg'),(17,'小王子','安托万',19.20,100,100,'static/img/default.jpg'),(18,'我们仨ge','杨绛',11.30,100,100,'static/img/default.jpg'),(19,'生命不息,折腾不止','罗永浩',25.20,100,100,'static/img/default.jpg'),(20,'皮囊','蔡崇达',23.90,100,100,'static/img/default.jpg'),(21,'恰到好处的幸福','毕淑敏',16.40,100,100,'static/img/default.jpg'),(22,'大数据预测','埃里克',37.20,100,100,'static/img/default.jpg'),(23,'人月神话','布鲁克斯',55.90,100,100,'static/img/default.jpg'),(24,'C语言入门经典','霍尔顿',45.00,100,100,'static/img/default.jpg'),(25,'数学之美','吴军',29.90,100,100,'static/img/default.jpg'),(26,'Java编程思想','埃史尔',70.50,100,100,'static/img/default.jpg'),(27,'设计模式之禅','秦小波',20.20,100,100,'static/img/default.jpg'),(28,'图解机器学习','杉山将',33.80,100,100,'static/img/default.jpg'),(29,'艾伦图灵传','安德鲁',47.20,100,100,'static/img/default.jpg'),(30,'教父','马里奥普佐',29.00,100,100,'static/img/default.jpg'),(52,'zzzzzz','22222',20.00,20,30,'erwer'),(53,'','',0.00,0,0,'ImgURL'),(54,'','',0.00,0,0,'ImgURL'),(55,'','',0.00,0,0,'ImgURL'),(56,'','',0.00,0,0,'ImgURL'),(57,'','',0.00,0,0,'ImgURL'),(58,'','',0.00,0,0,'ImgURL'),(60,'','',0.00,0,0,'ImgURL'),(61,'','',345.00,0,0,'ImgURL'),(62,'','',0.00,0,0,'ImgURL'),(63,'111','333',222.00,444,555,'ImgURL'),(64,'时间简x史','霍金',30.00,200,300,'/static/img/default.jpg'),(65,'时间简x史','霍金',30.00,200,300,'/static/img/default.jpg'),(66,'','',0.00,0,0,'/static/img/default.jpg'),(67,'','',0.00,0,0,'/static/img/default.jpg'),(68,'87655','22',34.00,22,22,'/static/img/default.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `COUNT` int NOT NULL,
  `amount` double(11,2) NOT NULL,
  `book_id` int NOT NULL,
  `cart_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (3,11,489.50,3,'77f46afc-4cea-4961-5f5c-a0929da521b6'),(4,1,19.33,4,'77f46afc-4cea-4961-5f5c-a0929da521b6');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` varchar(100) NOT NULL,
  `total_count` int NOT NULL,
  `total_amount` double(11,2) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES ('77f46afc-4cea-4961-5f5c-a0929da521b6',12,508.83,5),('ass',5,260.00,3);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (10,'CD project','C++ Programer','巫师3天下第一'),(11,'Huawei','Backend Programer','勇敢新世界'),(12,'Tencent','Algorithm engineer','打造精彩在线生活');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `COUNT` int NOT NULL,
  `amount` double(11,2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` double(11,2) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,4,178.00,'中国哲学史','冯友兰',44.50,'static/img/default.jpg','b4192733-882d-4916-5ab7-2aa26883228b'),(2,2,38.66,'忽然七日',' 劳伦',19.33,'static/img/default.jpg','4d454f6f-31bc-48e4-6f0b-7a29d2e967d2'),(3,100000,4450000.00,'中国哲学史','冯友兰',44.50,'static/img/default.jpg','7713f283-c3af-417e-678b-97a71ce8b644'),(4,10000,193300.00,'忽然七日',' 劳伦',19.33,'static/img/default.jpg','d166307b-386c-4e17-7d3e-280fc55c7655'),(5,-9902,-191405.66,'忽然七日',' 劳伦',19.33,'static/img/default.jpg','f96b5378-8749-49e3-7f5b-5bfcf1a002d6'),(6,14,270.20,'苏东坡传','林语堂',19.30,'static/img/default.jpg','f038bf90-ba10-4303-7744-127974158fb6'),(7,1,44.50,'中国哲学史','冯友兰',44.50,'static/img/default.jpg','f038bf90-ba10-4303-7744-127974158fb6'),(8,1,29.50,'百年孤独','马尔克斯',29.50,'static/img/default.jpg','f038bf90-ba10-4303-7744-127974158fb6'),(9,1,19.30,'苏东坡传','林语堂',19.30,'static/img/default.jpg','4a807ed2-4fe6-4e3f-585d-42980c7dbb94'),(10,1,44.50,'中国哲学史','冯友兰',44.50,'static/img/default.jpg','4a807ed2-4fe6-4e3f-585d-42980c7dbb94'),(11,1,29.50,'百年孤独','马尔克斯',29.50,'static/img/default.jpg','4a807ed2-4fe6-4e3f-585d-42980c7dbb94');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `total_count` int NOT NULL,
  `total_amount` double(11,2) NOT NULL,
  `state` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('4a807ed2-4fe6-4e3f-585d-42980c7dbb94','2020-03-25 20:57:35',3,93.30,0,1),('4d454f6f-31bc-48e4-6f0b-7a29d2e967d2','2020-03-25 17:32:37',2,38.66,0,1),('7713f283-c3af-417e-678b-97a71ce8b644','2020-03-25 18:15:06',100000,4450000.00,2,1),('b4192733-882d-4916-5ab7-2aa26883228b','2020-03-25 17:15:42',4,178.00,1,1),('d166307b-386c-4e17-7d3e-280fc55c7655','2020-03-25 18:15:33',10000,193300.00,0,1),('f038bf90-ba10-4303-7744-127974158fb6','2020-03-25 20:55:52',16,344.20,0,1),('f96b5378-8749-49e3-7f5b-5bfcf1a002d6','2020-03-25 18:16:38',-9902,-191405.66,0,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('c3de34cb-0039-4042-4518-243be2a3770f','222',5),('f71cfa64-cdca-4f83-65fb-3598a67fe15c','admin',1);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','123456','4537@qq.com'),(2,'admin3','123456','admin@atguigu.com'),(3,'yan','123456','222@qq.com'),(5,'222','88888888','111@qq.com'),(6,'222222ssss','88888888','www@w.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 21:47:39
