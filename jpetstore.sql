/*
 Navicat Premium Data Transfer

 Source Server         : sujianning
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : jpetstore

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 14/01/2024 14:52:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemkind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (2, 'FI-FW-01', 'EST-5', 'Fresh Water fish from Japan', 'Spotted Koi', '$18.50', 'Koi', 'fish3.gif');
INSERT INTO `item` VALUES (3, 'FI-FW-01', 'EST-4', 'Fresh Water fish from Japan', 'Spottless Koi', '$18.50', 'Koi', 'fish3.gif');
INSERT INTO `item` VALUES (4, 'FI-FW-02', 'EST-20', 'Fresh Water fish from China', 'Adult Male Goldfish', '$5.50', 'Goldfish', 'fish2.gif');
INSERT INTO `item` VALUES (5, 'FI-FW-02', 'EST-21', 'Fresh Water fish from China', 'Adult Female Goldfish', '$5.29', 'Goldfish', 'fish2.gif');
INSERT INTO `item` VALUES (6, 'FI-SW-01', 'EST-1', 'Salt Water fish from Australia', 'Large Angelfish', '$16.50', 'Angelfish', 'fish1.gif');
INSERT INTO `item` VALUES (7, 'FI-SW-01', 'EST-2', 'Salt Water fish from Australia', 'Small Angelfish', '$16.50', 'Angelfish', 'fish1.gif');
INSERT INTO `item` VALUES (8, 'FI-SW-02', 'EST-3', 'Salt Water fish from Australia', 'Toothless Tiger Shark', '$18.50', 'Tiger Shark', 'fish4.gif');
INSERT INTO `item` VALUES (9, 'K9-BD-01', 'EST-6', 'Friendly dog from England', 'Male Adult Bulldog', '$18.50', 'Bulldog', 'dog2.gif');
INSERT INTO `item` VALUES (10, 'K9-BD-01', 'EST-7', 'Friendly dog from England', 'Female Puppy Bulldog', '$18.50', 'Bulldog', 'dog2.gif');
INSERT INTO `item` VALUES (11, 'K9-CW-01', 'EST-26', 'Great companion dog', 'Adult Male Chihuahua', '$125.50', 'Chihuahua', 'dog4.gif');
INSERT INTO `item` VALUES (12, 'K9-CW-01', 'EST-27', 'Great companion dog', 'Adult Female Chihuahua', '$155.29', 'Chihuahua', 'dog4.gif');
INSERT INTO `item` VALUES (13, 'K9-DL-01', 'EST-10', 'Great dog for a Fire Station', 'Spotted Adult Female Dalmation', '$18.50', 'Dalmation', 'dog5.gif');
INSERT INTO `item` VALUES (14, 'K9-DL-01', 'EST-9', 'Great dog for a Fire Station', 'Spotless Male Puppy Dalmation', '$18.50', 'Dalmation', 'dog5.gif');
INSERT INTO `item` VALUES (15, 'K9-PO-02', 'EST-8', 'Cute dog from France', 'Male Puppy Poodle', '$18.50', 'Poodle', 'dog6.gif');
INSERT INTO `item` VALUES (16, 'K9-RT-01', 'EST-28', 'Great family dog', 'Adult Female Golden Retriever', '$155.29', 'Golden Retriever', 'dog1.gif');
INSERT INTO `item` VALUES (17, 'K9-RT-02', 'EST-22', 'Great hunting dog', 'Adult Male Labrador Retriever', '$135.50', 'Labrador Retriever', 'dog5.gif');
INSERT INTO `item` VALUES (18, 'K9-RT-02', 'EST-23', 'Great hunting dog', 'Adult Female Labrador Retriever', '$145.49', 'Labrador Retriever', 'dog5.gif');
INSERT INTO `item` VALUES (19, 'K9-RT-02', 'EST-25', 'Great hunting dog', 'Adult Female Labrador Retriever', '$325.29', 'Labrador Retriever', 'dog5.gif');
INSERT INTO `item` VALUES (20, 'K9-RT-02', 'EST-24', 'Great hunting dog', 'Adult Male Labrador Retriever', '$255.50', 'Labrador Retriever', 'dog5.gif');
INSERT INTO `item` VALUES (21, 'FL-DLH-02', 'EST-16', 'Friendly house cat, doubles as a princess', 'Adult Female Persian', '$93.50', 'Persian', 'cat1.gif');
INSERT INTO `item` VALUES (22, 'FL-DLH-02', 'EST-17', 'Friendly house cat, doubles as a princess', 'Adult Male Persian', '$93.50', 'Persian', 'cat1.gif');
INSERT INTO `item` VALUES (23, 'FL-DSH-01', 'EST-14', 'Great for reducing mouse populations', 'Tailless Manx', '$58.50', 'Manx', 'cat2.gif');
INSERT INTO `item` VALUES (24, 'FL-DSH-01', 'EST-15', 'Great for reducing mouse populations', 'With tail Manx', '$23.50', 'Manx', 'cat2.gif');
INSERT INTO `item` VALUES (25, 'RP-LI-02', 'EST-13', 'Friendly green friend', 'Green Adult Iguana', '$18.50', 'Iguana', 'liazrd1.gif');
INSERT INTO `item` VALUES (26, 'RP-SN-01', 'EST-11', 'Doubles as a watch dog', 'Venomless Rattlesnake', '$18.50', 'Rattlesnake', 'snake1.gif');
INSERT INTO `item` VALUES (27, 'RP-SN-01', 'EST-12', 'Doubles as a watch dog', 'Rattleless Rattlesnake', '$18.50', 'Rattlesnake', 'snake1.gif');
INSERT INTO `item` VALUES (28, 'AV-CB-01', 'EST-18', 'Great companion for up to 75 years', 'Adult Male Amazon Parrot', '$193.50', 'Amazon Parrot', 'bird2.gif');
INSERT INTO `item` VALUES (29, 'AV-SB-02', 'EST-19', 'Great stress reliever', 'Adult Male Finch', '$15.50', 'Finch', 'bird1.gif');

-- ----------------------------
-- Table structure for j2ee
-- ----------------------------
DROP TABLE IF EXISTS `j2ee`;
CREATE TABLE `j2ee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `productid` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemname` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `instock` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Category` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of j2ee
-- ----------------------------
INSERT INTO `j2ee` VALUES (34, 'EST-5', 'FI-FW-01', 'Spotted Koi', 4, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `j2ee` VALUES (35, 'EST-21', 'FI-FW-02', 'Adult Female Goldfish', 1, 'true', '$5.29', '$5.29', 'FISH');

-- ----------------------------
-- Table structure for logrecord
-- ----------------------------
DROP TABLE IF EXISTS `logrecord`;
CREATE TABLE `logrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `browsenumber` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logrecord
-- ----------------------------
INSERT INTO `logrecord` VALUES (12, 'j2ee', 'noitem', 59, 'j2ee log in');
INSERT INTO `logrecord` VALUES (13, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (14, 'j2ee', 'EST-5', 3, 'j2ee browse EST-5');
INSERT INTO `logrecord` VALUES (15, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (16, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (17, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (18, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (19, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (20, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (21, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (22, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (23, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (24, 'j2ee', 'EST-6', 1, 'j2ee browse EST-6');
INSERT INTO `logrecord` VALUES (25, 'j2ee', 'EST-6', 2, 'j2ee add EST-6into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (26, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (27, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (28, 'j2ee', 'EST-5', 9, 'add EST-5 into j2ee\'s order');
INSERT INTO `logrecord` VALUES (29, 'j2ee', 'EST-6', 2, 'add EST-6 into j2ee\'s order');
INSERT INTO `logrecord` VALUES (30, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (31, 'j2ee', 'EST-5', 9, 'j2ee add EST-5into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (32, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (33, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (34, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (35, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (36, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (37, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (38, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (39, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (40, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (41, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (42, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (43, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (44, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (45, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (46, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (47, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (48, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (49, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (50, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (51, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (52, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (53, 'j2ee', 'noitem', 8, 'j2ee sign out');
INSERT INTO `logrecord` VALUES (54, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (55, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (56, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (57, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (58, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (59, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (60, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (61, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (62, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (63, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (64, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (65, 'undefined', 'EST-20', 2, 'undefined browse EST-20');
INSERT INTO `logrecord` VALUES (66, 'j2ee', 'EST-20', 3, 'j2ee browse EST-20');
INSERT INTO `logrecord` VALUES (67, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (68, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (69, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (70, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (71, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (72, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (73, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (74, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (75, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (76, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (77, 'j2ee', 'EST-4', 1, 'j2ee add EST-4into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (78, 'j2ee', 'EST-4', 1, 'add EST-4 into j2ee\'s order');
INSERT INTO `logrecord` VALUES (79, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (80, '1231', 'noitem', 1, '1231 log in');
INSERT INTO `logrecord` VALUES (81, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (82, 'j2ee', 'EST-26', 1, 'j2ee add EST-26into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (83, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (84, 'j2ee', 'EST-15', 1, 'j2ee browse EST-15');
INSERT INTO `logrecord` VALUES (85, 'j2ee', 'EST-15', 1, 'j2ee add EST-15into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (86, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (87, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (88, 'j2ee', 'EST-26', 1, 'add EST-26 into j2ee\'s order');
INSERT INTO `logrecord` VALUES (89, 'j2ee', 'EST-15', 1, 'add EST-15 into j2ee\'s order');
INSERT INTO `logrecord` VALUES (90, NULL, 'noitem', 1, 'null log in');
INSERT INTO `logrecord` VALUES (91, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (92, 'j2ee', 'EST-21', 1, 'j2ee add EST-21into j2ee\'s cart');
INSERT INTO `logrecord` VALUES (93, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');
INSERT INTO `logrecord` VALUES (94, 'j2ee', NULL, 1, 'j2ee add nullinto j2ee\'s cart');

-- ----------------------------
-- Table structure for ordercartitem
-- ----------------------------
DROP TABLE IF EXISTS `ordercartitem`;
CREATE TABLE `ordercartitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `itemid` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `productid` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `itemname` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `instock` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Category` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordercartitem
-- ----------------------------
INSERT INTO `ordercartitem` VALUES (22, 1000, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (23, 1001, 'EST-5', 'FI-FW-01', 'Spotted Koi', 2, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (24, 1002, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (25, 1003, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (26, 1003, 'EST-6', 'K9-BD-01', 'Male Adult Bulldog', 1, 'true', '$18.50', '$18.5', 'DOGS');
INSERT INTO `ordercartitem` VALUES (27, 1004, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (28, 1005, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (29, 1006, 'EST-5', 'FI-FW-01', 'Spotted Koi', 3, 'true', '$18.50', '$55.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (30, 1007, 'EST-5', 'FI-FW-01', 'Spotted Koi', 3, 'true', '$18.50', '$55.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (31, 1008, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (32, 1009, 'EST-5', 'FI-FW-01', 'Spotted Koi', 4, 'true', '$18.50', '$74.0', 'FISH');
INSERT INTO `ordercartitem` VALUES (33, 1009, 'EST-6', 'K9-BD-01', 'Male Adult Bulldog', 2, 'true', '$18.50', '$37.0', 'DOGS');
INSERT INTO `ordercartitem` VALUES (34, 1010, 'EST-5', 'FI-FW-01', 'Spotted Koi', 2, 'true', '$18.50', '$37.0', 'FISH');
INSERT INTO `ordercartitem` VALUES (35, 1010, 'EST-4', 'FI-FW-01', 'Spottless Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (36, 1011, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (37, 1011, 'EST-26', 'K9-CW-01', 'Adult Male Chihuahua', 1, 'true', '$125.50', '$125.5', 'DOGS');
INSERT INTO `ordercartitem` VALUES (38, 1011, 'EST-15', 'FL-DSH-01', 'With tail Manx', 1, 'true', '$23.50', '$23.5', 'CATS');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'FI-FW-01', 'FISH', 'Koi');
INSERT INTO `product` VALUES (3, 'FI-FW-02', 'FISH', 'Goldfish');
INSERT INTO `product` VALUES (4, 'FI-SW-01', 'FISH', 'Angelfish');
INSERT INTO `product` VALUES (5, 'K9-BD-01', 'DOGS', 'Bulldog');
INSERT INTO `product` VALUES (6, 'K9-CW-01', 'DOGS', 'Chihuahua');
INSERT INTO `product` VALUES (7, 'K9-DL-01', 'DOGS', 'Dalmation');
INSERT INTO `product` VALUES (8, 'K9-PO-02', 'DOGS', 'Poodle');
INSERT INTO `product` VALUES (9, 'K9-RT-01', 'DOGS', 'GoldenRetriever');
INSERT INTO `product` VALUES (10, 'K9-RT-01', 'DOGS', 'LabradorRetriever ');
INSERT INTO `product` VALUES (11, 'RP-LI-02', 'REPTILES', 'Iguana');
INSERT INTO `product` VALUES (12, 'FL-DLH-02', 'CATS', 'Persian');
INSERT INTO `product` VALUES (13, 'AV-CB-01', 'BIRDS', 'AmazonParrot');
INSERT INTO `product` VALUES (14, 'AV-SB-02', 'BIRDS', 'Finch');
INSERT INTO `product` VALUES (15, 'FI-SW-02', 'FISH', 'TigerShark');
INSERT INTO `product` VALUES (16, 'RP-SN-01', 'REPTILES', 'Rattlesnake');
INSERT INTO `product` VALUES (17, 'FL-DSH-01', 'CATS', 'Manx');

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lovecategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
INSERT INTO `usermessage` VALUES (1, '111', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES (2, '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES (3, '222', '222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES (5, '333', '333', 'deng', 'kai', '1234@qq.com', '123456789', '1', '1', 'changsha', 'hunan', '234', 'China', 'Chinese', 'fish');
INSERT INTO `usermessage` VALUES (6, '333', '333', 'deng', 'kai', '1234@qq.com', '123456789', '1', '1', 'changsha', 'hunan', '234', 'China', 'Chinese', 'fish');
INSERT INTO `usermessage` VALUES (7, '333', '333', 'deng', 'kai', '1234@qq.com', '123456789', '1', '1', 'changsha', 'hunan', '234', 'China', 'Chinese', 'fish');
INSERT INTO `usermessage` VALUES (8, 'j2ee', 'j2ee', 'su', 'jianning', '123456789@qq.com', '18873341569', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'japanese', 'FISH');
INSERT INTO `usermessage` VALUES (9, '1234', '111', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'english', 'FISH');
INSERT INTO `usermessage` VALUES (10, '1231', '1231', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'english', 'FISH');

-- ----------------------------
-- Table structure for userorder
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `orderDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipAddress1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ShipAddress2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipCity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipZip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipCountry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billAddress1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billAddress2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billCity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billZip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billCountry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `courier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `totalPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billToFirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billToLastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipToFirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipToLastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creditCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `expiryDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cardType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1012 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES (1000, 'j2ee', '2023-11-08 17:36:21', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1001, 'j2ee', '2023-11-08 17:37:40', 'csu', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1002, 'j2ee', '2023-11-08 23:32:53', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1003, 'j2ee', '2023-11-15 11:49:29', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$37.0', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1004, 'j2ee', '2023-11-15 11:49:55', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1005, 'j2ee', '2023-11-15 12:14:00', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1006, 'j2ee', '2023-12-31 22:50:46', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$55.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1007, 'j2ee', '2023-12-31 22:51:55', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$55.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1008, 'j2ee', '2023-12-31 23:13:49', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1009, 'j2ee', '2024-01-02 23:33:22', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$111.0', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1010, 'j2ee', '2024-01-03 10:23:21', '123', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$55.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1011, 'j2ee', '2024-01-13 20:49:12', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$167.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');

SET FOREIGN_KEY_CHECKS = 1;
