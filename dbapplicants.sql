/*
SQLyog Community v8.4 Beta1
MySQL - 5.5.5-10.1.13-MariaDB : Database - dbapplicants
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbapplicants` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbapplicants`;

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groups` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `CivilStatus` varchar(50) NOT NULL,
  `Education` varchar(50) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNumber` varchar(50) NOT NULL,
  `JobApplying` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`salt`,`firstname`,`lastname`,`Age`,`Gender`,`birthday`,`CivilStatus`,`Education`,`Course`,`Email`,`ContactNumber`,`JobApplying`,`Position`,`joined`,`group`) values (1,'Alex','fb3301b8d32ac834a13e1a36b4bd1901861ef2ff73febe120482e97de2d3d6e3','=ÐwT*¯¿~jþåN—†’Xv˜D¥©Ï+Z-Z','Alex Garretts','',33,'female','may 23 2006','single','CS','CS','alex@yahoo.com','08888','CEO','CEO','2016-07-19 05:58:31',1),(2,'brian','4085ede3fbfb9406ee6714e5ef63861b1eec5f9f8864f346e307ed44960ba6ba','I©V+¡voŸd;ogU·±ÔúcÝ¾Éü…£pÎ*','Brian Mcgregor','',19,'lalaki','may 24 1994','married','cs','cs','brian@gmail.com','08888','ok','ok','2016-07-20 05:33:09',1),(3,'ray','d7bd30e1576cec9b4681a8e0ad897ffde3118deefacb6d8aa4dfcf10df406395','Yð¦ëU°ðÒ%¢L+á£à:òï •§Âeïi~šÂ','Ray','Ado',22,'lalaki','june 22,2016','married','cs','cs','ado@gamil.com','000000','ok','ok','2016-07-20 06:06:45',1),(4,'holly','f37a65c3ac6ba98c59a82c0f9bbc95227c77fd08803f2fcb8c62f1e03fdf7951','aVÞôäÖÜb	²?A“kôÄ\'0)\0îd³èÅv','hollly','delacruz',20,'female','jan','g','g','g','g','777777','hg','h','2016-07-25 19:05:44',1),(5,'glenn','4da215e530999a273a20b1ad1ad8abdd0f5f7aa770e4ef9abf5db0c2d3a3c4a8',')-VÞY(Ì<QL»MUÇ„uíö{x«¬>“','brian','macamay',12,'male','may 24','single','','','','923-232932933','ceo','','2016-07-26 18:12:24',1),(6,'marjorie','89be3475cb6e9209df58325d835eff4b8433278a538dfc4113ad66e3358d635f','Ù•óó…Æ¢™•,¶#•Ëh‹5›å\'ËÍ®]~¡(\"§q','marjorie','delacruz',12,'','jan 23 2015','single','','','','22333333','bbbbb','','2016-07-26 19:23:34',1),(7,'okok','8dac4b23b35725d2051a8b66b04ce703bb92efce2b2a3b6fb8a30e041272f7eb','«èK­×¶]Öêy±ãß]¼‹‹s6l„0y¦‰áÈ¸\\öTà','qweqwe','qweqweqe',12,'','1122','1212','12122','1212','1212','121212','121212','','2016-07-26 19:25:42',1),(8,'asdasd','d4f928bf79e8ee52413719dcdf937c73f39c65a9fc2efc9f101d0576c43d33ec','fåï’®$äKA4á>~Ð*·¯›Ïq\\ùeý˜®ÞH','asdadsada','dadad',0,'','adsad','asdada','adadadadadas','sdad','asdadadadad','asd','adad','sa','2016-07-26 19:27:31',1),(9,'asasda','f0a431632f241026e983b627f142f95e0ee567815e3a098ec973e5de0524d978','þ`Ì	“èëˆ½4ó¿` ÿ×ÙüÂÂûÇ˜°£îwE‹Ck','qweweq','qweqewqewqe',12,'','qwqwq','wqwq','wqw','qw','wwqwq','wq','wqwqwqw','qwwqwq','2016-07-26 19:28:30',1),(10,'asdadsa','3751e8bd423dc38e2343b3ea61cb47c6ddb6b6a827e2e5d304952054ba43d43e','üŒ„e‚	ŠÍ´¯c±ð.\\~¢÷\Z\nËªgãÅô,«','qweeq','qweew',22,'','sadads','adad','adsd','asd','asdasd','sadas','sdadad','ad','2016-07-26 19:30:14',1),(11,'asdds','e1ea6c981927b87cbd3ff8dd2f8dc154c4aa4fa08c88d7a300e24095eb627797','s¥D%0¢&MwJîô÷Ú—lÈŸ÷€\rÏ,ÕAuF‡5ù','eqwe','qweqew',0,'','eeeeeeeee','eeeee','eeeeeeee','eeeeee','eeee','qeweqweeweee','eweeee','eeeeeeeee','2016-07-26 19:34:21',1),(12,'qweqe','9186393e3f19e93508ad67c6c8db62415a7d5af5203eda34f5d1c126e5e4aec6','U‰	$fâßµQÐYä*èìøÁ@Î[¦/*.4?&ã','werrw','rrwrewre',0,'','werrreww','rwr','','wrwrwr','werwe','rwer','wrwe','rwerwrwerewr','2016-07-26 19:41:54',1),(13,'qweeweqe','ae30bf248c05e65e65259f1ef51fbdbcbc375db5213c68791a2eec6f00d9b259','*ªDÁ2‡ÿXáã\r{¹úBïÔg^@0w™nÁÎë','qweqewe','eqweeqe',0,'','eqewq','ewqe','qweqwewe','wqewqewq','ewqe','wqewqwqeqweqweqwe','eeeqeqwewqeqwe','wqeqweqwewqeq','2016-07-26 19:42:56',1),(14,'wqeqewqeqe','d7664886d8e148d9f9f2973fec014e3956ac495830b9bfb6cf73fcdeea6935ba','Çè’çxbú˜†\Z«cZ¨D°¶9òØ@m÷æI‡','qweqwe','qweqewe',12,'','wqwqwq','wqwqw','qwqwqw','qwqwqw','qwqw','qwqwqw','qwqwqwq','wqwqwqw','2016-07-26 19:48:59',1),(15,'qweeqwe','33ed2b70cd0fe05d844cabab82325914b962aee9d569e2dd05dd0972c66c9ea3','àž³Îk§;m­d¢—df K¹Cz¼ÑÌ‘âShZö°','3424','2424',23,'Male','23323232323','232','32232323','23232','3323','232323232','232323','32323232323','2016-07-26 19:55:44',1),(16,'qweqwe','07ab537532c5924216c341b16ad975e81177e4d9d04325dafb7d936759c6d203',')ÇTœÊ±ntÑÀ0HNÈµRccÚ†:~Žš,Qâ-÷@','qweqweqw','eqeqeqwe',12,'','qwqwqwqwqw','qwqwqwqwqw','wqwqw','wqwqwqw','wqwqwq','qwqwqwqwqw','wqwqwqwqwqw','qwqwqwqwq','2016-07-26 19:57:24',1),(17,'qweqeqeqe','4e3bab4ff62ee2d059b94bb0151e0fff81234554d85e2b598adab1d9fd5ee8d5','£6ñ-	T2?ËkÚ;\rbGZu»í\0HòÏ°0º»“ã','12313','qeeqe',0,'qeqeqeqe','qeq','eqeqe','eqeq','eqeqeqeq','qeqeqe','qweqeqe','qweqeqweqe','qweqweqeqe','2016-07-26 20:13:21',1),(18,'eqeeqeqe','bf7edd9eef2b211d05b5b41994bbf573f48fdfaa39f3b8cc0c79e203c74c0036','-âäØ7ªzJ)A\rL•\nÀðOQ¿€¡Ûƒˆ¬ô§÷ð','31313','123133',23,'12','123','133131313','31313123','3331','131','33','231133','3133133','2016-07-26 20:13:57',1),(19,'santos','2db20f73bcb0b35b96487e4320ad9342ff2d18dd85a535add3bbaf7ba7b777e9','ºZ¹)fOìùB9‡¦\"£H)K\ZþßÒ\'T','rrrrrr','rrrrrrr',22,'males','rrrrrrrrr','rrrrrrrrrr','rrrrrrrrrr','rrrrrrrrrrr','rrrrrrrrrrr','rrrrrrrrrrrr','rrrrrrrrrrrr','rrrrrrrrrr','2016-07-26 20:35:09',1);

/*Table structure for table `users_session` */

DROP TABLE IF EXISTS `users_session`;

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` int(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_session` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
