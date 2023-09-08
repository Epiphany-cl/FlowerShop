/*
 Navicat Premium Data Transfer

 Source Server         : CL
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : flower_shop

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 08/09/2023 19:41:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `t_cart_item`;
CREATE TABLE `t_cart_item` (
                               `cart_id` int NOT NULL AUTO_INCREMENT,
                               `flower_id` int DEFAULT NULL,
                               `flower_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                               `flower_number` int DEFAULT NULL,
                               `flower_price` decimal(10,2) DEFAULT NULL,
                               `flower_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                               `user_id` int DEFAULT NULL,
                               PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_cart_item
-- ----------------------------
BEGIN;
INSERT INTO `t_cart_item` (`cart_id`, `flower_id`, `flower_name`, `flower_number`, `flower_price`, `flower_img_path`, `user_id`) VALUES (9, 2, '珊瑚色玫瑰', 1, 18.00, 'img/product/2.png', 9);
COMMIT;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
                             `comment_id` int NOT NULL AUTO_INCREMENT,
                             `user_id` int DEFAULT NULL,
                             `flower_id` int DEFAULT NULL,
                             `comment_content` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
                             `comment_date` datetime DEFAULT NULL,
                             PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
BEGIN;
INSERT INTO `t_comment` (`comment_id`, `user_id`, `flower_id`, `comment_content`, `comment_date`) VALUES (1, 1, 10, '很好吃 孩子很喜欢', '2023-09-08 14:14:50');
INSERT INTO `t_comment` (`comment_id`, `user_id`, `flower_id`, `comment_content`, `comment_date`) VALUES (2, 1, 10, '非常漂亮', '2023-09-08 14:18:34');
INSERT INTO `t_comment` (`comment_id`, `user_id`, `flower_id`, `comment_content`, `comment_date`) VALUES (3, 1, 4, '非常棒', '2023-09-08 17:40:15');
INSERT INTO `t_comment` (`comment_id`, `user_id`, `flower_id`, `comment_content`, `comment_date`) VALUES (4, 1, 7, '泰裤辣', '2023-09-08 18:10:29');
COMMIT;

-- ----------------------------
-- Table structure for t_flower
-- ----------------------------
DROP TABLE IF EXISTS `t_flower`;
CREATE TABLE `t_flower` (
                            `flower_id` int NOT NULL AUTO_INCREMENT,
                            `flower_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                            `list_price` decimal(10,2) DEFAULT NULL,
                            `selling_price` decimal(10,2) DEFAULT NULL,
                            `flower_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                            PRIMARY KEY (`flower_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_flower
-- ----------------------------
BEGIN;
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (1, '红玫瑰花束×99', 99.00, 79.00, 'img/product/1.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (2, '珊瑚色玫瑰', 18.00, 18.00, 'img/product/2.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (3, '紫色郁金香花束', 19.00, 16.00, 'img/product/3.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (4, '红玫瑰花束', 20.00, 20.00, 'img/product/4.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (5, '多彩郁金香', 15.00, 15.00, 'img/product/5.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (6, '粉红风信子', 17.00, 17.00, 'img/product/6.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (7, '红色郁金香', 12.00, 12.00, 'img/product/7.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (8, '粉红玫瑰', 25.00, 19.00, 'img/product/8.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (9, '紫色风信子', 15.00, 15.00, 'img/product/9.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (10, '浅蓝色玫瑰', 59.00, 49.00, 'img/product/10.png');
INSERT INTO `t_flower` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`) VALUES (11, '金色郁金香', 25.00, 19.00, 'img/product/11.png');
COMMIT;

-- ----------------------------
-- Table structure for t_flower_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_flower_detail`;
CREATE TABLE `t_flower_detail` (
                                   `flower_id` int NOT NULL AUTO_INCREMENT,
                                   `flower_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `list_price` decimal(10,2) DEFAULT NULL,
                                   `selling_price` decimal(10,2) DEFAULT NULL,
                                   `flower_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `describe_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
                                   `categories` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                   PRIMARY KEY (`flower_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_flower_detail
-- ----------------------------
BEGIN;
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (1, '红玫瑰花束×99', 99.00, 79.00, 'img/product/1.png', '在璀璨的花海中，99朵红玫瑰犹如热情的心跳，诉说着无尽的情感。每一朵花瓣都是真挚的情意，每一束芬芳都是对爱情的深情厚意。这束红玫瑰，仿佛是时间的见证，见证了岁月中的每一个美好瞬间，见证了两颗心灵相守的坚贞誓言。红玫瑰，不仅仅是花瓣的交织，更是爱情的交融。献上这束玫瑰，愿它传达我无言的情感，如同红色的花语，深情而炽热。让我们共同演绎爱的华章，将这份情感永远珍藏在岁月的长河中。', '<p style=\"text-indent: 2em;\">\r\n在四季的律动中，99朵红玫瑰如烈焰般绽放，为世界绘制了一幅美丽而浪漫的画面。这不仅仅是一束花，更是一份真挚的情感，一份承诺与坚守的象征。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵红玫瑰都是爱的化身，每一片花瓣都沐浴着岁月的阳光和雨露。这些花瓣轻轻地叠加在一起，如同时光的镜头，记录下了无数甜蜜的瞬间。当你握着这束红玫瑰，仿佛可以感受到那份温暖和慰藉。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n红玫瑰是热情和浪漫的象征，是对爱情最美好的表达。它们的鲜艳如同初恋般的悸动，花瓣的光泽宛如爱人眼中的星光。每一朵花都是心意的延伸，每一片叶都是情感的呼吸。这束99朵红玫瑰不仅代表着数量的多寡，更承载了对爱情无限的留恋与期待。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n将这束红玫瑰赠予挚爱，就是将心灵的深情与真诚呈现在世人面前。它们不仅仅是花束，更是一份内心最深处的情感展示。无需言语，红玫瑰已经传达了一切。它们是对过去时光的感恩，对未来岁月的憧憬。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n99朵红玫瑰，正如一段美丽的爱情旅程。每一朵花都是一个记忆，每一片叶都是一个故事。它们在花语的编织下，述说着爱情的美好，也诠释着生命的意义。无论风雨如何，红玫瑰的馨香永不褪色，正如爱情在岁月的流转中更显珍贵。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这束红玫瑰的芬芳中，隐藏着无数的情感和希望。它们是情人间的默契，是灵魂深处的交汇。愿这束红玫瑰见证爱情的坚贞，成为岁月中最美的风景，将幸福永远留存在心间。\r\n</p>', '玫瑰', '爱情，浪漫，礼物，豪华，感动，庆祝，浓情，承诺，华丽，仪式感，美丽，浪漫瞬间，真挚情感，艺术，永恒，心之所向，震撼');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (2, '珊瑚色玫瑰', 18.00, 18.00, 'img/product/2.png', '珊瑚色玫瑰，宛如夕阳余晖的柔和色彩，在花海中绽放。每朵花瓣仿佛沐浴着温暖的光辉，散发出优雅与温馨的气息。这个色调融合了爱情的激情和友情的真诚，象征着温暖的情感和美好的祝愿。无论是献给恋人还是朋友，珊瑚色玫瑰都是感情表达的完美选择，为特殊时刻赋予温暖而浪漫的意义。以珊瑚色玫瑰，传递心中深情，点亮人生的每一个瞬间。', '<p style=\"text-indent: 2em;\">\r\n珊瑚色玫瑰，仿佛是大自然的一次完美创作，在色彩的舞台上独具风采。每一朵珊瑚色玫瑰都是一幅自然的画作，将温暖的夕阳余晖融入花瓣之间，绽放出柔和而迷人的光彩。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这个色调融合了红色的热情和橙色的活力，创造出一种独特的、平和的美感。珊瑚色玫瑰散发着温暖与亲近的氛围，它们如同微风拂过脸颊般温暖人心，带来一份宁静和内心的愉悦。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n象征爱情与友情的交汇，珊瑚色玫瑰成为感情交流的精妙表达。它们既有红玫瑰的浪漫，又有橙玫瑰的友好，象征着深情和真挚的情感。无论是送给恋人还是朋友，这些花都能传达出温馨和美好的祝愿，拉近人与人之间的距离。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在特殊时刻，一束珊瑚色玫瑰能够点亮整个空间，为场合注入一份温暖而浪漫的氛围。它们适合作为生日、纪念日、毕业典礼等各种庆祝活动的礼物，也可以用来表示深情厚谊、道歉或祝福。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵花瓣都是细致的艺术，每一片叶子都是自然的韵律，珊瑚色玫瑰的美丽无需多言。它们让人想起夏日的余晖，温暖而安宁。当你送出一束珊瑚色玫瑰，就像是送出一份温馨的拥抱，将爱与情感传递给所爱之人。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这个充满喧嚣的世界里，珊瑚色玫瑰是一抹宁静的风景，是情感交流的纽带。它们将温暖和美好融入生活，成为点缀幸福时光的永恒佳作。\r\n</p>', '玫瑰', '爱情，浪漫，温馨，友情，感动，庆祝，温暖，祝愿，美好，独特，礼物，精致，艺术，亲情，思念，纪念，美丽，温情，柔和，甜蜜');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (3, '紫色郁金香花束', 19.00, 16.00, 'img/product/3.png', '紫色郁金香，是高贵与神秘的化身，花朵矗立如贵族的仪态。紫色的花瓣仿佛蕴含着深邃的宇宙之谜，散发出优雅的香气。它们象征着追求梦想的勇气与坚持，是对美好未来的祝愿。每一朵郁金香都是生命的艺术品，绽放在春风中，诉说着自由与希望的故事。送上这束紫色郁金香，愿它传达我的祝福，让美丽在心间盛开。', '<p style=\"text-indent: 2em;\">\r\n紫色郁金香，它以娴静的姿态立于花园之中，如同一位高贵而神秘的贵妇人。花朵高挺地矗立，仿佛是在向世界展示其优雅和品味。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n紫色，作为深邃的色彩，赋予了郁金香一种神秘而独特的魅力。每一片花瓣仿佛是染上了宇宙深处的紫色星光，给人以一种超越尘世的感觉。这种色彩透露出一种神秘感，让人产生对未知世界的好奇，仿佛在花瓣之间隐藏了无限的秘密。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n郁金香的香气轻柔而清新，带着淡淡的花香，能够让人心情宁静。紫色郁金香所散发出的香气，仿佛是一缕微风，轻轻拂过心灵，带来一份宁静与安宁。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些美丽的花朵，也蕴含了坚持和勇气的象征。郁金香在草地上昂首挺立，仿佛在迎接春天的到来，象征着希望与美好。它们告诉我们，即使在寒冷的冬天，也能够坚持自己的生命力，追求梦想的勇气。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵郁金香都是生命的艺术品，是大自然的杰作。它们在春风的呵护下，一个接一个地绽放，如同音符在空气中跳跃，为世界带来了一曲美丽的乐章。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在特殊的时刻，将一束紫色郁金香送给心爱之人，是向他们传达真挚祝福的方式。这束花不仅仅是美丽的装饰，更是一份对未来的期许，对幸福生活的祝愿。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n紫色郁金香，以其高贵的气质和神秘的魅力，成为了花海中的一颗璀璨明珠。它们的美丽将永远在人们的心中绽放，为生活增添了一份诗意和温馨。\r\n</p>', '郁金香', '高贵，神秘，优雅，美丽，深邃，独特，香气，坚持，勇气，希望，艺术，春天，祝愿，宁静，浪漫，庄重，梦想，生命之美，感动');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (4, '红玫瑰花束', 20.00, 20.00, 'img/product/4.png', '五朵红玫瑰花束，如心之五感，传递着深情厚意。每朵花瓣鲜艳如爱情初绽，组成的花束仿佛一首诗，述说着浓烈的情感。这小小的花束，蕴含着无限的温柔和关怀，是微小的祝福，却承载着无限的真挚情感。用它表达你的心意，让爱在花香中绽放，留下美好的回忆。', '<p style=\"text-indent: 2em;\">\r\n五朵红玫瑰花束，虽然数量不多，却蕴含着深刻而浓郁的情感。每朵玫瑰如同一颗心，绽放着生命的力量和爱情的热情。这个精致而小巧的花束，是感情的象征，是爱的呈现。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每朵红玫瑰都是一首情歌，每片花瓣都是一段深情。它们的鲜艳如同爱情的激情，芬芳如同思念的缱绻。在这五朵红玫瑰中，似乎有一种神秘的力量，能够将情感传递到每一个心房。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这束花束的精致之处在于，它不需要华丽的修饰，不需要过多的花朵，却能完美地表达情感。它是一种简约之美，是对真挚情感的直接表达。送出五朵红玫瑰，是在不言而喻中传递着“我爱你”的信息，是一种深情厚意的流露。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n五朵红玫瑰花束适合在多种场合送出。它可以是对爱人的告白，可以是对母亲的感恩，也可以是对朋友的祝福。在生日、纪念日、感恩节等特殊时刻，这个小巧而精致的花束都能传递出深刻的情感。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这五朵红玫瑰不仅仅是花束，更是一份情感的体现。它们是对过去时光的回忆，对未来美好的祈愿。每朵花都代表着一份祝福，每片花瓣都承载着一份真诚。无需华丽的言辞，五朵红玫瑰已经道出了内心的情感。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n让这束五朵红玫瑰花束见证你的情感，成为一个美丽的记忆。无论是在日常生活中，还是在重要的时刻，都让它传达出你的真挚情感，让爱在这五朵花中永远绽放。\r\n</p>', '玫瑰', '爱情，浪漫，温馨，精致，祝福，感恩，友情，简约，美好，情感，赠送，生日，纪念日，感谢，赞美，真挚，特别，礼物，心意，甜蜜');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (5, '多彩郁金香', 15.00, 15.00, 'img/product/5.png', '多彩郁金香，如春日的绚烂画卷。每朵花瓣都拥有不同的色彩，交织出一幅美丽的景象。它们的色彩丰富多样，如艺术家的调色板，将生命的活力和美好的情感娓娓道来。多彩郁金香是季节的礼赞，是自然的奇迹，用绚丽的色彩演绎出春天的喜悦与生机。将这份多彩馈赠于心爱之人，犹如把春日的美好送到掌心，让幸福绽放。', '<p style=\"text-indent: 2em;\">\r\n多彩郁金香，犹如春天的音符，在花海中奏响了一曲绚丽的交响乐。每一朵花朵都是自然的画笔，每一片花瓣都是色彩的画布，它们共同编织出一幅充满生命力和美丽的画卷。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些郁金香花朵的色彩多姿多彩，鲜艳而明亮，如同一盘色彩斑斓的画板，将春天的缤纷呈现得淋漓尽致。红色、黄色、紫色、粉色等各种色调交相辉映，构成了一幅绚烂多彩的画面，为春天增添了浓墨重彩的一笔。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵多彩郁金香都承载着春天的喜悦与生机。它们在和风中轻轻摇曳，如同在讲述着春天的故事。花瓣的柔软，花蕊的娇嫩，仿佛是大地在诉说着新生的希望，是自然在呼唤着生命的绽放。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n将多彩郁金香送给心爱之人，犹如送上一份春日的美好。这束花不仅仅是色彩的绚烂，更是情感的传递。它可以是爱情的告白，可以是友情的问候，也可以是感恩的祝福。每一朵花都像是一颗微小的心，带着真挚的情感，将爱意和温馨传递给收礼者。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n多彩郁金香也是对季节的赞美，是大自然的奇迹。它们在春天绽放，为这个美好的季节增添了更多的魅力。它们是春天的代言人，用花语述说着生命的轮回和希望的重生。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这束多彩郁金香中，蕴藏着无限的情感和美好的祝愿。它们是对生命的颂扬，是对爱情的珍视，是对春天的热爱。无论是送给亲人，朋友，还是爱人，多彩郁金香都能带来一份充满希望和温暖的情感，让人感受到春天的美好和生命的奇迹。\r\n</p>', '郁金香', '春天，鲜花，绚丽，色彩斑斓，生命力，美好，希望，赞美，感恩，情感，情意，爱情，友情，缤纷，花语，花艺，送礼，庆祝，生机，春意盎然');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (6, '粉红风信子', 17.00, 17.00, 'img/product/6.png', '粉红风信子，如春日的梦幻绽放。每朵花苞轻启，粉色花瓣柔美绽放，散发出清新的芬芳。它们是自然的诗篇，是爱情和温馨的象征。粉红风信子在微风中轻轻摇曳，如同在低语着柔情的告白。用它表达你的情感，将温馨与美丽赋予爱意，让爱在花海中悄然绽放。', '<p style=\"text-indent: 2em;\">\r\n粉红风信子，宛如春天的梦幻之景，在花海中轻柔地绽放。每一朵花苞逐渐舒展，绚丽的粉色花瓣渐次绽放，它们如同花海中的精灵，传递着温馨和柔美的情感。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些粉红风信子的花朵娇小玲珑，花瓣柔软而细腻，它们的粉色鲜艳而娇媚，散发着迷人的芬芳。每一朵花都像是自然的艺术品，每一片花瓣都仿佛是诗人的笔触，勾勒出一幅美丽的画面。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n粉红风信子在春天绽放，成为了季节的使者。它们象征着新生和希望，它们的绽放宛如春天的微笑，为大地带来了一份生机勃勃的气息。每一朵粉红风信子都是春天的礼物，是大自然的馈赠。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n送上粉红风信子花束，就像是将春天的温暖和美丽送到心爱之人的怀抱。它可以是爱情的表白，也可以是友情的问候，更可以是感谢和祝福。这些花儿绽放着纯真的情感，将温馨与美丽融入其中，用花的语言传达出深深的情谊。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在庭园或室内，粉红风信子都是一道美丽的风景。它们散发着淡淡的芬芳，将空气中弥漫着的清新气息带给周围的一切。粉红风信子不仅仅是一种花卉，更是一种心灵的滋养，它们让人感受到自然的美好和生命的奇迹。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这个快节奏的世界里，粉红风信子是一份难得的宁静。它们教会了我们如何在细微之处发现美，如何在平凡之中寻觅温馨。将这份宁静和美好分享给亲人、朋友，让粉红风信子传达出你的关怀和真挚情感。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n无论是送给亲人，还是献给爱人，粉红风信子都能传递出一份深情厚意，将情感和美丽娓娓道来。它们是花海中的精灵，是春天的使者，用花朵的语言讲述着关于爱、希望和温馨的故事。\r\n</p>', '风信子', '春天，鲜花，粉色，柔美，芬芳，温馨，浪漫，爱意，赞美，花艺，礼物，情感，感恩，美好，希望，生机，庆祝，生命，温暖，花语');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (7, '红色郁金香', 12.00, 12.00, 'img/product/7.png', '红色郁金香，似火焰般绚烂，犹如爱情的象征。花瓣如丝绸般光滑，绽放出激情四溢的美丽。每一朵都是真挚情感的表达，如同一颗颗跳动的心，向世界述说着深情厚意。红色郁金香是勇敢的坚持，是永不熄灭的渴望。将它献给挚爱之人，让爱意在花香中传递，让美丽与情感相交织，成就一份不朽的情缘。', '<p style=\"text-indent: 2em;\">\r\n红色郁金香，如同一抹燃烧的烈焰，在花海中绽放。它们的红色鲜艳夺目，犹如爱情的火焰，传递着激情和渴望。每一朵花瓣都如丝绸般光滑，轻轻触摸，仿佛能感受到爱的触感。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些红色郁金香是爱情的使者，是情感的表达。它们的绚烂色彩饱含着深情厚意，每一朵都是真挚情感的诠释。它们如同一颗颗跳动的心，向世界述说着爱的热情，是对美好情感的呈现。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n红色郁金香代表着热烈的感情和永不熄灭的渴望。它们是坚强的象征，是对爱情坚持不懈的证明。它们在春风中摇曳，如同在倾诉爱的心声，是对爱情的坚守和承诺。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n将红色郁金香献给挚爱之人，是一种美丽的表达。它可以是爱情的告白，可以是对亲人的关怀，也可以是对友情的珍视。在红色郁金香的花香中，传递出你的情感，让爱意在花瓣间穿行，让美丽与情感相交织。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些花朵并不只是美的象征，它们还承载了人们的情感和希望。红色郁金香在绽放中展示出坚定不移的美丽，正如爱情在岁月中的坚持。它们是美的力量，是情感的印记，是一份纯粹的赠送，将爱和美丽交织成一幅永恒的画面。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n红色郁金香的美丽超越了花卉本身，它象征着生命的情感和情感的生命。无论是送给生日寿星，还是用来庆祝爱情纪念日，红色郁金香都能成为特殊时刻的完美见证。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在红色郁金香的花海中，人们感受到了爱的温暖，感知到了生命的美丽。它们是对爱情的颂歌，是对情感的赞美，是对美好生活的追求。无论是在浪漫的春日还是寒冷的冬夜，红色郁金香都能用自己的方式讲述着爱的故事，用花瓣诉说着感情的深切。\r\n</p>', '郁金香', '爱情，激情，热烈，渴望，情感，赤诚，花海，美丽，坚持，承诺，感情表达，绚烂，浪漫，礼物，情谊，真挚，花艺，赞美，美好时光');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (8, '粉红玫瑰', 25.00, 19.00, 'img/product/8.png', '粉红玫瑰，柔美如初恋。花瓣粉嫩绽放，如少女脸颊的羞涩。每一朵都是纯真情感的象征，像一段温馨的告白，轻轻诉说着心中的情愫。将粉红玫瑰送给心爱之人，是对爱意的坦诚表达，是用花语述说着柔情与关怀。它们在微风中摇曳，如同恋人的倾诉，是爱情的美丽寓言，散发着浪漫与温暖。', '<p style=\"text-indent: 2em;\">\r\n粉红玫瑰，仿佛是爱情与柔美的交汇处，在花海中绽放出婉约的光芒。它们的花瓣粉嫩而细腻，如同少女脸颊的羞涩，让人不禁想起初恋时的甜蜜和青涩。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵粉红玫瑰都是一段美丽的故事，是纯真情感的象征。花瓣绽放的瞬间，宛如一次心灵的开放，将内心深处的情愫呈现于世。它们是温柔的告白，是柔情的交流，是对美好的渴望。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n将粉红玫瑰送给心爱之人，是一份真挚的情感表达。它们不仅仅是花束，更是心意的传递。粉红玫瑰如同一句温馨的问候，如同一段美好的回忆，让人在花香中感受到爱的温暖。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n粉红玫瑰所传达的不仅仅是浪漫，还有深厚的情感。它们在微风中轻轻摇曳，如同恋人之间的倾诉，是爱情的美丽寓言。它们承载着思念和关怀，用花的语言述说着情感的深处。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些花朵散发着浓郁的浪漫氛围，让人感受到爱情的美好。粉红玫瑰不仅是一种花卉，更是一种情感的载体，将温馨与感动传递给心灵。无论是送给恋人，朋友还是家人，粉红玫瑰都能传达出真诚和温暖。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这个喧嚣的世界中，粉红玫瑰如同一份静谧的礼物。它们让人在花海中沉静下来，感受到爱情的美好和宁静。粉红玫瑰教会了我们如何用微笑与温柔去对待生活中的每一个瞬间。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n用粉红玫瑰表达情感，是对美好的追求，是对幸福的珍视。它们在阳光下绽放，如同爱情在人生中的点点滴滴，充满了温暖与希望。无论是在节日庆典还是平凡时刻，粉红玫瑰都能成为最美丽的陪伴，将温情和感动绽放在生命的每个角落。\r\n</p>', '玫瑰', '爱情，柔美，浪漫，温馨，初恋，美丽，情感，告白，花语，真挚，渴望，青涩，回忆，心意，花艺，温暖，感动，纯真');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (9, '紫色风信子', 15.00, 15.00, 'img/product/9.png', '紫色风信子，如夜空中的星辰，散发着神秘的光芒。花朵紫蓝交织，宛如诗意的画面。每一朵都是生命的奇迹，传递着祝福和宁静。紫色风信子是希望的象征，是对未来美好的期许。将它送给亲人，朋友或恋人，是将温馨和祝福编织成花的语言，让情感在花香中流淌，留下美好的回忆。', '<p style=\"text-indent: 2em;\">\r\n紫色风信子，宛如一场夜晚的童话，散发着深邃的神秘气息。花朵的紫蓝交织，如同星空中点缀的繁星，光芒闪烁，给人带来无限遐想。每一朵风信子都是大自然的杰作，它们在静谧的花海中绽放，仿佛是诗意的画面在人间展开。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这些紫色风信子不仅是美的象征，更是生命的奇迹。每一朵花朵都是独特的，每一片花瓣都如诗如画。它们的紫色是神秘而深沉的，散发出迷人的香气，如同一段隽永的旋律，让人陶醉其中。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n紫色风信子所传递的不仅仅是美丽，还有希望和祝福。它们是新生命的象征，是对未来的美好期许。将紫色风信子送给亲人、朋友或恋人，是一份深情的祝福。这些花朵如同一句温馨的祝愿，用花的语言表达出对他们的关心和良好的愿望。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n紫色风信子的美丽散发着宁静和平和。它们在风中轻轻摇曳，如同人们内心的宁静，是对生活的感悟和对自然的敬畏。紫色风信子带着一份宁静的力量，让人在喧嚣的世界中找到片刻的宁静。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n送上紫色风信子花束，不仅仅是送花，更是送去心中的祝福。它们是美丽的情感载体，将真挚的情谊和深深的祝福融入其中。在庭园中或室内摆放，紫色风信子都能带来一份宁静和美好，让人感受到大自然的奇妙。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在这个充满喧嚣的世界里，紫色风信子是一份宁静的馈赠。它们让人重新审视生活，感受到内心的平和与喜悦。紫色风信子的美丽超越了花卉本身，它们是对生命的讚美，是对美好的珍视。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n紫色风信子，如同一首优美的诗篇，如同一个难以言喻的梦境。它们用独特的色彩和芬芳，在人们的心中编织出一段美丽的记忆。无论是在春日的花园还是冬夜的居室，紫色风信子都能以其独特的美丽点缀生活，让人感受到大自然的恩赐和美好的情感。\r\n</p>', '风信子', '神秘，美丽，希望，宁静，香气，花语，新生，祝福，深情，花海，奇迹，艺术，独特，生命，自然，宁静，感悟');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (10, '浅蓝色玫瑰', 59.00, 49.00, 'img/product/10.png', '浅蓝色玫瑰，宛如清晨的天空，柔和而宁静。花朵轻盈绽放，如同一抹淡淡的诗意。每一朵都是温柔的表达，传递着宁静和祥和。浅蓝色玫瑰是心灵的抚慰，是对美好生活的向往。将它赠予所爱之人，是用花瓣诉说心声，是让爱与希望在花香中缱绻，留下美丽的回忆。', '<p style=\"text-indent: 2em;\">\r\n浅蓝色玫瑰，犹如天空的柔和颜色，在花海中绽放出宁静而温馨的美丽。这种特殊的花色给人一种清晨的宁静感，如同微风拂过的轻柔，令人心旷神怡。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵浅蓝色玫瑰都是一份温柔的表达，是花朵向人们诉说内心感情的方式。花瓣绽放的瞬间，仿佛是一颗心灵的跳动，是对美好生活的赞颂。它们的淡蓝色如同深邃的湖水，宁静而充满诗意，让人沉醉其中。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n浅蓝色玫瑰是心灵的抚慰，是一份对内心宁静的渴望。将这些温柔的花朵送给亲人、朋友或恋人，是用花的语言传达出对他们的祝福和关心。这些花朵如同一句温馨的问候，如同一段美好的回忆，在花香中传递出温馨和祥和。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这种花色的玫瑰也寄托着对美好未来的向往。浅蓝色玫瑰代表着宁静与和平，让人感受到内心的平静和安宁。它们在微风中轻轻摇曳，仿佛是大自然的呢喃，是对美好生活的崇尚。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n无论是放置在家中还是送给挚爱之人，浅蓝色玫瑰都能营造出一种宁静而温馨的氛围。它们的美丽超越了花卉本身，成为一种心灵的寄托，让人在喧嚣的世界中找到片刻的宁静。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在浅蓝色玫瑰的花语中，我们感受到对生活的感悟和对美好的追求。它们如同一首低吟的诗篇，如同一幅宁静的画面，让人在花的海洋中感受到内心的宁静和悠远。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n浅蓝色玫瑰，如同一片晴朗的天空，如同一段纯净的旋律，散发出独特的美丽与温馨。无论是送给他人还是用来装点自己的生活空间，浅蓝色玫瑰都能成为一种美好的陪伴，让人感受到宁静与希望的缱绻。\r\n</p>', '玫瑰', '宁静，温馨，清晨，诗意，祝福，渴望，心灵抚慰，美好生活，祥和，向往，花语，独特美丽，心灵寄托，安宁，感悟');
INSERT INTO `t_flower_detail` (`flower_id`, `flower_name`, `list_price`, `selling_price`, `flower_img_path`, `describe`, `describe_detail`, `categories`, `tags`) VALUES (11, '金色郁金香', 25.00, 19.00, 'img/product/11.png', '金色郁金香，犹如太阳的温暖，散发着奢华的光辉。花瓣如黄金般璀璨，宛如贵族的风采。每一朵都是荣耀的象征，传达着繁荣和成功。金色郁金香是华贵的呈现，是对美好生活的追求。将它献给亲朋好友，是将幸福和荣耀编织成花的语言，让情感在花海中熠熠生辉，留下永恒的印记。', '<p style=\"text-indent: 2em;\">\r\n金色郁金香，犹如黄金般闪耀，给人一种奢华而璀璨的视觉享受。花朵如太阳般灿烂，散发出温暖的光辉，仿佛是贵族中的珍品，让人不由自主地被其魅力所吸引。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n每一朵金色郁金香都是荣耀和成功的象征。它们的花瓣如同金块一般璀璨，富有质感，仿佛是大自然为我们准备的珍宝。这些花朵的存在，就像是一场盛大的庆典，传达出繁荣与幸福的讯息，是对美好生活的向往。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n金色郁金香不仅是花朵，更是一种情感的表达。将金色郁金香送给亲人、朋友或恋人，是用花的语言传达出对他们的祝愿和关心。这些花朵如同一份珍贵的礼物，承载着发自内心的祝福，让人在花香的环绕中感受到幸福的喜悦。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n这种花色的郁金香也象征着对美好生活的追求。金色郁金香所带来的不仅仅是视觉上的享受，更是内心的愉悦和满足。它们在阳光的照耀下闪耀着光芒，如同成功者的光环，是对辛勤努力和付出的回报。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n无论是作为鲜花束束还是点缀在室内，金色郁金香都能为环境带来一份奢华和独特的美感。它们的华贵外表和耀眼光芒，不仅让人感受到视觉上的享受，更是一种情感的升华，让人心生敬仰和赞叹。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n金色郁金香，如同一颗耀眼的明星，如同一段璀璨的人生。它们的存在是对美好的赞美，是对幸福时光的珍视。无论是作为礼物还是作为装饰，金色郁金香都能带来一份与众不同的华贵和荣耀。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n在金色郁金香的花语中，我们感受到对美好生活的热爱和对幸福的向往。它们如同一首颂歌，如同一幅绚丽的画面，将幸福和成功的情感在花的海洋中展现得淋漓尽致。\r\n</p>\r\n\r\n<p style=\"text-indent: 2em;\">\r\n金色郁金香，如同一抹耀眼的光芒，如同一段辉煌的篇章，让人在美的世界中感受到荣耀和幸福的美好。无论是在节日庆典还是平凡时刻，金色郁金香都能成为最亮眼的焦点，让人心生愉悦和自豪。\r\n</p>', '郁金香', '奢华，荣耀，成功，繁荣，幸福，光辉，贵族，珍品，情感，向往，美好生活，礼物，华贵装饰，光芒，情感升华，颂歌，美丽时光，自豪');
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
                           `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                           `order_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                           `order_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                           `order_nation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                           `order_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                           `order_paymentMode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '1:支票 2:到付 3:线上支付',
                           `order_priceTotal` decimal(10,2) DEFAULT NULL,
                           `user_id` int DEFAULT NULL,
                           `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '未支付、已支付、已发货、已签收',
                           PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('0bbb62bfa927440', '', '', '选择国家', '', '货到付款', 31.00, 9, '已下单');
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('151e1b55c0414d4', '', '', '中国', '', '货到付款', 153.00, 1, '已下单');
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('5ba08a59b33e4c5', 'chenlong', '287428141', '中国', '北京 天安门', '货到付款', 51.00, 1, '已下单');
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('aebfb95dbc9b461', '', '', '选择国家', '', '货到付款', 27.00, 1, '已下单');
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('dd97c851beda469', '', '', '选择国家', '', '货到付款', 51.00, 1, '已下单');
INSERT INTO `t_order` (`order_id`, `order_username`, `order_phone`, `order_nation`, `order_address`, `order_paymentMode`, `order_priceTotal`, `user_id`, `state`) VALUES ('f8f968c92696438', '小明', '15507111819', '中国', '湖北省鄂州市鄂城区西山坡小区11懂101号', '货到付款', 83.00, 1, '已下单');
COMMIT;

-- ----------------------------
-- Table structure for t_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_orderdetail`;
CREATE TABLE `t_orderdetail` (
                                 `id` int NOT NULL AUTO_INCREMENT,
                                 `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                                 `flower_id` int NOT NULL,
                                 `flower_num` int DEFAULT NULL,
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_orderdetail
-- ----------------------------
BEGIN;
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (13, 'f8f968c92696438', 10, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (14, 'f8f968c92696438', 3, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (15, 'f8f968c92696438', 2, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (16, '151e1b55c0414d4', 6, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (17, '151e1b55c0414d4', 3, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (18, '151e1b55c0414d4', 4, 6);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (19, '0bbb62bfa927440', 3, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (20, 'dd97c851beda469', 6, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (21, 'dd97c851beda469', 8, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (22, '5ba08a59b33e4c5', 4, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (23, '5ba08a59b33e4c5', 3, 1);
INSERT INTO `t_orderdetail` (`id`, `order_id`, `flower_id`, `flower_num`) VALUES (24, 'aebfb95dbc9b461', 7, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                          `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` (`id`, `username`, `email`, `password`) VALUES (1, 'admin', 'admin@admin.com', '1234');
INSERT INTO `t_user` (`id`, `username`, `email`, `password`) VALUES (9, '花开寂寞', '111@111.com', '1111');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
