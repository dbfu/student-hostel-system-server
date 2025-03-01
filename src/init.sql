/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : student-hostel-system

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 01/03/2025 17:54:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ptype` varchar(255) DEFAULT NULL,
  `v0` varchar(255) DEFAULT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `v3` varchar(255) DEFAULT NULL,
  `v4` varchar(255) DEFAULT NULL,
  `v5` varchar(255) DEFAULT NULL,
  `v6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (88, 'g', '1', '1637123031564288', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (133, 'g', '1999360162267136', '5126498239381504', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (183, 'g', '221627180000477184', '221626968137793536', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (184, 'g', '221842497184202752', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (192, 'g', '221846166747217920', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (259, 'g', '221866062612791296', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (260, 'g', '221866062612791296', '221626968137793536', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (261, 'g', '222005168495919104', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (262, 'g', '222007411093798912', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (264, 'g', '222191990471655424', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (265, 'p', '1637123031564288', '/menu/alloc/interface/list', 'get', '15457927204700160', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (266, 'p', '1637123031564288', '/role/page', 'get', '15694607522201600', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (267, 'p', '1637123031564288', '/menu/page', 'get', '15459106626207744', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (268, 'p', '1637123031564288', '/menu/alloc/interface/list', 'get', '15459106626207744', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (269, 'p', '1637123031564288', '/menu/children', 'get', '15459106626207744', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (270, 'p', '1637123031564288', '/menu/', 'post', '19977176791121920', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (271, 'p', '1637123031564288', '/user/send/email/captcha', 'post', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (272, 'p', '1637123031564288', '/user/page', 'get', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (273, 'p', '1637123031564288', '/user/', 'post', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (274, 'p', '1637123031564288', '/user/', 'put', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (275, 'p', '1637123031564288', '/user/:id', 'delete', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (276, 'p', '1637123031564288', '/user/:id', 'get', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (277, 'p', '1637123031564288', '/role/alloc/menu', 'post', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (278, 'p', '1637123031564288', '/role/menu/list', 'get', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (279, 'p', '1637123031564288', '/role/page', 'get', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (280, 'p', '1637123031564288', '/role/list', 'get', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (281, 'p', '1637123031564288', '/role/', 'post', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (282, 'p', '1637123031564288', '/role/', 'put', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (283, 'p', '1637123031564288', '/role/:id', 'delete', '19974159782117376', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (316, 'p', '1637123031564288', '/dashboard', 'get', '221996565819031552', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (317, 'p', '221483794677366784', '/hostel/list', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (318, 'p', '221483794677366784', '/repair/page/current', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (319, 'p', '221483794677366784', '/repair/list', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (320, 'p', '221483794677366784', '/repair', 'post', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (321, 'p', '221483794677366784', '/repair', 'put', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (322, 'p', '221483794677366784', '/repair/:id', 'delete', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (323, 'p', '221483794677366784', '/repair/:id', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (354, 'g', '222320471129980928', '221626968137793536', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (355, 'g', '222321005043908608', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (356, 'g', '222321646365573120', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (357, 'g', '222321646365573121', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (388, 'g', '222325998216019968', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (389, 'g', '222325998216019969', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (509, 'p', '221626968137793536', '/dashboard', 'get', '221996565819031552', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (515, 'p', '221626968137793536', '/hostel/page', 'get', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (516, 'p', '221626968137793536', '/hostel/list', 'get', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (517, 'p', '221626968137793536', '/hostel/:id', 'delete', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (518, 'p', '221626968137793536', '/hostel/:id', 'get', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (519, 'p', '221626968137793536', '/hostel', 'post', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (520, 'p', '221626968137793536', '/hostel', 'put', '221625389754089472', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (521, 'p', '221626968137793536', '/repair/page', 'get', '221625751969988608', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (522, 'p', '221626968137793536', '/hostel/list', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (523, 'p', '221626968137793536', '/repair/page/current', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (524, 'p', '221626968137793536', '/repair/list', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (525, 'p', '221626968137793536', '/repair', 'post', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (526, 'p', '221626968137793536', '/repair', 'put', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (527, 'p', '221626968137793536', '/repair/:id', 'delete', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (528, 'p', '221626968137793536', '/repair/:id', 'get', '221842266031915008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (529, 'p', '221626968137793536', '/student/page', 'get', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (530, 'p', '221626968137793536', '/student/list', 'get', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (531, 'p', '221626968137793536', '/student/:id', 'delete', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (532, 'p', '221626968137793536', '/student/:id', 'get', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (533, 'p', '221626968137793536', '/student/export/template', 'post', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (534, 'p', '221626968137793536', '/student', 'post', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (535, 'p', '221626968137793536', '/student', 'put', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (536, 'p', '221626968137793536', '/major/list', 'get', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (537, 'p', '221626968137793536', '/hostel/list', 'get', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (538, 'p', '221626968137793536', '/student/import', 'post', '221625623804641280', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (547, 'p', '1637123031564288', '/major/list', 'get', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (548, 'p', '1637123031564288', '/major', 'post', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (549, 'p', '1637123031564288', '/major', 'put', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (550, 'p', '1637123031564288', '/major', 'delete', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (551, 'p', '1637123031564288', '/major/page', 'get', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (552, 'p', '221626968137793536', '/major/list', 'get', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (553, 'p', '221626968137793536', '/major', 'post', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (554, 'p', '221626968137793536', '/major', 'put', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (555, 'p', '221626968137793536', '/major', 'delete', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (556, 'p', '221626968137793536', '/major/page', 'get', '221624618878763008', NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (557, 'g', '223821667766370304', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (558, 'g', '223821667766370305', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (559, 'g', '223821878219767808', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (560, 'g', '223821878219767809', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (561, 'g', '223822037070643200', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (562, 'g', '223822037070643201', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (563, 'g', '223822498708324352', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (564, 'g', '223822498708324353', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (565, 'g', '223822633949462528', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`) VALUES (566, 'g', '223822633949462529', '221483794677366784', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sh_hostel
-- ----------------------------
DROP TABLE IF EXISTS `sh_hostel`;
CREATE TABLE `sh_hostel` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `number` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '门牌号',
  `building` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '栋号',
  `floor` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '楼层',
  `bedCount` int NOT NULL COMMENT '床位数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sh_hostel
-- ----------------------------
BEGIN;
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318793429352448, '2025-02-24 11:35:30.838275', '2025-02-24 11:35:30.838275', '101', '1', '1', 6);
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318836995588096, '2025-02-24 11:35:41.225131', '2025-02-24 11:35:41.225131', '102', '1', '1', 6);
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318876552069120, '2025-02-24 11:35:50.656199', '2025-02-24 11:35:50.656199', '103', '1', '1', 6);
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318909502521344, '2025-02-24 11:35:58.513005', '2025-02-24 11:35:58.513005', '104', '1', '1', 6);
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318944520765440, '2025-02-24 11:36:06.861558', '2025-02-24 11:44:29.000000', '105', '1', '1', 6);
INSERT INTO `sh_hostel` (`id`, `createDate`, `updateDate`, `number`, `building`, `floor`, `bedCount`) VALUES (222318973922836480, '2025-02-24 11:36:13.871945', '2025-02-24 11:36:13.871945', '106', '1', '1', 6);
COMMIT;

-- ----------------------------
-- Table structure for sh_major
-- ----------------------------
DROP TABLE IF EXISTS `sh_major`;
CREATE TABLE `sh_major` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '专业名称',
  `classCount` int NOT NULL COMMENT '班级数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sh_major
-- ----------------------------
BEGIN;
INSERT INTO `sh_major` (`id`, `createDate`, `updateDate`, `name`, `classCount`) VALUES (221144113272061952, '2025-02-21 05:47:45.265446', '2025-02-21 05:53:31.000000', '计算机科学与技术', 12);
INSERT INTO `sh_major` (`id`, `createDate`, `updateDate`, `name`, `classCount`) VALUES (221145449766060032, '2025-02-21 05:53:03.911122', '2025-02-21 05:53:25.000000', '电子与通信工程 ', 8);
COMMIT;

-- ----------------------------
-- Table structure for sh_repair
-- ----------------------------
DROP TABLE IF EXISTS `sh_repair`;
CREATE TABLE `sh_repair` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `hostelId` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '宿舍id',
  `repairId` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '报修人id',
  `repairRemark` longtext COLLATE utf8mb3_bin NOT NULL COMMENT '报修内容',
  `status` int NOT NULL COMMENT '状态，0 未处理，1 已处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


-- ----------------------------
-- Table structure for sh_student
-- ----------------------------
DROP TABLE IF EXISTS `sh_student`;
CREATE TABLE `sh_student` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `fullName` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '姓名',
  `code` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '学号',
  `classNum` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '班级',
  `phoneNumber` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '手机号',
  `enrolDate` datetime NOT NULL COMMENT '入学时间',
  `hostelId` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '宿舍id',
  `sex` int NOT NULL COMMENT '性别',
  `majorId` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '专业',
  `bedNum` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '床位',
  `email` varchar(255) COLLATE utf8mb3_bin NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sh_student
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_api_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_api_log`;
CREATE TABLE `sys_api_log` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `url` varchar(255) NOT NULL COMMENT '接口url',
  `method` varchar(255) NOT NULL COMMENT '请求方式',
  `success` tinyint NOT NULL COMMENT '是否成功',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `duration` int NOT NULL COMMENT '耗时',
  `ip` varchar(255) NOT NULL COMMENT '请求ip',
  `errorType` varchar(255) DEFAULT NULL COMMENT '错误类型',
  `result` longtext COMMENT '响应结果',
  `body` longtext COMMENT '请求body参数',
  `query` longtext COMMENT '请求query参数',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户Id',
  `errorMsg` varchar(255) DEFAULT NULL COMMENT '错误消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` int NOT NULL COMMENT '类型，1:目录 2:菜单 3:按钮 4:低代码页面',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `show` tinyint NOT NULL COMMENT '是否在菜单中显示',
  `filePath` varchar(255) DEFAULT NULL COMMENT '本地组件地址',
  `orderNumber` int DEFAULT NULL COMMENT '排序号',
  `parentId` varchar(255) DEFAULT NULL COMMENT '上级id',
  `route` varchar(255) DEFAULT NULL COMMENT '路由',
  `authCode` varchar(255) DEFAULT NULL COMMENT '按钮权限代码',
  `curVersion` varchar(255) DEFAULT NULL COMMENT '低代码页面当前版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (1620378745044992, '2023-06-26 11:18:48.406443', '2023-07-08 06:44:38.639109', '系统管理', 'SettingOutlined', 1, NULL, 1, NULL, 20, NULL, '/system', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (1620785110188032, '2023-06-26 11:20:25.287094', '2023-07-08 06:44:38.652713', '用户管理', 'UserOutlined', 2, '/user', 1, '/user/index.tsx', 20, '1620378745044992', '/user', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (2379818528145408, '2023-06-28 13:36:32.959907', '2023-07-08 06:44:38.660025', '角色管理', 'TeamOutlined', 2, '/role', 1, '/role/index.tsx', 10, '1620378745044992', '/role', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (2380054151561216, '2023-06-28 13:37:29.132116', '2023-07-08 06:44:38.665270', '菜单管理', 'MenuOutlined', 2, '/menu', 1, '/menu/index.tsx', 0, '1620378745044992', '/menu', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (2709189189173248, '2023-06-29 11:25:21.041436', '2025-02-23 07:36:24.000000', '首页', 'DashboardOutlined', 2, '/dashboard', 1, '/dashboard/index.tsx', 10, NULL, '/dashboard', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (5833499856601088, '2023-07-08 02:20:14.753300', '2023-07-08 06:44:38.684209', '菜单测试', 'SlackOutlined', 2, NULL, 1, '/test/index.tsx', 10, '5833177725665280', '/menu-test-index', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (5847213443907584, '2023-07-08 03:14:44.323362', '2023-07-08 06:44:38.687493', '详情', 'FastForwardOutlined', 2, NULL, 0, '/test/detail/index.tsx', 10, '5833499856601088', '/detail', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (5854701983629312, '2023-07-08 03:44:29.733886', '2023-07-08 06:45:18.489157', '详情有参数', NULL, 2, NULL, 0, '/test/detila-params/index.tsx', 10, '5833499856601088', '/detail/:id', '', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (6632374573989888, '2023-07-10 07:14:41.328552', '2023-07-10 12:51:18.000000', '新建', NULL, 3, NULL, 0, NULL, NULL, '5833499856601088', NULL, 'menu-test:create', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (6757857844264960, '2023-07-10 15:33:18.870652', '2023-07-10 15:33:18.870652', '查询', NULL, 3, NULL, 0, NULL, NULL, '5833499856601088', NULL, 'menu-test:query', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (6758006012248064, '2023-07-10 15:33:54.195561', '2023-07-10 15:33:54.195561', '编辑', NULL, 3, NULL, 0, NULL, NULL, '5833499856601088', NULL, 'menu-test:edit', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (6758078640816128, '2023-07-10 15:34:11.510162', '2023-07-10 15:34:11.510162', '删除', NULL, 3, NULL, 0, NULL, NULL, '5833499856601088', NULL, 'menu-test:delete', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (9978851039903744, '2023-07-19 12:52:23.489225', '2023-07-19 12:52:56.439103', '用户登录日志', 'BarcodeOutlined', 2, NULL, 1, '/login-log/index.tsx', 30, '1620378745044992', '/login-log', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (15457927204700160, '2023-08-03 15:44:17.046051', '2023-08-03 15:44:17.046051', '查询', NULL, 3, NULL, 0, NULL, NULL, '2380054151561216', NULL, 'menu:query', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (15459106626207744, '2023-08-03 15:48:58.241544', '2023-08-03 15:48:58.241544', '查询1', NULL, 3, NULL, 0, NULL, NULL, '2380054151561216', NULL, 'menu:query1', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (15694607522201600, '2023-08-04 07:24:46.031278', '2023-08-04 07:24:46.031278', '查询', NULL, 3, NULL, 0, NULL, NULL, '2379818528145408', NULL, 'role:query', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (19974159782117376, '2023-08-16 02:50:10.805673', '2023-08-16 02:50:10.805673', '全部', NULL, 3, NULL, 0, NULL, NULL, '1620785110188032', NULL, 'user:all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (19977176791121920, '2023-08-16 03:02:10.107636', '2023-08-16 03:02:10.107636', '新建', NULL, 3, NULL, 0, NULL, NULL, '2380054151561216', NULL, 'menu:create', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (61801171353862144, '2023-12-09 12:55:47.464661', '2023-12-19 13:31:29.000000', '页面管理', 'FileOutlined', 2, NULL, 1, '/low-code/page/list/index.tsx', 20, '61800856361631744', '/page', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (61826177869807616, '2023-12-09 14:35:09.482291', '2023-12-20 09:16:39.000000', '新建页面', NULL, 2, NULL, 0, '/low-code/page/new/index.tsx', 10, '61801171353862144', '/new-page', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (65732465561436160, '2023-12-20 09:17:21.043472', '2023-12-20 09:17:53.000000', '编辑页面', NULL, 2, NULL, 0, '/low-code/page/edit/index.tsx', 20, '61801171353862144', '/edit-page/:versionId', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (65836338502434816, '2023-12-20 16:10:06.286189', '2023-12-20 16:10:06.286189', '复制页面', NULL, 2, NULL, 0, '/low-code/page/copy/index.tsx', 30, '61801171353862144', '/copy-page/:versionId', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (197905447867383808, '2024-12-19 02:45:35.678668', '2024-12-19 02:45:35.678668', 'API请求日志', 'FileOutlined', 2, NULL, 1, '/api-log/index.tsx', 50, '1620378745044992', '/api-log', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221106303336972288, '2025-02-21 03:17:30.675139', '2025-02-21 07:50:26.000000', '学生宿舍管理', 'UserOutlined', 1, NULL, 1, NULL, 30, NULL, '/student', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221106702215282688, '2025-02-21 03:19:05.774535', '2025-02-21 03:19:05.774535', '专业管理', 'FilterOutlined', 2, NULL, 1, '/major/index.tsx', 1, '221106303336972288', '/major', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221175299503554560, '2025-02-21 07:51:40.641657', '2025-02-21 09:48:53.000000', '宿舍管理', 'BankOutlined', 2, NULL, 1, '/hostel/index.tsx', 10, '221106303336972288', '/hostel', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221205067292737536, '2025-02-21 09:49:57.836174', '2025-02-21 09:49:57.836174', '学生管理', 'UserOutlined', 2, NULL, 1, '/student/index.tsx', 20, '221106303336972288', '/student-list', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221577605009113088, '2025-02-22 10:30:17.751513', '2025-02-22 10:30:24.000000', '报修管理', 'LaptopOutlined', 2, NULL, 1, '/repair/index.tsx', 30, '221106303336972288', '/repair', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221624618878763008, '2025-02-22 13:37:06.730882', '2025-02-24 11:31:22.000000', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '221106702215282688', NULL, 'major-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221625389754089472, '2025-02-22 13:40:10.519962', '2025-02-24 11:31:46.000000', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '221175299503554560', NULL, 'hostel-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221625623804641280, '2025-02-22 13:41:06.321575', '2025-02-24 11:32:23.000000', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '221205067292737536', NULL, 'student-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221625751969988608, '2025-02-22 13:41:36.878451', '2025-02-24 11:33:13.000000', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '221577605009113088', NULL, 'repair-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221839010723528704, '2025-02-23 03:49:01.727863', '2025-02-23 03:49:01.727863', '我的报修', 'BugOutlined', 2, NULL, 1, '/my-repair/index.tsx', 40, '221106303336972288', '/my-repair', NULL, NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221842266031915008, '2025-02-23 04:01:57.853957', '2025-02-24 11:33:37.000000', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '221839010723528704', NULL, 'my-repair-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (221996565819031552, '2025-02-23 14:15:05.791868', '2025-02-23 14:16:30.000000', '图表统计', NULL, 3, NULL, 0, NULL, NULL, '2709189189173248', NULL, 'dashboard-detail', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (222327885220806656, '2025-02-24 12:11:38.491630', '2025-02-24 12:11:38.491630', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '9978851039903744', NULL, 'login-log-all', NULL);
INSERT INTO `sys_menu` (`id`, `createDate`, `updateDate`, `name`, `icon`, `type`, `url`, `show`, `filePath`, `orderNumber`, `parentId`, `route`, `authCode`, `curVersion`) VALUES (222328014866743296, '2025-02-24 12:12:09.401212', '2025-02-24 12:12:09.401212', '全部接口权限', NULL, 3, NULL, 0, NULL, NULL, '197905447867383808', NULL, 'api-log-all', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_api`;
CREATE TABLE `sys_menu_api` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `menuId` varchar(255) NOT NULL COMMENT '菜单id',
  `method` varchar(255) NOT NULL COMMENT '请求方式',
  `path` varchar(255) NOT NULL COMMENT 'path',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu_api
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750656, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'post', '/auth/send/reset/password/email');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750657, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'post', '/auth/reset/password');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750658, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'post', '/auth/refresh/token');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750659, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'get', '/auth/current/user');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750660, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'get', '/auth/publicKey');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750661, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'get', '/auth/captcha');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750662, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'post', '/auth/logout');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15358008183750663, '2023-08-03 09:07:14.491548', '2023-08-03 09:07:14.491548', '15358008116641792', 'post', '/auth/login');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15457927292780544, '2023-08-03 15:44:17.064022', '2023-08-03 15:44:17.064022', '15457927204700160', 'get', '/menu/alloc/interface/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (15694607618670592, '2023-08-04 07:24:46.050301', '2023-08-04 07:24:46.050301', '15694607522201600', 'get', '/role/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (16006303855935488, '2023-08-05 04:03:20.224720', '2023-08-05 04:03:20.224720', '15459106626207744', 'get', '/menu/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (16006303855935489, '2023-08-05 04:03:20.224720', '2023-08-05 04:03:20.224720', '15459106626207744', 'get', '/menu/alloc/interface/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (16006303855935490, '2023-08-05 04:03:20.224720', '2023-08-05 04:03:20.224720', '15459106626207744', 'get', '/menu/children');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (19977176891785216, '2023-08-16 03:02:10.130446', '2023-08-16 03:02:10.130446', '19977176791121920', 'post', '/menu/');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260288, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'post', '/user/send/email/captcha');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260289, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'get', '/user/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260290, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'post', '/user/');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260291, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'put', '/user/');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260292, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'delete', '/user/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260293, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'get', '/user/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260294, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'post', '/role/alloc/menu');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260295, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'get', '/role/menu/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260296, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'get', '/role/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260297, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'get', '/role/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260298, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'post', '/role/');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260299, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'put', '/role/');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (198248133493260300, '2024-12-20 01:27:18.301205', '2024-12-20 01:27:18.301205', '19974159782117376', 'delete', '/role/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (221996921416318976, '2025-02-23 14:16:30.570344', '2025-02-23 14:16:30.570344', '221996565819031552', 'get', '/dashboard');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277184, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'get', '/hostel/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277185, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'get', '/hostel/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277186, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'delete', '/hostel/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277187, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'get', '/hostel/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277188, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'post', '/hostel');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222317850797277189, '2025-02-24 11:31:46.098037', '2025-02-24 11:31:46.098037', '221625389754089472', 'put', '/hostel');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318218453188608, '2025-02-24 11:33:13.753584', '2025-02-24 11:33:13.753584', '221625751969988608', 'get', '/repair/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826880, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'get', '/hostel/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826881, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'get', '/repair/page/current');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826882, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'get', '/repair/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826883, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'post', '/repair');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826884, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'put', '/repair');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826885, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'delete', '/repair/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222318316360826886, '2025-02-24 11:33:37.102527', '2025-02-24 11:33:37.102527', '221842266031915008', 'get', '/repair/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783552, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'get', '/student/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783553, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'get', '/student/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783554, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'delete', '/student/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783555, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'get', '/student/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783556, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'post', '/student/export/template');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783557, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'post', '/student');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783558, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'put', '/student');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783559, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'get', '/major/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783560, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'get', '/hostel/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222325335813783561, '2025-02-24 12:01:30.665466', '2025-02-24 12:01:30.665466', '221625623804641280', 'post', '/student/import');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138304, '2025-02-24 12:11:38.502639', '2025-02-24 12:11:38.502639', '222327885220806656', 'get', '/login-log/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138305, '2025-02-24 12:11:38.513516', '2025-02-24 12:11:38.513516', '222327885220806656', 'get', '/login-log/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138306, '2025-02-24 12:11:38.521573', '2025-02-24 12:11:38.521573', '222327885220806656', 'post', '/login-log');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138307, '2025-02-24 12:11:38.527908', '2025-02-24 12:11:38.527908', '222327885220806656', 'put', '/login-log');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138308, '2025-02-24 12:11:38.534323', '2025-02-24 12:11:38.534323', '222327885220806656', 'delete', '/login-log/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222327885271138309, '2025-02-24 12:11:38.541314', '2025-02-24 12:11:38.541314', '222327885220806656', 'get', '/login-log/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103424, '2025-02-24 12:12:09.408034', '2025-02-24 12:12:09.408034', '222328014866743296', 'get', '/api-log/result');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103425, '2025-02-24 12:12:09.413480', '2025-02-24 12:12:09.413480', '222328014866743296', 'get', '/api-log/query');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103426, '2025-02-24 12:12:09.419475', '2025-02-24 12:12:09.419475', '222328014866743296', 'get', '/api-log/page');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103427, '2025-02-24 12:12:09.424586', '2025-02-24 12:12:09.424586', '222328014866743296', 'get', '/api-log/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103428, '2025-02-24 12:12:09.427753', '2025-02-24 12:12:09.427753', '222328014866743296', 'get', '/api-log/body');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103429, '2025-02-24 12:12:09.431278', '2025-02-24 12:12:09.431278', '222328014866743296', 'post', '/api-log');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103430, '2025-02-24 12:12:09.434614', '2025-02-24 12:12:09.434614', '222328014866743296', 'put', '/api-log');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103431, '2025-02-24 12:12:09.438695', '2025-02-24 12:12:09.438695', '222328014866743296', 'delete', '/api-log/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222328014896103432, '2025-02-24 12:12:09.441875', '2025-02-24 12:12:09.441875', '222328014866743296', 'get', '/api-log/:id');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222342173205463040, '2025-02-24 13:08:25.011021', '2025-02-24 13:08:25.011021', '221624618878763008', 'get', '/major/list');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222342173205463041, '2025-02-24 13:08:25.011021', '2025-02-24 13:08:25.011021', '221624618878763008', 'post', '/major');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222342173205463042, '2025-02-24 13:08:25.011021', '2025-02-24 13:08:25.011021', '221624618878763008', 'put', '/major');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222342173205463043, '2025-02-24 13:08:25.011021', '2025-02-24 13:08:25.011021', '221624618878763008', 'delete', '/major');
INSERT INTO `sys_menu_api` (`id`, `createDate`, `updateDate`, `menuId`, `method`, `path`) VALUES (222342173205463044, '2025-02-24 13:08:25.011021', '2025-02-24 13:08:25.011021', '221624618878763008', 'get', '/major/page');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_interface
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_interface`;
CREATE TABLE `sys_menu_interface` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `method` varchar(255) NOT NULL COMMENT '请求方式',
  `path` varchar(255) NOT NULL COMMENT 'path',
  `menuId` varchar(255) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu_interface
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_version
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_version`;
CREATE TABLE `sys_menu_version` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `menuId` varchar(255) NOT NULL COMMENT '菜单id',
  `version` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu_version
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_version` (`id`, `createDate`, `updateDate`, `menuId`, `version`, `description`) VALUES (65717876044070912, '2023-12-20 08:19:22.630776', '2023-12-20 08:19:22.630776', '65717875960184832', 'v1.0.0', '低代码页面默认版本');
INSERT INTO `sys_menu_version` (`id`, `createDate`, `updateDate`, `menuId`, `version`, `description`) VALUES (65781470744018944, '2023-12-20 12:32:04.789701', '2023-12-20 12:32:04.789701', '65781470651744256', 'v1.0.0', '初始化');
INSERT INTO `sys_menu_version` (`id`, `createDate`, `updateDate`, `menuId`, `version`, `description`) VALUES (65793132637192192, '2023-12-20 13:18:25.202998', '2023-12-20 13:28:17.784000', '65717875960184832', 'v1.1.0', '555');
INSERT INTO `sys_menu_version` (`id`, `createDate`, `updateDate`, `menuId`, `version`, `description`) VALUES (65838647378706432, '2023-12-20 16:19:16.771475', '2023-12-30 14:41:15.349000', '65781470651744256', 'v1.0.1', '44444');
INSERT INTO `sys_menu_version` (`id`, `createDate`, `updateDate`, `menuId`, `version`, `description`) VALUES (69438375970471936, '2023-12-30 14:43:18.937399', '2023-12-30 14:43:18.937399', '65781470651744256', 'v1.0.2', 'helllo');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `code` varchar(255) NOT NULL COMMENT '代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `createDate`, `updateDate`, `name`, `code`) VALUES (1637123031564288, '2023-06-26 12:25:20.552134', '2025-02-22 13:43:06.000000', '系统管理员', 'admin');
INSERT INTO `sys_role` (`id`, `createDate`, `updateDate`, `name`, `code`) VALUES (221483794677366784, '2025-02-22 04:17:31.626780', '2025-02-22 04:17:31.626780', '学生', 'student');
INSERT INTO `sys_role` (`id`, `createDate`, `updateDate`, `name`, `code`) VALUES (221626968137793536, '2025-02-22 13:46:26.836117', '2025-02-22 13:46:26.836117', '管理员', 'manager');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `roleId` varchar(255) NOT NULL COMMENT '角色id',
  `menuId` varchar(255) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599424, '2025-02-24 11:29:38.407726', '2025-02-24 11:29:38.407726', '1637123031564288', '221106303336972288');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599425, '2025-02-24 11:29:38.414486', '2025-02-24 11:29:38.414486', '1637123031564288', '221839010723528704');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599426, '2025-02-24 11:29:38.420525', '2025-02-24 11:29:38.420525', '1637123031564288', '221842266031915008');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599427, '2025-02-24 11:29:38.426801', '2025-02-24 11:29:38.426801', '1637123031564288', '221577605009113088');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599428, '2025-02-24 11:29:38.431915', '2025-02-24 11:29:38.431915', '1637123031564288', '221625751969988608');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599429, '2025-02-24 11:29:38.437068', '2025-02-24 11:29:38.437068', '1637123031564288', '221205067292737536');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599430, '2025-02-24 11:29:38.442120', '2025-02-24 11:29:38.442120', '1637123031564288', '221625623804641280');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599431, '2025-02-24 11:29:38.447280', '2025-02-24 11:29:38.447280', '1637123031564288', '221175299503554560');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599432, '2025-02-24 11:29:38.451017', '2025-02-24 11:29:38.451017', '1637123031564288', '221625389754089472');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599433, '2025-02-24 11:29:38.454560', '2025-02-24 11:29:38.454560', '1637123031564288', '221106702215282688');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599434, '2025-02-24 11:29:38.457786', '2025-02-24 11:29:38.457786', '1637123031564288', '221624618878763008');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599435, '2025-02-24 11:29:38.461008', '2025-02-24 11:29:38.461008', '1637123031564288', '2709189189173248');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599436, '2025-02-24 11:29:38.463912', '2025-02-24 11:29:38.463912', '1637123031564288', '221996565819031552');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599437, '2025-02-24 11:29:38.468829', '2025-02-24 11:29:38.468829', '1637123031564288', '1620378745044992');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599438, '2025-02-24 11:29:38.472460', '2025-02-24 11:29:38.472460', '1637123031564288', '197905447867383808');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599439, '2025-02-24 11:29:38.475258', '2025-02-24 11:29:38.475258', '1637123031564288', '9978851039903744');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599440, '2025-02-24 11:29:38.477763', '2025-02-24 11:29:38.477763', '1637123031564288', '2380054151561216');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599441, '2025-02-24 11:29:38.480978', '2025-02-24 11:29:38.480978', '1637123031564288', '19977176791121920');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599442, '2025-02-24 11:29:38.483518', '2025-02-24 11:29:38.483518', '1637123031564288', '15459106626207744');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599443, '2025-02-24 11:29:38.486483', '2025-02-24 11:29:38.486483', '1637123031564288', '15457927204700160');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599444, '2025-02-24 11:29:38.489572', '2025-02-24 11:29:38.489572', '1637123031564288', '2379818528145408');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599445, '2025-02-24 11:29:38.493743', '2025-02-24 11:29:38.493743', '1637123031564288', '15694607522201600');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599446, '2025-02-24 11:29:38.496409', '2025-02-24 11:29:38.496409', '1637123031564288', '1620785110188032');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222317315226599447, '2025-02-24 11:29:38.499017', '2025-02-24 11:29:38.499017', '1637123031564288', '19974159782117376');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222320067038150656, '2025-02-24 11:40:34.491349', '2025-02-24 11:40:34.491349', '221483794677366784', '2709189189173248');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222320067038150657, '2025-02-24 11:40:34.498687', '2025-02-24 11:40:34.498687', '221483794677366784', '221106303336972288');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222320067038150658, '2025-02-24 11:40:34.504491', '2025-02-24 11:40:34.504491', '221483794677366784', '221839010723528704');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222320067038150659, '2025-02-24 11:40:34.509944', '2025-02-24 11:40:34.509944', '221483794677366784', '221842266031915008');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694080, '2025-02-24 13:07:38.275526', '2025-02-24 13:07:38.275526', '221626968137793536', '2709189189173248');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694081, '2025-02-24 13:07:38.282953', '2025-02-24 13:07:38.282953', '221626968137793536', '221106303336972288');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694082, '2025-02-24 13:07:38.290167', '2025-02-24 13:07:38.290167', '221626968137793536', '221839010723528704');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694083, '2025-02-24 13:07:38.297384', '2025-02-24 13:07:38.297384', '221626968137793536', '221842266031915008');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694084, '2025-02-24 13:07:38.303992', '2025-02-24 13:07:38.303992', '221626968137793536', '221577605009113088');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694085, '2025-02-24 13:07:38.310179', '2025-02-24 13:07:38.310179', '221626968137793536', '221625751969988608');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694086, '2025-02-24 13:07:38.315856', '2025-02-24 13:07:38.315856', '221626968137793536', '221205067292737536');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694087, '2025-02-24 13:07:38.320957', '2025-02-24 13:07:38.320957', '221626968137793536', '221625623804641280');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694088, '2025-02-24 13:07:38.325173', '2025-02-24 13:07:38.325173', '221626968137793536', '221175299503554560');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694089, '2025-02-24 13:07:38.329753', '2025-02-24 13:07:38.329753', '221626968137793536', '221625389754089472');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694090, '2025-02-24 13:07:38.335197', '2025-02-24 13:07:38.335197', '221626968137793536', '221106702215282688');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694091, '2025-02-24 13:07:38.339472', '2025-02-24 13:07:38.339472', '221626968137793536', '221996565819031552');
INSERT INTO `sys_role_menu` (`id`, `createDate`, `updateDate`, `roleId`, `menuId`) VALUES (222341977163694092, '2025-02-24 13:07:38.343875', '2025-02-24 13:07:38.343875', '221626968137793536', '221624618878763008');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userName` varchar(255) NOT NULL COMMENT '用户名称',
  `nickName` varchar(255) NOT NULL COMMENT '用户昵称',
  `phoneNumber` varchar(255) NOT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `id` bigint NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`createDate`, `updateDate`, `userName`, `nickName`, `phoneNumber`, `email`, `password`, `id`) VALUES ('2023-06-22 12:57:56.615603', '2025-02-24 11:41:34.538557', 'admin', '系统管理员', '1822222222', '1111@qq.com', '$2a$10$.OggYJaVe1OCLVSB/9wqk.bYYaSdvcHu7dcc0zpewfpzNKEDPh2Tu', 1);
INSERT INTO `sys_user` (`createDate`, `updateDate`, `userName`, `nickName`, `phoneNumber`, `email`, `password`, `id`) VALUES ('2025-02-24 11:42:10.833957', '2025-02-24 11:42:10.833957', 'manager', '管理员', '18266666666', '1111@163.com', '$2a$10$vARbG36BLAAmBpo5kYFqUO.AT.YipNBy2aXpmnKYWndRDTNfQIcIm', 222320471129980928);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint NOT NULL COMMENT '主键',
  `createDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `roleId` varchar(255) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (2002737659117569, '2023-06-28 13:35:03.172080', '2023-06-28 13:35:18.628752', '1', '1637123031564288');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (19414504450293760, '2023-08-14 13:46:18.577382', '2023-08-14 13:46:18.577382', '2', '5172863325700096');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192913264009543680, '2024-12-05 08:08:26.304738', '2024-12-05 08:08:26.304738', '192912926602952704', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192913264009543681, '2024-12-05 08:08:26.318492', '2024-12-05 08:08:26.318492', '192912926602952704', '5172863325700096');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192913264009543682, '2024-12-05 08:08:26.323715', '2024-12-05 08:08:26.323715', '192912926602952704', '1637123031564288');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192915356099018752, '2024-12-05 08:16:45.097451', '2024-12-05 08:16:45.097451', '192915355989966848', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192917256575909888, '2024-12-05 08:24:18.198893', '2024-12-05 08:24:18.198893', '192917256521383936', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192917894143672320, '2024-12-05 08:26:50.206814', '2024-12-05 08:26:50.206814', '192917894097534976', '159235485007347712');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192918652750659584, '2024-12-05 08:29:51.072174', '2024-12-05 08:29:51.072174', '192918652717105152', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (192918972348235776, '2024-12-05 08:31:07.271784', '2024-12-05 08:31:07.271784', '192918972302098432', '1637123031564288');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (193024765487742976, '2024-12-05 15:31:30.330377', '2024-12-05 15:31:30.330377', '192920448915210240', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (194640013567197184, '2024-12-10 02:29:55.473066', '2024-12-10 02:29:55.473066', '194640013529448448', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (199816674268938240, '2024-12-24 09:20:07.569774', '2024-12-24 09:20:07.569774', '1999360162267136', '5126498239381504');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221486865927110656, '2025-02-22 04:29:43.874962', '2025-02-22 04:29:43.874962', '221486865897750528', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221493211921645568, '2025-02-22 04:54:56.868883', '2025-02-22 04:54:56.868883', '221493211858731008', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221629314087518208, '2025-02-22 13:55:46.159170', '2025-02-22 13:55:46.159170', '221627180000477184', '221626968137793536');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221630471442792448, '2025-02-22 14:00:22.088414', '2025-02-22 14:00:22.088414', '221630471400849408', '221626968137793536');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221842497234534400, '2025-02-23 04:02:52.976119', '2025-02-23 04:02:52.976119', '221842497184202752', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221846178512240640, '2025-02-23 04:17:30.663359', '2025-02-23 04:17:30.663359', '221846166747217920', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221997206742237184, '2025-02-23 14:17:38.610087', '2025-02-23 14:17:38.610087', '221866062612791296', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (221997206742237185, '2025-02-23 14:17:38.620295', '2025-02-23 14:17:38.620295', '221866062612791296', '221626968137793536');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222005168529473536, '2025-02-23 14:49:16.835682', '2025-02-23 14:49:16.835682', '222005168495919104', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222007411131547648, '2025-02-23 14:58:11.513059', '2025-02-23 14:58:11.513059', '222007411093798912', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222189457724407808, '2025-02-24 03:01:34.804244', '2025-02-24 03:01:34.804244', '222189457674076160', '221626968137793536');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222191990509404160, '2025-02-24 03:11:38.666363', '2025-02-24 03:11:38.666363', '222191990471655424', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222311313722834944, '2025-02-24 11:05:47.544001', '2025-02-24 11:05:47.544001', '222311313664114688', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222311797447720960, '2025-02-24 11:07:42.868803', '2025-02-24 11:07:42.868803', '222311797405777920', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222320471167729664, '2025-02-24 11:42:10.842206', '2025-02-24 11:42:10.842206', '222320471129980928', '221626968137793536');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222321005077463040, '2025-02-24 11:44:18.136123', '2025-02-24 11:44:18.136123', '222321005043908608', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222321646415904768, '2025-02-24 11:46:51.042732', '2025-02-24 11:46:51.042732', '222321646365573120', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222321646415904769, '2025-02-24 11:46:51.046572', '2025-02-24 11:46:51.046572', '222321646365573121', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222325998270545920, '2025-02-24 12:04:08.606947', '2025-02-24 12:04:08.606947', '222325998216019968', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (222325998270545921, '2025-02-24 12:04:08.612565', '2025-02-24 12:04:08.612565', '222325998216019969', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223821667816701952, '2025-02-28 15:07:24.014230', '2025-02-28 15:07:24.014230', '223821667766370304', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223821667816701953, '2025-02-28 15:07:24.018116', '2025-02-28 15:07:24.018116', '223821667766370305', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223821878278488064, '2025-02-28 15:08:14.192517', '2025-02-28 15:08:14.192517', '223821878219767808', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223821878278488065, '2025-02-28 15:08:14.195897', '2025-02-28 15:08:14.195897', '223821878219767809', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822037125169152, '2025-02-28 15:08:52.064607', '2025-02-28 15:08:52.064607', '223822037070643200', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822037125169153, '2025-02-28 15:08:52.084865', '2025-02-28 15:08:52.084865', '223822037070643201', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822498741878784, '2025-02-28 15:10:42.121955', '2025-02-28 15:10:42.121955', '223822498708324352', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822498741878785, '2025-02-28 15:10:42.125128', '2025-02-28 15:10:42.125128', '223822498708324353', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822633987211264, '2025-02-28 15:11:14.367260', '2025-02-28 15:11:14.367260', '223822633949462528', '221483794677366784');
INSERT INTO `sys_user_role` (`id`, `createDate`, `updateDate`, `userId`, `roleId`) VALUES (223822633987211265, '2025-02-28 15:11:14.369995', '2025-02-28 15:11:14.369995', '223822633949462529', '221483794677366784');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
