-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: triniate
-- ------------------------------------------------------
-- Server version       5.5.60-MariaDB

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '1',
  `belongs_to` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `durability` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`,`belongs_to`)
) ENGINE=MyISAM AUTO_INCREMENT=463 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT 'message',
  `receiver` varchar(10) NOT NULL DEFAULT 'everybody',
  `sender` int(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `room` varchar(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72935 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '1',
  `belongs_to` int(11) NOT NULL DEFAULT '1',
  `durability` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `belongs_to` (`belongs_to`)
) ENGINE=MyISAM AUTO_INCREMENT=15334 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT 'Apple',
  `price` int(10) NOT NULL DEFAULT '5',
  `quest_item` varchar(3) NOT NULL DEFAULT 'no',
  `durability` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lying_items`
--

DROP TABLE IF EXISTS `lying_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lying_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '1',
  `room` int(11) NOT NULL DEFAULT '1',
  `position` varchar(10) NOT NULL DEFAULT '20,20',
  `dropped_time` varchar(11) NOT NULL DEFAULT '0',
  `quantity` int(10) NOT NULL DEFAULT '1',
  `visible` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'shop',
  `in_room` int(11) NOT NULL DEFAULT '0',
  `sells` mediumtext NOT NULL,
  `retailer` varchar(20) NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `placed_special_objects`
--

DROP TABLE IF EXISTS `placed_special_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placed_special_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL DEFAULT '1',
  `room` int(11) NOT NULL DEFAULT '3',
  `pos_left` int(11) NOT NULL DEFAULT '100',
  `pos_top` int(11) NOT NULL DEFAULT '250',
  `stage` int(11) NOT NULL DEFAULT '1',
  `placed` int(9) NOT NULL DEFAULT '0',
  `visible` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room` (`room`)
) ENGINE=MyISAM AUTO_INCREMENT=3011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pos` varchar(10) NOT NULL DEFAULT '10,10',
  `pos_left` int(11) NOT NULL DEFAULT '10',
  `pos_top` int(11) NOT NULL DEFAULT '10',
  `room` int(10) NOT NULL DEFAULT '1',
  `sprite` varchar(25) NOT NULL,
  `health` int(11) NOT NULL DEFAULT '50',
  `magic` int(11) NOT NULL DEFAULT '100',
  `stamina` int(11) NOT NULL DEFAULT '100',
  `message` varchar(80) NOT NULL,
  `lastmove` varchar(10) NOT NULL,
  `last_health_update` int(11) NOT NULL,
  `last_magic_update` int(11) NOT NULL DEFAULT '0',
  `level` int(3) NOT NULL DEFAULT '1',
  `attack` int(4) NOT NULL DEFAULT '10',
  `defense` int(5) NOT NULL DEFAULT '10',
  `max_hp` int(3) NOT NULL DEFAULT '50',
  `max_magic` int(11) NOT NULL DEFAULT '100',
  `exp` int(10) NOT NULL DEFAULT '0',
  `exp_woodcutting` int(11) NOT NULL DEFAULT '0',
  `exp_mining` int(11) NOT NULL DEFAULT '0',
  `money` int(10) NOT NULL DEFAULT '0',
  `money_bank` int(10) NOT NULL DEFAULT '0',
  `head` int(11) NOT NULL DEFAULT '0',
  `body` int(11) NOT NULL DEFAULT '0',
  `legs` int(11) NOT NULL DEFAULT '0',
  `weapon` int(11) NOT NULL DEFAULT '0',
  `item_equipped` int(11) NOT NULL DEFAULT '0',
  `flagtime` int(11) NOT NULL DEFAULT '0',
  `flag_left` int(11) NOT NULL DEFAULT '0',
  `flag_top` int(11) NOT NULL DEFAULT '0',
  `kills` int(11) NOT NULL DEFAULT '0',
  `betatester` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_id` int(11) NOT NULL DEFAULT '1',
  `player` int(11) NOT NULL DEFAULT '1',
  `status` varchar(20) NOT NULL DEFAULT 'started',
  `started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `special_objects`
--

DROP TABLE IF EXISTS `special_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `width` int(11) NOT NULL DEFAULT '15',
  `height` int(11) NOT NULL DEFAULT '15',
  `stages` int(11) NOT NULL DEFAULT '3',
  `block` varchar(20) NOT NULL DEFAULT '0',
  `zindex` int(11) NOT NULL,
  `tool` varchar(15) NOT NULL DEFAULT 'axe',
  `tool_level` int(11) NOT NULL DEFAULT '1',
  `drops` varchar(200) NOT NULL DEFAULT '50-1',
  `minetime` int(11) NOT NULL DEFAULT '5',
  `give_exp` int(11) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades` (
  `inviter` int(11) NOT NULL DEFAULT '0',
  `accepter` int(11) NOT NULL DEFAULT '0',
  `trade_status` varchar(30) NOT NULL DEFAULT 'requesting',
  `inviter_offered` longtext NOT NULL,
  `accepter_offered` longtext NOT NULL,
  `inviter_money` int(11) NOT NULL DEFAULT '0',
  `accepter_money` int(11) NOT NULL DEFAULT '0',
  `requestedtime` varchar(10) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=795 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `villains`
--

DROP TABLE IF EXISTS `villains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `villains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` int(11) NOT NULL DEFAULT '1',
  `pos_top` int(11) NOT NULL DEFAULT '100',
  `pos_left` int(11) NOT NULL DEFAULT '100',
  `sprite` varchar(30) NOT NULL DEFAULT 'sprite_right',
  `message` varchar(100) NOT NULL,
  `player_name` varchar(20) NOT NULL,
  `health` int(11) NOT NULL,
  `player_type` varchar(20) NOT NULL DEFAULT 'villain',
  `last_health_update` int(15) NOT NULL DEFAULT '0',
  `last_time_update` varchar(30) NOT NULL DEFAULT '0',
  `walkzone` varchar(20) NOT NULL DEFAULT '100,100,200,200',
  `followzone` varchar(20) NOT NULL DEFAULT '50,50,150,150',
  `following` int(10) NOT NULL DEFAULT '0',
  `walkcoord` varchar(10) NOT NULL DEFAULT '125,125',
  `agressive` int(4) NOT NULL DEFAULT '100',
  `level` int(3) NOT NULL DEFAULT '5',
  `attack` int(4) NOT NULL DEFAULT '50',
  `defense` int(4) NOT NULL DEFAULT '50',
  `max_hp` int(3) NOT NULL DEFAULT '65',
  `drop_item` int(11) NOT NULL DEFAULT '0',
  `quantity` int(10) NOT NULL DEFAULT '1',
  `visible` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room` (`room`)
) ENGINE=MyISAM AUTO_INCREMENT=24609 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 23:18:13
