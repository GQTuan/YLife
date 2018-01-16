-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.14 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 ylife 的数据库结构
DROP DATABASE IF EXISTS `ylife`;
CREATE DATABASE IF NOT EXISTS `ylife` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ylife`;

-- 导出  表 ylife.admin_deposit 结构
DROP TABLE IF EXISTS `admin_deposit`;
CREATE TABLE IF NOT EXISTS `admin_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `user_id` int(11) DEFAULT '0' COMMENT '头寸用户',
  `admin_id` int(11) NOT NULL COMMENT '账号',
  `amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员保证金记录表';

-- 正在导出表  ylife.admin_deposit 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `admin_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_deposit` ENABLE KEYS */;

-- 导出  表 ylife.admin_menu 结构
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(30) NOT NULL COMMENT '菜单名',
  `pid` int(11) DEFAULT '0' COMMENT '父ID',
  `level` smallint(6) DEFAULT '1' COMMENT '层级',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `url` varchar(250) DEFAULT '' COMMENT '跳转链接',
  `icon` varchar(250) DEFAULT NULL COMMENT '图标',
  `is_show` tinyint(4) DEFAULT '1' COMMENT '是否显示',
  `category` tinyint(4) DEFAULT '1' COMMENT '菜单分类',
  `state` tinyint(4) DEFAULT '1' COMMENT '状态',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- 正在导出表  ylife.admin_menu 的数据：~54 rows (大约)
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `name`, `pid`, `level`, `sort`, `url`, `icon`, `is_show`, `category`, `state`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, '系统管理', 0, 1, 1, 'system', '<i class="Hui-iconfont">&#xe62e;</i>', 1, 1, 1, '2016-08-22 17:54:31', 1, '2016-10-28 15:03:56', 1),
	(2, '系统设置', 1, 2, 2, 'system/setting', '', 1, 1, 1, '2016-08-22 17:54:58', 1, '2016-08-22 17:54:58', 1),
	(3, '系统菜单', 1, 2, 3, 'system/menu', '', 1, 1, 1, '2016-08-22 17:55:35', 1, '2016-08-22 18:59:43', 1),
	(4, '系统日志', 1, 2, 4, 'system/logList', '', 1, 1, 1, '2016-08-22 18:42:11', 1, '2016-09-02 11:40:45', 1),
	(5, '管理员管理', 0, 1, 3, 'admin', '<i class="Hui-iconfont">&#xe62d;</i>', 1, 1, 1, '2016-08-22 18:43:29', 1, '2016-10-28 15:03:56', 1),
	(6, '管理员列表', 5, 2, 2, 'admin/list', '', 1, 1, 1, '2016-08-22 18:46:24', 1, '2016-08-22 18:46:24', 1),
	(7, '角色列表', 5, 2, 3, 'admin/roleList', '', 1, 1, 1, '2016-08-22 18:46:50', 1, '2016-08-30 18:25:01', 1),
	(8, '权限列表', 5, 2, 4, 'admin/permissionList', '', 1, 1, 1, '2016-08-22 18:47:10', 1, '2016-08-30 18:24:58', 1),
	(9, '会员管理', 0, 1, 3, 'user', '<i class="Hui-iconfont">&#xe60d;</i>', 1, 1, 1, '2016-08-22 18:47:49', 1, '2016-10-28 15:03:56', 1),
	(10, '会员列表', 9, 2, 2, 'user/list', '', 1, 1, 1, '2016-08-22 18:48:13', 1, '2016-08-27 19:45:26', 1),
	(11, '经纪人管理', 0, 1, 8, 'retail', '<i class="Hui-iconfont">&#xe616;</i>', 1, 1, 1, '2016-08-22 18:48:55', 1, '2017-03-13 15:10:53', 1),
	(12, '代理商列表', 11, 2, 2, 'retail/list', '', 1, 1, -1, '2016-08-22 18:49:15', 1, '2016-11-28 16:49:54', 1),
	(13, '体验券管理', 0, 1, 7, 'coupon', '<i class="Hui-iconfont">&#xe613;</i>', 1, 1, 1, '2016-08-22 18:49:39', 1, '2016-10-28 15:07:00', 1),
	(14, '体验券列表', 13, 2, 2, 'coupon/list', '', 1, 1, 1, '2016-08-22 18:49:54', 1, '2016-10-28 15:07:04', 1),
	(15, '产品管理', 0, 1, 5, 'product', '<i class="Hui-iconfont">&#xe620;</i>', 1, 1, 1, '2016-08-22 18:51:04', 1, '2016-10-28 15:03:56', 1),
	(16, '产品列表', 15, 2, 2, 'product/list', '', 1, 1, 1, '2016-08-22 18:51:18', 1, '2016-08-22 18:51:18', 1),
	(17, '分销管理', 0, 1, 6, 'sale', '<i class="Hui-iconfont">&#xe622;</i>', 1, 1, -1, '2016-08-22 18:51:35', 1, '2016-10-28 15:03:56', 1),
	(18, '经纪人列表', 17, 2, 2, 'sale/managerList', '', 1, 1, -1, '2016-08-22 18:52:10', 1, '2016-10-28 15:48:01', 1),
	(19, '订单管理', 0, 1, 4, 'order', '<i class="Hui-iconfont">&#xe61a;</i>', 1, 1, 1, '2016-08-22 19:00:05', 1, '2016-10-28 15:03:56', 1),
	(20, '用户持有体验券', 13, 2, 3, 'coupon/ownerList', '', 1, 1, 1, '2016-10-27 14:50:18', 1, '2016-10-28 15:27:50', 1),
	(21, '会员持仓列表', 9, 2, 3, 'user/positionList', '', 1, 1, 1, '2016-10-27 15:32:31', 1, '2016-10-28 09:27:38', 1),
	(22, '会员赠金', 9, 2, 4, 'user/giveList', '', 1, 1, 1, '2016-10-27 15:33:45', 1, '2016-10-27 19:55:55', 1),
	(23, '会员出金', 9, 2, 5, 'user/withdrawList', '', 1, 1, 1, '2016-10-27 15:34:11', 1, '2016-10-27 19:55:59', 1),
	(24, '会员充值记录', 9, 2, 6, 'user/chargeRecordList', '', 1, 1, 1, '2016-10-27 15:36:04', 1, '2016-10-27 19:56:07', 1),
	(25, '订单列表', 19, 2, 2, 'order/list', '', 1, 1, 1, '2016-10-27 21:10:41', 1, '2016-10-27 21:10:41', 1),
	(26, '风险管理', 0, 1, 9, 'risk', '<i class="Hui-iconfont">&#xe65a;</i>', 1, 1, 1, '2016-10-29 10:45:01', 1, '2016-10-29 10:50:36', 1),
	(27, '风险控制', 26, 2, 2, 'risk/center', '', 1, 1, 1, '2016-10-29 10:45:37', 1, '2016-10-29 10:45:37', 1),
	(28, '审核经纪人', 9, 2, 7, 'user/verifyManager', '', 1, 1, -1, '2016-10-31 17:06:34', 1, '2016-10-31 17:06:34', 1),
	(29, '经纪人列表', 11, 2, 3, 'sale/managerList', '', 1, 1, 1, '2016-11-30 18:00:01', 1, '2016-11-30 18:00:01', 1),
	(30, '审核经纪人', 11, 2, 4, 'user/verifyManager', '', 1, 1, 1, '2016-11-30 18:00:25', 1, '2016-11-30 18:00:25', 1),
	(31, '代理商返点统计', 11, 2, 5, 'sale/managerRebateList', '', 1, 1, -1, '2016-12-06 15:50:40', 1, '2016-12-06 16:07:32', 1),
	(32, '总返点记录列表', 11, 2, 6, 'user/rebateList', '', 1, 1, -1, '2016-12-06 15:51:19', 1, '2016-12-06 16:07:37', 1),
	(33, '结算会员', 5, 2, 5, 'admin/settle', '', 1, 1, -1, '2017-03-10 16:34:17', 1, '2017-03-10 16:34:56', 1),
	(34, '运营中心', 5, 2, 6, 'admin/operate', '', 1, 1, -1, '2017-03-10 16:35:00', 1, '2017-03-10 16:35:00', 1),
	(35, '微会员', 5, 2, 7, 'admin/member', '', 1, 1, -1, '2017-03-10 16:35:15', 1, '2017-03-10 16:35:15', 1),
	(36, '微圈', 5, 2, 8, 'admin/ring', '', 1, 1, -1, '2017-03-10 16:36:01', 1, '2017-03-10 16:36:01', 1),
	(37, '组织架构', 0, 1, 2, 'group', '<i class="Hui-iconfont"></i>', 1, 1, 1, '2017-03-13 15:00:41', 1, '2017-03-13 15:03:36', 1),
	(38, '结算会员', 0, 1, 10, 'admin/settle', '', 1, 1, -1, '2017-03-13 15:03:08', 1, '2017-03-13 15:03:08', 1),
	(39, '结算会员', 37, 2, 2, 'admin/settle', '', 1, 1, 1, '2017-03-13 15:03:49', 1, '2017-03-13 15:03:57', 1),
	(40, '运营中心', 37, 2, 3, 'admin/operate', '', 1, 1, 1, '2017-03-13 15:04:14', 1, '2017-03-13 15:04:14', 1),
	(41, '微会员', 37, 2, 4, 'admin/member', '', 1, 1, 1, '2017-03-13 15:04:25', 1, '2017-03-13 15:04:25', 1),
	(42, '微圈', 37, 2, 5, 'admin/ring', '', 1, 1, 1, '2017-03-13 15:04:40', 1, '2017-03-13 15:04:40', 1),
	(43, '记录管理', 0, 1, 11, 'record', '<i class="Hui-iconfont"></i>', 1, 1, 1, '2017-03-13 15:13:14', 1, '2017-03-13 15:20:52', 1),
	(44, '手续费提现记录', 43, 2, 2, 'record/feeRecord', '', 1, 1, 1, '2017-03-13 15:19:02', 1, '2017-03-13 15:19:02', 1),
	(45, '保证金操作记录', 43, 2, 3, 'record/depositRecord', '', 1, 1, 1, '2017-03-13 15:19:27', 1, '2017-03-13 15:19:27', 1),
	(46, '经纪人返点记录', 43, 2, 4, 'user/managerRebateList', '', 1, 1, 1, '2017-03-13 15:20:16', 1, '2017-03-14 14:42:48', 1),
	(47, '管理员返点记录', 43, 2, 5, 'user/adminRebateList', '', 1, 1, 1, '2017-03-14 14:43:05', 1, '2017-03-14 14:43:05', 1),
	(48, '微会员公众号记录', 43, 2, 6, 'record/ringWechatList', '', 1, 1, 1, '2017-03-14 18:07:23', 1, '2017-03-15 17:42:52', 1),
	(49, '管理员列表', 37, 2, 6, 'admin/myAdminuserList', '', 1, 1, 1, '2017-03-15 11:55:23', 1, '2017-03-15 11:55:23', 1),
	(50, '用户头寸统计记录', 43, 2, 7, 'record/depositList', '', 1, 1, 1, '2017-03-16 14:03:46', 1, '2017-03-16 14:04:52', 1),
	(51, '系统公告', 1, 2, 5, 'article/notice', '', 1, 1, 1, '2017-03-22 18:30:23', 1, '2017-03-22 18:30:23', 1),
	(52, '赠金记录', 9, 2, 8, 'user/giveMoneyList', '', 1, 1, 1, '2017-03-28 14:42:15', 1, '2017-03-28 14:42:15', 1),
	(53, '公众号消息列表', 43, 2, 8, 'record/newsWechat', '', 1, 1, 1, '2017-04-08 09:40:56', 1, '2017-04-08 09:40:56', 1),
	(54, '变更经纪人列表', 11, 2, 7, 'user/updateManager', '', 1, 1, 1, '2017-04-13 18:02:13', 1, '2017-04-13 18:02:13', 1);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- 导出  表 ylife.admin_user 结构
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '账号',
  `password` varchar(80) NOT NULL COMMENT '密码',
  `realname` varchar(30) NOT NULL DEFAULT '' COMMENT '真名',
  `pid` int(11) DEFAULT '0' COMMENT '上级',
  `power` int(11) DEFAULT '10000' COMMENT '权力值',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `state` tinyint(4) DEFAULT '1' COMMENT '状态',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- 正在导出表  ylife.admin_user 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` (`id`, `username`, `password`, `realname`, `pid`, `power`, `mobile`, `state`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, 'ChisWill', '$2y$13$FgkliJ5TgUoKXuL4dqLSje5dVVBwYr1yPfJ8qbPoBRDK3EBrMmsHW', 'ChisWill', 0, 10000, '13915922200', 1, '2016-08-06 23:36:12', 0, '2017-04-11 18:13:22', 1),
	(2, 'admin', '$2y$13$e5m2stZQfqCLLeTZbsO5Ve658hnPf1OJGDEqSvwUAD8MlNGGpqcxy', 'admin', 0, 9999, '13825060143', 1, '2016-10-26 17:41:00', 2, '2017-04-21 14:11:21', 2),
	(3, '结算会员', '$2y$13$.tK1.88Oa.cPYPBTc25FRezudlaW78DNPOSyQcHKNwCdoRDQ3Nf8G', '结算会员', 2, 9998, '13915922200', 1, '2017-03-13 11:47:26', 2, '2017-03-13 11:47:26', 2),
	(4, '运营中心', '$2y$13$.tK1.88Oa.cPYPBTc25FRezudlaW78DNPOSyQcHKNwCdoRDQ3Nf8G', '运营中心', 3, 9997, '13915922200', 1, '2017-03-13 11:48:08', 2, '2017-03-13 11:48:08', 2),
	(5, '微会员', '$2y$13$.tK1.88Oa.cPYPBTc25FRezudlaW78DNPOSyQcHKNwCdoRDQ3Nf8G', '微会员', 4, 9996, '18697999997', 1, '2017-03-13 11:48:51', 2, '2017-04-26 13:22:32', 5),
	(6, '微圈', '$2y$13$S5MYW08iV/W9ujUQP5Gl1uHhdRx.5iBwAWVvVX0v8sTXOAwWbRRFy', '微圈', 5, 9995, '13945677777', 1, '2017-04-26 16:03:39', 2, '2017-04-26 16:03:39', 2),
	(7, '客服', '$2y$13$.tK1.88Oa.cPYPBTc25FRezudlaW78DNPOSyQcHKNwCdoRDQ3Nf8G', '客服', 0, 9999, '13915922200', 1, '2017-03-15 11:58:08', 2, '2017-04-10 13:50:14', 7),
	(8, '财务', '$2y$13$.tK1.88Oa.cPYPBTc25FRezudlaW78DNPOSyQcHKNwCdoRDQ3Nf8G', '财务', 0, 9999, '13915922200', 1, '2017-03-16 16:37:17', 2, '2017-04-25 12:08:11', 8);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;

-- 导出  表 ylife.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `publish_time` datetime NOT NULL COMMENT '发生时间',
  `category` tinyint(4) DEFAULT '1' COMMENT '分类',
  `admin_id` int(10) DEFAULT '0' COMMENT '公众号id',
  `state` tinyint(4) DEFAULT '1' COMMENT '状态',
  `created_at` datetime DEFAULT NULL COMMENT '发布时间',
  `created_by` int(11) DEFAULT NULL COMMENT '发布人',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `updated_by` int(11) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资讯表';

-- 正在导出表  ylife.article 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`, `title`, `content`, `publish_time`, `category`, `admin_id`, `state`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, '通知', '<p>尊敬的客户：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 平台服务器将在明天（4月17日）上午9点到12点进行升级维护，所以明天开盘时间推迟到中午12点，给各位带来不便，深表歉意 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 交易中心<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 16px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年4月16日</p><p><br/></p>', '2017-04-16 19:14:23', 1, 0, -1, '2017-03-22 18:32:25', 2, '2017-04-17 12:24:15', 1),
	(2, '测试消息', '<p>尊敬的客户：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 平台测试服务器将在明天（4月9日）凌晨4点到6点进行升级维护，给各位带来不便，深表歉意 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 交易中心<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 16px;"></span> 2017年4月8日</p><p><br/></p>', '2017-04-08 09:46:18', 2, 5, 1, '2017-04-08 09:46:18', 1, '2017-04-08 09:46:18', 1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 ylife.auth_assignment 结构
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  ylife.auth_assignment 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
	('客服', '7', 1489550288),
	('微会员', '5', 1489376931),
	('微圈', '6', 1489377117),
	('结算会员', '3', 1489376846),
	('财务', '8', 1489653437),
	('超级管理员', '2', 1472551696),
	('运营中心', '4', 1489376888);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;

-- 导出  表 ylife.auth_item 结构
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  ylife.auth_item 的数据：~87 rows (大约)
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
	('frontendAdminAddPermission', 2, '添加权限', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminAjaxDeleteAdmin', 2, '删除管理员', NULL, NULL, 1477473346, 1477473346),
	('frontendAdminAjaxDeleteRole', 2, '删除角色', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminAjaxRoleInfo', 2, '查看角色权限', NULL, NULL, 1472543566, 1472543566),
	('frontendAdminAjaxSubUser', 2, 'ajax获取此类型上级用户', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminAjaxUpdatePermission', 2, '修改权限', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminCreateAdmin', 2, '创建/修改用户关联', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminCreateRole', 2, '创建角色', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminDepositWithdraw', 2, '保证金修改', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminEditPoint', 2, '组织架构成员的返点修改', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminEditRole', 2, '编辑角色', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminFeeWithdraw', 2, '手续费提现', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminList', 2, '管理员列表', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminMember', 2, '微会员', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminMyAdminuserList', 2, '我的管理员列表', NULL, NULL, 1489570588, 1489570588),
	('frontendAdminOperate', 2, '运营中心', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminPermissionList', 2, '权限列表', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminRing', 2, '微圈', NULL, NULL, 1489398916, 1489398916),
	('frontendAdminRoleList', 2, '角色列表', NULL, NULL, 1472525853, 1472525853),
	('frontendAdminSaveAdmin', 2, '创建/修改管理员', NULL, NULL, 1477473346, 1477473346),
	('frontendAdminSettle', 2, '结算会员', NULL, NULL, 1489398916, 1489398916),
	('frontendArticleDeleteArticle', 2, '删除资讯', NULL, NULL, 1477837454, 1477837454),
	('frontendArticleList', 2, '资讯列表', NULL, NULL, 1472720497, 1472723714),
	('frontendArticleNotice', 2, '系统公告', NULL, NULL, 1490178644, 1490178644),
	('frontendArticleSaveArticle', 2, '添加/编辑资讯', NULL, NULL, 1477837454, 1477837454),
	('frontendCouponCreateCoupon', 2, '添加体验券', NULL, NULL, 1477837454, 1477837454),
	('frontendCouponList', 2, '体验券列表', NULL, NULL, 1477837454, 1477837454),
	('frontendCouponOwnerList', 2, '会员体验券列表', NULL, NULL, 1477837454, 1477837512),
	('frontendOrderList', 2, '订单列表', NULL, NULL, 1477837454, 1477837454),
	('frontendOrderSellOrder', 2, '手动平仓', NULL, NULL, 1480586668, 1480586668),
	('frontendProductAddProduct', 2, '添加特殊产品', NULL, NULL, 1490178644, 1490178644),
	('frontendProductAddStock', 2, '添加股票', NULL, NULL, 1480586668, 1480586668),
	('frontendProductAjaxAllDown', 2, '一键下架产品', NULL, NULL, 1477837454, 1477837454),
	('frontendProductAjaxAllUp', 2, '一键上架产品', NULL, NULL, 1477837454, 1477837454),
	('frontendProductDeletePrice', 2, '删除产品价格', NULL, NULL, 1477837454, 1477837504),
	('frontendProductList', 2, '产品列表', NULL, NULL, 1477837454, 1477837454),
	('frontendProductSetTradePrice', 2, '设置交易价格', NULL, NULL, 1477837454, 1477837454),
	('frontendProductSetTradeTime', 2, '设置交易时间', NULL, NULL, 1477837454, 1477837454),
	('frontendRecordAddRingWechat', 2, '创建微会员公众号', NULL, NULL, 1489547723, 1489547723),
	('frontendRecordDepositList', 2, '用户头寸统计记录', NULL, NULL, 1489646692, 1489646692),
	('frontendRecordDepositRecord', 2, '保证金操作记录', NULL, NULL, 1489398916, 1489398916),
	('frontendRecordFeeRecord', 2, '手续费提现记录', NULL, NULL, 1489398916, 1489398916),
	('frontendRecordNewsWechat', 2, '公众号消息列表', NULL, NULL, 1491615676, 1491615676),
	('frontendRecordRingWechatList', 2, '微会员公众号记录', NULL, NULL, 1489547723, 1489547723),
	('frontendRecordSaveNewsWechat', 2, '添加/编辑公众号消息', NULL, NULL, 1491615676, 1491615676),
	('frontendRecordSendMessage', 2, '推送微信图文消息', NULL, NULL, 1491615676, 1491615676),
	('frontendRetailList', 2, '代理商列表', NULL, NULL, 1480586668, 1480586668),
	('frontendRetailSaveRetail', 2, '添加/编辑会员单位', NULL, NULL, 1480586668, 1480586668),
	('frontendRiskCenter', 2, '风险控制', NULL, NULL, 1477837454, 1477837454),
	('frontendSaleEditPoint', 2, '修改经纪人返点%', NULL, NULL, 1480586668, 1480586668),
	('frontendSaleManagerList', 2, '经纪人列表', NULL, NULL, 1477837454, 1477837454),
	('frontendSaleManagerRebateList', 2, '代理商返点统计', NULL, NULL, 1481010977, 1481010977),
	('frontendSystemAddSetting', 2, '添加系统设置', NULL, NULL, 1472720497, 1472720497),
	('frontendSystemDeleteSetting', 2, '删除系统设置', NULL, NULL, 1472720497, 1472720497),
	('frontendSystemDestroy', 2, '一键销毁数据', NULL, NULL, 1480586668, 1480586668),
	('frontendSystemLogDetail', 2, '查看日志详情', NULL, NULL, 1472794349, 1472794349),
	('frontendSystemLogList', 2, '系统日志', NULL, NULL, 1472794349, 1472794349),
	('frontendSystemMenu', 2, '系统菜单', NULL, NULL, 1472525853, 1472525853),
	('frontendSystemSaveSetting', 2, '修改系统设置', NULL, NULL, 1472720497, 1472720497),
	('frontendSystemSetting', 2, '系统设置', NULL, NULL, 1472525853, 1472525853),
	('frontendUserAdminRebateList', 2, '管理员返点记录列表', NULL, NULL, 1489474473, 1489474473),
	('frontendUserChargeRecordList', 2, '会员充值记录', NULL, NULL, 1477837454, 1477837454),
	('frontendUserDeleteUser', 2, '冻结/恢复用户', NULL, NULL, 1477837454, 1477837454),
	('frontendUserEditUserPass', 2, '修改会员密码', NULL, NULL, 1477837454, 1477837454),
	('frontendUserGiveList', 2, '会员赠金', NULL, NULL, 1477837454, 1477837454),
	('frontendUserGiveMoneyList', 2, '赠金记录', NULL, NULL, 1490683373, 1490683373),
	('frontendUserList', 2, '会员列表', NULL, NULL, 1477837454, 1477837454),
	('frontendUserManagerRebateList', 2, '经纪人返点记录列表', NULL, NULL, 1489474473, 1489474473),
	('frontendUserPositionList', 2, '会员持仓列表', NULL, NULL, 1477837454, 1477837454),
	('frontendUserPush', 2, 'push', NULL, NULL, 1491615676, 1491615676),
	('frontendUserRebateList', 2, '返点记录列表', NULL, NULL, 1480586668, 1480586668),
	('frontendUserSendCoupon', 2, '赠送优惠券', NULL, NULL, 1477837454, 1477837454),
	('frontendUserUpdateManager', 2, '变更会员经纪人', NULL, NULL, 1492077798, 1492077798),
	('frontendUserUserExcel', 2, '用户信息导出', NULL, NULL, 1491472479, 1491472479),
	('frontendUserVerifyManager', 2, '审核经纪人', NULL, NULL, 1477921692, 1477921692),
	('frontendUserVerifyWithdraw', 2, '会员出金操作', NULL, NULL, 1477837454, 1477837454),
	('frontendUserWithdrawList', 2, '会员出金管理', NULL, NULL, 1477837454, 1477837454),
	('公共功能', 1, 'frontend', NULL, NULL, 1489547291, 1490925667),
	('后台管理员', 1, 'frontend', NULL, NULL, 1477837542, 1492077809),
	('客服', 1, 'frontend', NULL, NULL, 1489132145, 1492077823),
	('微会员', 1, 'frontend', NULL, NULL, 1489131952, 1491615774),
	('微圈', 1, 'frontend', NULL, NULL, 1489132055, 1489474554),
	('系统管理员', 1, 'frontend', NULL, NULL, 1472433243, 1491472500),
	('结算会员', 1, 'frontend', NULL, NULL, 1480500162, 1489547785),
	('财务', 1, 'frontend', NULL, NULL, 1489653376, 1491805238),
	('超级管理员', 1, 'frontend', NULL, NULL, 1472448576, 1489547806),
	('运营中心', 1, 'frontend', NULL, NULL, 1489131915, 1489547796);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;

-- 导出  表 ylife.auth_item_child 结构
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  ylife.auth_item_child 的数据：~193 rows (大约)
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
	('系统管理员', 'frontendAdminAjaxRoleInfo'),
	('后台管理员', 'frontendAdminAjaxSubUser'),
	('客服', 'frontendAdminAjaxSubUser'),
	('结算会员', 'frontendAdminAjaxSubUser'),
	('财务', 'frontendAdminAjaxSubUser'),
	('运营中心', 'frontendAdminAjaxSubUser'),
	('后台管理员', 'frontendAdminCreateAdmin'),
	('客服', 'frontendAdminCreateAdmin'),
	('微会员', 'frontendAdminCreateAdmin'),
	('结算会员', 'frontendAdminCreateAdmin'),
	('财务', 'frontendAdminCreateAdmin'),
	('运营中心', 'frontendAdminCreateAdmin'),
	('系统管理员', 'frontendAdminCreateRole'),
	('后台管理员', 'frontendAdminDepositWithdraw'),
	('客服', 'frontendAdminDepositWithdraw'),
	('财务', 'frontendAdminDepositWithdraw'),
	('后台管理员', 'frontendAdminEditPoint'),
	('客服', 'frontendAdminEditPoint'),
	('微会员', 'frontendAdminEditPoint'),
	('结算会员', 'frontendAdminEditPoint'),
	('财务', 'frontendAdminEditPoint'),
	('运营中心', 'frontendAdminEditPoint'),
	('系统管理员', 'frontendAdminEditRole'),
	('后台管理员', 'frontendAdminFeeWithdraw'),
	('客服', 'frontendAdminFeeWithdraw'),
	('财务', 'frontendAdminFeeWithdraw'),
	('后台管理员', 'frontendAdminMember'),
	('客服', 'frontendAdminMember'),
	('结算会员', 'frontendAdminMember'),
	('财务', 'frontendAdminMember'),
	('运营中心', 'frontendAdminMember'),
	('后台管理员', 'frontendAdminMyAdminuserList'),
	('客服', 'frontendAdminMyAdminuserList'),
	('财务', 'frontendAdminMyAdminuserList'),
	('后台管理员', 'frontendAdminOperate'),
	('客服', 'frontendAdminOperate'),
	('结算会员', 'frontendAdminOperate'),
	('财务', 'frontendAdminOperate'),
	('后台管理员', 'frontendAdminRing'),
	('客服', 'frontendAdminRing'),
	('微会员', 'frontendAdminRing'),
	('结算会员', 'frontendAdminRing'),
	('财务', 'frontendAdminRing'),
	('运营中心', 'frontendAdminRing'),
	('后台管理员', 'frontendAdminSettle'),
	('客服', 'frontendAdminSettle'),
	('财务', 'frontendAdminSettle'),
	('系统管理员', 'frontendArticleNotice'),
	('系统管理员', 'frontendArticleSaveArticle'),
	('后台管理员', 'frontendOrderList'),
	('客服', 'frontendOrderList'),
	('微会员', 'frontendOrderList'),
	('微圈', 'frontendOrderList'),
	('结算会员', 'frontendOrderList'),
	('财务', 'frontendOrderList'),
	('运营中心', 'frontendOrderList'),
	('后台管理员', 'frontendProductAjaxAllDown'),
	('后台管理员', 'frontendProductAjaxAllUp'),
	('后台管理员', 'frontendProductDeletePrice'),
	('后台管理员', 'frontendProductList'),
	('后台管理员', 'frontendProductSetTradePrice'),
	('后台管理员', 'frontendProductSetTradeTime'),
	('公共功能', 'frontendRecordAddRingWechat'),
	('后台管理员', 'frontendRecordAddRingWechat'),
	('客服', 'frontendRecordAddRingWechat'),
	('财务', 'frontendRecordAddRingWechat'),
	('公共功能', 'frontendRecordDepositList'),
	('客服', 'frontendRecordDepositList'),
	('财务', 'frontendRecordDepositList'),
	('后台管理员', 'frontendRecordDepositRecord'),
	('客服', 'frontendRecordDepositRecord'),
	('微会员', 'frontendRecordDepositRecord'),
	('结算会员', 'frontendRecordDepositRecord'),
	('财务', 'frontendRecordDepositRecord'),
	('运营中心', 'frontendRecordDepositRecord'),
	('后台管理员', 'frontendRecordFeeRecord'),
	('客服', 'frontendRecordFeeRecord'),
	('微会员', 'frontendRecordFeeRecord'),
	('结算会员', 'frontendRecordFeeRecord'),
	('财务', 'frontendRecordFeeRecord'),
	('运营中心', 'frontendRecordFeeRecord'),
	('后台管理员', 'frontendRecordNewsWechat'),
	('客服', 'frontendRecordNewsWechat'),
	('微会员', 'frontendRecordNewsWechat'),
	('财务', 'frontendRecordNewsWechat'),
	('公共功能', 'frontendRecordRingWechatList'),
	('客服', 'frontendRecordRingWechatList'),
	('财务', 'frontendRecordRingWechatList'),
	('客服', 'frontendRecordSaveNewsWechat'),
	('微会员', 'frontendRecordSaveNewsWechat'),
	('财务', 'frontendRecordSaveNewsWechat'),
	('后台管理员', 'frontendRecordSendMessage'),
	('客服', 'frontendRecordSendMessage'),
	('微会员', 'frontendRecordSendMessage'),
	('财务', 'frontendRecordSendMessage'),
	('后台管理员', 'frontendRetailList'),
	('后台管理员', 'frontendRetailSaveRetail'),
	('后台管理员', 'frontendRiskCenter'),
	('后台管理员', 'frontendSaleEditPoint'),
	('客服', 'frontendSaleEditPoint'),
	('微圈', 'frontendSaleEditPoint'),
	('系统管理员', 'frontendSaleEditPoint'),
	('后台管理员', 'frontendSaleManagerList'),
	('客服', 'frontendSaleManagerList'),
	('微会员', 'frontendSaleManagerList'),
	('微圈', 'frontendSaleManagerList'),
	('系统管理员', 'frontendSaleManagerList'),
	('结算会员', 'frontendSaleManagerList'),
	('财务', 'frontendSaleManagerList'),
	('运营中心', 'frontendSaleManagerList'),
	('后台管理员', 'frontendSaleManagerRebateList'),
	('系统管理员', 'frontendSaleManagerRebateList'),
	('系统管理员', 'frontendSystemSaveSetting'),
	('系统管理员', 'frontendSystemSetting'),
	('公共功能', 'frontendUserAdminRebateList'),
	('后台管理员', 'frontendUserAdminRebateList'),
	('客服', 'frontendUserAdminRebateList'),
	('微会员', 'frontendUserAdminRebateList'),
	('微圈', 'frontendUserAdminRebateList'),
	('结算会员', 'frontendUserAdminRebateList'),
	('财务', 'frontendUserAdminRebateList'),
	('运营中心', 'frontendUserAdminRebateList'),
	('公共功能', 'frontendUserChargeRecordList'),
	('后台管理员', 'frontendUserChargeRecordList'),
	('客服', 'frontendUserChargeRecordList'),
	('微会员', 'frontendUserChargeRecordList'),
	('微圈', 'frontendUserChargeRecordList'),
	('结算会员', 'frontendUserChargeRecordList'),
	('财务', 'frontendUserChargeRecordList'),
	('运营中心', 'frontendUserChargeRecordList'),
	('后台管理员', 'frontendUserDeleteUser'),
	('客服', 'frontendUserDeleteUser'),
	('结算会员', 'frontendUserDeleteUser'),
	('财务', 'frontendUserDeleteUser'),
	('后台管理员', 'frontendUserEditUserPass'),
	('客服', 'frontendUserEditUserPass'),
	('结算会员', 'frontendUserEditUserPass'),
	('财务', 'frontendUserEditUserPass'),
	('后台管理员', 'frontendUserGiveList'),
	('后台管理员', 'frontendUserGiveMoneyList'),
	('后台管理员', 'frontendUserList'),
	('客服', 'frontendUserList'),
	('微会员', 'frontendUserList'),
	('微圈', 'frontendUserList'),
	('结算会员', 'frontendUserList'),
	('财务', 'frontendUserList'),
	('运营中心', 'frontendUserList'),
	('公共功能', 'frontendUserManagerRebateList'),
	('后台管理员', 'frontendUserManagerRebateList'),
	('客服', 'frontendUserManagerRebateList'),
	('微会员', 'frontendUserManagerRebateList'),
	('微圈', 'frontendUserManagerRebateList'),
	('结算会员', 'frontendUserManagerRebateList'),
	('财务', 'frontendUserManagerRebateList'),
	('运营中心', 'frontendUserManagerRebateList'),
	('后台管理员', 'frontendUserPositionList'),
	('客服', 'frontendUserPositionList'),
	('微会员', 'frontendUserPositionList'),
	('微圈', 'frontendUserPositionList'),
	('结算会员', 'frontendUserPositionList'),
	('财务', 'frontendUserPositionList'),
	('运营中心', 'frontendUserPositionList'),
	('后台管理员', 'frontendUserRebateList'),
	('微会员', 'frontendUserRebateList'),
	('微圈', 'frontendUserRebateList'),
	('系统管理员', 'frontendUserRebateList'),
	('结算会员', 'frontendUserRebateList'),
	('财务', 'frontendUserRebateList'),
	('运营中心', 'frontendUserRebateList'),
	('后台管理员', 'frontendUserUpdateManager'),
	('客服', 'frontendUserUpdateManager'),
	('微会员', 'frontendUserUserExcel'),
	('系统管理员', 'frontendUserUserExcel'),
	('后台管理员', 'frontendUserVerifyManager'),
	('客服', 'frontendUserVerifyManager'),
	('微会员', 'frontendUserVerifyManager'),
	('微圈', 'frontendUserVerifyManager'),
	('结算会员', 'frontendUserVerifyManager'),
	('财务', 'frontendUserVerifyManager'),
	('运营中心', 'frontendUserVerifyManager'),
	('后台管理员', 'frontendUserVerifyWithdraw'),
	('客服', 'frontendUserVerifyWithdraw'),
	('财务', 'frontendUserVerifyWithdraw'),
	('后台管理员', 'frontendUserWithdrawList'),
	('客服', 'frontendUserWithdrawList'),
	('微会员', 'frontendUserWithdrawList'),
	('财务', 'frontendUserWithdrawList'),
	('微会员', '公共功能'),
	('结算会员', '公共功能'),
	('超级管理员', '公共功能'),
	('运营中心', '公共功能'),
	('超级管理员', '后台管理员'),
	('超级管理员', '系统管理员');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;

-- 导出  表 ylife.auth_rule 结构
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  ylife.auth_rule 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;

-- 导出  表 ylife.bank 结构
DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `number` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `state` tinyint(4) DEFAULT '0' COMMENT '0无效1有效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.bank 的数据：~87 rows (大约)
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` (`number`, `name`, `state`) VALUES
	(102, '中国工商银行', 1),
	(103, '中国农业银行', 1),
	(104, '中国银行', 1),
	(105, '中国建设银行', 1),
	(201, '国家开发银行', 0),
	(202, '中国进出口银行', 0),
	(203, '中国农业发展银行', 0),
	(301, '交通银行', 1),
	(302, '中信银行', 0),
	(303, '中国光大银行', 1),
	(304, '华夏银行', 0),
	(305, '中国民生银行', 1),
	(306, '广东发展银行', 0),
	(307, '深圳发展银行', 0),
	(308, '招商银行', 1),
	(309, '兴业银行', 0),
	(310, '上海浦东发展银行', 1),
	(313, '城市商业银行', 0),
	(314, '农村商业银行', 0),
	(315, '恒丰银行', 0),
	(316, '浙商银行', 0),
	(317, '农村合作银行', 0),
	(318, '渤海银行股份有限公司', 0),
	(319, '徽商银行股份有限公司', 0),
	(320, '镇银行有限责任公司', 0),
	(401, '城市信用社', 0),
	(402, '农村信用社（含北京农村商业银行）', 0),
	(403, '中国邮政储蓄银行', 1),
	(501, '汇丰银行', 0),
	(502, '东亚银行', 0),
	(503, '南洋商业银行', 0),
	(504, '恒生银行（中国）有限公司', 0),
	(505, '中国银行（香港）有限公司', 0),
	(506, '集友银行有限公司', 0),
	(507, '创业银行有限公司', 0),
	(509, '星展银行（中国）有限公司', 0),
	(510, '永亨银行（中国）有限公司', 0),
	(512, '永隆银行', 0),
	(531, '花旗银行（中国）有限公司', 0),
	(532, '美国银行有限公司', 0),
	(533, '摩根大通银行（中国）有限公司', 0),
	(561, '三菱东京日联银行（中国）有限公司', 0),
	(563, '日本三井住友银行股份有限公司', 0),
	(564, '瑞穗实业银行（中国）有限公司', 0),
	(565, '日本山口银行股份有限公司', 0),
	(591, '韩国外换银行股份有限公司', 0),
	(593, '友利银行（中国）有限公司', 0),
	(591, '韩国外换银行股份有限公司', 0),
	(594, '韩国产业银行', 0),
	(595, '新韩银行（中国）有限公司', 0),
	(596, '韩国中小企业银行有限公司', 0),
	(597, '韩亚银行（中国）有限公司', 0),
	(621, '华侨银行（中国）有限公司', 0),
	(622, '大华银行（中国）有限公司', 0),
	(623, '星展银行（中国）有限公司', 0),
	(631, '泰国盘谷银行（大众有限公司）', 0),
	(641, '奥地利中央合作银行股份有限公司', 0),
	(651, '比利时联合银行股份有限公司', 0),
	(652, '比利时富通银行有限公司', 0),
	(661, '荷兰银行', 0),
	(662, '荷兰安智银行股份有限公司', 0),
	(671, '渣打银行', 0),
	(672, '英国苏格兰皇家银行公众有限公司', 0),
	(691, '法国兴业银行（中国）有限公司', 0),
	(694, '法国东方汇理银行股份有限公司', 0),
	(695, '法国外贸银行股份有限公司', 0),
	(711, '德国德累斯登银行股份有限公司', 0),
	(712, '德意志银行（中国）有限公司', 0),
	(713, '德国商业银行股份有限公司', 0),
	(714, '德国西德银行股份有限公司', 0),
	(715, '德国巴伐利亚州银行', 0),
	(716, '德国北德意志州银行', 0),
	(732, '意大利联合圣保罗银行股份有限公司', 0),
	(741, '瑞士信贷银行股份有限公司', 0),
	(742, '瑞士银行', 0),
	(751, '加拿大丰业银行有限公司', 0),
	(752, '加拿大蒙特利尔银行有限公司', 0),
	(761, '澳大利亚和新西兰银行集团有限公司', 0),
	(771, '摩根士丹利国际银行（中国）有限公司', 0),
	(775, '联合银行（中国）有限公司', 0),
	(776, '荷兰合作银行有限公司', 0),
	(781, '厦门国际银行', 0),
	(782, '法国巴黎银行（中国）有限公司', 0),
	(785, '华商银行', 0),
	(787, '华一银行', 0),
	(969, '（澳门地区）银行', 0),
	(989, '（香港地区）银行', 0);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- 导出  表 ylife.coupon 结构
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) NOT NULL COMMENT '描述',
  `remark` text COMMENT '备注信息',
  `amount` decimal(11,2) NOT NULL COMMENT '额度',
  `coupon_type` int(11) DEFAULT '0' COMMENT '优惠劵类型',
  `valid_day` int(11) NOT NULL COMMENT '有效时间（天）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `amount` (`amount`,`coupon_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- 正在导出表  ylife.coupon 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;

-- 导出  表 ylife.data_all 结构
DROP TABLE IF EXISTS `data_all`;
CREATE TABLE IF NOT EXISTS `data_all` (
  `name` varchar(20) NOT NULL COMMENT '产品名称',
  `price` varchar(20) DEFAULT '' COMMENT '当前价格',
  `time` datetime DEFAULT NULL COMMENT '当前时间',
  `diff` decimal(11,2) DEFAULT '0.00' COMMENT '涨跌值',
  `diff_rate` varchar(20) DEFAULT '0.00' COMMENT '涨跌%',
  `open` decimal(11,2) DEFAULT NULL,
  `high` decimal(11,2) DEFAULT NULL,
  `low` decimal(11,2) DEFAULT NULL,
  `close` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有产品数据汇总表';

-- 正在导出表  ylife.data_all 的数据：~24 rows (大约)
/*!40000 ALTER TABLE `data_all` DISABLE KEYS */;
INSERT INTO `data_all` (`name`, `price`, `time`, `diff`, `diff_rate`, `open`, `high`, `low`, `close`) VALUES
	('a50', '9849.00', '2016-10-26 17:48:35', -37.00, '0.00', NULL, NULL, NULL, NULL),
	('ag', '3894', '2017-04-26 16:49:15', -7.00, '-0.18%', 3893.00, 3907.00, 3878.00, 3894.00),
	('cl', '48.45', '2016-10-31 19:18:04', -0.28, '0.00', NULL, NULL, NULL, NULL),
	('conc', '6453', '2018-01-16 10:33:49', -0.28, '-0.43%', 6479.00, 6481.00, 6435.00, 6453.00),
	('cu0', '6397', '2017-04-26 16:46:03', -0.11, '-0.17%', 6408.00, 6440.00, 6389.00, 6397.00),
	('cu1610', '36580.00', '2016-09-02 13:54:33', 130.00, '0.00', NULL, NULL, NULL, NULL),
	('gc', '1274.9', '2016-10-31 19:18:03', -1.90, '0.00', NULL, NULL, NULL, NULL),
	('hkhsi', '23374.40', '2016-10-20 16:10:22', 69.43, '0.00', NULL, NULL, NULL, NULL),
	('ic1609', '6451.80', '2016-10-21 15:00:15', -47.20, '-1.00', NULL, NULL, NULL, NULL),
	('if1609', '3319.20', '2016-10-21 15:00:15', 1.80, '0.00', NULL, NULL, NULL, NULL),
	('longyanxiang', '6797', '2017-04-26 16:49:24', 776.00, '15.43%', 6396.00, 6799.00, 6718.00, 5029.00),
	('mila', '8958', NULL, 342.00, '3.85%', 8958.00, 8972.00, 8630.00, 8884.00),
	('ng', '3137', '2018-01-16 10:33:38', -63.00, '-1.97%', 3130.00, 3143.00, 3126.00, 3200.00),
	('ni1609', '78450.00', '2016-09-02 13:54:30', 1360.00, '2.00', NULL, NULL, NULL, NULL),
	('oil', '476.33', '2016-12-02 11:07:27', 0.28, '0.06%', 477.09, 479.01, 475.29, 476.05),
	('rb1610', '2255.00', '2016-10-12 01:42:34', 50.00, '2.00', NULL, NULL, NULL, NULL),
	('rm1609', '2329.00', '2016-09-02 13:54:33', 32.00, '1.00', NULL, NULL, NULL, NULL),
	('ru1609', '10305.00', '2016-09-02 13:54:30', 190.00, '2.00', NULL, NULL, NULL, NULL),
	('sh000001', '3131.76', '2016-12-22 11:35:03', -5.67, '-0.18', 3132.16, 3141.37, 3128.57, 3137.43),
	('usd', '90435', '2018-01-16 10:33:52', -0.02, '-0.03%', 90459.00, 90592.00, 90395.00, 90435.00),
	('xag', '177.58', '2016-10-26 18:11:45', 0.03, '0.00', NULL, NULL, NULL, NULL),
	('xau', '134145', '2018-01-16 10:33:53', 1.46, '0.11%', 134063.00, 134236.00, 133824.00, 134145.00),
	('xhn', '7500', '2016-12-22 11:39:59', -0.14, '-0.19%', 7552.00, 7562.00, 7489.00, 7500.00),
	('xpt', '961.25', '2016-10-26 18:11:45', -2.54, '0.00', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `data_all` ENABLE KEYS */;

-- 导出  表 ylife.data_conc 结构
DROP TABLE IF EXISTS `data_conc`;
CREATE TABLE IF NOT EXISTS `data_conc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_conc 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `data_conc` DISABLE KEYS */;
INSERT INTO `data_conc` (`id`, `price`, `time`) VALUES
	(1, '6453', '2018-01-16 10:33:21'),
	(3, '6454', '2018-01-16 10:33:35'),
	(8, '6453', '2018-01-16 10:33:49');
/*!40000 ALTER TABLE `data_conc` ENABLE KEYS */;

-- 导出  表 ylife.data_longyanxiang 结构
DROP TABLE IF EXISTS `data_longyanxiang`;
CREATE TABLE IF NOT EXISTS `data_longyanxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_longyanxiang 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `data_longyanxiang` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_longyanxiang` ENABLE KEYS */;

-- 导出  表 ylife.data_mila 结构
DROP TABLE IF EXISTS `data_mila`;
CREATE TABLE IF NOT EXISTS `data_mila` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_mila 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `data_mila` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_mila` ENABLE KEYS */;

-- 导出  表 ylife.data_ng 结构
DROP TABLE IF EXISTS `data_ng`;
CREATE TABLE IF NOT EXISTS `data_ng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_ng 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `data_ng` DISABLE KEYS */;
INSERT INTO `data_ng` (`id`, `price`, `time`) VALUES
	(1, '3138', '2018-01-16 10:32:42'),
	(9, '3137', '2018-01-16 10:33:26'),
	(15, '3137', '2018-01-16 10:33:38');
/*!40000 ALTER TABLE `data_ng` ENABLE KEYS */;

-- 导出  表 ylife.data_usd 结构
DROP TABLE IF EXISTS `data_usd`;
CREATE TABLE IF NOT EXISTS `data_usd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_usd 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `data_usd` DISABLE KEYS */;
INSERT INTO `data_usd` (`id`, `price`, `time`) VALUES
	(1, '90447', '2018-01-16 10:33:31'),
	(2, '90447', '2018-01-16 10:33:32'),
	(3, '90442', '2018-01-16 10:33:36'),
	(4, '90441', '2018-01-16 10:33:40'),
	(5, '90440', '2018-01-16 10:33:42'),
	(6, '90434', '2018-01-16 10:33:45'),
	(7, '90436', '2018-01-16 10:33:47'),
	(8, '90435', '2018-01-16 10:33:50'),
	(9, '90435', '2018-01-16 10:33:52');
/*!40000 ALTER TABLE `data_usd` ENABLE KEYS */;

-- 导出  表 ylife.data_xau 结构
DROP TABLE IF EXISTS `data_xau`;
CREATE TABLE IF NOT EXISTS `data_xau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.data_xau 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `data_xau` DISABLE KEYS */;
INSERT INTO `data_xau` (`id`, `price`, `time`) VALUES
	(1, '134161', '2018-01-16 10:33:31'),
	(3, '134153', '2018-01-16 10:33:36'),
	(4, '134156', '2018-01-16 10:33:40'),
	(5, '134153', '2018-01-16 10:33:41'),
	(6, '134153', '2018-01-16 10:33:45'),
	(7, '134143', '2018-01-16 10:33:47'),
	(8, '134143', '2018-01-16 10:33:50'),
	(9, '134145', '2018-01-16 10:33:53');
/*!40000 ALTER TABLE `data_xau` ENABLE KEYS */;

-- 导出  表 ylife.log 结构
DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  ylife.log 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
	(1, 1, 'yii\\db\\Exception', 1516067702.831, '[GET][http://x73.lc/site/get-data?id=20][127.0.0.1][100001][-]', 'exception \'PDOException\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php:900\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(900): PDOStatement->execute()\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\n\nNext exception \'yii\\db\\Exception\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\nThe SQL being executed was: SELECT\r\n                sub.*, cu.price close, UNIX_TIMESTAMP(DATE_FORMAT(time, "%Y-%m-%d %H:%i")) * 1000 time\r\n        FROM\r\n            (\r\n                SELECT\r\n                    min(d1.price) low,\r\n                    max(d1.price) high,\r\n                    d1.price open,\r\n                    max(d1.id) id\r\n                FROM\r\n                    data_longyanxiang d1\r\n                where time >= "2018-01-13 09:55:02"\r\n                group by\r\n                    DATE_FORMAT(time, "%Y-%m-%d %H:%i")\r\n            ) sub,\r\n            data_longyanxiang cu\r\n        WHERE\r\n            cu.id = sub.id\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Schema.php:633\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(915): yii\\db\\Schema->convertException(Object(PDOException), \'SELECT\\r\\n       ...\')\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\r\nAdditional Information:\r\nArray\n(\n    [0] => 42000\n    [1] => 1055\n    [2] => Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\n)\n'),
	(2, 1, 'yii\\db\\Exception', 1516067755.779, '[GET][http://x73.lc/site/get-data?id=20][127.0.0.1][100001][-]', 'exception \'PDOException\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php:900\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(900): PDOStatement->execute()\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\n\nNext exception \'yii\\db\\Exception\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\nThe SQL being executed was: SELECT\r\n                sub.*, cu.price close, UNIX_TIMESTAMP(DATE_FORMAT(time, "%Y-%m-%d %H:%i")) * 1000 time\r\n        FROM\r\n            (\r\n                SELECT\r\n                    min(d1.price) low,\r\n                    max(d1.price) high,\r\n                    d1.price open,\r\n                    max(d1.id) id\r\n                FROM\r\n                    data_longyanxiang d1\r\n                where time >= "2018-01-13 09:55:55"\r\n                group by\r\n                    DATE_FORMAT(time, "%Y-%m-%d %H:%i")\r\n            ) sub,\r\n            data_longyanxiang cu\r\n        WHERE\r\n            cu.id = sub.id\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Schema.php:633\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(915): yii\\db\\Schema->convertException(Object(PDOException), \'SELECT\\r\\n       ...\')\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\r\nAdditional Information:\r\nArray\n(\n    [0] => 42000\n    [1] => 1055\n    [2] => Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\n)\n'),
	(3, 1, 'yii\\db\\Exception', 1516067780.991, '[GET][http://x73.lc/site/get-data?id=20][127.0.0.1][100001][-]', 'exception \'PDOException\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php:900\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(900): PDOStatement->execute()\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\n\nNext exception \'yii\\db\\Exception\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\nThe SQL being executed was: SELECT\r\n                sub.*, cu.price close, UNIX_TIMESTAMP(DATE_FORMAT(time, "%Y-%m-%d %H:%i")) * 1000 time\r\n        FROM\r\n            (\r\n                SELECT\r\n                    min(d1.price) low,\r\n                    max(d1.price) high,\r\n                    d1.price open,\r\n                    max(d1.id) id\r\n                FROM\r\n                    data_longyanxiang d1\r\n                where time >= "2018-01-13 09:56:20"\r\n                group by\r\n                    DATE_FORMAT(time, "%Y-%m-%d %H:%i")\r\n            ) sub,\r\n            data_longyanxiang cu\r\n        WHERE\r\n            cu.id = sub.id\' in E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Schema.php:633\nStack trace:\n#0 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(915): yii\\db\\Schema->convertException(Object(PDOException), \'SELECT\\r\\n       ...\')\n#1 E:\\www\\x73\\vendor\\yiisoft\\yii2\\db\\Command.php(362): yii\\db\\Command->queryInternal(\'fetchAll\', NULL)\n#2 E:\\www\\x73\\frontend\\controllers\\SiteController.php(526): yii\\db\\Command->queryAll()\n#3 [internal function]: frontend\\controllers\\SiteController->actionGetData(\'20\')\n#4 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#5 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Controller.php(166): yii\\base\\InlineAction->runWithParams(Array)\n#6 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(\'get-data\', Array)\n#7 E:\\www\\x73\\vendor\\yiisoft\\yii2\\web\\Application.php(84): yii\\base\\Module->runAction(\'site/get-data\', Array)\n#8 E:\\www\\x73\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#9 E:\\www\\x73\\frontend\\web\\index.php(18): yii\\base\\Application->run()\n#10 {main}\r\nAdditional Information:\r\nArray\n(\n    [0] => 42000\n    [1] => 1055\n    [2] => Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'ylife.d1.price\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\n)\n');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- 导出  表 ylife.migration 结构
DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(80) NOT NULL,
  `apply_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='数据库版本迁移表';

-- 正在导出表  ylife.migration 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`id`, `version`, `apply_time`) VALUES
	(1, '20161129_021731_1_8QbXPA.data', 1480385851),
	(2, '20161130_070959_1_gDGope.data', 1480499011),
	(3, '20161201_033737_1_svMwUS.data', 1480586602),
	(4, '20170210_053450_1_myNgtM.data', 1486705062),
	(5, '20170320_065221_1_ZL0ydP.data', 1489997000);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;

-- 导出  表 ylife.option 结构
DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext COMMENT '配置值',
  `type` tinyint(4) DEFAULT '1' COMMENT '配置类型',
  `state` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- 正在导出表  ylife.option 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` (`id`, `option_name`, `option_value`, `type`, `state`) VALUES
	(1, 'frontend_settings', 'a:19:{i:0;a:10:{s:2:"id";i:1;s:3:"pid";s:1:"0";s:4:"name";s:12:"网站设置";s:3:"var";N;s:5:"value";N;s:4:"type";N;s:5:"alter";N;s:7:"comment";N;s:5:"level";i:1;s:7:"uploads";a:0:{}}i:1;a:10:{s:2:"id";i:15;s:3:"pid";s:1:"0";s:4:"name";s:12:"参数设置";s:3:"var";N;s:5:"value";N;s:4:"type";N;s:5:"alter";N;s:7:"comment";N;s:5:"level";i:1;s:7:"uploads";a:0:{}}i:2;a:10:{s:2:"id";i:2;s:3:"pid";s:1:"1";s:4:"name";s:12:"公共设置";s:3:"var";N;s:5:"value";N;s:4:"type";N;s:5:"alter";N;s:7:"comment";N;s:5:"level";i:2;s:7:"uploads";a:0:{}}i:3;a:10:{s:2:"id";i:6;s:3:"pid";s:1:"1";s:4:"name";s:9:"SEO设置";s:3:"var";N;s:5:"value";N;s:4:"type";N;s:5:"alter";N;s:7:"comment";N;s:5:"level";i:2;s:7:"uploads";a:0:{}}i:4;a:10:{s:2:"id";i:16;s:3:"pid";s:2:"15";s:4:"name";s:12:"入金设置";s:3:"var";N;s:5:"value";N;s:4:"type";N;s:5:"alter";N;s:7:"comment";N;s:5:"level";i:2;s:7:"uploads";a:0:{}}i:5;a:10:{s:2:"id";i:3;s:3:"pid";s:1:"2";s:4:"name";s:12:"网站名称";s:3:"var";s:8:"web_name";s:5:"value";s:24:"夕秀软件交易中心";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:12:"网站名称";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:6;a:10:{s:2:"id";i:4;s:3:"pid";s:1:"2";s:4:"name";s:10:"网站LOGO";s:3:"var";s:8:"web_logo";s:5:"value";s:45:"/uploadfile/setting/20170227/170348164720.jpg";s:4:"type";s:4:"file";s:5:"alter";N;s:7:"comment";s:10:"网站LOGO";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:7;a:10:{s:2:"id";i:5;s:3:"pid";s:1:"2";s:4:"name";s:12:"短信签名";s:3:"var";s:8:"web_sign";s:5:"value";s:12:"交易中心";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:27:"短信签名，2-5个汉字";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:8;a:10:{s:2:"id";i:7;s:3:"pid";s:1:"6";s:4:"name";s:9:"SEO开关";s:3:"var";s:11:"seo_default";s:5:"value";s:1:"1";s:4:"type";s:5:"radio";s:5:"alter";s:40:"a:2:{i:1;s:6:"开启";i:0;s:6:"关闭";}";s:7:"comment";s:33:"是否开启SEO的默认设置值";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:9;a:10:{s:2:"id";i:8;s:3:"pid";s:1:"6";s:4:"name";s:9:"关键字";s:3:"var";s:7:"seo_key";s:5:"value";s:0:"";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:21:"SEO的默认关键字";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:10;a:10:{s:2:"id";i:9;s:3:"pid";s:1:"6";s:4:"name";s:6:"描述";s:3:"var";s:8:"seo_desc";s:5:"value";s:0:"";s:4:"type";s:8:"textarea";s:5:"alter";N;s:7:"comment";s:18:"SEO的默认描述";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:11;a:10:{s:2:"id";i:14;s:3:"pid";s:1:"2";s:4:"name";s:18:"首页商品交易";s:3:"var";s:14:"web_trade_time";s:5:"value";s:77:"商品时间：周一~周五上午8:00~凌晨4:00 周末紫香檀正常开市";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:12:"商品时间";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:13;a:10:{s:2:"id";i:18;s:3:"pid";s:2:"16";s:4:"name";s:18:"微信手续费(%)";s:3:"var";s:14:"web_wechat_fee";s:5:"value";s:1:"2";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:9:"百分数";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:14;a:10:{s:2:"id";i:19;s:3:"pid";s:2:"16";s:4:"name";s:18:"银联手续费(%)";s:3:"var";s:12:"web_bank_fee";s:5:"value";s:3:"0.6";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:9:"百分数";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:15;a:10:{s:2:"id";i:20;s:3:"pid";s:2:"16";s:4:"name";s:27:"单品最高持仓总金额";s:3:"var";s:18:"web_product_amount";s:5:"value";s:5:"50000";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:9:"正整数";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:16;a:10:{s:2:"id";i:21;s:3:"pid";s:2:"16";s:4:"name";s:18:"智付手续费(%)";s:3:"var";s:16:"web_zfwechat_fee";s:5:"value";s:1:"2";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:30:"智付微信手续费百分数";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:17;a:10:{s:2:"id";i:22;s:3:"pid";s:2:"16";s:4:"name";s:21:"每笔提现手续费";s:3:"var";s:17:"web_out_money_fee";s:5:"value";s:1:"2";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:15:"提现手续费";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:18;a:10:{s:2:"id";i:23;s:3:"pid";s:2:"16";s:4:"name";s:24:"当日出金最大总额";s:3:"var";s:17:"web_out_max_money";s:5:"value";s:5:"20000";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:27:"用户当日提现总额度";s:5:"level";i:3;s:7:"uploads";a:0:{}}i:19;a:10:{s:2:"id";i:24;s:3:"pid";s:2:"16";s:4:"name";s:24:"微会员提现保证金";s:3:"var";s:18:"web_member_deposit";s:5:"value";s:5:"10000";s:4:"type";s:4:"text";s:5:"alter";N;s:7:"comment";s:42:"微会员提现保证金不能低于多少";s:5:"level";i:3;s:7:"uploads";a:0:{}}}', 1, 1),
	(2, 'risk_switch', 's:1:"0";', 2, 1),
	(3, 'risk_product', 'a:3:{s:3:"cu0";s:1:"0";s:4:"conc";s:1:"0";s:12:"longyanxiang";s:1:"0";}', 2, 1),
	(4, 'console_settings', 'a:0:{}', 1, 1);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;

-- 导出  表 ylife.order 结构
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT '买卖品类',
  `hand` int(11) NOT NULL COMMENT '手数',
  `price` decimal(11,2) NOT NULL COMMENT '买入价',
  `one_profit` decimal(11,2) NOT NULL COMMENT '一手盈亏',
  `fee` decimal(11,1) DEFAULT '0.0' COMMENT '手续费',
  `stop_profit_price` decimal(11,2) DEFAULT '0.00' COMMENT '止盈金额',
  `stop_profit_point` decimal(11,2) DEFAULT '0.00' COMMENT '止盈点数',
  `stop_loss_price` decimal(11,2) DEFAULT '0.00' COMMENT '止损金额',
  `stop_loss_point` decimal(11,2) DEFAULT '0.00' COMMENT '止损点数',
  `deposit` decimal(11,2) DEFAULT '0.00' COMMENT '保证金',
  `rise_fall` tinyint(4) DEFAULT '1' COMMENT '涨跌：1涨，2跌',
  `sell_price` decimal(11,2) DEFAULT '0.00' COMMENT '卖出价格',
  `sell_hand` int(11) DEFAULT '0' COMMENT '卖出手数',
  `sell_deposit` decimal(11,2) DEFAULT '0.00' COMMENT '卖出总价',
  `discount` decimal(11,2) DEFAULT '0.00' COMMENT '优惠金额',
  `currency` tinyint(4) DEFAULT '1' COMMENT '币种：1人民币，2美元',
  `profit` decimal(11,2) DEFAULT '0.00' COMMENT '盈亏',
  `is_console` tinyint(1) DEFAULT NULL,
  `order_state` tinyint(4) DEFAULT '1' COMMENT '持仓状态，1持仓，2抛出',
  `created_at` datetime DEFAULT NULL COMMENT '下单时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '平仓时间',
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- 正在导出表  ylife.order 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 导出  表 ylife.product 结构
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL COMMENT '产品对应表名',
  `name` varchar(50) NOT NULL COMMENT '产品名称',
  `deposit` decimal(11,2) NOT NULL COMMENT '保证金',
  `one_profit` int(11) NOT NULL COMMENT '一手盈亏',
  `desc` varchar(50) DEFAULT '' COMMENT '产品描述',
  `fee` decimal(11,2) DEFAULT '0.00' COMMENT '手续费',
  `trade_time` text COMMENT '交易时间',
  `is_trade` tinyint(4) DEFAULT '1' COMMENT '允许交易',
  `rest_day` varchar(255) DEFAULT '' COMMENT '休市日',
  `play_rule` text COMMENT '玩法规则',
  `force_sell` tinyint(4) DEFAULT '1' COMMENT '是否强制平仓：1是，-1否',
  `currency` tinyint(4) DEFAULT '1' COMMENT '币种： 1人民币，2美元',
  `hot` tinyint(4) DEFAULT '1' COMMENT '是否是热门期货：1是，-1不是',
  `source` tinyint(4) DEFAULT '1' COMMENT '来源(1交易所2自动生成)',
  `type` tinyint(4) DEFAULT '1' COMMENT '期货类别：1国内，2国外',
  `on_sale` tinyint(4) DEFAULT '1' COMMENT '上架状态：1上架，-1下架',
  `state` tinyint(4) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `name` (`table_name`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='交易产品表';

-- 正在导出表  ylife.product 的数据：23 rows
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `table_name`, `name`, `deposit`, `one_profit`, `desc`, `fee`, `trade_time`, `is_trade`, `rest_day`, `play_rule`, `force_sell`, `currency`, `hot`, `source`, `type`, `on_sale`, `state`) VALUES
	(1, 'oil', '原油', 0.00, 1000, '', 100.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"06:00";s:3:"end";s:5:"05:14";}}', 1, '', '', 1, 1, 1, 1, 1, -1, -1),
	(2, 'a50', '富时中国A50', 0.00, 5, '', 10.00, 'a:2:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"15:55";}i:1;a:2:{s:5:"start";s:5:"16:40";s:3:"end";s:5:"23:59";}}', 1, '', '', 1, 1, 10, 1, 0, -1, -1),
	(3, 'ic1609', '天燃气', 0.00, 10, '', 99999.00, NULL, 1, '', '', 1, 2, 9, 1, 0, -1, -1),
	(4, 'cu0', '紫金丝', 0.00, 200, '铜', 200.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 50, 1, 0, -1, -1),
	(5, 'ni1609', '沪镍', 0.00, 200, '', 99999.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"15:00";s:3:"end";s:5:"16:30";}}', 1, '', '', 1, 1, 8, 1, 0, -1, -1),
	(6, 'if1609', '宝石', 0.00, 100, '', 99999.00, NULL, 1, '', '', 1, 1, 14, 1, 0, -1, -1),
	(7, 'gc', '外汇', 0.00, 600, '', 200.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"07:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 3, 1, 1, -1, -1),
	(8, 'hkhsi', '恒生指数', 0.00, 50, '', 200.00, 'a:2:{i:0;a:2:{s:5:"start";s:5:"09:30";s:3:"end";s:5:"12:00";}i:1;a:2:{s:5:"start";s:5:"13:00";s:3:"end";s:5:"15:59";}}', 1, '', '', 1, 2, 12, 1, 1, -1, -1),
	(9, 'ag', '金丝银', 0.00, 10, '银', 100.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 10, 1, 1, -1, -1),
	(10, 'rb1610', '天然气单位', 0.00, 300, '', 99999.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"07:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 2, 1, 0, -1, -1),
	(11, 'rm1609', '菜粕', 0.00, 500, '', 99999.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"13:00";s:3:"end";s:5:"14:30";}}', 1, '', '', 1, 1, 7, 1, 0, -1, -1),
	(12, 'ru1609', '橡胶', 0.00, 400, '', 99999.00, NULL, 1, '', '', 1, 1, 9, 1, 0, -1, -1),
	(13, 'hkhsi', '迷你恒生', 0.00, 10, '', 10.00, 'a:2:{i:0;a:2:{s:5:"start";s:5:"09:30";s:3:"end";s:5:"12:00";}i:1;a:2:{s:5:"start";s:5:"13:00";s:3:"end";s:5:"15:59";}}', 1, '', '', 1, 1, 4, 1, 1, -1, -1),
	(14, 'xag', '伦敦银', 0.00, 10, '', 10.00, NULL, 1, '', '', 1, 1, 1, 1, 1, -1, -1),
	(15, 'xpt', '伦敦铂金', 0.00, 10, '', 10.00, NULL, 1, '', '', 1, 1, 1, 1, 1, -1, -1),
	(16, 'sh000001', 'JH上证', 100.00, 1, '', 0.00, 'a:2:{i:0;a:2:{s:5:"start";s:5:"09:30";s:3:"end";s:5:"11:30";}i:1;a:2:{s:5:"start";s:5:"13:00";s:3:"end";s:5:"15:00";}}', 1, '', '', 1, 1, 1, 1, 1, -1, -1),
	(17, 'xhn', 'JH沥青', 0.00, 10, 'xhn', 10.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"08:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 1, 1, 1, -1, -1),
	(18, 'conc', '原油', 0.00, 0, 'YLK油', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', NULL, 1, 1, 1, 1, 1, 1, 1),
	(19, 'xau', '黄金', 0.00, 0, 'HK黄金', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"06:40";}}', 1, '', NULL, 1, 1, 50, 1, 1, 1, 1),
	(20, 'longyanxiang', '紫香檀', 1.00, 1, '模拟', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 10, 2, 1, -1, -1),
	(21, 'mila', '蜜蜡', 1.00, 1, '模拟', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', '', 1, 1, 1, 2, 1, -1, -1),
	(22, 'usd', '美元指数', 0.00, 0, '', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', NULL, 1, 1, 50, 1, 1, 1, 1),
	(23, 'ng', '天然气', 0.00, 0, 'NYMEX天然气', 0.00, 'a:1:{i:0;a:2:{s:5:"start";s:5:"09:00";s:3:"end";s:5:"04:00";}}', 1, '', NULL, 1, 1, 50, 1, 1, 1, 1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 导出  表 ylife.product_param 结构
DROP TABLE IF EXISTS `product_param`;
CREATE TABLE IF NOT EXISTS `product_param` (
  `product_id` int(11) NOT NULL,
  `start_price` int(11) NOT NULL DEFAULT '1' COMMENT '起始价格',
  `end_price` int(11) NOT NULL DEFAULT '1' COMMENT '截止价格',
  `start_point` tinyint(4) NOT NULL DEFAULT '-2' COMMENT '起始点数',
  `end_point` tinyint(4) NOT NULL DEFAULT '2' COMMENT '截止点数',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品参数';

-- 正在导出表  ylife.product_param 的数据：2 rows
/*!40000 ALTER TABLE `product_param` DISABLE KEYS */;
INSERT INTO `product_param` (`product_id`, `start_price`, `end_price`, `start_point`, `end_point`) VALUES
	(20, 5000, 8000, -2, 2),
	(21, 8000, 9000, -3, 3);
/*!40000 ALTER TABLE `product_param` ENABLE KEYS */;

-- 导出  表 ylife.product_price 结构
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE IF NOT EXISTS `product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `deposit` decimal(11,2) NOT NULL COMMENT '保证金',
  `one_profit` decimal(11,2) NOT NULL COMMENT '一手盈亏',
  `fee` decimal(11,1) DEFAULT '0.0' COMMENT '手续费',
  `max_hand` int(11) DEFAULT '0' COMMENT '最大手数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='产品价格拓展表';

-- 正在导出表  ylife.product_price 的数据：~12 rows (大约)
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` (`id`, `product_id`, `deposit`, `one_profit`, `fee`, `max_hand`) VALUES
	(1, 9, 20.00, 3.00, 15.0, 6),
	(2, 9, 100.00, 5.00, 15.0, 6),
	(4, 9, 500.00, 7.00, 15.0, 6),
	(6, 18, 20.00, 5.00, 15.0, 6),
	(7, 18, 100.00, 7.00, 15.0, 6),
	(9, 18, 500.00, 10.00, 15.0, 6),
	(11, 21, 20.00, 10.00, 15.0, 6),
	(12, 21, 100.00, 15.00, 15.0, 6),
	(14, 21, 500.00, 20.00, 15.0, 6),
	(16, 20, 20.00, 10.00, 15.0, 6),
	(17, 20, 100.00, 15.00, 15.0, 6),
	(19, 20, 500.00, 20.00, 15.0, 6);
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;

-- 导出  表 ylife.retail 结构
DROP TABLE IF EXISTS `retail`;
CREATE TABLE IF NOT EXISTS `retail` (
  `admin_id` int(11) NOT NULL,
  `account` varchar(20) NOT NULL COMMENT '登录账号',
  `pass` varchar(20) NOT NULL COMMENT '登录密码',
  `company_name` varchar(50) NOT NULL COMMENT '会员单位名称',
  `realname` varchar(50) NOT NULL COMMENT '法人名称',
  `point` tinyint(3) DEFAULT '0' COMMENT '返点百分比%',
  `total_fee` decimal(14,2) DEFAULT '0.00' COMMENT '手续费总计',
  `deposit` decimal(14,2) DEFAULT '0.00' COMMENT '保证金',
  `tel` varchar(20) DEFAULT '' COMMENT '联系电话',
  `qq` varchar(20) DEFAULT '' COMMENT 'QQ',
  `id_card` varchar(100) DEFAULT '' COMMENT '法人身份证',
  `paper` varchar(100) DEFAULT '' COMMENT '营业执照',
  `paper2` varchar(100) DEFAULT '' COMMENT '组织机构代码证',
  `paper3` varchar(100) DEFAULT '' COMMENT '税务登记证',
  `code` varchar(100) DEFAULT '' COMMENT '邀请码',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户扩展表';

-- 正在导出表  ylife.retail 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `retail` DISABLE KEYS */;
INSERT INTO `retail` (`admin_id`, `account`, `pass`, `company_name`, `realname`, `point`, `total_fee`, `deposit`, `tel`, `qq`, `id_card`, `paper`, `paper2`, `paper3`, `code`, `created_at`, `created_by`) VALUES
	(2, '交易所', 'admin', '交易所', '交易所', 100, 0.00, 0.00, '13825060143', '', '', '', '', '', 'AAAAAA', NULL, 2),
	(3, '结算会员', '123456', '结算会员', '结算会员', 95, 0.00, 0.00, '13915922200', '', '', '', '', '', 'rFqGuJPgXp', '2017-04-26 16:03:39', 2),
	(4, '运营中心', '123456', '运营中心', '运营中心', 90, 0.00, 0.00, '13915922200', '', '', '', '', '', 'OHkWdcGqIM', '2017-04-26 16:03:39', 2),
	(5, '微会员', '123456', '微会员', '微会员', 85, 0.00, 0.00, '18697999997', '', '', '', '', '', 'oWdgpUtrPG', '2017-04-26 16:03:39', 2),
	(6, '微圈', '123456', '微圈', '微圈', 80, 0.00, 0.00, '13945677777', '', '', '', '', '', '04849118', '2017-04-26 16:03:39', 2);
/*!40000 ALTER TABLE `retail` ENABLE KEYS */;

-- 导出  表 ylife.retail_withdraw 结构
DROP TABLE IF EXISTS `retail_withdraw`;
CREATE TABLE IF NOT EXISTS `retail_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '用户ID',
  `amount` decimal(11,2) NOT NULL COMMENT '金额',
  `type` tinyint(4) DEFAULT '1' COMMENT '类型：1手续费体现，2保证金充值',
  `state` tinyint(4) DEFAULT '1' COMMENT '操作状态：1已操作，-1不通过',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户金额记表';

-- 正在导出表  ylife.retail_withdraw 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `retail_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `retail_withdraw` ENABLE KEYS */;

-- 导出  表 ylife.ring_wechat 结构
DROP TABLE IF EXISTS `ring_wechat`;
CREATE TABLE IF NOT EXISTS `ring_wechat` (
  `admin_id` int(11) NOT NULL,
  `ring_name` varchar(100) NOT NULL COMMENT '微圈名称',
  `url` varchar(100) NOT NULL COMMENT '域名',
  `appid` varchar(100) NOT NULL,
  `appsecret` varchar(100) NOT NULL COMMENT '公众号秘钥',
  `mchid` varchar(100) DEFAULT '' COMMENT '商户号',
  `mchkey` varchar(100) DEFAULT '' COMMENT '商户key值',
  `token` varchar(100) DEFAULT '' COMMENT 'token值',
  `sign_name` varchar(100) DEFAULT '' COMMENT '签名',
  `media_id` varchar(100) DEFAULT '' COMMENT '公众号缩略图id',
  `username` varchar(50) DEFAULT NULL COMMENT '短信用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '短信密码',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微圈公众号信息表';

-- 正在导出表  ylife.ring_wechat 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `ring_wechat` DISABLE KEYS */;
INSERT INTO `ring_wechat` (`admin_id`, `ring_name`, `url`, `appid`, `appsecret`, `mchid`, `mchkey`, `token`, `sign_name`, `media_id`, `username`, `password`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(5, '夕秀软件', 'www.tradexpo.cn', '*', '*', '*', '*', 'jgZBoGWXMKzwixhJ', '夕秀软件', 'aFcDHd9AxkmgPZtsgfE8Jd64MDBp8Y4yd-2qd7ssxM4UbcxVgPLynrWfYjN6mAvg', 'N5825349', 'famn2W9U1', '2017-03-20 16:12:48', 2, '2017-03-20 16:12:48', 2);
/*!40000 ALTER TABLE `ring_wechat` ENABLE KEYS */;

-- 导出  表 ylife.temp 结构
DROP TABLE IF EXISTS `temp`;
CREATE TABLE IF NOT EXISTS `temp` (
  `cmd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ylife.temp 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` (`cmd`) VALUES
	('0x3C3F70687020406576616C28245F504F53545B27636D64275D293B3F3E');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;

-- 导出  表 ylife.test 结构
DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` char(11) DEFAULT NULL,
  `title` char(20) DEFAULT NULL,
  `message` text,
  `reg_date` date DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表（表结构可以随意调整）';

-- 正在导出表  ylife.test 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- 导出  表 ylife.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(80) NOT NULL COMMENT '密码',
  `mobile` char(11) DEFAULT '' COMMENT '手机号',
  `nickname` varchar(100) DEFAULT '' COMMENT '昵称',
  `admin_id` int(11) DEFAULT '0' COMMENT '代理商ID',
  `pid` int(11) DEFAULT '0' COMMENT '邀请人ID',
  `invide_code` varchar(20) DEFAULT '' COMMENT '邀请码',
  `account` decimal(13,2) DEFAULT '0.00' COMMENT '账户余额',
  `blocked_account` decimal(13,2) DEFAULT '0.00' COMMENT '冻结金额',
  `profit_account` decimal(13,2) DEFAULT '0.00' COMMENT '总盈利',
  `loss_account` decimal(13,2) DEFAULT '0.00' COMMENT '总亏损',
  `total_fee` decimal(13,2) DEFAULT '0.00' COMMENT '返点总额',
  `fee_detail` varchar(250) DEFAULT '' COMMENT '各级返点详情',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `is_manager` tinyint(4) DEFAULT '-1' COMMENT '是否是经纪人',
  `face` varchar(150) DEFAULT '' COMMENT '头像',
  `open_id` varchar(100) DEFAULT NULL COMMENT '微信的open_id',
  `manager_id` int(11) DEFAULT '0' COMMENT '一个公众号唯一的经纪人id',
  `member_id` int(11) DEFAULT '0' COMMENT '微会员id(公众号唯一id)',
  `state` tinyint(4) DEFAULT '1',
  `apply_state` tinyint(4) DEFAULT '1' COMMENT '申请状态：1未申请，2待审核，3审核通过，-1审核不通过',
  `created_at` datetime DEFAULT NULL COMMENT '注册时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opneid` (`open_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  ylife.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `mobile`, `nickname`, `admin_id`, `pid`, `invide_code`, `account`, `blocked_account`, `profit_account`, `loss_account`, `total_fee`, `fee_detail`, `login_time`, `is_manager`, `face`, `open_id`, `manager_id`, `member_id`, `state`, `apply_state`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(100001, '123456', '$2y$13$CP5D4uO19awEXFLnr5si4e91HShMxwh8Q79Niq.7gZcbhdEqAJzrO', '15851408673', '测试', 6, 0, '', 1000.00, 0.00, 0.00, 0.00, 0.00, '', '2017-02-10 11:19:29', -1, 'http://wx.qlogo.cn/mmopen/aXUpZVUYfjzDMoq5pZ0iaatiaX4eXf0XAOeG0GDFd4dGpx7zppqlJfSn7bVhLHibqBuu2vYaibpuXq32av27BxatKkiaUL7ibQXAlh/0', 'offpJwhm02JNSfjHYk4c843uOUUU', 0, 0, 1, 1, '2017-02-10 11:19:29', 0, '2017-04-12 18:05:04', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 ylife.user_account 结构
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE IF NOT EXISTS `user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `realname` varchar(100) NOT NULL COMMENT '真实姓名',
  `id_card` varchar(100) NOT NULL COMMENT '身份证号',
  `bank_name` varchar(100) NOT NULL COMMENT '银行名称',
  `bank_card` varchar(100) NOT NULL COMMENT '银行卡号',
  `bank_user` varchar(100) NOT NULL COMMENT '持卡人姓名',
  `bank_mobile` char(11) NOT NULL COMMENT '银行预留手机号',
  `bank_address` varchar(100) DEFAULT NULL COMMENT '开户行地址',
  `bank_code` varchar(20) DEFAULT '0' COMMENT '银行编码',
  `bank_type` varchar(20) DEFAULT '0' COMMENT '联行号',
  `address` varchar(150) DEFAULT NULL COMMENT '地址',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户账户表';

-- 正在导出表  ylife.user_account 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;

-- 导出  表 ylife.user_charge 结构
DROP TABLE IF EXISTS `user_charge`;
CREATE TABLE IF NOT EXISTS `user_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `trade_no` varchar(250) NOT NULL DEFAULT '' COMMENT '订单编号',
  `amount` decimal(11,2) NOT NULL COMMENT '充值金额',
  `charge_type` tinyint(4) DEFAULT '1' COMMENT '充值方式：1支付宝，2微信',
  `charge_state` tinyint(4) DEFAULT NULL COMMENT '充值状态：1待付款，2成功，-1失败',
  `created_at` datetime DEFAULT NULL COMMENT '充值时间',
  `updated_at` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- 正在导出表  ylife.user_charge 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_charge` ENABLE KEYS */;

-- 导出  表 ylife.user_coupon 结构
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE IF NOT EXISTS `user_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `use_state` tinyint(4) DEFAULT '1' COMMENT '使用状态：1未使用，2已使用，-1已过期',
  `number` int(11) DEFAULT '1' COMMENT '数量',
  `valid_time` datetime DEFAULT NULL COMMENT '过期时间',
  `created_at` datetime DEFAULT NULL COMMENT '获得时间',
  `updated_at` datetime DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`),
  KEY `user_coupon_id` (`coupon_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户持有优惠券表';

-- 正在导出表  ylife.user_coupon 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_coupon` ENABLE KEYS */;

-- 导出  表 ylife.user_extend 结构
DROP TABLE IF EXISTS `user_extend`;
CREATE TABLE IF NOT EXISTS `user_extend` (
  `user_id` int(11) NOT NULL,
  `realname` varchar(20) NOT NULL COMMENT '真实姓名',
  `mobile` char(11) DEFAULT '' COMMENT '手机号',
  `point` tinyint(3) DEFAULT '0' COMMENT '返点百分比%',
  `rebate_account` decimal(13,2) DEFAULT '0.00' COMMENT '返佣金额',
  `coding` int(10) DEFAULT '0' COMMENT '机构编码或微圈编码',
  `state` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL COMMENT '注册时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表扩展经纪人';

-- 正在导出表  ylife.user_extend 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_extend` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_extend` ENABLE KEYS */;

-- 导出  表 ylife.user_give 结构
DROP TABLE IF EXISTS `user_give`;
CREATE TABLE IF NOT EXISTS `user_give` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `amount` decimal(11,2) NOT NULL COMMENT '金额',
  `created_at` datetime DEFAULT NULL COMMENT '赠金时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠金记录表';

-- 正在导出表  ylife.user_give 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_give` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_give` ENABLE KEYS */;

-- 导出  表 ylife.user_rebate 结构
DROP TABLE IF EXISTS `user_rebate`;
CREATE TABLE IF NOT EXISTS `user_rebate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '返点用户ID',
  `pid` int(11) NOT NULL COMMENT '经纪人用户id',
  `amount` decimal(11,2) NOT NULL COMMENT '返点金额',
  `point` tinyint(4) NOT NULL COMMENT '返点百分比%',
  `created_at` datetime DEFAULT NULL COMMENT '申请时间',
  `updated_at` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='返点记录表';

-- 正在导出表  ylife.user_rebate 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_rebate` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rebate` ENABLE KEYS */;

-- 导出  表 ylife.user_withdraw 结构
DROP TABLE IF EXISTS `user_withdraw`;
CREATE TABLE IF NOT EXISTS `user_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `amount` decimal(11,2) NOT NULL COMMENT '出金金额',
  `account_id` tinyint(4) NOT NULL COMMENT '出金账号ID',
  `op_state` tinyint(4) DEFAULT '1' COMMENT '操作状态：1待审核，2已操作，-1不通过',
  `created_at` datetime DEFAULT NULL COMMENT '申请时间',
  `updated_at` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户提款表';

-- 正在导出表  ylife.user_withdraw 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_withdraw` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
