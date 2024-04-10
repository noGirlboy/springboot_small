/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : newbee_mall_db

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 10/04/2024 11:38:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int(0) NOT NULL AUTO_INCREMENT,
  `login_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `locked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0');
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'user01', '0');

-- ----------------------------
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int(0) NOT NULL AUTO_INCREMENT,
  `carousel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carousel_rank` int(0) NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` int(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'http://localhost:9099/upload/20240328_11152682.jpg', 'goods/detail/6', 1, '0', '2024-03-28 11:15:29', NULL, '2024-03-28 13:35:35', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (6, 'http://localhost:9099/upload/20240328_11220621.jpg', '##', 1, '1', '2024-03-28 11:22:10', NULL, '2024-03-28 11:22:28', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (7, 'http://localhost:9099/upload/20240328_11232726.jpg', 'goods/detail/7', 1, '0', '2024-03-28 11:23:31', NULL, '2024-03-28 14:09:30', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (8, 'http://localhost:9099/upload/20240328_14014533.jpg', 'goods/detail/8', 1, '0', '2024-03-28 14:01:48', NULL, '2024-03-28 14:11:15', NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `category_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` bigint(0) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category_rank` int(0) NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` int(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` VALUES (16, '1', 0, '电子产品于家电', 1, '0', '2024-03-28 10:41:56', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (17, '2', 16, '手机与通讯设备', 1, '0', '2024-03-28 10:42:12', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (18, '2', 16, '计算机与办公设备', 2, '0', '2024-03-28 10:42:21', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (19, '2', 16, '家用电器', 3, '0', '2024-03-28 10:42:37', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (20, '3', 19, '冰箱与冷柜', 1, '0', '2024-03-28 10:42:49', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (21, '3', 19, '洗衣机', 2, '0', '2024-03-28 10:42:56', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (22, '3', 19, '空调', 3, '0', '2024-03-28 10:43:02', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (23, '3', 19, '电视', 4, '0', '2024-03-28 10:43:08', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (24, '3', 18, '笔记本电脑', 1, '0', '2024-03-28 10:43:20', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (25, '3', 18, '键盘与鼠标', 2, '0', '2024-03-28 10:43:27', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (26, '3', 18, '打印机与扫描仪', 3, '0', '2024-03-28 10:43:33', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (27, '3', 17, '智能手机', 1, '0', '2024-03-28 10:43:45', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (28, '3', 17, '手机配件', 2, '0', '2024-03-28 10:43:52', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (29, '3', 17, '手机壳与保护膜', 3, '0', '2024-03-28 10:43:58', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (30, '1', 0, '服装与鞋帽', 1, '0', '2024-03-28 10:44:10', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (31, '1', 0, '美妆与个人护理', 1, '0', '2024-03-28 10:44:27', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (32, '1', 0, '家居与园艺', 1, '1', '2024-03-28 10:44:37', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (33, '1', 0, '食品与饮料', 1, '0', '2024-03-28 10:44:45', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (34, '1', 0, '母婴与玩具', 1, '0', '2024-03-28 10:44:51', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (35, '1', 0, '运动户外与休闲', 1, '0', '2024-03-28 10:44:58', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (36, '1', 0, '汽车与配件', 1, '0', '2024-03-28 10:45:04', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (37, '1', 0, '图书与音像', 1, '0', '2024-03-28 10:45:12', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (38, '1', 0, '珠宝首饰与手表', 1, '0', '2024-03-28 10:45:18', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (39, '2', 30, '男装', 1, '0', '2024-03-28 10:45:34', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (40, '2', 30, '女装', 1, '0', '2024-03-28 10:45:40', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (41, '2', 30, '儿童服装', 1, '0', '2024-03-28 10:45:45', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (42, '3', 39, 'T恤与衬衫', 1, '0', '2024-03-28 10:45:53', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (43, '3', 39, '外套与夹克', 1, '0', '2024-03-28 10:46:00', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (44, '3', 39, '裤子', 1, '0', '2024-03-28 10:46:05', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (45, '3', 39, '鞋子', 1, '0', '2024-03-28 10:46:12', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (46, '3', 39, '配饰', 1, '0', '2024-03-28 10:46:17', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (47, '3', 40, '连衣裙', 1, '0', '2024-03-28 10:46:27', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (48, '3', 40, '上衣与毛衣', 1, '0', '2024-03-28 10:46:32', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (49, '3', 40, '牛仔裤', 1, '0', '2024-03-28 10:46:38', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (50, '3', 41, '男童服装', 1, '0', '2024-03-28 10:46:55', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (51, '3', 41, '女童服装', 1, '0', '2024-03-28 10:47:02', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (52, '3', 41, '婴儿服装', 1, '0', '2024-03-28 10:47:08', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (53, '2', 31, '护肤品', 1, '0', '2024-03-28 10:59:45', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (54, '2', 31, '彩妆', 1, '0', '2024-03-28 10:59:55', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (55, '2', 31, '香水', 1, '0', '2024-03-28 11:00:04', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (56, '3', 53, '洁面产品', 1, '0', '2024-03-28 11:00:14', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (57, '3', 53, '面膜', 1, '0', '2024-03-28 11:00:26', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (58, '3', 53, '乳液面霜', 1, '0', '2024-03-28 11:00:35', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (59, '3', 54, '眼影', 1, '0', '2024-03-28 11:00:47', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (60, '3', 54, '腮红', 1, '0', '2024-03-28 11:00:56', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (61, '3', 54, '口红', 1, '0', '2024-03-28 11:01:05', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (62, '3', 55, '男士香水', 1, '0', '2024-03-28 11:01:17', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (63, '3', 55, '女士香水', 1, '0', '2024-03-28 11:01:25', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (64, '3', 55, '香薰', 1, '0', '2024-03-28 11:01:43', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (65, '2', 33, '零食坚果', 1, '0', '2024-03-28 11:02:32', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (66, '2', 33, '饮料', 1, '0', '2024-03-28 11:02:39', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (67, '3', 65, '膨化食品', 1, '0', '2024-03-28 11:02:52', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (68, '3', 65, '巧克力和糖果', 1, '0', '2024-03-28 11:03:07', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (69, '3', 65, '坚果和干果', 1, '0', '2024-03-28 11:03:23', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (70, '3', 66, '碳酸饮料', 1, '0', '2024-03-28 11:03:37', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (71, '3', 66, '咖啡和茶', 1, '0', '2024-03-28 11:03:46', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (72, '3', 66, '酒类', 1, '0', '2024-03-28 11:03:54', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_category_id` bigint(0) NOT NULL,
  `goods_cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_carousel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `original_price` int(0) NULL DEFAULT NULL,
  `selling_price` int(0) NULL DEFAULT NULL,
  `stock_num` int(0) NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_sell_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_user` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` int(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `goods_detail_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_info
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_info` VALUES (6, '小米电视机', '小米电视机', 23, 'http://localhost:9099/upload/20240328_14025379.jpg', 'http://localhost:9099/upload/20240328_14025379.jpg', 1000, 988, 100, '小米', '0', NULL, '2024-03-28 11:15:16', NULL, '2024-03-28 14:02:54', '小米电视机');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (7, '苹果笔记本电脑', '苹果', 24, 'http://localhost:9099/upload/20240328_14085472.jpg', 'http://localhost:9099/upload/20240328_14085472.jpg', 6999, 6999, 100, '苹果笔记本', '0', NULL, '2024-03-28 14:04:50', NULL, '2024-03-28 14:08:55', '最新苹果笔记本');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (8, '娇韵诗', '娇韵诗', 56, 'http://localhost:9099/upload/20240328_14110246.jpg', 'http://localhost:9099/upload/20240328_14110246.jpg', 888, 888, 100, '娇韵诗', '0', NULL, '2024-03-28 14:11:03', NULL, NULL, '娇韵诗');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (9, '口红', '口红', 61, 'http://localhost:9099/upload/20240328_14143834.jpg', 'http://localhost:9099/upload/20240328_14143834.jpg', 500, 500, 99, '口红', '0', NULL, '2024-03-28 14:14:40', NULL, NULL, '口红');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10, '香水', '香水', 63, 'http://localhost:9099/upload/20240328_14150781.jpg', 'http://localhost:9099/upload/20240328_14150781.jpg', 900, 900, 49, '香水', '0', NULL, '2024-03-28 14:15:08', NULL, NULL, '香水');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (11, '情侣卫衣', '情侣卫衣', 48, 'http://localhost:9099/upload/20240328_14205544.jpg', 'http://localhost:9099/upload/20240328_14205544.jpg', 100, 100, 100, '情侣卫衣', '0', NULL, '2024-03-28 14:20:58', NULL, NULL, '情侣卫衣');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (12, '情侣卫衣', '情侣卫衣', 43, 'http://localhost:9099/upload/20240328_14214249.jpg', 'http://localhost:9099/upload/20240328_14214249.jpg', 100, 100, 100, '情侣卫衣', '0', NULL, '2024-03-28 14:21:43', NULL, NULL, '情侣卫衣');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (13, '牛仔裤', '牛仔裤', 49, 'http://localhost:9099/upload/20240328_14222659.png', 'http://localhost:9099/upload/20240328_14222659.png', 100, 100, 100, '牛仔裤', '0', NULL, '2024-03-28 14:22:28', NULL, NULL, '牛仔裤');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (14, '巧克力', '巧克力', 68, 'http://localhost:9099/upload/20240328_14245390.jpg', 'http://localhost:9099/upload/20240328_14245390.jpg', 60, 50, 100, '巧克力', '0', NULL, '2024-03-28 14:24:55', NULL, NULL, '巧克力');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (15, '坚果', '坚果', 69, 'http://localhost:9099/upload/20240328_14252167.jpg', 'http://localhost:9099/upload/20240328_14252167.jpg', 150, 100, 99, '坚果', '0', NULL, '2024-03-28 14:25:22', NULL, NULL, '坚果');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (16, '可口可乐', '可口可乐', 70, 'http://localhost:9099/upload/20240328_14254782.jpg', 'http://localhost:9099/upload/20240328_14254782.jpg', 3, 3, 500, '可口可乐', '0', NULL, '2024-03-28 14:25:59', NULL, NULL, '可口可乐');

-- ----------------------------
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_id` bigint(0) NOT NULL,
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_rank` int(0) NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` int(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` VALUES (9, '小米电视', '3', 6, '##', 1, '1', '2024-03-28 11:19:41', NULL, '2024-03-28 11:20:37', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (10, '小米电视机', '3', 6, '##', 1, '0', '2024-03-28 14:12:05', NULL, '2024-03-28 14:12:12', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (11, '苹果笔记本', '3', 7, '##', 1, '0', '2024-03-28 14:12:28', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (12, '娇韵诗', '3', 8, '##', 1, '0', '2024-03-28 14:12:38', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (13, '口红', '4', 9, '##', 1, '0', '2024-03-28 14:15:31', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (14, '香水', '4', 10, '##', 1, '0', '2024-03-28 14:15:47', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (15, '小米电视机', '5', 6, '##', 1, '0', '2024-03-28 14:16:33', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (16, '苹果笔记本', '5', 7, '##', 1, '0', '2024-03-28 14:16:44', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (17, '牛仔裤', '4', 13, '##', 1, '0', '2024-03-28 14:26:46', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (18, '牛仔裤', '4', 13, '##', 1, '1', '2024-03-28 14:26:48', NULL, '2024-03-28 14:26:52', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (19, '坚果', '4', 15, '##', 1, '0', '2024-03-28 14:27:02', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (20, '可口可乐', '4', 16, '##', 1, '0', '2024-03-28 14:27:14', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint(0) NOT NULL,
  `total_price` int(0) NULL DEFAULT NULL,
  `pay_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `pay_time` datetime(0) NULL DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `extra_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (10, '17116066402099332', 1, 500, '1', '2', '2024-03-28 14:17:24', '4', '', 'XXXXXXXXXXXXXX', '0', '2024-03-28 14:17:20', '2024-03-28 14:28:06', NULL, NULL);
INSERT INTO `tb_newbee_mall_order` VALUES (11, '17116073086077421', 1, 100, '1', '1', '2024-03-28 14:28:35', '-1', '', 'XXXXXXXXXXXXXX', '0', '2024-03-28 14:28:29', '2024-03-28 14:29:14', NULL, NULL);
INSERT INTO `tb_newbee_mall_order` VALUES (12, '17116073703555830', 1, 900, '1', '1', '2024-03-28 14:32:02', '2', '', 'XXXXXXXXXXXXXX', '0', '2024-03-28 14:29:30', '2024-03-28 14:32:18', NULL, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(0) NOT NULL,
  `goods_id` bigint(0) NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `selling_price` int(0) NULL DEFAULT NULL,
  `goods_count` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (11, 10, 9, '口红', 'http://localhost:9099/upload/20240328_14143834.jpg', 500, 1, NULL);
INSERT INTO `tb_newbee_mall_order_item` VALUES (12, 11, 15, '坚果', 'http://localhost:9099/upload/20240328_14252167.jpg', 100, 1, NULL);
INSERT INTO `tb_newbee_mall_order_item` VALUES (13, 12, 10, '香水', 'http://localhost:9099/upload/20240328_14150781.jpg', 900, 1, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NOT NULL,
  `goods_id` bigint(0) NOT NULL,
  `goods_count` int(0) NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_shopping_cart_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_shopping_cart_item` VALUES (13, 1, 9, 1, '1', NULL, NULL);
INSERT INTO `tb_newbee_mall_shopping_cart_item` VALUES (14, 1, 15, 1, '1', NULL, NULL);
INSERT INTO `tb_newbee_mall_shopping_cart_item` VALUES (15, 1, 10, 1, '1', NULL, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password_md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `introduce_sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `locked_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, '18728321243', '18728321243', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'XXXXXXXXXXXXXX', '0', '0', '2024-03-25 11:38:59');
INSERT INTO `tb_newbee_mall_user` VALUES (2, '1379551..', '13795513793', 'e10adc3949ba59abbe56e057f20f883e', '111111', 'xxxxxxxxxxxxxxx', '0', '0', '2024-03-25 11:39:03');
INSERT INTO `tb_newbee_mall_user` VALUES (3, 'user01', 'user01', 'e10adc3949ba59abbe56e057f20f883e', '普通用户01', 'XXXXXXXXXXXXXXXX', '0', '0', '2024-03-25 11:39:44');

SET FOREIGN_KEY_CHECKS = 1;
