CREATE DATABASE  IF NOT EXISTS `trkqtiww_airtelwhack` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trkqtiww_airtelwhack`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 103.86.176.30    Database: trkqtiww_airtelwhack
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conversation_log`
--

DROP TABLE IF EXISTS `conversation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `user_mobile` varchar(45) DEFAULT NULL,
  `otp` int(11) DEFAULT '1111',
  `last_conversation` varchar(45) DEFAULT NULL,
  `platform` varchar(45) DEFAULT NULL,
  `active` char(1) DEFAULT '1',
  `account_balance` int(11) DEFAULT '0',
  `data_balance` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_log`
--

LOCK TABLES `conversation_log` WRITE;
/*!40000 ALTER TABLE `conversation_log` DISABLE KEYS */;
INSERT INTO `conversation_log` VALUES (5,'591fe69bb19304a5e7adf519','911111111',1111,NULL,NULL,'0',0,0),(6,'591fe69bb19304a5e7adf519','900022222',1111,NULL,NULL,'0',0,0),(7,'591fe69bb19304a5e7adf519','900003333333',1111,NULL,NULL,'0',0,0),(8,'591fe69bb19304a5e7adf519','9000044444',1111,NULL,NULL,'0',0,0),(9,'591fe69bb19304a5e7adf519','900055555',1111,NULL,NULL,'1',0,0);
/*!40000 ALTER TABLE `conversation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(1500) DEFAULT NULL,
  `answer` varchar(1500) DEFAULT NULL,
  `published` char(1) DEFAULT '1',
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'hello!@@##$$hi@@##$$hey@@##$$heya@@##$$hello \r\n','Hello sir','1','1'),(2,'who are you?','I am the Airtel Bot','1','1'),(3,'What can you do to me?\r\n','I can solve your queries, Go on sir.\r\n','1','1'),(4,'When did airtel started?@@##$$airtel was established in which year?\r\n','Airtel was founded in 7july 1995 by Sunil Bharti Mittal\r\n','1','1'),(5,'who is the CEO of airtel@@##$$who is the ceo of airtel@@##$$ceo\r\n','Sunil Bharti Mittal is the Chairman and MD of Airtel\r\n','1','1'),(6,'where is the hackathon?@@##$$hackathon\r\n','Airtel WHACK(what the hack) is at Gurgoan\r\n','1','1'),(7,'what is airtel@@##$$airtel\r\n','Airtel India is a leading Telecommunication Company.\r\n','1','1'),(8,'Where are Airtel headquarters@@##$$where are airtel headquarters@@##$$where is airtel\r\n','The Headquarters are situated at Bharti Crescent, 1, Nelson Mandela Road, New Delhi, India\r\n','1','1'),(9,' airtel website@@##$$airtel official website@@##$$website\r\n','www.airtel.in\r\n','1','1'),(10,'what else can you do?@@##$$what can you do?@@##$$what can you do for me?\r\n','I can pay your bills, book tickets, recharge your prepaid account and lot more\r\n','1','1'),(11,'what is the latest product?@@##$$latest product\r\n','It’s the internet TV. More on www.airtel.in\r\n','1','1'),(12,'I need the airtel app@@##$$I want the airtel app@@##$$download airtel app@@##$$download the app@@##$$I want to download the airtel app\r\n','You can download the airtel app here: http://www.airtel.in/myairtelapp/?icid=home_airtelapp_row_5_column_2\r\n','1','1'),(13,'what is smartdrive?\r\n','SmartDrive is navigation app exclusive to Airtel customers.\r\n','1','1'),(14,'see my network@@##$$open network\r\n','https://www.airtel.in/opennetwork/?icid=home_open_network_header_4\r\n','1','1'),(15,'airtel\'s facebook page@@##$$Facebook page@@##$$facebook\r\n','Here you go: https://www.facebook.com/AirtelIndia\r\n','1','1'),(16,'I want to recharge@@##$$recharge\r\n','You can do it here: https://www.airtel.in/prepaid-recharge\r\n','1','1'),(17,'I want to buy a postpaid connection\r\n','https://www.airtel.in/offers/postpaid\r\n','1','1'),(18,'I want to airtel for my business','You can look for it here:\r\nhttp://www.airtel.in/business/\r\n','1','1'),(19,'I need to see the tariff plans\r\n','here you go: http://www.airtel.in/mobile/prepaid/tariffs\r\n','1','1'),(20,'What services do airtel provide?\r\n','You can check it on: https://www.airtel.in/services-for-you\r\n','1','1'),(21,'I want to contact human customer care@@##$$customer care@@##$$human support@@##$$support\r\n','You can find the details here:http://www.airtel.in/applications/xm/MobileCustomerSupport.jsp?CIRCLE=2&CIRCLENAME=Delhi NCR\r\n','1','1'),(22,'Where is airtel store near me@@##$$store@@##$$store locator@@##$$service center\r\n','You can find a store near you here: https://www.airtel.in/store/\r\n','1','1'),(23,'I need broadband connection@@##$$braodband@@##$$new braodband\r\n','https://www.airtel.in/broadband/\r\n','1','1'),(24,'prepaid plans@@##$$recharge@@##$$online recharge\r\n','www.airtel.in/Online/Recharge\r\n','1','1'),(25,'upgrade to 4g@@##$$4g@@##$$3g to 4g\r\n','You can do it here: http://www.airtel.in/4g/sim-swap\r\n','1','1'),(26,'Tell me more about airtel\r\n','https://g.co/kgs/d94p3Z\r\n','1','1');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelling_replacement`
--

DROP TABLE IF EXISTS `spelling_replacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelling_replacement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wrong_spell` varchar(100) DEFAULT NULL,
  `right_spell` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelling_replacement`
--

LOCK TABLES `spelling_replacement` WRITE;
/*!40000 ALTER TABLE `spelling_replacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `spelling_replacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unknown_questions`
--

DROP TABLE IF EXISTS `unknown_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unknown_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(5000) DEFAULT NULL,
  `platform` varchar(45) DEFAULT NULL,
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unknown_questions`
--

LOCK TABLES `unknown_questions` WRITE;
/*!40000 ALTER TABLE `unknown_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `unknown_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mode`
--

DROP TABLE IF EXISTS `user_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `chat_mode` varchar(45) NOT NULL DEFAULT 'btn_mode',
  `active` char(1) NOT NULL DEFAULT '1',
  `service_provider` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mode`
--

LOCK TABLES `user_mode` WRITE;
/*!40000 ALTER TABLE `user_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-21  9:35:22
