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

 Date: 08/11/2023 23:55:14
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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of j2ee
-- ----------------------------
INSERT INTO `j2ee` VALUES (21, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordercartitem
-- ----------------------------
INSERT INTO `ordercartitem` VALUES (22, 1000, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (23, 1001, 'EST-5', 'FI-FW-01', 'Spotted Koi', 2, 'true', '$18.50', '$18.5', 'FISH');
INSERT INTO `ordercartitem` VALUES (24, 1002, 'EST-5', 'FI-FW-01', 'Spotted Koi', 1, 'true', '$18.50', '$18.5', 'FISH');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES (1000, 'j2ee', '2023-11-08 17:36:21', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1001, 'j2ee', '2023-11-08 17:37:40', 'csu', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');
INSERT INTO `userorder` VALUES (1002, 'j2ee', '2023-11-08 23:32:53', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'CSU', 'central south university', 'Changsha', 'hunan', '95535', 'China', 'UPS', '$18.5', 'su', 'jianning', 'su', 'jianning', '8888 7777 6666 5555', '12/03', 'Visa', 'P');

SET FOREIGN_KEY_CHECKS = 1;
