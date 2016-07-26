/*
SQLyog Community v8.4 Beta1
MySQL - 5.5.5-10.1.13-MariaDB : Database - companydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`companydb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `companydb`;

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`permissions`) values (1,'Standard user',''),(3,'Administrator','{\r\n\"admin\": 1,\r\n\"moderator\": 1\r\n}');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `CompanyAddress` varchar(100) NOT NULL,
  `NumberOfBranch` varchar(100) NOT NULL,
  `TypeOfBusinessOwnership` varchar(100) NOT NULL,
  `NumberOfEmployees` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `TelephoneNumber` varchar(100) NOT NULL,
  `Innvoicemail` varchar(100) NOT NULL,
  `TinNumber` varchar(100) NOT NULL,
  `ZipCode` varchar(100) NOT NULL,
  `FaxNumber` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `CivilStatus` varchar(100) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`salt`,`CompanyName`,`CompanyAddress`,`NumberOfBranch`,`TypeOfBusinessOwnership`,`NumberOfEmployees`,`Website`,`TelephoneNumber`,`Innvoicemail`,`TinNumber`,`ZipCode`,`FaxNumber`,`name`,`MiddleName`,`LastName`,`Address`,`Gender`,`CivilStatus`,`joined`,`group`) values (1,'alex','d5894da6bc23232e20a9ad8ef050e7d5871617563fdb02d05960f452eea374d7','\ZVkSÎªìíÖ>è`|šð\"^8›\nZÔ«§=WS¦³.p','','','','','','','','','','','','Alex Garrett','','','','','','2016-07-26 18:15:34',1),(2,'brian','5668a892cab6b2d5a9bd301bad220bc06bf282a2ad34e0f13a85512f13321dc1','{=\\ŠŸ]IIZª¤G¡ÀA-ß¨ÒËàô6E¤šh¡&','','','','','','','','','','','','Brian Macamays','','','','','','2016-07-26 18:27:58',1),(3,'ado','4eb280db1119a74210e9eb0651453d9b7576c2bc9fc47ccac81b1b0a63838f75','òô4sÌ&VJÚæ_;»ÑF\nØÄi}-ã½Õgµ;!','ado buildings','spl spl','7777','proprietorships','35','ado.com.ph.org','6777777','777','777','40233','111111','ado ray mark','','','','','','2016-07-26 20:54:30',1),(4,'brianhawk','e2eb9ff6b1fbc415e58818deb7014a1a388cae97c19aa893451902cc99985f95','ŸžOÝÓÜ¢÷ê)¢`øÖób›ý\Z¸ß–Q!6¤Oƒ>½','Brian LPG Station corp','spl spl','111','proprietorships','5552','brian.com.ph.org','111111111','1111','1111','1111','1111','Brian Macamay','Bandong1','macamay1','spl1','males','single1','2016-07-26 21:33:57',1);

/*Table structure for table `users_session` */

DROP TABLE IF EXISTS `users_session`;

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_session` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
