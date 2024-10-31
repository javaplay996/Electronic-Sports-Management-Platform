/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dz-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dz-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dz-ssmj`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-02-25 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-02-25 11:41:54'),(3,'zt_types','状态',1,'在职',NULL,'2021-02-25 11:41:54'),(4,'zt_types','状态',3,'退役',NULL,'2021-02-25 11:41:54'),(5,'zt_types','状态',4,'个人禁赛',NULL,'2021-02-25 11:41:54'),(6,'zt_types','状态',5,'俱乐部禁赛',NULL,'2021-02-25 11:41:54'),(7,'jc_types','奖惩类型',1,'奖励',NULL,'2021-02-25 11:41:54'),(8,'jc_types','奖惩类型',2,'惩罚',NULL,'2021-02-25 11:41:54'),(10,'dj_types','奖惩等级',1,'一级',NULL,'2021-02-25 11:41:54'),(11,'dj_types','奖惩等级',2,'二级',NULL,'2021-02-25 11:41:54'),(12,'dj_types','奖惩等级',3,'三级',NULL,'2021-02-25 11:41:54');

/*Table structure for table `jiangcheng` */

DROP TABLE IF EXISTS `jiangcheng`;

CREATE TABLE `jiangcheng` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `headline` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `jlb_types` tinyint(4) DEFAULT NULL COMMENT '俱乐部 Search',
  `xs_types` tinyint(4) DEFAULT NULL COMMENT '奖惩人 Search',
  `jc_types` tinyint(4) DEFAULT NULL COMMENT '奖惩类型 Search',
  `dj_types` tinyint(4) DEFAULT NULL COMMENT '奖惩等级 Search',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '内容信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='奖惩表';

/*Data for the table `jiangcheng` */

insert  into `jiangcheng`(`id`,`headline`,`jlb_types`,`xs_types`,`jc_types`,`dj_types`,`create_time`,`notice_content`) values (2,'惩罚xxx教练滥用私权',3,1,2,3,'2021-03-02 20:17:36','本次惩罚为3级,本次惩罚将俱乐部禁赛;'),(3,'xxx俱乐部选手比赛开挂',1,4,2,3,'2021-03-03 10:48:14','本次惩罚为3级,本次惩罚将俱乐部禁赛;'),(6,'惩罚：张三选手比赛开g',3,5,2,2,'2021-03-03 11:36:00','本次惩罚为2级,本次惩罚将个人禁赛;'),(7,'不知道啥理由了',1,6,2,3,'2021-03-03 11:49:47','本次惩罚为3级,本次惩罚将俱乐部禁赛;');

/*Table structure for table `jingli` */

DROP TABLE IF EXISTS `jingli`;

CREATE TABLE `jingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别',
  `jlb_types` tinyint(255) DEFAULT NULL COMMENT '俱乐部',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `jingli` */

insert  into `jingli`(`id`,`name`,`account`,`password`,`sex_types`,`jlb_types`,`img_photo`,`role`) values (1,'经理1','111','111',2,1,'http://localhost:8080/dz-ssmj/file/download?fileName=1614676471871.jpg','经理'),(2,'经理2','222','222',1,2,'http://localhost:8080/dz-ssmj/file/download?fileName=1614676478643.jpg','经理'),(3,'经理3','333','333',2,3,'http://localhost:8080/dz-ssmj/file/download?fileName=1614677490393.jpg','经理');

/*Table structure for table `julebu` */

DROP TABLE IF EXISTS `julebu`;

CREATE TABLE `julebu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '俱乐部名称 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='俱乐部表';

/*Data for the table `julebu` */

insert  into `julebu`(`id`,`name`) values (1,'LOL俱乐部'),(2,'CF俱乐部'),(3,'dota俱乐部');

/*Table structure for table `shenshu` */

DROP TABLE IF EXISTS `shenshu`;

CREATE TABLE `shenshu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jlb_types` tinyint(4) DEFAULT NULL COMMENT '俱乐部 Search',
  `xs_types` tinyint(4) DEFAULT NULL COMMENT '申述人 Search',
  `temporary` tinyint(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申述时间',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '申述进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='申述表';

/*Data for the table `shenshu` */

insert  into `shenshu`(`id`,`jlb_types`,`xs_types`,`temporary`,`create_time`,`notice_content`) values (16,1,1,2,'2021-03-02 21:35:04','俱乐部1 转 俱乐部2'),(18,1,4,NULL,'2021-03-03 11:08:39','本次惩罚为3级,本次惩罚将俱乐部禁赛;'),(19,3,1,NULL,'2021-03-03 11:09:50','本次惩罚为3级,本次惩罚将俱乐部禁赛;'),(20,3,5,NULL,'2021-03-03 11:36:20','本次惩罚为2级,本次惩罚将个人禁赛;'),(21,1,6,NULL,'2021-03-03 11:50:53','本次惩罚为3级,本次惩罚将俱乐部禁赛;'),(22,1,6,NULL,'2021-03-03 11:54:26','本次惩罚为2级,本次惩罚将个人禁赛;'),(23,1,6,2,'2021-03-03 11:54:43','俱乐部1 转 俱乐部2');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','4kmi15fho6rrnxu4vgojp51eywxx7rja','2021-01-28 18:04:51','2021-03-03 14:15:54'),(2,1,'小札','users','用户','774h9xjd9yg9d1zoy2d1wl7x0aj3x0tm','2021-02-03 16:33:33','2021-02-22 16:16:18'),(3,1,'员工1','users','员工','apzc2ymlaidr1wsldenwbhiyvp7rwqp5','2021-02-22 15:14:58','2021-02-22 17:02:10'),(4,2,'小站','users','用户','tebjhfvztwgkeau95rxtflfr4jri091z','2021-02-22 15:30:49','2021-02-22 16:30:50'),(5,3,'333','users','用户','4s41lu4s0oo8pjp28rtjmrowmwz8rycu','2021-02-22 15:44:43','2021-02-22 16:44:43'),(6,4,'1','users','用户','a1jjda0tgc4xkh464jduzlqbesztlfbu','2021-02-22 16:03:07','2021-02-22 17:03:07'),(7,1,'教练1','users','教练','vqoabqswtiz5qugzyjceb9hbl0yipn8o','2021-03-03 09:47:26','2021-03-03 12:24:01'),(8,1,'经理1','users','经理','esnvn157syyps72zbzg7eucjq3ip0rb5','2021-03-03 10:31:28','2021-03-03 12:55:17'),(9,2,'选手1','users','选手','p8itingtz8sj218lqvuoojm5i5vrm2o0','2021-03-03 10:49:44','2021-03-03 11:49:45'),(10,4,'选手2','users','选手','2dpc5l5droe2qotqgu57z1o725f55v2f','2021-03-03 11:07:24','2021-03-03 12:24:34'),(11,3,'教练2','users','教练','fw674ykp5bwi3vxhc61zl9raimckwbpo','2021-03-03 11:24:16','2021-03-03 12:24:17'),(12,5,'陆老爷','users','选手','9b5qafogffvpy8iweiby6wr6856ryqwj','2021-03-03 11:31:26','2021-03-03 12:31:26'),(13,6,'李四','users','选手','qq2r248cr75sm9tkjlr3b2qdlkmyh8ev','2021-03-03 11:48:05','2021-03-03 12:48:05'),(14,3,'经理3','users','经理','ud44u3wgxoriae7qr8l2zfv9ij55w9gw','2021-03-03 11:56:12','2021-03-03 12:56:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `xuanshou` */

DROP TABLE IF EXISTS `xuanshou`;

CREATE TABLE `xuanshou` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '比赛名称 Search',
  `account` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `dateofbirth_time` date DEFAULT NULL COMMENT '出生年月',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `information` varchar(200) DEFAULT NULL COMMENT '家庭联系方式',
  `grinformation` varchar(200) DEFAULT NULL COMMENT '个人联系方式',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别 Search',
  `zt_types` tinyint(4) DEFAULT NULL COMMENT '状态 Search',
  `jlb_types` tinyint(4) DEFAULT NULL COMMENT '俱乐部 Search',
  `role` varchar(200) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='选手表';

/*Data for the table `xuanshou` */

insert  into `xuanshou`(`id`,`name`,`account`,`password`,`img_photo`,`dateofbirth_time`,`address`,`information`,`grinformation`,`sex_types`,`zt_types`,`jlb_types`,`role`) values (1,'教练1','111','111','http://localhost:8080/dz-ssmj/file/download?fileName=1614683355035.jpg','2021-03-04','111','111','111',1,3,2,'教练'),(2,'选手1','222','222','http://localhost:8080/dz-ssmj/file/download?fileName=1614741326913.jpg','2021-03-19','111','111','111',2,1,2,'选手'),(3,'教练2','333','333','http://localhost:8080/dz-ssmj/file/download?fileName=1614741311042.jpg','2021-03-04','222','222','222',1,1,1,'教练'),(4,'选手2','444','444','http://localhost:8080/dz-ssmj/file/download?fileName=1614741303739.jpg','2021-03-19','222','222','222',2,1,1,'选手'),(5,'张三','123','123','http://localhost:8080/dz-ssmj/file/download?fileName=1614742352682.jpg','2021-03-10','家庭住址1','家庭联系方式1','个人联系方式1',1,1,3,'选手'),(6,'李四','321','321','http://localhost:8080/dz-ssmj/file/download?fileName=1614743296501.jpg','2021-04-16','家庭住址2','家庭联系方式2','个人联系方式2',2,3,2,'选手');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
