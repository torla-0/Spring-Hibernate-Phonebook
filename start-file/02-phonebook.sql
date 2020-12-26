CREATE DATABASE  IF NOT EXISTS `phonebook` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `phonebook`;
--
-- Host: 127.0.0.1    Database: phonebook
-- ------------------------------------------------------

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`first_name`,`last_name`,`number`) VALUES ("Rigel","Nichols","71423254"),("Gil","Harvey","47264907"),("Kato","Bullock","18103269"),("Tatiana","Chase","56804734"),("Brock","Pitts","59061306"),("Dolan","Allison","80925754"),("Nyssa","Giles","20003545"),("Cadman","Ayala","94734447"),("Jada","Cline","56869977"),("Zelda","Parker","46788625");
INSERT INTO `user` (`first_name`,`last_name`,`number`) VALUES ("Quintessa","Lindsey","97955882"),("Chantale","Long","22932971"),("Alfonso","Wilson","41752025"),("Matthew","Stephens","90934858"),("Martha","Taylor","13507777"),("Edward","Lucas","61457274"),("Morgan","Brooks","11785847"),("Alisa","Hoover","90214708"),("Barclay","English","24863678"),("Faith","Patrick","35484244");
INSERT INTO `user` (`first_name`,`last_name`,`number`) VALUES ("Stewart","Randall","73142223"),("Kylan","Welch","48120568"),("Kristen","Buck","58141474"),("Willa","Maddox","25735660"),("Silas","Larsen","28366616"),("Hamilton","Wooten","64215865"),("Cameron","Wise","90873249"),("Aurora","Boyle","13903178"),("Deanna","Serrano","49302633"),("Orli","Taylor","34097252");
INSERT INTO `user` (`first_name`,`last_name`,`number`) VALUES ("Hop","Gregory","71812646"),("Daria","West","13275401"),("Tate","Roth","92457228"),("Maya","Galloway","56587919"),("Scarlet","Conner","45195061"),("Kiara","Mcleod","03048881"),("Casey","Tyson","55218927"),("Lillith","Weeks","76933297"),("Kaseem","Ayala","07009949"),("Channing","Langley","13619108");
INSERT INTO `user` (`first_name`,`last_name`,`number`) VALUES ("Tatyana","Justice","06050868"),("Andrew","Berry","94759089"),("Reuben","Zamora","33883129"),("Upton","Raymond","60182170"),("Steel","Morin","32993162"),("Donovan","Simon","21816556"),("Aimee","Mitchell","86508273"),("Lani","Phillips","99289780"),("Cassady","Blackwell","30513634"),("Gay","Rich","91068250");

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


