/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t368`;
CREATE DATABASE IF NOT EXISTS `t368` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t368`;

DROP TABLE IF EXISTS `chaunbo`;
CREATE TABLE IF NOT EXISTS `chaunbo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chuanjia_id` int DEFAULT NULL COMMENT '船家',
  `weibaogongsi_id` int DEFAULT NULL COMMENT '维保公司',
  `chaunbo_uuid_number` varchar(200) DEFAULT NULL COMMENT '船舶编号',
  `chaunbo_name` varchar(200) DEFAULT NULL COMMENT '船舶名字  Search111 ',
  `chaunbo_photo` varchar(200) DEFAULT NULL COMMENT '船舶照片',
  `chaunbo_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `chaunbo_types` int DEFAULT NULL COMMENT '船舶类型 Search111',
  `chaunbo_zhuangtai_types` int DEFAULT NULL COMMENT '船舶状态 Search111',
  `chaunbo_content` longtext COMMENT '船舶介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='船舶';

DELETE FROM `chaunbo`;
INSERT INTO `chaunbo` (`id`, `chuanjia_id`, `weibaogongsi_id`, `chaunbo_uuid_number`, `chaunbo_name`, `chaunbo_photo`, `chaunbo_file`, `chaunbo_types`, `chaunbo_zhuangtai_types`, `chaunbo_content`, `insert_time`, `create_time`) VALUES
	(1, 3, 2, '1681278179523', '船舶名字1', 'upload/chaunbo1.jpg', 'upload/file.rar', 1, 2, '船舶介绍1', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(2, 2, 1, '1681278179596', '船舶名字2', 'upload/chaunbo2.jpg', 'upload/file.rar', 2, 1, '船舶介绍2', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(3, 3, 2, '1681278179514', '船舶名字3', 'upload/chaunbo3.jpg', 'upload/file.rar', 2, 2, '船舶介绍3', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(4, 2, 1, '1681278179565', '船舶名字4', 'upload/chaunbo4.jpg', 'upload/file.rar', 4, 2, '船舶介绍4', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(5, 1, 1, '1681278179570', '船舶名字5', 'upload/chaunbo5.jpg', 'upload/file.rar', 3, 3, '船舶介绍5', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(6, 3, 2, '1681278179604', '船舶名字6', 'upload/chaunbo6.jpg', 'upload/file.rar', 4, 2, '船舶介绍6', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(7, 3, 2, '1681278179529', '船舶名字7', 'upload/chaunbo7.jpg', 'upload/file.rar', 1, 2, '船舶介绍7', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(8, 1, 1, '1681278179595', '船舶名字8', 'upload/chaunbo8.jpg', 'upload/file.rar', 3, 1, '船舶介绍8', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(9, 1, 3, '1681278179535', '船舶名字9', 'upload/chaunbo9.jpg', 'upload/file.rar', 1, 2, '船舶介绍9', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(10, 3, 1, '1681278179527', '船舶名字10', 'upload/chaunbo10.jpg', 'upload/file.rar', 3, 2, '船舶介绍10', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(11, 2, 1, '1681278179564', '船舶名字11', 'upload/chaunbo11.jpg', 'upload/file.rar', 4, 2, '船舶介绍11', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(12, 3, 2, '1681278179538', '船舶名字12', 'upload/chaunbo12.jpg', 'upload/file.rar', 1, 2, '船舶介绍12', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(13, 1, 2, '1681278179567', '船舶名字13', 'upload/chaunbo13.jpg', 'upload/file.rar', 3, 2, '船舶介绍13', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(14, 1, 1, '1681278179543', '船舶名字14', 'upload/chaunbo14.jpg', 'upload/file.rar', 2, 1, '<p>船舶介绍14</p>', '2023-04-12 05:42:59', '2023-04-12 05:42:59');

DROP TABLE IF EXISTS `chengben`;
CREATE TABLE IF NOT EXISTS `chengben` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guzhang_id` int DEFAULT NULL COMMENT '故障',
  `chengben_uuid_number` varchar(200) DEFAULT NULL COMMENT '维修成本编号',
  `chengben_types` int DEFAULT NULL COMMENT '维修成本类型 Search111',
  `chengben_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `chengben_jine` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `chengben_time` timestamp NULL DEFAULT NULL COMMENT '花费时间',
  `chengben_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='维修成本';

DELETE FROM `chengben`;
INSERT INTO `chengben` (`id`, `guzhang_id`, `chengben_uuid_number`, `chengben_types`, `chengben_file`, `chengben_jine`, `chengben_time`, `chengben_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681278179558', 2, 'upload/file.rar', 329.81, '2023-04-12 05:42:59', '备注1', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(2, 2, '1681278179528', 3, 'upload/file.rar', 297.44, '2023-04-12 05:42:59', '备注2', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(3, 3, '1681278179547', 3, 'upload/file.rar', 218.16, '2023-04-12 05:42:59', '备注3', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(4, 4, '1681278179581', 3, 'upload/file.rar', 752.92, '2023-04-12 05:42:59', '备注4', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(5, 5, '1681278179555', 2, 'upload/file.rar', 989.52, '2023-04-12 05:42:59', '备注5', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(6, 6, '1681278179590', 2, 'upload/file.rar', 913.14, '2023-04-12 05:42:59', '备注6', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(7, 7, '1681278179608', 3, 'upload/file.rar', 386.30, '2023-04-12 05:42:59', '备注7', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(8, 8, '1681278179558', 2, 'upload/file.rar', 201.47, '2023-04-12 05:42:59', '备注8', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(9, 9, '1681278179582', 1, 'upload/file.rar', 608.23, '2023-04-12 05:42:59', '备注9', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(10, 10, '1681278179583', 2, 'upload/file.rar', 436.82, '2023-04-12 05:42:59', '备注10', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(11, 11, '1681278179518', 1, 'upload/file.rar', 386.99, '2023-04-12 05:42:59', '备注11', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(12, 12, '1681278179612', 1, 'upload/file.rar', 334.97, '2023-04-12 05:42:59', '备注12', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(13, 13, '1681278179598', 3, 'upload/file.rar', 258.20, '2023-04-12 05:42:59', '备注13', '2023-04-12 05:42:59', '2023-04-12 05:42:59'),
	(14, 14, '1681278179576', 1, 'upload/file.rar', 978.65, '2023-04-12 05:42:59', '<p>备注14嘎多发生搭嘎的撒嘎嘎个哈哈哈</p>', '2023-04-12 05:42:59', '2023-04-12 05:42:59');

DROP TABLE IF EXISTS `chuanjia`;
CREATE TABLE IF NOT EXISTS `chuanjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `chuanjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '船家编号 Search111 ',
  `chuanjia_name` varchar(200) DEFAULT NULL COMMENT '船家姓名 Search111 ',
  `chuanjia_phone` varchar(200) DEFAULT NULL COMMENT '船家手机号',
  `chuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '船家身份证号',
  `chuanjia_photo` varchar(200) DEFAULT NULL COMMENT '船家头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `chuanjia_email` varchar(200) DEFAULT NULL COMMENT '船家邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='船家';

DELETE FROM `chuanjia`;
INSERT INTO `chuanjia` (`id`, `username`, `password`, `chuanjia_uuid_number`, `chuanjia_name`, `chuanjia_phone`, `chuanjia_id_number`, `chuanjia_photo`, `sex_types`, `chuanjia_email`, `jinyong_types`, `create_time`) VALUES
	(1, '船家1', '123456', '1681278179540', '船家姓名1', '17703786901', '410224199010102001', 'upload/chuanjia1.jpg', 1, '1@qq.com', 1, '2023-04-12 05:42:59'),
	(2, '船家2', '123456', '1681278179579', '船家姓名2', '17703786902', '410224199010102002', 'upload/chuanjia2.jpg', 2, '2@qq.com', 2, '2023-04-12 05:42:59'),
	(3, '船家3', '123456', '1681278179572', '船家姓名3', '17703786903', '410224199010102003', 'upload/chuanjia3.jpg', 2, '3@qq.com', 1, '2023-04-12 05:42:59');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-12 05:41:17'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-12 05:41:17'),
	(3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-12 05:41:17'),
	(4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-12 05:41:17'),
	(5, 'chaunbo_zhuangtai_types', '船舶状态', 1, '运行中', NULL, NULL, '2023-04-12 05:41:17'),
	(6, 'chaunbo_zhuangtai_types', '船舶状态', 2, '空闲中', NULL, NULL, '2023-04-12 05:41:17'),
	(7, 'chaunbo_zhuangtai_types', '船舶状态', 3, '维修中', NULL, NULL, '2023-04-12 05:41:17'),
	(8, 'chaunbo_types', '船舶类型', 1, '船舶类型1', NULL, NULL, '2023-04-12 05:41:17'),
	(9, 'chaunbo_types', '船舶类型', 2, '船舶类型2', NULL, NULL, '2023-04-12 05:41:17'),
	(10, 'chaunbo_types', '船舶类型', 3, '船舶类型3', NULL, NULL, '2023-04-12 05:41:17'),
	(11, 'chaunbo_types', '船舶类型', 4, '船舶类型4', NULL, NULL, '2023-04-12 05:41:17'),
	(12, 'weibaojihua_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-04-12 05:41:17'),
	(13, 'weibaojihua_yesno_types', '申请状态', 2, '同意维保', NULL, NULL, '2023-04-12 05:41:17'),
	(14, 'weibaojihua_yesno_types', '申请状态', 3, '拒绝维保', NULL, NULL, '2023-04-12 05:41:17'),
	(15, 'weibaojihua_types', '维保计划类型', 1, '维保计划类型1', NULL, NULL, '2023-04-12 05:41:17'),
	(16, 'weibaojihua_types', '维保计划类型', 2, '维保计划类型2', NULL, NULL, '2023-04-12 05:41:17'),
	(17, 'weibaojihua_types', '维保计划类型', 3, '维保计划类型3', NULL, NULL, '2023-04-12 05:41:17'),
	(18, 'weibaojihua_types', '维保计划类型', 4, '维保计划类型4', NULL, NULL, '2023-04-12 05:41:17'),
	(19, 'guzhang_zhuangtai_types', '故障状态', 1, '已上报', NULL, NULL, '2023-04-12 05:41:18'),
	(20, 'guzhang_zhuangtai_types', '故障状态', 2, '维修中', NULL, NULL, '2023-04-12 05:41:18'),
	(21, 'guzhang_zhuangtai_types', '故障状态', 3, '已维修', NULL, NULL, '2023-04-12 05:41:18'),
	(22, 'guzhang_types', '故障类型', 1, '正常维保', NULL, NULL, '2023-04-12 05:41:18'),
	(23, 'guzhang_types', '故障类型', 2, '故障类型2', NULL, NULL, '2023-04-12 05:41:18'),
	(24, 'guzhang_types', '故障类型', 3, '故障类型3', NULL, NULL, '2023-04-12 05:41:18'),
	(25, 'guzhang_types', '故障类型', 4, '故障类型4', NULL, NULL, '2023-04-12 05:41:18'),
	(26, 'chengben_types', '维修成本类型', 1, '人工费', NULL, NULL, '2023-04-12 05:41:18'),
	(27, 'chengben_types', '维修成本类型', 2, '差旅费', NULL, NULL, '2023-04-12 05:41:18'),
	(28, 'chengben_types', '维修成本类型', 3, '物料费', NULL, NULL, '2023-04-12 05:41:18'),
	(29, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-12 05:41:18'),
	(30, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-12 05:41:18'),
	(31, 'guzhang_types', '故障类型', 5, '故障类型5', NULL, '', '2023-04-12 06:57:47');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-12 05:42:59', '公告详情1', '2023-04-12 05:42:59'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-12 05:42:59', '公告详情2', '2023-04-12 05:42:59'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-12 05:42:59', '公告详情3', '2023-04-12 05:42:59'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-12 05:42:59', '公告详情4', '2023-04-12 05:42:59'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-12 05:42:59', '公告详情5', '2023-04-12 05:42:59'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-12 05:42:59', '公告详情6', '2023-04-12 05:42:59'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-12 05:42:59', '公告详情7', '2023-04-12 05:42:59'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-04-12 05:42:59', '公告详情8', '2023-04-12 05:42:59'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-04-12 05:42:59', '公告详情9', '2023-04-12 05:42:59'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-12 05:42:59', '公告详情10', '2023-04-12 05:42:59'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-12 05:42:59', '公告详情11', '2023-04-12 05:42:59'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-12 05:42:59', '公告详情12', '2023-04-12 05:42:59'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-12 05:42:59', '公告详情13', '2023-04-12 05:42:59'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-12 05:42:59', '<p>公告详情14哈哈哈哈</p>', '2023-04-12 05:42:59');

DROP TABLE IF EXISTS `guzhang`;
CREATE TABLE IF NOT EXISTS `guzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chaunbo_id` int DEFAULT NULL COMMENT '船舶',
  `weibaorenyuan_id` int DEFAULT NULL COMMENT '维保人员',
  `guzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '故障编号',
  `guzhang_name` varchar(200) DEFAULT NULL COMMENT '故障标题  Search111 ',
  `guzhang_photo` varchar(200) DEFAULT NULL COMMENT '故障照片',
  `guzhang_address` varchar(200) DEFAULT NULL COMMENT '故障位置',
  `guzhang_types` int DEFAULT NULL COMMENT '故障类型 Search111',
  `guzhang_content` longtext COMMENT '故障内容',
  `guzhang_zhuangtai_types` int DEFAULT NULL COMMENT '故障状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `guzhang_text` longtext COMMENT '维修评价',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='故障上报';

DELETE FROM `guzhang`;
INSERT INTO `guzhang` (`id`, `chaunbo_id`, `weibaorenyuan_id`, `guzhang_uuid_number`, `guzhang_name`, `guzhang_photo`, `guzhang_address`, `guzhang_types`, `guzhang_content`, `guzhang_zhuangtai_types`, `insert_time`, `guzhang_text`, `create_time`) VALUES
	(1, 1, 2, '1681278179553', '故障标题1', 'upload/guzhang1.jpg', '故障位置1', 3, '故障内容1', 3, '2023-04-12 05:42:59', '维修评价1', '2023-04-12 05:42:59'),
	(2, 2, 3, '1681278179567', '故障标题2', 'upload/guzhang2.jpg', '故障位置2', 4, '故障内容2', 3, '2023-04-12 05:42:59', '维修评价2', '2023-04-12 05:42:59'),
	(3, 3, 2, '1681278179587', '故障标题3', 'upload/guzhang3.jpg', '故障位置3', 4, '故障内容3', 3, '2023-04-12 05:42:59', '维修评价3', '2023-04-12 05:42:59'),
	(4, 4, 1, '1681278179527', '故障标题4', 'upload/guzhang4.jpg', '故障位置4', 2, '故障内容4', 1, '2023-04-12 05:42:59', NULL, '2023-04-12 05:42:59'),
	(5, 5, 1, '1681278179557', '故障标题5', 'upload/guzhang5.jpg', '故障位置5', 3, '故障内容5', 1, '2023-04-12 05:42:59', NULL, '2023-04-12 05:42:59'),
	(6, 6, 2, '1681278179546', '故障标题6', 'upload/guzhang6.jpg', '故障位置6', 2, '故障内容6', 3, '2023-04-12 05:42:59', '维修评价6', '2023-04-12 05:42:59'),
	(7, 7, 2, '1681278179567', '故障标题7', 'upload/guzhang7.jpg', '故障位置7', 2, '故障内容7', 1, '2023-04-12 05:42:59', '维修评价7', '2023-04-12 05:42:59'),
	(8, 8, 3, '1681278179586', '故障标题8', 'upload/guzhang8.jpg', '故障位置8', 4, '故障内容8', 2, '2023-04-12 05:42:59', '维修评价8', '2023-04-12 05:42:59'),
	(9, 9, 3, '1681278179539', '故障标题9', 'upload/guzhang9.jpg', '故障位置9', 3, '故障内容9', 3, '2023-04-12 05:42:59', '维修评价9', '2023-04-12 05:42:59'),
	(10, 10, 1, '1681278179555', '故障标题10', 'upload/guzhang10.jpg', '故障位置10', 3, '故障内容10', 3, '2023-04-12 05:42:59', '勾搭搭嘎', '2023-04-12 05:42:59'),
	(11, 11, 3, '1681278179559', '故障标题11', 'upload/guzhang11.jpg', '故障位置11', 3, '故障内容11', 3, '2023-04-12 05:42:59', '维修评价11', '2023-04-12 05:42:59'),
	(12, 12, 3, '1681278179616', '故障标题12', 'upload/guzhang12.jpg', '故障位置12', 4, '故障内容12', 3, '2023-04-12 05:42:59', '维修评价12', '2023-04-12 05:42:59'),
	(13, 13, 2, '1681278179560', '故障标题13', 'upload/guzhang13.jpg', '故障位置13', 1, '故障内容13', 1, '2023-04-12 05:42:59', '维修评价13', '2023-04-12 05:42:59'),
	(14, 14, 2, '1681278179595', '故障标题14', 'upload/guzhang14.jpg', '故障位置14', 1, '故障内容14', 1, '2023-04-12 05:42:59', '维修评价14', '2023-04-12 05:42:59'),
	(15, 14, 2, '1681280757490', '维保计划标题14', NULL, '正常维保', 1, '维保计划标题14的正常维保', 1, '2023-04-12 06:28:36', NULL, '2023-04-12 06:25:57'),
	(16, 9, 2, '1681280767488', '标题111', '/upload/1681280908216.jpg', '位置11', 3, '<p>归档发送到噶十多个</p>', 1, '2023-04-12 06:28:36', '', '2023-04-12 06:28:36'),
	(17, 14, 1, '1681282893077', '标题1111', NULL, '正常维保', 1, '标题1111的正常维保', 3, '2023-04-12 06:28:36', '伽师瓜发生过多过或或或或 ', '2023-04-12 07:01:33');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'xh4zxb7gum4ckprrxkpt0176v55o0xwe', '2023-04-12 06:04:34', '2024-08-12 07:36:39'),
	(2, 1, 'a1', 'chuanjia', '船家', 'zz6z7fz2xi5iynuldqk4qgnuckjo8e1y', '2023-04-12 06:17:45', '2024-08-12 07:37:55'),
	(3, 1, 'a1', 'weibaogongsi', '维保公司', 'jw4lxio43k8z5a1fd6zbqga6305423ty', '2023-04-12 06:28:52', '2024-08-12 07:38:08'),
	(4, 1, 'a1', 'weibaorenyuan', '维保人员', 'j32pqcb3gfo4y4vfo1zj1ixtd2ba459x', '2023-04-12 06:36:51', '2024-08-12 07:38:32'),
	(5, 3, 'a3', 'chuanjia', '船家', 'kcb2jt202ktjdzkr3k69jmc2ggj543tb', '2023-04-12 06:45:14', '2023-04-12 08:27:08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-12 05:41:17');

DROP TABLE IF EXISTS `weibaogongsi`;
CREATE TABLE IF NOT EXISTS `weibaogongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weibaogongsi_uuid_number` varchar(200) DEFAULT NULL COMMENT '维保公司编号 Search111 ',
  `weibaogongsi_name` varchar(200) DEFAULT NULL COMMENT '维保公司名称 Search111 ',
  `weibaogongsi_fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人 Search111 ',
  `weibaogongsi_phone` varchar(200) DEFAULT NULL COMMENT '维保公司手机号',
  `weibaogongsi_photo` varchar(200) DEFAULT NULL COMMENT '公司logo',
  `weibaogongsi_address` varchar(200) DEFAULT NULL COMMENT '公司位置',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='维保公司';

DELETE FROM `weibaogongsi`;
INSERT INTO `weibaogongsi` (`id`, `username`, `password`, `weibaogongsi_uuid_number`, `weibaogongsi_name`, `weibaogongsi_fuzeren`, `weibaogongsi_phone`, `weibaogongsi_photo`, `weibaogongsi_address`, `jinyong_types`, `create_time`) VALUES
	(1, '维保公司1', '123456', '1681278179564', '维保公司名称1', '负责人1', '17703786901', 'upload/weibaogongsi1.jpg', '公司位置1', 1, '2023-04-12 05:42:59'),
	(2, '维保公司2', '123456', '1681278179530', '维保公司名称2', '负责人2', '17703786902', 'upload/weibaogongsi2.jpg', '公司位置2', 2, '2023-04-12 05:42:59'),
	(3, '维保公司3', '123456', '1681278179565', '维保公司名称3', '负责人3', '17703786903', 'upload/weibaogongsi3.jpg', '公司位置3', 1, '2023-04-12 05:42:59');

DROP TABLE IF EXISTS `weibaojihua`;
CREATE TABLE IF NOT EXISTS `weibaojihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chaunbo_id` int DEFAULT NULL COMMENT '船舶',
  `weibaogongsi_id` int DEFAULT NULL COMMENT '维保公司',
  `weibaorenyuan_id` int DEFAULT NULL COMMENT '维保人员',
  `weibaojihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '维保计划编号',
  `weibaojihua_name` varchar(200) DEFAULT NULL COMMENT '维保计划标题  Search111 ',
  `weibaojihua_file` varchar(200) DEFAULT NULL COMMENT '维保计划附件',
  `weibaojihua_types` int DEFAULT NULL COMMENT '维保计划类型 Search111',
  `weibaojihua_buwei` varchar(200) DEFAULT NULL COMMENT '维保部位 Search111',
  `weibao_time` timestamp NULL DEFAULT NULL COMMENT '维保时间',
  `weibaojihua_address` varchar(200) DEFAULT NULL COMMENT '维保地点',
  `weibaojihua_content` longtext COMMENT '维保详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `weibaojihua_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `weibaojihua_yesno_text` longtext COMMENT '审核意见',
  `weibaojihua_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='维保计划';

DELETE FROM `weibaojihua`;
INSERT INTO `weibaojihua` (`id`, `chaunbo_id`, `weibaogongsi_id`, `weibaorenyuan_id`, `weibaojihua_uuid_number`, `weibaojihua_name`, `weibaojihua_file`, `weibaojihua_types`, `weibaojihua_buwei`, `weibao_time`, `weibaojihua_address`, `weibaojihua_content`, `insert_time`, `weibaojihua_yesno_types`, `weibaojihua_yesno_text`, `weibaojihua_shenhe_time`, `create_time`) VALUES
	(1, 1, 3, 1, '1681278179605', '维保计划标题1', 'upload/file.rar', 3, '维保部位1', '2023-04-12 05:42:59', '维保地点1', '维保详情1', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(2, 2, 3, 2, '1681278179590', '维保计划标题2', 'upload/file.rar', 4, '维保部位2', '2023-04-12 05:42:59', '维保地点2', '维保详情2', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(3, 3, 2, 1, '1681278179575', '维保计划标题3', 'upload/file.rar', 1, '维保部位3', '2023-04-12 05:42:59', '维保地点3', '维保详情3', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(4, 4, 2, 1, '1681278179562', '维保计划标题4', 'upload/file.rar', 2, '维保部位4', '2023-04-12 05:42:59', '维保地点4', '维保详情4', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(5, 5, 1, 2, '1681278179534', '维保计划标题5', 'upload/file.rar', 3, '维保部位5', '2023-04-12 05:42:59', '维保地点5', '维保详情5', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(6, 6, 1, 3, '1681278179576', '维保计划标题6', 'upload/file.rar', 3, '维保部位6', '2023-04-12 05:42:59', '维保地点6', '维保详情6', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(7, 7, 3, 2, '1681278179550', '维保计划标题7', 'upload/file.rar', 2, '维保部位7', '2023-04-12 05:42:59', '维保地点7', '维保详情7', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(8, 8, 3, 3, '1681278179552', '维保计划标题8', 'upload/file.rar', 1, '维保部位8', '2023-04-12 05:42:59', '维保地点8', '维保详情8', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(9, 9, 3, 3, '1681278179534', '维保计划标题9', 'upload/file.rar', 2, '维保部位9', '2023-04-12 05:42:59', '维保地点9', '维保详情9', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(10, 10, 3, 1, '1681278179570', '维保计划标题10', 'upload/file.rar', 2, '维保部位10', '2023-04-12 05:42:59', '维保地点10', '维保详情10', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(11, 11, 2, 3, '1681278179621', '维保计划标题11', 'upload/file.rar', 2, '维保部位11', '2023-04-12 05:42:59', '维保地点11', '维保详情11', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(12, 12, 2, 2, '1681278179545', '维保计划标题12', 'upload/file.rar', 1, '维保部位12', '2023-04-12 05:42:59', '维保地点12', '维保详情12', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(13, 13, 2, 2, '1681278179549', '维保计划标题13', 'upload/file.rar', 2, '维保部位13', '2023-04-12 05:42:59', '维保地点13', '维保详情13', '2023-04-12 05:42:59', 1, NULL, NULL, '2023-04-12 05:42:59'),
	(14, 14, 2, 2, '1681278179536', '维保计划标题14', 'upload/file.rar', 3, '维保部位14', '2023-04-12 05:42:59', '维保地点14', '维保详情14', '2023-04-12 05:42:59', 2, '很高大大声高的时候公司单号的', '2023-04-12 06:25:57', '2023-04-12 05:42:59'),
	(15, 8, 1, 1, '1681280979768', '标题111', '/upload/1681280997833.doc', 3, '不为1111', '2023-04-12 06:30:06', '地点1111', '<p>噶十多个达杀手哥</p>', '2023-04-12 06:30:11', 1, '', NULL, '2023-04-12 06:30:11'),
	(16, 14, 1, 1, '1681282808955', '标题1111', '/upload/1681282819385.doc', 3, '部位杀神风', '2023-04-12 07:00:29', '地点111', '<p>勾搭搭嘎搭嘎</p>', '2023-04-12 07:00:36', 2, '哼哼唧唧', '2023-04-12 07:01:33', '2023-04-12 07:00:36');

DROP TABLE IF EXISTS `weibaorenyuan`;
CREATE TABLE IF NOT EXISTS `weibaorenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `weibaogongsi_id` int DEFAULT NULL COMMENT '维保公司',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weibaorenyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '维保人员编号 Search111 ',
  `weibaorenyuan_name` varchar(200) DEFAULT NULL COMMENT '维保人员姓名 Search111 ',
  `weibaorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '维保人员手机号',
  `weibaorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '维保人员身份证号',
  `weibaorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '维保人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `weibaorenyuan_email` varchar(200) DEFAULT NULL COMMENT '维保人员邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='维保人员';

DELETE FROM `weibaorenyuan`;
INSERT INTO `weibaorenyuan` (`id`, `weibaogongsi_id`, `username`, `password`, `weibaorenyuan_uuid_number`, `weibaorenyuan_name`, `weibaorenyuan_phone`, `weibaorenyuan_id_number`, `weibaorenyuan_photo`, `sex_types`, `weibaorenyuan_email`, `jinyong_types`, `create_time`) VALUES
	(1, 1, '维保人员1', '123456', '1681278179561', '维保人员姓名1', '17703786901', '410224199010102001', 'upload/weibaorenyuan1.jpg', 2, '1@qq.com', 1, '2023-04-12 05:42:59'),
	(2, 2, '维保人员2', '123456', '1681278179536', '维保人员姓名2', '17703786902', '410224199010102002', 'upload/weibaorenyuan2.jpg', 2, '2@qq.com', 2, '2023-04-12 05:42:59'),
	(3, 3, '维保人员3', '123456', '1681278179561', '维保人员姓名3', '17703786903', '410224199010102003', 'upload/weibaorenyuan3.jpg', 2, '3@qq.com', 1, '2023-04-12 05:42:59');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
