/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t343`;
CREATE DATABASE IF NOT EXISTS `t343` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t343`;

DROP TABLE IF EXISTS `chengpinjianyan`;
CREATE TABLE IF NOT EXISTS `chengpinjianyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `chengpinjianyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '检验编号',
  `chengpinjianyan_name` varchar(200) DEFAULT NULL COMMENT '检验标题  Search111 ',
  `jianyanzhongxin_types` int DEFAULT NULL COMMENT '检验中心 Search111',
  `jianyanyiqi_types` int DEFAULT NULL COMMENT '检验仪器 Search111',
  `jianyanxiangmu_types` int DEFAULT NULL COMMENT '检验项目 Search111',
  `chengpinjianyan_types` int DEFAULT NULL COMMENT '成品检验类型 Search111',
  `chengpinjianyan_file` varchar(200) DEFAULT NULL COMMENT '检验文件',
  `chengpinjianyan_time` timestamp NULL DEFAULT NULL COMMENT '检验时间',
  `zhiliangdengji_types` int DEFAULT NULL COMMENT '质量等级 Search111',
  `quexiandengji_types` int DEFAULT NULL COMMENT '缺陷等级 Search111',
  `quexianyuanyin_types` int DEFAULT NULL COMMENT '缺陷原因类型 Search111',
  `jieguo_types` int DEFAULT NULL COMMENT '检测结果 Search111',
  `chengpinjianyan_content` longtext COMMENT '检验结果',
  `chengpinjianyan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='成品检验';

DELETE FROM `chengpinjianyan`;
INSERT INTO `chengpinjianyan` (`id`, `gongzuorenyuan_id`, `chengpinjianyan_uuid_number`, `chengpinjianyan_name`, `jianyanzhongxin_types`, `jianyanyiqi_types`, `jianyanxiangmu_types`, `chengpinjianyan_types`, `chengpinjianyan_file`, `chengpinjianyan_time`, `zhiliangdengji_types`, `quexiandengji_types`, `quexianyuanyin_types`, `jieguo_types`, `chengpinjianyan_content`, `chengpinjianyan_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '1681092594262', '检验标题1', 1, 1, 4, 1, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 2, 2, '检验结果1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 2, '1681092594318', '检验标题2', 1, 3, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 1, 2, '检验结果2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 1, '1681092594246', '检验标题3', 3, 3, 2, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 1, 2, '检验结果3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 3, '1681092594251', '检验标题4', 2, 2, 2, 3, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 1, 2, '检验结果4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 3, '1681092594254', '检验标题5', 2, 3, 2, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 3, 1, '检验结果5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 2, '1681092594252', '检验标题6', 1, 1, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 3, 1, '检验结果6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 3, '1681092594253', '检验标题7', 1, 1, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 2, 2, '检验结果7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 2, '1681092594235', '检验标题8', 2, 3, 3, 1, 'upload/file.rar', '2023-04-10 02:09:54', 2, 3, 3, 1, '检验结果8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 2, '1681092594280', '检验标题9', 3, 1, 1, 4, 'upload/file.rar', '2023-04-10 02:09:54', 2, 3, 3, 1, '检验结果9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 1, '1681092594264', '检验标题10', 3, 2, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 1, 2, '检验结果10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 1, '1681092594303', '检验标题11', 1, 2, 4, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 1, 2, '检验结果11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 1, '1681092594271', '检验标题12', 1, 1, 4, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 2, 2, 2, '检验结果12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 3, '1681092594311', '检验标题13', 1, 1, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 2, 1, '检验结果13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 2, '1681092594264', '检验标题14', 3, 1, 3, 2, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 3, 1, '检验结果14', '备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54');

DROP TABLE IF EXISTS `chouyangbiaozhun`;
CREATE TABLE IF NOT EXISTS `chouyangbiaozhun` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chouyangbiaozhun_uuid_number` varchar(200) DEFAULT NULL COMMENT '标准编号',
  `chouyangbiaozhun_name` varchar(200) DEFAULT NULL COMMENT '标准标题  Search111 ',
  `jianyanxiangmu_types` int DEFAULT NULL COMMENT '检验项目 Search111',
  `chouyangbiaozhun_types` int DEFAULT NULL COMMENT '抽样标准类型 Search111',
  `chouyangbiaozhun_file` varchar(200) DEFAULT NULL COMMENT '依据标准',
  `chouyangbiaozhun_content` longtext COMMENT '合格标准',
  `chouyangbiaozhun_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='抽样标准';

DELETE FROM `chouyangbiaozhun`;
INSERT INTO `chouyangbiaozhun` (`id`, `chouyangbiaozhun_uuid_number`, `chouyangbiaozhun_name`, `jianyanxiangmu_types`, `chouyangbiaozhun_types`, `chouyangbiaozhun_file`, `chouyangbiaozhun_content`, `chouyangbiaozhun_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, '1681092594245', '标准标题1', 4, 4, 'upload/file.rar', '合格标准1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, '1681092594278', '标准标题2', 4, 1, 'upload/file.rar', '合格标准2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, '1681092594337', '标准标题3', 4, 3, 'upload/file.rar', '合格标准3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, '1681092594264', '标准标题4', 4, 1, 'upload/file.rar', '合格标准4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, '1681092594256', '标准标题5', 3, 1, 'upload/file.rar', '合格标准5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, '1681092594334', '标准标题6', 4, 2, 'upload/file.rar', '合格标准6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, '1681092594321', '标准标题7', 2, 4, 'upload/file.rar', '合格标准7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, '1681092594259', '标准标题8', 3, 4, 'upload/file.rar', '合格标准8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, '1681092594240', '标准标题9', 4, 1, 'upload/file.rar', '合格标准9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, '1681092594317', '标准标题10', 4, 2, 'upload/file.rar', '合格标准10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, '1681092594268', '标准标题11', 1, 2, 'upload/file.rar', '合格标准11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, '1681092594282', '标准标题12', 3, 4, 'upload/file.rar', '合格标准12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, '1681092594291', '标准标题13', 2, 1, 'upload/file.rar', '合格标准13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, '1681092594267', '标准标题14', 3, 3, 'upload/file.rar', '<p>合格标准14是打发发送到个发</p>', '<ol><li>备注14高大上地方大撒嘎嘎</li></ol>', '2023-04-10 02:09:54', '2023-04-10 02:09:54');

DROP TABLE IF EXISTS `chuhuojianyan`;
CREATE TABLE IF NOT EXISTS `chuhuojianyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `chuhuojianyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '检验编号',
  `chuhuojianyan_name` varchar(200) DEFAULT NULL COMMENT '检验标题  Search111 ',
  `jianyanzhongxin_types` int DEFAULT NULL COMMENT '检验中心 Search111',
  `jianyanyiqi_types` int DEFAULT NULL COMMENT '检验仪器 Search111',
  `jianyanxiangmu_types` int DEFAULT NULL COMMENT '检验项目 Search111',
  `chuhuojianyan_types` int DEFAULT NULL COMMENT '出货检验类型 Search111',
  `chuhuojianyan_file` varchar(200) DEFAULT NULL COMMENT '检验文件',
  `chuhuojianyan_time` timestamp NULL DEFAULT NULL COMMENT '检验时间',
  `zhiliangdengji_types` int DEFAULT NULL COMMENT '质量等级 Search111',
  `quexiandengji_types` int DEFAULT NULL COMMENT '缺陷等级 Search111',
  `quexianyuanyin_types` int DEFAULT NULL COMMENT '缺陷原因类型 Search111',
  `jieguo_types` int DEFAULT NULL COMMENT '检测结果 Search111',
  `chuhuojianyan_content` longtext COMMENT '检验结果',
  `chuhuojianyan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='出货检验';

DELETE FROM `chuhuojianyan`;
INSERT INTO `chuhuojianyan` (`id`, `gongzuorenyuan_id`, `chuhuojianyan_uuid_number`, `chuhuojianyan_name`, `jianyanzhongxin_types`, `jianyanyiqi_types`, `jianyanxiangmu_types`, `chuhuojianyan_types`, `chuhuojianyan_file`, `chuhuojianyan_time`, `zhiliangdengji_types`, `quexiandengji_types`, `quexianyuanyin_types`, `jieguo_types`, `chuhuojianyan_content`, `chuhuojianyan_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681092594317', '检验标题1', 2, 3, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 1, 2, 1, '检验结果1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 2, '1681092594324', '检验标题2', 2, 1, 1, 1, 'upload/file.rar', '2023-04-10 02:09:54', 3, 1, 2, 2, '检验结果2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 2, '1681092594256', '检验标题3', 3, 1, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 3, 2, 3, 2, '检验结果3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 2, '1681092594291', '检验标题4', 2, 2, 1, 1, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 1, 2, '检验结果4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 3, '1681092594296', '检验标题5', 2, 2, 4, 2, 'upload/file.rar', '2023-04-10 02:09:54', 2, 3, 3, 1, '检验结果5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 1, '1681092594284', '检验标题6', 1, 3, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 2, 1, '检验结果6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 1, '1681092594261', '检验标题7', 2, 3, 4, 2, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 2, 1, '检验结果7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 3, '1681092594283', '检验标题8', 1, 3, 1, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 1, 2, 2, '检验结果8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 1, '1681092594294', '检验标题9', 2, 2, 2, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 1, 1, '检验结果9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 1, '1681092594264', '检验标题10', 1, 2, 1, 4, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 2, 2, '检验结果10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 1, '1681092594298', '检验标题11', 2, 2, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 3, 1, '检验结果11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 2, '1681092594251', '检验标题12', 3, 2, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 1, 1, '检验结果12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 1, '1681092594260', '检验标题13', 2, 1, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 3, 1, '检验结果13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 2, '1681092594260', '检验标题14', 3, 3, 3, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 2, 3, 1, '<p>检验结果14噶十多个太大声</p>', '<p>备注14</p>', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(15, 1, '1681094569587', '检验1111', 3, 3, 2, 2, '/upload/1681094583837.doc', '2023-04-10 02:42:58', 2, 2, 1, 1, '<p>固定死发的是个</p>', '<p>给第三方多或或或或</p>', '2023-04-10 02:43:08', '2023-04-10 02:43:08');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'jianyangongzhong_types', '检验工种', 1, '工种1', NULL, NULL, '2023-04-10 02:09:39'),
	(2, 'jianyangongzhong_types', '检验工种', 2, '工种2', NULL, NULL, '2023-04-10 02:09:39'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-10 02:09:39'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-10 02:09:39'),
	(5, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-10 02:09:39'),
	(6, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-10 02:09:39'),
	(7, 'jianyanxiangmu_types', '检验项目', 1, '检验项目1', NULL, NULL, '2023-04-10 02:09:39'),
	(8, 'jianyanxiangmu_types', '检验项目', 2, '检验项目2', NULL, NULL, '2023-04-10 02:09:39'),
	(9, 'jianyanxiangmu_types', '检验项目', 3, '检验项目3', NULL, NULL, '2023-04-10 02:09:39'),
	(10, 'jianyanxiangmu_types', '检验项目', 4, '检验项目4', NULL, NULL, '2023-04-10 02:09:39'),
	(11, 'chouyangbiaozhun_types', '抽样标准类型', 1, '抽样标准类型1', NULL, NULL, '2023-04-10 02:09:39'),
	(12, 'chouyangbiaozhun_types', '抽样标准类型', 2, '抽样标准类型2', NULL, NULL, '2023-04-10 02:09:39'),
	(13, 'chouyangbiaozhun_types', '抽样标准类型', 3, '抽样标准类型3', NULL, NULL, '2023-04-10 02:09:39'),
	(14, 'chouyangbiaozhun_types', '抽样标准类型', 4, '抽样标准类型4', NULL, NULL, '2023-04-10 02:09:39'),
	(15, 'lailiaojianyan_types', '来料检验类型', 1, '检验类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(16, 'lailiaojianyan_types', '来料检验类型', 2, '检验类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(17, 'lailiaojianyan_types', '来料检验类型', 3, '检验类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(18, 'lailiaojianyan_types', '来料检验类型', 4, '检验类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(19, 'quexianyuanyin_types', '缺陷原因类型', 1, '原因1', NULL, NULL, '2023-04-10 02:09:40'),
	(20, 'quexianyuanyin_types', '缺陷原因类型', 2, '原因2', NULL, NULL, '2023-04-10 02:09:40'),
	(21, 'quexianyuanyin_types', '缺陷原因类型', 3, '原因3', NULL, NULL, '2023-04-10 02:09:40'),
	(22, 'jianyanyiqi_types', '检验仪器', 1, '检验仪器1', NULL, NULL, '2023-04-10 02:09:40'),
	(23, 'jianyanyiqi_types', '检验仪器', 2, '检验仪器2', NULL, NULL, '2023-04-10 02:09:40'),
	(24, 'jianyanyiqi_types', '检验仪器', 3, '检验仪器3', NULL, NULL, '2023-04-10 02:09:40'),
	(25, 'jianyanzhongxin_types', '检验中心', 1, '检验中心1', NULL, NULL, '2023-04-10 02:09:40'),
	(26, 'jianyanzhongxin_types', '检验中心', 2, '检验中心2', NULL, NULL, '2023-04-10 02:09:40'),
	(27, 'jianyanzhongxin_types', '检验中心', 3, '检验中心3', NULL, NULL, '2023-04-10 02:09:40'),
	(28, 'quexiandengji_types', '缺陷等级', 1, '一级', NULL, NULL, '2023-04-10 02:09:40'),
	(29, 'quexiandengji_types', '缺陷等级', 2, '二级', NULL, NULL, '2023-04-10 02:09:40'),
	(30, 'quexiandengji_types', '缺陷等级', 3, '三级', NULL, NULL, '2023-04-10 02:09:40'),
	(31, 'zhiliangdengji_types', '质量等级', 1, '一级', NULL, NULL, '2023-04-10 02:09:40'),
	(32, 'zhiliangdengji_types', '质量等级', 2, '二级', NULL, NULL, '2023-04-10 02:09:40'),
	(33, 'zhiliangdengji_types', '质量等级', 3, '三级', NULL, NULL, '2023-04-10 02:09:40'),
	(34, 'jieguo_types', '检测结果', 1, '合格', NULL, NULL, '2023-04-10 02:09:40'),
	(35, 'jieguo_types', '检测结果', 2, '不合格', NULL, NULL, '2023-04-10 02:09:40'),
	(36, 'zhichengjianyan_types', '制成检验类型', 1, '检验类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(37, 'zhichengjianyan_types', '制成检验类型', 2, '检验类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(38, 'zhichengjianyan_types', '制成检验类型', 3, '检验类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(39, 'zhichengjianyan_types', '制成检验类型', 4, '检验类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(40, 'chengpinjianyan_types', '成品检验类型', 1, '检验类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(41, 'chengpinjianyan_types', '成品检验类型', 2, '检验类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(42, 'chengpinjianyan_types', '成品检验类型', 3, '检验类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(43, 'chengpinjianyan_types', '成品检验类型', 4, '检验类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(44, 'chuhuojianyan_types', '出货检验类型', 1, '检验类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(45, 'chuhuojianyan_types', '出货检验类型', 2, '检验类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(46, 'chuhuojianyan_types', '出货检验类型', 3, '检验类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(47, 'chuhuojianyan_types', '出货检验类型', 4, '检验类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(48, 'kongzhituchushihua_types', '控制图初始化类型', 1, '初始化类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(49, 'kongzhituchushihua_types', '控制图初始化类型', 2, '初始化类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(50, 'kongzhituchushihua_types', '控制图初始化类型', 3, '初始化类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(51, 'kongzhituchushihua_types', '控制图初始化类型', 4, '初始化类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(52, 'zhifangtu_types', '直方图输出类型', 1, '输出类型1', NULL, NULL, '2023-04-10 02:09:40'),
	(53, 'zhifangtu_types', '直方图输出类型', 2, '输出类型2', NULL, NULL, '2023-04-10 02:09:40'),
	(54, 'zhifangtu_types', '直方图输出类型', 3, '输出类型3', NULL, NULL, '2023-04-10 02:09:40'),
	(55, 'zhifangtu_types', '直方图输出类型', 4, '输出类型4', NULL, NULL, '2023-04-10 02:09:40'),
	(56, 'lifangtu_types', '立方图输出类型', 1, '输出类型1', NULL, NULL, '2023-04-10 02:09:41'),
	(57, 'lifangtu_types', '立方图输出类型', 2, '输出类型2', NULL, NULL, '2023-04-10 02:09:41'),
	(58, 'lifangtu_types', '立方图输出类型', 3, '输出类型3', NULL, NULL, '2023-04-10 02:09:41'),
	(59, 'lifangtu_types', '立方图输出类型', 4, '输出类型4', NULL, NULL, '2023-04-10 02:09:41'),
	(60, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-10 02:09:41'),
	(61, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-10 02:09:41'),
	(62, 'zhifangtu_types', '直方图输出类型', 5, '输出类型5', NULL, '', '2023-04-10 02:40:11');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 2, '2023-04-10 02:09:54', '公告详情1', '2023-04-10 02:09:54'),
	(2, '公告名称2', 1, '2023-04-10 02:09:54', '公告详情2', '2023-04-10 02:09:54'),
	(3, '公告名称3', 1, '2023-04-10 02:09:54', '公告详情3', '2023-04-10 02:09:54'),
	(4, '公告名称4', 2, '2023-04-10 02:09:54', '公告详情4', '2023-04-10 02:09:54'),
	(5, '公告名称5', 1, '2023-04-10 02:09:54', '公告详情5', '2023-04-10 02:09:54'),
	(6, '公告名称6', 2, '2023-04-10 02:09:54', '公告详情6', '2023-04-10 02:09:54'),
	(7, '公告名称7', 1, '2023-04-10 02:09:54', '公告详情7', '2023-04-10 02:09:54'),
	(8, '公告名称8', 1, '2023-04-10 02:09:54', '公告详情8', '2023-04-10 02:09:54'),
	(9, '公告名称9', 2, '2023-04-10 02:09:54', '公告详情9', '2023-04-10 02:09:54'),
	(10, '公告名称10', 2, '2023-04-10 02:09:54', '公告详情10', '2023-04-10 02:09:54'),
	(11, '公告名称11', 2, '2023-04-10 02:09:54', '公告详情11', '2023-04-10 02:09:54'),
	(12, '公告名称12', 1, '2023-04-10 02:09:54', '公告详情12', '2023-04-10 02:09:54'),
	(13, '公告名称13', 1, '2023-04-10 02:09:54', '公告详情13', '2023-04-10 02:09:54'),
	(14, '公告名称14', 1, '2023-04-10 02:09:54', '公告详情14', '2023-04-10 02:09:54'),
	(15, '公告111', 2, '2023-04-10 02:40:23', '<p>是搭嘎地方撒打发</p>', '2023-04-10 02:40:23');

DROP TABLE IF EXISTS `gongzuorenyuan`;
CREATE TABLE IF NOT EXISTS `gongzuorenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '工作人员编号 Search111 ',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianyangongzhong_types` int DEFAULT NULL COMMENT '检验工种 Search111 ',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '工作人员邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='工作人员';

DELETE FROM `gongzuorenyuan`;
INSERT INTO `gongzuorenyuan` (`id`, `username`, `password`, `gongzuorenyuan_uuid_number`, `gongzuorenyuan_name`, `gongzuorenyuan_phone`, `gongzuorenyuan_id_number`, `gongzuorenyuan_photo`, `sex_types`, `jianyangongzhong_types`, `gongzuorenyuan_email`, `jinyong_types`, `create_time`) VALUES
	(1, '工作人员1', '123456', '1681092594287', '工作人员姓名1', '17703786901', '410224199010102001', 'upload/gongzuorenyuan1.jpg', 2, 1, '1@qq.com', 1, '2023-04-10 02:09:54'),
	(2, '工作人员2', '123456', '1681092594262', '工作人员姓名2', '17703786902', '410224199010102002', 'upload/gongzuorenyuan2.jpg', 2, 1, '2@qq.com', 1, '2023-04-10 02:09:54'),
	(3, '工作人员3', '123456', '1681092594292', '工作人员姓名3', '17703786903', '410224199010102003', 'upload/gongzuorenyuan3.jpg', 2, 1, '3@qq.com', 2, '2023-04-10 02:09:54');

DROP TABLE IF EXISTS `kongzhituchushihua`;
CREATE TABLE IF NOT EXISTS `kongzhituchushihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `kongzhituchushihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '初始化编号',
  `kongzhituchushihua_name` varchar(200) DEFAULT NULL COMMENT '初始化标题  Search111 ',
  `kongzhituchushihua_types` int DEFAULT NULL COMMENT '控制图初始化类型 Search111',
  `kongzhituchushihua_qian_file` varchar(200) DEFAULT NULL COMMENT '初始化前文件',
  `kongzhituchushihua_hou_file` varchar(200) DEFAULT NULL COMMENT '初始化后文件',
  `kongzhituchushihua_time` timestamp NULL DEFAULT NULL COMMENT '初始化时间',
  `kongzhituchushihua_content` longtext COMMENT '初始化内容',
  `kongzhituchushihua_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='控制图初始化';

DELETE FROM `kongzhituchushihua`;
INSERT INTO `kongzhituchushihua` (`id`, `gongzuorenyuan_id`, `kongzhituchushihua_uuid_number`, `kongzhituchushihua_name`, `kongzhituchushihua_types`, `kongzhituchushihua_qian_file`, `kongzhituchushihua_hou_file`, `kongzhituchushihua_time`, `kongzhituchushihua_content`, `kongzhituchushihua_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1681092594336', '初始化标题1', 3, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 2, '1681092594326', '初始化标题2', 3, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 1, '1681092594261', '初始化标题3', 4, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 2, '1681092594249', '初始化标题4', 3, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 3, '1681092594335', '初始化标题5', 4, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 3, '1681092594312', '初始化标题6', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 3, '1681092594275', '初始化标题7', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 1, '1681092594263', '初始化标题8', 4, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 1, '1681092594264', '初始化标题9', 4, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 2, '1681092594277', '初始化标题10', 1, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 1, '1681092594331', '初始化标题11', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 1, '1681092594291', '初始化标题12', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 2, '1681092594291', '初始化标题13', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 2, '1681092594259', '初始化标题14', 2, 'upload/file.rar', 'upload/file.rar', '2023-04-10 02:09:54', '初始化内容14', '备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(15, 1, '1681094591651', '初始化1111', 1, '/upload/1681094601033.doc', '/upload/1681094603129.doc', '2023-04-10 02:43:24', '<p>固定死个第三个十多个是</p>', '<p>和京津冀</p>', '2023-04-10 02:43:28', '2023-04-10 02:43:28');

DROP TABLE IF EXISTS `lailiaojianyan`;
CREATE TABLE IF NOT EXISTS `lailiaojianyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `lailiaojianyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '检验编号',
  `lailiaojianyan_name` varchar(200) DEFAULT NULL COMMENT '检验标题  Search111 ',
  `jianyanzhongxin_types` int DEFAULT NULL COMMENT '检验中心 Search111',
  `jianyanyiqi_types` int DEFAULT NULL COMMENT '检验仪器 Search111',
  `jianyanxiangmu_types` int DEFAULT NULL COMMENT '检验项目 Search111',
  `lailiaojianyan_types` int DEFAULT NULL COMMENT '来料检验类型 Search111',
  `lailiaojianyan_file` varchar(200) DEFAULT NULL COMMENT '检验文件',
  `lailiaojianyan_time` timestamp NULL DEFAULT NULL COMMENT '检验时间',
  `zhiliangdengji_types` int DEFAULT NULL COMMENT '质量等级 Search111',
  `quexiandengji_types` int DEFAULT NULL COMMENT '缺陷等级 Search111',
  `quexianyuanyin_types` int DEFAULT NULL COMMENT '缺陷原因类型 Search111',
  `jieguo_types` int DEFAULT NULL COMMENT '检测结果 Search111',
  `lailiaojianyan_content` longtext COMMENT '检验结果',
  `lailiaojianyan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='来料检验';

DELETE FROM `lailiaojianyan`;
INSERT INTO `lailiaojianyan` (`id`, `gongzuorenyuan_id`, `lailiaojianyan_uuid_number`, `lailiaojianyan_name`, `jianyanzhongxin_types`, `jianyanyiqi_types`, `jianyanxiangmu_types`, `lailiaojianyan_types`, `lailiaojianyan_file`, `lailiaojianyan_time`, `zhiliangdengji_types`, `quexiandengji_types`, `quexianyuanyin_types`, `jieguo_types`, `lailiaojianyan_content`, `lailiaojianyan_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '1681092594302', '检验标题1', 1, 3, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 3, 2, 1, 2, '检验结果1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 2, '1681092594317', '检验标题2', 1, 2, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 1, 2, '检验结果2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 2, '1681092594264', '检验标题3', 1, 2, 2, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 1, 1, 2, '检验结果3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 2, '1681092594305', '检验标题4', 2, 1, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 2, 1, '检验结果4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 1, '1681092594303', '检验标题5', 3, 2, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 2, 2, '检验结果5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 3, '1681092594278', '检验标题6', 2, 1, 4, 4, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 2, 1, '检验结果6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 1, '1681092594317', '检验标题7', 1, 1, 2, 4, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 2, 1, '检验结果7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 1, '1681092594347', '检验标题8', 3, 1, 4, 1, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 2, 1, '检验结果8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 1, '1681092594308', '检验标题9', 1, 3, 4, 4, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 3, 1, '检验结果9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 2, '1681092594322', '检验标题10', 1, 1, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 3, 1, 1, 1, '检验结果10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 1, '1681092594304', '检验标题11', 3, 2, 4, 2, 'upload/file.rar', '2023-04-10 02:09:54', 3, 2, 1, 2, '检验结果11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 3, '1681092594297', '检验标题12', 3, 3, 3, 4, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 2, 2, '检验结果12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 1, '1681092594263', '检验标题13', 3, 3, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 2, 1, 2, 1, '检验结果13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 3, '1681092594268', '检验标题14', 1, 1, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 3, 3, 2, 2, '检验结果14', '备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(15, 1, '1681094534972', '检验1111', 3, 1, 2, 2, '/upload/1681094552303.doc', '2023-04-10 02:42:25', 1, 1, 2, 1, '<p>过大噶十多个合适的话</p>', '<p>合适的分公司地方手动</p>', '2023-04-10 02:42:39', '2023-04-10 02:42:39');

DROP TABLE IF EXISTS `lifangtu`;
CREATE TABLE IF NOT EXISTS `lifangtu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `lifangtu_uuid_number` varchar(200) DEFAULT NULL COMMENT '输出编号',
  `lifangtu_name` varchar(200) DEFAULT NULL COMMENT '输出标题  Search111 ',
  `lifangtu_types` int DEFAULT NULL COMMENT '立方图输出类型 Search111',
  `lifangtu_file` varchar(200) DEFAULT NULL COMMENT '输出文件',
  `lifangtu_time` timestamp NULL DEFAULT NULL COMMENT '输出时间',
  `lifangtu_content` longtext COMMENT '输出备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='输出立方图';

DELETE FROM `lifangtu`;
INSERT INTO `lifangtu` (`id`, `gongzuorenyuan_id`, `lifangtu_uuid_number`, `lifangtu_name`, `lifangtu_types`, `lifangtu_file`, `lifangtu_time`, `lifangtu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681092594276', '输出标题1', 1, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 2, '1681092594295', '输出标题2', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 1, '1681092594307', '输出标题3', 3, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 3, '1681092594275', '输出标题4', 1, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 1, '1681092594277', '输出标题5', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 2, '1681092594300', '输出标题6', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 1, '1681092594328', '输出标题7', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 1, '1681092594283', '输出标题8', 3, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 1, '1681092594299', '输出标题9', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 1, '1681092594348', '输出标题10', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 3, '1681092594327', '输出标题11', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 3, '1681092594276', '输出标题12', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 2, '1681092594305', '输出标题13', 1, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 3, '1681092594337', '输出标题14', 1, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '28uiph2ixdnvvt0uhr97c3av20dmnacn', '2023-04-10 02:25:24', '2024-08-04 06:22:07'),
	(2, 1, 'a1', 'gongzuorenyuan', '工作人员', '3gpddryrdcwtrryt22hfrbnqw44jay0o', '2023-04-10 02:41:48', '2024-08-04 06:23:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-10 02:09:39');

DROP TABLE IF EXISTS `zhichengjianyan`;
CREATE TABLE IF NOT EXISTS `zhichengjianyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `zhichengjianyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '检验编号',
  `zhichengjianyan_name` varchar(200) DEFAULT NULL COMMENT '检验标题  Search111 ',
  `jianyanzhongxin_types` int DEFAULT NULL COMMENT '检验中心 Search111',
  `jianyanyiqi_types` int DEFAULT NULL COMMENT '检验仪器 Search111',
  `jianyanxiangmu_types` int DEFAULT NULL COMMENT '检验项目 Search111',
  `zhichengjianyan_types` int DEFAULT NULL COMMENT '制成检验类型 Search111',
  `zhichengjianyan_file` varchar(200) DEFAULT NULL COMMENT '检验文件',
  `zhichengjianyan_time` timestamp NULL DEFAULT NULL COMMENT '检验时间',
  `zhiliangdengji_types` int DEFAULT NULL COMMENT '质量等级 Search111',
  `quexiandengji_types` int DEFAULT NULL COMMENT '缺陷等级 Search111',
  `quexianyuanyin_types` int DEFAULT NULL COMMENT '缺陷原因类型 Search111',
  `jieguo_types` int DEFAULT NULL COMMENT '检测结果 Search111',
  `zhichengjianyan_content` longtext COMMENT '检验结果',
  `zhichengjianyan_beizhu_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='制成检验';

DELETE FROM `zhichengjianyan`;
INSERT INTO `zhichengjianyan` (`id`, `gongzuorenyuan_id`, `zhichengjianyan_uuid_number`, `zhichengjianyan_name`, `jianyanzhongxin_types`, `jianyanyiqi_types`, `jianyanxiangmu_types`, `zhichengjianyan_types`, `zhichengjianyan_file`, `zhichengjianyan_time`, `zhiliangdengji_types`, `quexiandengji_types`, `quexianyuanyin_types`, `jieguo_types`, `zhichengjianyan_content`, `zhichengjianyan_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681092594352', '检验标题1', 1, 1, 4, 2, 'upload/file.rar', '2023-04-10 02:09:54', 2, 1, 3, 1, '检验结果1', '备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 3, '1681092594309', '检验标题2', 2, 3, 4, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 3, 2, 2, '检验结果2', '备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 3, '1681092594307', '检验标题3', 1, 2, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 3, 1, 3, 2, '检验结果3', '备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 2, '1681092594267', '检验标题4', 3, 2, 4, 4, 'upload/file.rar', '2023-04-10 02:09:54', 3, 1, 2, 2, '检验结果4', '备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 3, '1681092594351', '检验标题5', 2, 1, 2, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 3, 2, '检验结果5', '备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 1, '1681092594340', '检验标题6', 1, 1, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 2, 2, '检验结果6', '备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 1, '1681092594344', '检验标题7', 2, 1, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 1, 1, '检验结果7', '备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 2, '1681092594275', '检验标题8', 3, 1, 1, 3, 'upload/file.rar', '2023-04-10 02:09:54', 1, 3, 3, 1, '检验结果8', '备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 2, '1681092594313', '检验标题9', 1, 3, 2, 4, 'upload/file.rar', '2023-04-10 02:09:54', 2, 1, 1, 2, '检验结果9', '备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 1, '1681092594343', '检验标题10', 2, 2, 3, 4, 'upload/file.rar', '2023-04-10 02:09:54', 1, 1, 2, 1, '检验结果10', '备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 3, '1681092594274', '检验标题11', 3, 1, 1, 2, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 3, 2, '检验结果11', '备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 1, '1681092594354', '检验标题12', 2, 3, 3, 3, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 2, 2, '检验结果12', '备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 1, '1681092594256', '检验标题13', 2, 2, 2, 1, 'upload/file.rar', '2023-04-10 02:09:54', 1, 2, 2, 1, '检验结果13', '备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 1, '1681092594334', '检验标题14', 3, 2, 1, 1, 'upload/file.rar', '2023-04-10 02:09:54', 2, 2, 2, 1, '检验结果14', '备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54');

DROP TABLE IF EXISTS `zhifangtu`;
CREATE TABLE IF NOT EXISTS `zhifangtu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `zhifangtu_uuid_number` varchar(200) DEFAULT NULL COMMENT '输出编号',
  `zhifangtu_name` varchar(200) DEFAULT NULL COMMENT '输出标题  Search111 ',
  `zhifangtu_types` int DEFAULT NULL COMMENT '直方图输出类型 Search111',
  `zhifangtu_file` varchar(200) DEFAULT NULL COMMENT '输出文件',
  `zhifangtu_time` timestamp NULL DEFAULT NULL COMMENT '输出时间',
  `zhifangtu_content` longtext COMMENT '输出备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='输出直方图';

DELETE FROM `zhifangtu`;
INSERT INTO `zhifangtu` (`id`, `gongzuorenyuan_id`, `zhifangtu_uuid_number`, `zhifangtu_name`, `zhifangtu_types`, `zhifangtu_file`, `zhifangtu_time`, `zhifangtu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681092594332', '输出标题1', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注1', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(2, 1, '1681092594352', '输出标题2', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注2', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(3, 2, '1681092594322', '输出标题3', 3, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注3', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(4, 3, '1681092594257', '输出标题4', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注4', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(5, 3, '1681092594287', '输出标题5', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注5', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(6, 2, '1681092594346', '输出标题6', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注6', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(7, 1, '1681092594325', '输出标题7', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注7', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(8, 3, '1681092594286', '输出标题8', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注8', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(9, 1, '1681092594297', '输出标题9', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注9', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(10, 2, '1681092594342', '输出标题10', 4, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注10', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(11, 1, '1681092594284', '输出标题11', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注11', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(12, 3, '1681092594349', '输出标题12', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注12', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(13, 3, '1681092594283', '输出标题13', 2, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注13', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(14, 2, '1681092594311', '输出标题14', 1, 'upload/file.rar', '2023-04-10 02:09:54', '输出备注14', '2023-04-10 02:09:54', '2023-04-10 02:09:54'),
	(15, 1, '1681094616604', '输出1111', 4, '/upload/1681094622657.doc', '2023-04-10 02:43:43', '<p>固定死房东说根深蒂固</p>', '2023-04-10 02:43:46', '2023-04-10 02:43:46');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
