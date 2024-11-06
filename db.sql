/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7vwc6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7vwc6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7vwc6`;

/*Table structure for table `baoxiuguanli` */

DROP TABLE IF EXISTS `baoxiuguanli`;

CREATE TABLE `baoxiuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `baoxiushijian` datetime DEFAULT NULL COMMENT '报修时间',
  `guzhangmiaoshu` longtext COMMENT '故障描述',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668062865 DEFAULT CHARSET=utf8 COMMENT='报修管理';

/*Data for the table `baoxiuguanli` */

insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (61,'2021-04-17 21:24:31','账号1','姓名1','13823888881','2021-04-17 21:24:31','故障描述1','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (62,'2021-04-17 21:24:31','账号2','姓名2','13823888882','2021-04-17 21:24:31','故障描述2','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (63,'2021-04-17 21:24:31','账号3','姓名3','13823888883','2021-04-17 21:24:31','故障描述3','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (64,'2021-04-17 21:24:31','账号4','姓名4','13823888884','2021-04-17 21:24:31','故障描述4','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (65,'2021-04-17 21:24:31','账号5','姓名5','13823888885','2021-04-17 21:24:31','故障描述5','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (66,'2021-04-17 21:24:31','账号6','姓名6','13823888886','2021-04-17 21:24:31','故障描述6','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (1618666898502,'2021-04-17 21:41:38','11','11','12345678901','2021-04-01 00:00:00','<p>空调</p>','是','');
insert  into `baoxiuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`baoxiushijian`,`guzhangmiaoshu`,`sfsh`,`shhf`) values (1618668062864,'2021-04-17 22:01:02','2','2','12345678901','2021-04-02 00:00:00','<p>空调</p>','是','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7vwc6/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm7vwc6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm7vwc6/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);
insert  into `config`(`id`,`name`,`value`) values (7,'11','http://localhost:8080/ssm7vwc6/upload/1618667485327.jpg');
insert  into `config`(`id`,`name`,`value`) values (8,'2','http://localhost:8080/ssm7vwc6/upload/1618668562698.jpg');

/*Table structure for table `discussloupan` */

DROP TABLE IF EXISTS `discussloupan`;

CREATE TABLE `discussloupan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='楼盘评论表';

/*Data for the table `discussloupan` */

insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-17 21:24:31',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-04-17 21:24:31',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-04-17 21:24:31',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-04-17 21:24:31',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-04-17 21:24:31',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussloupan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-04-17 21:24:31',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusstousuguanli` */

DROP TABLE IF EXISTS `discusstousuguanli`;

CREATE TABLE `discusstousuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='投诉管理评论表';

/*Data for the table `discusstousuguanli` */

insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-04-17 21:24:31',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (162,'2021-04-17 21:24:31',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (163,'2021-04-17 21:24:31',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (164,'2021-04-17 21:24:31',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (165,'2021-04-17 21:24:31',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusstousuguanli`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (166,'2021-04-17 21:24:31',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `loupan` */

DROP TABLE IF EXISTS `loupan`;

CREATE TABLE `loupan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `loufangjieshao` longtext COMMENT '楼房介绍',
  `loupanweizhi` varchar(200) DEFAULT NULL COMMENT '楼盘位置',
  `loufangleixing` varchar(200) DEFAULT NULL COMMENT '楼房类型',
  `loucengshuliang` int(11) DEFAULT NULL COMMENT '楼层数量',
  `loupanjiage` int(11) DEFAULT NULL COMMENT '楼盘价格',
  `loupanzhuangtai` varchar(200) DEFAULT NULL COMMENT '楼盘状态',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `kaipanshijian` datetime DEFAULT NULL COMMENT '开盘时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668243964 DEFAULT CHARSET=utf8 COMMENT='楼盘';

/*Data for the table `loupan` */

insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (21,'2021-04-17 21:24:31','楼房名称1','楼房介绍1','楼盘位置1','楼房类型1',1,1,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian1.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 22:00:15');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (22,'2021-04-17 21:24:31','楼房名称2','楼房介绍2','楼盘位置2','楼房类型2',2,2,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian2.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 21:59:09');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (23,'2021-04-17 21:24:31','楼房名称3','楼房介绍3','楼盘位置3','楼房类型3',3,3,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian3.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 21:24:31');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (24,'2021-04-17 21:24:31','楼房名称4','楼房介绍4','楼盘位置4','楼房类型4',4,4,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian4.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 21:24:31');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (25,'2021-04-17 21:24:31','楼房名称5','楼房介绍5','楼盘位置5','楼房类型5',5,5,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian5.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 21:24:31');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (26,'2021-04-17 21:24:31','楼房名称6','楼房介绍6','楼盘位置6','楼房类型6',6,6,'已售','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian6.jpg','2021-04-17 21:24:31','2021-04-17 21:24:31','2021-04-17 21:24:31');
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (1618667114081,'2021-04-17 21:45:13','海景房','很好','上海','类型1',1,1,'未售','http://localhost:8080/ssm7vwc6/upload/1618667103821.jpg','2021-04-03 00:00:00','2021-04-08 00:00:00',NULL);
insert  into `loupan`(`id`,`addtime`,`loufangmingcheng`,`loufangjieshao`,`loupanweizhi`,`loufangleixing`,`loucengshuliang`,`loupanjiage`,`loupanzhuangtai`,`zhaopian`,`gengxinshijian`,`kaipanshijian`,`clicktime`) values (1618668243963,'2021-04-17 22:04:03','学区房','不错','北京','类型1',1,1,'未售','http://localhost:8080/ssm7vwc6/upload/1618668230181.jpg','2021-04-01 00:00:00','2021-04-09 00:00:00',NULL);

/*Table structure for table `loupanguanli` */

DROP TABLE IF EXISTS `loupanguanli`;

CREATE TABLE `loupanguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loufangmingcheng` varchar(200) DEFAULT NULL COMMENT '楼房名称',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chuzuloufang` int(11) DEFAULT NULL COMMENT '出租楼房',
  `yishouloufang` int(11) DEFAULT NULL COMMENT '已售楼房',
  `shengyuloufang` int(11) DEFAULT NULL COMMENT '剩余楼房',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668301407 DEFAULT CHARSET=utf8 COMMENT='楼盘管理';

/*Data for the table `loupanguanli` */

insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (41,'2021-04-17 21:24:31','楼房名称1','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian1.jpg',12,12,12);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (42,'2021-04-17 21:24:31','楼房名称2','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian2.jpg',2,2,2);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (43,'2021-04-17 21:24:31','楼房名称3','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian3.jpg',3,3,3);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (44,'2021-04-17 21:24:31','楼房名称4','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian4.jpg',4,4,4);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (45,'2021-04-17 21:24:31','楼房名称5','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian5.jpg',5,5,5);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (46,'2021-04-17 21:24:31','楼房名称6','http://localhost:8080/ssm7vwc6/upload/loupanguanli_zhaopian6.jpg',6,6,6);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (1618667174379,'2021-04-17 21:46:13','楼房名称1','http://localhost:8080/ssm7vwc6/upload/1618667167263.jpg',2,2,2);
insert  into `loupanguanli`(`id`,`addtime`,`loufangmingcheng`,`zhaopian`,`chuzuloufang`,`yishouloufang`,`shengyuloufang`) values (1618668301406,'2021-04-17 22:05:01','海景房','http://localhost:8080/ssm7vwc6/upload/1618668295647.jpg',11,11,11);

/*Table structure for table `loupanleixing` */

DROP TABLE IF EXISTS `loupanleixing`;

CREATE TABLE `loupanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668268936 DEFAULT CHARSET=utf8 COMMENT='楼盘类型';

/*Data for the table `loupanleixing` */

insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (31,'2021-04-17 21:24:31','类型1');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (32,'2021-04-17 21:24:31','类型2');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (33,'2021-04-17 21:24:31','类型3');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (34,'2021-04-17 21:24:31','类型4');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (35,'2021-04-17 21:24:31','类型5');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (36,'2021-04-17 21:24:31','类型6');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (1618667132653,'2021-04-17 21:45:31','类型7');
insert  into `loupanleixing`(`id`,`addtime`,`leixing`) values (1618668268935,'2021-04-17 22:04:28','类型8');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618667961308 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (141,'2021-04-17 21:24:31',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (142,'2021-04-17 21:24:31',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (143,'2021-04-17 21:24:31',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (144,'2021-04-17 21:24:31',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (145,'2021-04-17 21:24:31',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (146,'2021-04-17 21:24:31',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618666002842,'2021-04-17 21:26:41',11,'用户1','调范围',NULL);
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618666003094,'2021-04-17 21:26:42',11,'用户1','调范围',NULL);
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618666772056,'2021-04-17 21:39:31',1618666723802,'11','很好',NULL);
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618667961307,'2021-04-17 21:59:20',1618667888751,'2','不错',NULL);

/*Table structure for table `qianfeiyezhu` */

DROP TABLE IF EXISTS `qianfeiyezhu`;

CREATE TABLE `qianfeiyezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qianfeijine` int(11) DEFAULT NULL COMMENT '欠费金额',
  `zhinajin` int(11) DEFAULT NULL COMMENT '滞纳金',
  `haixujiaofeijine` int(11) DEFAULT NULL COMMENT '还需缴费金额',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668700873 DEFAULT CHARSET=utf8 COMMENT='欠费业主';

/*Data for the table `qianfeiyezhu` */

insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (111,'2021-04-17 21:24:31','账号1','姓名1','13823888881',1,1,1,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (112,'2021-04-17 21:24:31','账号2','姓名2','13823888882',2,2,2,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (113,'2021-04-17 21:24:31','账号3','姓名3','13823888883',3,3,3,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (114,'2021-04-17 21:24:31','账号4','姓名4','13823888884',4,4,4,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (115,'2021-04-17 21:24:31','账号5','姓名5','13823888885',5,5,5,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (116,'2021-04-17 21:24:31','账号6','姓名6','13823888886',6,6,6,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (1618667432469,'2021-04-17 21:50:31','11','11','12345678901',11,11,22,'已支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (1618668508118,'2021-04-17 22:08:27','3','3','12345678902',22,22,44,'未支付');
insert  into `qianfeiyezhu`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qianfeijine`,`zhinajin`,`haixujiaofeijine`,`ispay`) values (1618668700872,'2021-04-17 22:11:40','2','2','12345678902',22,22,44,'已支付');

/*Table structure for table `shoufeijieguo` */

DROP TABLE IF EXISTS `shoufeijieguo`;

CREATE TABLE `shoufeijieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiaofeizhuangtai` varchar(200) DEFAULT NULL COMMENT '缴费状态',
  `shoufeishijian` datetime DEFAULT NULL COMMENT '收费时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668534708 DEFAULT CHARSET=utf8 COMMENT='收费结果';

/*Data for the table `shoufeijieguo` */

insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (121,'2021-04-17 21:24:31','账号1','姓名1','手机1','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (122,'2021-04-17 21:24:31','账号2','姓名2','手机2','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (123,'2021-04-17 21:24:31','账号3','姓名3','手机3','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (124,'2021-04-17 21:24:31','账号4','姓名4','手机4','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (125,'2021-04-17 21:24:31','账号5','姓名5','手机5','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (126,'2021-04-17 21:24:31','账号6','姓名6','手机6','未缴费','2021-04-17 21:24:31');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (1618667456691,'2021-04-17 21:50:56','11','11','12345678901','已缴费','2021-04-16 00:00:00');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (1618668534275,'2021-04-17 22:08:54','2','2','12345678902','已缴费','2021-04-02 00:00:00');
insert  into `shoufeijieguo`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`jiaofeizhuangtai`,`shoufeishijian`) values (1618668534707,'2021-04-17 22:08:54','2','2','12345678902','已缴费','2021-04-02 00:00:00');

/*Table structure for table `shouhushoufeiguanli` */

DROP TABLE IF EXISTS `shouhushoufeiguanli`;

CREATE TABLE `shouhushoufeiguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `maifangshijian` date DEFAULT NULL COMMENT '买房时间',
  `shuidianfei` int(11) DEFAULT NULL COMMENT '水电费',
  `weishengqinglifei` int(11) DEFAULT NULL COMMENT '卫生清理费',
  `tingchefei` int(11) DEFAULT NULL COMMENT '停车费',
  `weixiufei` int(11) DEFAULT NULL COMMENT '维修费',
  `xujiaojine` int(11) DEFAULT NULL COMMENT '需缴金额',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668486767 DEFAULT CHARSET=utf8 COMMENT='售户收费管理';

/*Data for the table `shouhushoufeiguanli` */

insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (101,'2021-04-17 21:24:31','账号1','姓名1','13823888881','楼房号1','2021-04-17',1,1,1,1,1,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (102,'2021-04-17 21:24:31','账号2','姓名2','13823888882','楼房号2','2021-04-17',2,2,2,2,2,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (103,'2021-04-17 21:24:31','账号3','姓名3','13823888883','楼房号3','2021-04-17',3,3,3,3,3,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (104,'2021-04-17 21:24:31','账号4','姓名4','13823888884','楼房号4','2021-04-17',4,4,4,4,4,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (105,'2021-04-17 21:24:31','账号5','姓名5','13823888885','楼房号5','2021-04-17',5,5,5,5,5,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (106,'2021-04-17 21:24:31','账号6','姓名6','13823888886','楼房号6','2021-04-17',6,6,6,6,6,'未支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (1618667411508,'2021-04-17 21:50:10','11','11','12345678901','11','2021-04-10',11,11,11,11,44,'已支付');
insert  into `shouhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`maifangshijian`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (1618668486766,'2021-04-17 22:08:06','2','2','12345677902','2','2021-04-03',2,3,3,3,11,'已支付');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618667930423 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618666744789,'2021-04-17 21:39:03',1618666723802,21,'loupan','楼房名称1','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian1.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618667930422,'2021-04-17 21:58:50',1618667888751,21,'loupan','楼房名称1','http://localhost:8080/ssm7vwc6/upload/loupan_zhaopian1.jpg');

/*Table structure for table `tingchedengji` */

DROP TABLE IF EXISTS `tingchedengji`;

CREATE TABLE `tingchedengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `churuzheng` varchar(200) DEFAULT NULL COMMENT '出入证',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `cheliangdanwei` varchar(200) DEFAULT NULL COMMENT '车辆单位',
  `cheliangzhuangtai` varchar(200) DEFAULT NULL COMMENT '车辆状态',
  `jinkushijian` date DEFAULT NULL COMMENT '进库时间',
  `chukushijian` date DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668100595 DEFAULT CHARSET=utf8 COMMENT='停车登记';

/*Data for the table `tingchedengji` */

insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (81,'2021-04-17 21:24:31','账号1','姓名1','13823888881','出入证1','车牌号1','车型1','颜色1','车辆单位1','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (82,'2021-04-17 21:24:31','账号2','姓名2','13823888882','出入证2','车牌号2','车型2','颜色2','车辆单位2','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (83,'2021-04-17 21:24:31','账号3','姓名3','13823888883','出入证3','车牌号3','车型3','颜色3','车辆单位3','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (84,'2021-04-17 21:24:31','账号4','姓名4','13823888884','出入证4','车牌号4','车型4','颜色4','车辆单位4','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (85,'2021-04-17 21:24:31','账号5','姓名5','13823888885','出入证5','车牌号5','车型5','颜色5','车辆单位5','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (86,'2021-04-17 21:24:31','账号6','姓名6','13823888886','出入证6','车牌号6','车型6','颜色6','车辆单位6','入库','2021-04-17','2021-04-17');
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (1618666965134,'2021-04-17 21:42:44','11','11','12345678901','1','粤A333','粤111','白色','1','入库','2021-04-13',NULL);
insert  into `tingchedengji`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`churuzheng`,`chepaihao`,`chexing`,`yanse`,`cheliangdanwei`,`cheliangzhuangtai`,`jinkushijian`,`chukushijian`) values (1618668100594,'2021-04-17 22:01:40','2','2','12345678901','2','粤A222','粤333','白色','2','入库','2021-04-20',NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','gtpjnjnxyfu9rgwywx1mt7c8zu0omyym','2021-04-17 21:25:43','2021-04-17 22:25:44');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','feed7kkln978619xbbgqgv48nxxobw5a','2021-04-17 21:33:28','2021-04-17 23:13:16');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1618666723802,'11','yonghu','用户','uhhkhofh1hxsubcyicc27ok2grsizc3d','2021-04-17 21:38:52','2021-04-17 22:54:51');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1618667888751,'2','yonghu','用户','57lcqawralg6os21utgmz6f01qctpp8u','2021-04-17 21:58:15','2021-04-17 23:13:27');

/*Table structure for table `tousuguanli` */

DROP TABLE IF EXISTS `tousuguanli`;

CREATE TABLE `tousuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tousurenyuan` varchar(200) DEFAULT NULL COMMENT '投诉人员',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668043649 DEFAULT CHARSET=utf8 COMMENT='投诉管理';

/*Data for the table `tousuguanli` */

insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (51,'2021-04-17 21:24:31','账号1','姓名1','13823888881','保安','投诉内容1','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (52,'2021-04-17 21:24:31','账号2','姓名2','13823888882','保安','投诉内容2','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (53,'2021-04-17 21:24:31','账号3','姓名3','13823888883','保安','投诉内容3','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (54,'2021-04-17 21:24:31','账号4','姓名4','13823888884','保安','投诉内容4','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (55,'2021-04-17 21:24:31','账号5','姓名5','13823888885','保安','投诉内容5','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (56,'2021-04-17 21:24:31','账号6','姓名6','13823888886','保安','投诉内容6','2021-04-17 21:24:31','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (1618666925948,'2021-04-17 21:42:05','11','11','12345678901','保安','<p>不好</p>','2021-04-03 00:00:00','是','');
insert  into `tousuguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`tousurenyuan`,`tousuneirong`,`tousushijian`,`sfsh`,`shhf`) values (1618668043648,'2021-04-17 22:00:42','2','2','12345678901','保安','<p>不好</p>','2021-04-03 00:00:00','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 21:24:31');

/*Table structure for table `yezhuguanli` */

DROP TABLE IF EXISTS `yezhuguanli`;

CREATE TABLE `yezhuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `tongxindizhi` varchar(200) DEFAULT NULL COMMENT '通信地址',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `ruzhuloufanghao` varchar(200) NOT NULL COMMENT '入住楼房号',
  `ruzhushijian` date DEFAULT NULL COMMENT '入住时间',
  `qiyuejiaofangri` datetime DEFAULT NULL COMMENT '契约交房日',
  `jinjilianxiren` varchar(200) NOT NULL COMMENT '紧急联系人',
  `jinjilianxidianhua` varchar(200) NOT NULL COMMENT '紧急联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668410391 DEFAULT CHARSET=utf8 COMMENT='业主管理';

/*Data for the table `yezhuguanli` */

insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (71,'2021-04-17 21:24:31','姓名1','工作单位1','男','通信地址1','籍贯1','13823888881','440300199101010001','773890001@qq.com','入住楼房号1','2021-04-17','2021-04-17 21:24:31','紧急联系人1','13823888881');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (72,'2021-04-17 21:24:31','姓名2','工作单位2','男','通信地址2','籍贯2','13823888882','440300199202020002','773890002@qq.com','入住楼房号2','2021-04-17','2021-04-17 21:24:31','紧急联系人2','13823888882');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (73,'2021-04-17 21:24:31','姓名3','工作单位3','男','通信地址3','籍贯3','13823888883','440300199303030003','773890003@qq.com','入住楼房号3','2021-04-17','2021-04-17 21:24:31','紧急联系人3','13823888883');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (74,'2021-04-17 21:24:31','姓名4','工作单位4','男','通信地址4','籍贯4','13823888884','440300199404040004','773890004@qq.com','入住楼房号4','2021-04-17','2021-04-17 21:24:31','紧急联系人4','13823888884');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (75,'2021-04-17 21:24:31','姓名5','工作单位5','男','通信地址5','籍贯5','13823888885','440300199505050005','773890005@qq.com','入住楼房号5','2021-04-17','2021-04-17 21:24:31','紧急联系人5','13823888885');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (76,'2021-04-17 21:24:31','姓名6','工作单位6','男','通信地址6','籍贯6','13823888886','440300199606060006','773890006@qq.com','入住楼房号6','2021-04-17','2021-04-17 21:24:31','紧急联系人6','13823888886');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (1618667319544,'2021-04-17 21:48:39','1','1','男','1','1','12345678903','177879654378909876','2543667890@qq.com','23','2021-04-26','2021-04-26 00:00:00','22','12345678654');
insert  into `yezhuguanli`(`id`,`addtime`,`xingming`,`gongzuodanwei`,`xingbie`,`tongxindizhi`,`jiguan`,`shouji`,`shenfenzheng`,`youxiang`,`ruzhuloufanghao`,`ruzhushijian`,`qiyuejiaofangri`,`jinjilianxiren`,`jinjilianxidianhua`) values (1618668410390,'2021-04-17 22:06:49','3','3','男','3','3','12345678903','123656787656787654','2345778987@qq.com','33','2021-04-28','2021-05-20 00:00:00','33','12345678909');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668168652 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (11,'2021-04-17 21:24:31','用户1','123456','姓名1','男','13823888881','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (12,'2021-04-17 21:24:31','用户2','123456','姓名2','男','13823888882','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (13,'2021-04-17 21:24:31','用户3','123456','姓名3','男','13823888883','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (14,'2021-04-17 21:24:31','用户4','123456','姓名4','男','13823888884','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (15,'2021-04-17 21:24:31','用户5','123456','姓名5','男','13823888885','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (16,'2021-04-17 21:24:31','用户6','123456','姓名6','男','13823888886','http://localhost:8080/ssm7vwc6/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (1618666506733,'2021-04-17 21:35:06','1','1','1','男','12222222222','');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (1618666723802,'2021-04-17 21:38:43','11','111','11','男','12345678901','http://localhost:8080/ssm7vwc6/upload/1618666799979.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (1618667888751,'2021-04-17 21:58:08','2','22','2','男','12345678901','http://localhost:8080/ssm7vwc6/upload/1618667979444.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (1618668168651,'2021-04-17 22:02:48','22','22','22','男','12345678902','http://localhost:8080/ssm7vwc6/upload/1618668168366.jpg');

/*Table structure for table `zuhushoufeiguanli` */

DROP TABLE IF EXISTS `zuhushoufeiguanli`;

CREATE TABLE `zuhushoufeiguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `zufangshijian` date DEFAULT NULL COMMENT '租房时间',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `shuidianfei` int(11) DEFAULT NULL COMMENT '水电费',
  `weishengqinglifei` int(11) DEFAULT NULL COMMENT '卫生清理费',
  `tingchefei` int(11) DEFAULT NULL COMMENT '停车费',
  `weixiufei` int(11) DEFAULT NULL COMMENT '维修费',
  `xujiaojine` int(11) DEFAULT NULL COMMENT '需缴金额',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618668455043 DEFAULT CHARSET=utf8 COMMENT='租户收费管理';

/*Data for the table `zuhushoufeiguanli` */

insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (91,'2021-04-17 21:24:31','账号1','姓名1','13823888881','楼房号1','2021-04-17',1,1,1,1,1,1,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (92,'2021-04-17 21:24:31','账号2','姓名2','13823888882','楼房号2','2021-04-17',2,2,2,2,2,2,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (93,'2021-04-17 21:24:31','账号3','姓名3','13823888883','楼房号3','2021-04-17',3,3,3,3,3,3,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (94,'2021-04-17 21:24:31','账号4','姓名4','13823888884','楼房号4','2021-04-17',4,4,4,4,4,4,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (95,'2021-04-17 21:24:31','账号5','姓名5','13823888885','楼房号5','2021-04-17',5,5,5,5,5,5,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (96,'2021-04-17 21:24:31','账号6','姓名6','13823888886','楼房号6','2021-04-17',6,6,6,6,6,6,'未支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (1618667378633,'2021-04-17 21:49:38','11','11','12345678901','11','2021-04-09',11,11,11,11,11,55,'已支付');
insert  into `zuhushoufeiguanli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`zufangshijian`,`zujin`,`shuidianfei`,`weishengqinglifei`,`tingchefei`,`weixiufei`,`xujiaojine`,`ispay`) values (1618668455042,'2021-04-17 22:07:34','2','2','12345678902','2','2021-04-02',2,2,2,2,2,10,'已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
