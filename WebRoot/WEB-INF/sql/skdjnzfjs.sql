# Host: localhost  (Version 5.5.27)
# Date: 2018-08-08 09:13:18
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "t_department"
#

DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `Did` int(11) NOT NULL AUTO_INCREMENT COMMENT '机关部门id',
  `Dname` varchar(20) DEFAULT NULL COMMENT '机关部门名称',
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='机关部门表';

#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `Uname` varchar(20) DEFAULT NULL COMMENT '用户名（教师名）',
  `Upwd` varchar(255) DEFAULT NULL COMMENT '用户登录密码',
  `Role` int(2) DEFAULT NULL COMMENT '用户权限',
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Structure for table "t_vote"
#

DROP TABLE IF EXISTS `t_vote`;
CREATE TABLE `t_vote` (
  `Vid` int(11) NOT NULL AUTO_INCREMENT COMMENT '投票记录id（自增）',
  `Gzzz` int(2) NOT NULL DEFAULT '0' COMMENT '工作职责方面',
  `Gzcx` int(2) NOT NULL DEFAULT '0' COMMENT '工作程序方面',
  `Zcnl` int(2) NOT NULL DEFAULT '0' COMMENT '政策能力方面',
  `Xtgt` int(2) NOT NULL DEFAULT '0' COMMENT '协调沟通方面',
  `Gzjl` int(2) NOT NULL DEFAULT '0' COMMENT '工作纪律方面',
  `Gzln` int(2) NOT NULL DEFAULT '0' COMMENT '工作理念方面',
  `Type` varchar(1) DEFAULT NULL COMMENT '投票类别（A、B、C）',
  `Time` varchar(20) DEFAULT NULL COMMENT '测评日期（2017-2018/1/1）',
  `department_Did` int(11) DEFAULT NULL COMMENT '被测评机关部门',
  `user_Uid` int(11) DEFAULT NULL COMMENT '录入信息人员',
  `Logstime` varchar(25) DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`Vid`),
  KEY `FK_department_Did` (`department_Did`),
  KEY `FK_user_Uid` (`user_Uid`),
  CONSTRAINT `FK_department_Did` FOREIGN KEY (`department_Did`) REFERENCES `t_department` (`Did`),
  CONSTRAINT `FK_user_Uid` FOREIGN KEY (`user_Uid`) REFERENCES `t_user` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='投票记录表';
