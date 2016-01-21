/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-01-21 23:55:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dy_access
-- ----------------------------
DROP TABLE IF EXISTS `dy_access`;
CREATE TABLE `dy_access` (
  `role_id` smallint(6) unsigned NOT NULL COMMENT '角色id',
  `node_id` smallint(6) unsigned NOT NULL COMMENT '节点id',
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_access
-- ----------------------------
INSERT INTO `dy_access` VALUES ('1', '4', '2', null);
INSERT INTO `dy_access` VALUES ('1', '5', '3', null);
INSERT INTO `dy_access` VALUES ('1', '6', '2', null);
INSERT INTO `dy_access` VALUES ('1', '1', '1', null);
INSERT INTO `dy_access` VALUES ('1', '2', '2', null);
INSERT INTO `dy_access` VALUES ('1', '3', '3', null);
INSERT INTO `dy_access` VALUES ('1', '7', '3', null);
INSERT INTO `dy_access` VALUES ('1', '8', '3', null);
INSERT INTO `dy_access` VALUES ('1', '9', '3', null);
INSERT INTO `dy_access` VALUES ('1', '10', '3', null);
INSERT INTO `dy_access` VALUES ('1', '11', '3', null);
INSERT INTO `dy_access` VALUES ('1', '12', '3', null);
INSERT INTO `dy_access` VALUES ('1', '13', '3', null);
INSERT INTO `dy_access` VALUES ('1', '14', '3', null);
INSERT INTO `dy_access` VALUES ('1', '15', '3', null);
INSERT INTO `dy_access` VALUES ('1', '16', '3', null);
INSERT INTO `dy_access` VALUES ('1', '17', '3', null);
INSERT INTO `dy_access` VALUES ('1', '18', '3', null);
INSERT INTO `dy_access` VALUES ('1', '19', '2', null);
INSERT INTO `dy_access` VALUES ('1', '20', '3', null);
INSERT INTO `dy_access` VALUES ('1', '21', '3', null);
INSERT INTO `dy_access` VALUES ('1', '22', '3', null);
INSERT INTO `dy_access` VALUES ('1', '23', '3', null);
INSERT INTO `dy_access` VALUES ('1', '24', '3', null);
INSERT INTO `dy_access` VALUES ('1', '25', '3', null);
INSERT INTO `dy_access` VALUES ('1', '26', '3', null);
INSERT INTO `dy_access` VALUES ('1', '27', '2', null);
INSERT INTO `dy_access` VALUES ('1', '28', '3', null);
INSERT INTO `dy_access` VALUES ('1', '29', '3', null);
INSERT INTO `dy_access` VALUES ('1', '30', '3', null);
INSERT INTO `dy_access` VALUES ('1', '31', '3', null);
INSERT INTO `dy_access` VALUES ('1', '32', '3', null);
INSERT INTO `dy_access` VALUES ('1', '33', '3', null);
INSERT INTO `dy_access` VALUES ('1', '34', '3', null);
INSERT INTO `dy_access` VALUES ('1', '35', '3', null);
INSERT INTO `dy_access` VALUES ('1', '36', '3', null);
INSERT INTO `dy_access` VALUES ('1', '37', '3', null);
INSERT INTO `dy_access` VALUES ('1', '38', '3', null);
INSERT INTO `dy_access` VALUES ('1', '39', '3', null);
INSERT INTO `dy_access` VALUES ('1', '40', '2', null);
INSERT INTO `dy_access` VALUES ('1', '41', '3', null);
INSERT INTO `dy_access` VALUES ('2', '1', '1', null);
INSERT INTO `dy_access` VALUES ('2', '2', '2', null);
INSERT INTO `dy_access` VALUES ('2', '3', '3', null);
INSERT INTO `dy_access` VALUES ('2', '4', '2', null);
INSERT INTO `dy_access` VALUES ('2', '5', '3', null);
INSERT INTO `dy_access` VALUES ('2', '6', '2', null);
INSERT INTO `dy_access` VALUES ('2', '7', '3', null);
INSERT INTO `dy_access` VALUES ('2', '8', '3', null);
INSERT INTO `dy_access` VALUES ('2', '13', '3', null);
INSERT INTO `dy_access` VALUES ('2', '19', '2', null);
INSERT INTO `dy_access` VALUES ('2', '20', '3', null);
INSERT INTO `dy_access` VALUES ('2', '27', '2', null);
INSERT INTO `dy_access` VALUES ('2', '28', '3', null);
INSERT INTO `dy_access` VALUES ('2', '29', '3', null);
INSERT INTO `dy_access` VALUES ('2', '38', '3', null);
INSERT INTO `dy_access` VALUES ('2', '39', '3', null);
INSERT INTO `dy_access` VALUES ('2', '40', '2', null);
INSERT INTO `dy_access` VALUES ('2', '41', '3', null);
INSERT INTO `dy_access` VALUES ('2', '13', '2', null);
INSERT INTO `dy_access` VALUES ('1', '4', '2', null);
INSERT INTO `dy_access` VALUES ('1', '5', '3', null);
INSERT INTO `dy_access` VALUES ('1', '6', '2', null);
INSERT INTO `dy_access` VALUES ('1', '1', '1', null);
INSERT INTO `dy_access` VALUES ('1', '2', '2', null);
INSERT INTO `dy_access` VALUES ('1', '3', '3', null);
INSERT INTO `dy_access` VALUES ('1', '7', '3', null);
INSERT INTO `dy_access` VALUES ('1', '8', '3', null);
INSERT INTO `dy_access` VALUES ('1', '9', '3', null);
INSERT INTO `dy_access` VALUES ('1', '10', '3', null);
INSERT INTO `dy_access` VALUES ('1', '11', '3', null);
INSERT INTO `dy_access` VALUES ('1', '12', '3', null);
INSERT INTO `dy_access` VALUES ('1', '13', '3', null);
INSERT INTO `dy_access` VALUES ('1', '14', '3', null);
INSERT INTO `dy_access` VALUES ('1', '15', '3', null);
INSERT INTO `dy_access` VALUES ('1', '16', '3', null);
INSERT INTO `dy_access` VALUES ('1', '17', '3', null);
INSERT INTO `dy_access` VALUES ('1', '18', '3', null);
INSERT INTO `dy_access` VALUES ('1', '19', '2', null);
INSERT INTO `dy_access` VALUES ('1', '20', '3', null);
INSERT INTO `dy_access` VALUES ('1', '21', '3', null);
INSERT INTO `dy_access` VALUES ('1', '22', '3', null);
INSERT INTO `dy_access` VALUES ('1', '23', '3', null);
INSERT INTO `dy_access` VALUES ('1', '24', '3', null);
INSERT INTO `dy_access` VALUES ('1', '25', '3', null);
INSERT INTO `dy_access` VALUES ('1', '26', '3', null);
INSERT INTO `dy_access` VALUES ('1', '27', '2', null);
INSERT INTO `dy_access` VALUES ('1', '28', '3', null);
INSERT INTO `dy_access` VALUES ('1', '29', '3', null);
INSERT INTO `dy_access` VALUES ('1', '30', '3', null);
INSERT INTO `dy_access` VALUES ('1', '31', '3', null);
INSERT INTO `dy_access` VALUES ('1', '32', '3', null);
INSERT INTO `dy_access` VALUES ('1', '33', '3', null);
INSERT INTO `dy_access` VALUES ('1', '34', '3', null);
INSERT INTO `dy_access` VALUES ('1', '35', '3', null);
INSERT INTO `dy_access` VALUES ('1', '36', '3', null);
INSERT INTO `dy_access` VALUES ('1', '37', '3', null);
INSERT INTO `dy_access` VALUES ('1', '38', '3', null);
INSERT INTO `dy_access` VALUES ('1', '39', '3', null);
INSERT INTO `dy_access` VALUES ('1', '40', '2', null);
INSERT INTO `dy_access` VALUES ('1', '41', '3', null);
INSERT INTO `dy_access` VALUES ('2', '1', '1', null);
INSERT INTO `dy_access` VALUES ('2', '2', '2', null);
INSERT INTO `dy_access` VALUES ('2', '3', '3', null);
INSERT INTO `dy_access` VALUES ('2', '4', '2', null);
INSERT INTO `dy_access` VALUES ('2', '5', '3', null);
INSERT INTO `dy_access` VALUES ('2', '6', '2', null);
INSERT INTO `dy_access` VALUES ('2', '7', '3', null);
INSERT INTO `dy_access` VALUES ('2', '8', '3', null);
INSERT INTO `dy_access` VALUES ('2', '13', '3', null);
INSERT INTO `dy_access` VALUES ('2', '19', '2', null);
INSERT INTO `dy_access` VALUES ('2', '20', '3', null);
INSERT INTO `dy_access` VALUES ('2', '27', '2', null);
INSERT INTO `dy_access` VALUES ('2', '28', '3', null);
INSERT INTO `dy_access` VALUES ('2', '29', '3', null);
INSERT INTO `dy_access` VALUES ('2', '38', '3', null);
INSERT INTO `dy_access` VALUES ('2', '39', '3', null);
INSERT INTO `dy_access` VALUES ('2', '40', '2', null);
INSERT INTO `dy_access` VALUES ('2', '41', '3', null);
INSERT INTO `dy_access` VALUES ('2', '13', '2', null);

-- ----------------------------
-- Table structure for dy_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `dy_auth_group`;
CREATE TABLE `dy_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_auth_group
-- ----------------------------
INSERT INTO `dy_auth_group` VALUES ('1', '管理员', '1', '1,2,3,4,5,6');
INSERT INTO `dy_auth_group` VALUES ('2', '普通用户', '1', '1,3,4,5,12,13');
INSERT INTO `dy_auth_group` VALUES ('3', '社团管理', '1', '1,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26');

-- ----------------------------
-- Table structure for dy_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `dy_auth_group_access`;
CREATE TABLE `dy_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_2` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

-- ----------------------------
-- Records of dy_auth_group_access
-- ----------------------------
INSERT INTO `dy_auth_group_access` VALUES ('1', '1');
INSERT INTO `dy_auth_group_access` VALUES ('2', '3');

-- ----------------------------
-- Table structure for dy_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `dy_auth_rule`;
CREATE TABLE `dy_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型（0存在规则就通过，1按规则表达时进行认证）',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of dy_auth_rule
-- ----------------------------
INSERT INTO `dy_auth_rule` VALUES ('1', 'admin/index/index', '管理首页', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('2', 'admin/user/index', '用户管理', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('3', 'admin/user/add', '添加用户', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('4', 'admin/user/edituser', '编辑用户', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('5', 'admin/user/grouplist', '分组管理', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('6', 'admin/user/updatagrouprule', '用户组权限修改', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('7', 'admin/user/addgroup', '添加用户分组', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('8', 'admin/user/groupuser', '分组成员管理', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('9', 'admin/user/updatagrouprule', '更新分组权限', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('10', 'admin/user/deluser', '删除用户', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('11', 'admin/user/delgroup', '删除分组', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('12', 'admin/personal/index', '个人中心', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('13', 'admin/personal/password', '修改密码', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('14', 'admin/member/index', '会员列表', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('15', 'admin/member/editmember', '修改会员资料', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('16', 'admin/member/delmember', '解除会员关系', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('17', 'admin/member/add', '添加会员', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('18', 'admin/audit/index', '会员审核', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('19', 'admin/audit/log', '审核记录', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('20', 'admin/audit/aud', '确认金额', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('21', 'admin/index/sendmessage', '发送通知', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('22', 'admin/setting/index', '资料设置', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('23', 'admin/setting/logo', 'logo设置', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('24', 'admin/setting/sys', '系统功能设置', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('25', 'admin/setting/apply', '招新设置', '1', '', '1');
INSERT INTO `dy_auth_rule` VALUES ('26', 'admin/member/export', '用户列表导出', '1', '', '1');

-- ----------------------------
-- Table structure for dy_blogs
-- ----------------------------
DROP TABLE IF EXISTS `dy_blogs`;
CREATE TABLE `dy_blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `title` varchar(50) NOT NULL COMMENT '日志标题',
  `url` varchar(50) NOT NULL COMMENT '友好url',
  `tag` varchar(500) NOT NULL COMMENT '关键词（标签）',
  `description` varchar(500) NOT NULL COMMENT '描述',
  `ip` varchar(40) NOT NULL COMMENT 'ip',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '发表时间',
  `update_time` int(11) unsigned DEFAULT NULL COMMENT '最后更新时间',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `pwd` varchar(60) DEFAULT NULL COMMENT '查看密码',
  `count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数量',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '发表用户id',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_blogs
-- ----------------------------
INSERT INTO `dy_blogs` VALUES ('1', '世界你好', 'first', '小雨,blog,你好，世界。', '', '', '1368628954', '1368879136', '0', '', '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('2', '更新日志', 'change log', '日志,小雨,blog,xyblog', '', '', '1368628954', '1371787019', '1', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('9', '开源地址', '', '', '', '171.11.106.58', '1371787748', null, '1', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('3', '求暑假工机会', '', '', '', '', '1369114395', '1369114657', '0', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('4', '开放后台测试', 'test', '', '', '', '1369233741', '1369237906', '1', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('5', '已实现离线二维码功能', 'qrcode', '', '', '', '1369237829', null, '0', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('6', '笔记本键盘坏了，而且又快高考，停两天', '', '', '', '', '1369707474', null, '0', null, '0', '1', '0');
INSERT INTO `dy_blogs` VALUES ('7', '还真有人刷评论', '', '', '', '', '1371282084', null, '0', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('8', '什么是RSS？', '', '', '', '', '1371285801', null, '0', null, '0', '1', '1');
INSERT INTO `dy_blogs` VALUES ('10', 'Android用Service在后台定时更新widget', '', '', '', '1.192.235.231', '1419162678', '1419162762', '0', null, '0', '1', '1');

-- ----------------------------
-- Table structure for dy_blog_content
-- ----------------------------
DROP TABLE IF EXISTS `dy_blog_content`;
CREATE TABLE `dy_blog_content` (
  `blog_id` int(11) unsigned NOT NULL COMMENT '博客ID',
  `content_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `content` text COMMENT '内容',
  `creat_time` int(11) unsigned NOT NULL COMMENT '此内容创建时间',
  `status` tinyint(5) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`content_id`,`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dy_blog_content
-- ----------------------------
INSERT INTO `dy_blog_content` VALUES ('1', '1', '0', '<p>你好，世界。</p><p><br /></p><p>by Xy Blog。</p><p>2013年5月16日 20:11:55</p><p>localhost<br /></p>', '1368628954', '1');
INSERT INTO `dy_blog_content` VALUES ('2', '1', '0', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2013年5月15日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		完成项目目录，配置TP框架\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月16日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		移植后台模版，设计博客数据库\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月17日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		设计博客浏览页，移植TP官网模版\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月18日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		上传云空间（SAE,BAE）,进行第一次修改，完善数据库link表，修复html的HEAD描述和关键词\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月19日\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:14:34 &nbsp; &nbsp;前台留言初步完成。\r\n	</p>\r\n	<p>\r\n		13:03:51 &nbsp; &nbsp;后台留言管理初步完成\r\n	</p>\r\n	<p>\r\n		17:24:27 &nbsp; &nbsp;增加反馈管理\r\n	</p>\r\n	<p>\r\n		17:24:34 &nbsp; &nbsp;日志，留言，反馈 删除修复\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月20日\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		修复SAE云平台部署\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-21\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		13:10:55 &nbsp; &nbsp;完成留言列表，留言审核\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-22\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:14:06 &nbsp; &nbsp;完成后台留言管理，完成评论以及评论管理\r\n	</p>\r\n	<p>\r\n		20:22:36 &nbsp; 完成Home分组下的二维码生成，增加测试账户\r\n	</p>\r\n	<p>\r\n		23:37:33 &nbsp; 开放后台测试\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-24\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		完成二级评论的实现，已在博客页和留言页实现\r\n	</p>\r\n	<p>\r\n		优化后台显示\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-25\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		13:39:44 &nbsp; &nbsp;完成留言邮箱提醒，二级评论邮箱提醒，修复id错误时提醒\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-26\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:33:51 &nbsp; &nbsp;完成数据库配置部分，及其生效部分，现已实现：博客开关，回复审核，邮箱通知开关\r\n	</p>\r\n	<p>\r\n		0:52:49 &nbsp; &nbsp;修复博客评论邮件通知内容里的链接地址，留言部分新增主页项\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-06-15\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		15:23:10 &nbsp; &nbsp;完成博客初级配置部分，邮件配置部分\r\n	</p>\r\n	<p>\r\n		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;完成rss生成，完成百度和谷歌的ping服务\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-06-2-\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		22:00:00&nbsp;&nbsp;&nbsp; 更新在线编辑器（换为：<a href=\"http://www.kindsoft.net/\" target=\"_blank\">kindsoft.net</a>）\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 完成Home分组的投稿\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	小雨\r\n</p>', '1368628954', '1');
INSERT INTO `dy_blog_content` VALUES ('9', '1', '0', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	GIThub地址：<a target=\"_blank\" href=\"https://github.com/dingdayu/xyblog\">https://github.com/dingdayu/xyblog</a>\r\n</p>\r\n<p>\r\n	CSDN code：<a target=\"_blank\" href=\"https://code.csdn.net/dingdayu/xyblog\">https://code.csdn.net/dingdayu/xyblog</a>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	测试链接：<a target=\"_blank\" href=\"http://xyblog.sinaapp.com/\">http://xyblog.sinaapp.com/</a>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1371787748', '1');
INSERT INTO `dy_blog_content` VALUES ('3', '1', '0', '<p>本人资料在首页上略有介绍，今年高三，高考的话题不太愿意提起，成绩太差。</p><p>而在高考结束，就会有三个月的暑假，考虑到其他原因，也有两个月的时间，不太想在家待着。</p><p>说到这里，就要再对自己进行进一步介绍了。</p><p>本人，来自农村，至此尚未走出，曾趁暑假随外出打工的父母去过广东两次，随对大城市有这些许向往。</p><p>虽来自农村，但却也较早的接触到计算机（相比于同伴，无法与大城市相比），在对计算机接触的六年里，前三年懵懵懂懂，在虚拟世界里游荡，曾参与过现在很多游戏的内测，曾沉迷过网络文学（网络小说），也曾作为白痴般的小白混迹于曾经的黑客论坛。</p><p>在进入高中后，意识到，那些都是虚幻，自学计算机知识。</p><p>在这里不得不说自己对于计算机的自学能力，在无人帮助，没有门路的情况下，学习至此，很是辛苦。当初的条件，不可谓不辛苦。</p><p>在初一一年里学习计算机基础知识，恶补很多理论知识，编程的一些理论和网站建设的一些理论。写到这里，又想起当初接触到这些的时候域名还是廉价品，几元一个；空间还可以申请免费的，而且免备案，只可惜恰巧错过。</p><p><br /></p><p>好像前面说到的都是无用的，下面说下我能做些什么吧。</p><p><br /></p><p>如同这个博客，在所懂的‘编程’里，较擅长的就是这个PHP动态网页编程了。</p><p>其次，对于C#,也有所基础，不得不说的是接触才不过两个月，但是已有一个插件作品。</p><p>其实，对于计算机的维护和一般问题的维修及组装，也懂些许，（当然一般主板芯片什么的无能为力）。</p><p>在高中三年里，高二的时候班级里配置了多媒体，在参与多媒体维护的时间里，学习到不少东西，也对系统有了不少的认识。</p><p>另外Java的编程也能看懂一些，但独立编程尚不能完成。</p><p><br /></p><p>其实这些都是次要，我最想表达的是我的学习能力，而且是计算机方面的学习能力。</p><p>上面这些都是在学校学习的同时完成的，而上面的学习都是通过当初诺基亚6700s的智能机，学习的理论知识，不要不相信，都是通过uc上网查资料学习理论，很少有实践的机会。</p><p><br /></p><p>如果你那里有工作的机会，还请考虑我一下，但是很抱歉的是我只能作为暑假工参与，因为我暂时还不能放弃学业，纵使高考最后只是大专。</p><p><br /></p><p>联系方式:</p><p>QQ:614422099</p><p>邮箱：614422099@qq.com</p><p><br /></p><p>工作地点不限，暑假打算自己外出闯荡一番。</p>', '1369114395', '1');
INSERT INTO `dy_blog_content` VALUES ('4', '1', '0', '<p>现已开放后台测试登陆。</p><blockquote><p>用户名：<strong>test</strong></p><p>密码：<strong>123456</strong></p></blockquote><p>已封闭测试用户的密码修改和资料修改。</p><p>开放各模块的浏览权限，但未开放编辑和增加权限。</p><p><br /></p><p>其实，后台只有基本功能，设置模块和附件管理模块还在本地测试中。</p><p>所以只有，博客管理，评价管理，和留言管理。<br /></p>', '1369233741', '1');
INSERT INTO `dy_blog_content` VALUES ('5', '1', '0', '<p>今天下午已完成二维码的生成功能。</p><p><br /></p><p>前台已部署上。</p><p>后续会支持二维码登陆功能。</p><p><br /></p><p>二维码在每个页面的右侧上方悬浮。</p><p><br /></p><p>可以使用你的手机进行扫描了，测试看看哦！<br /></p>', '1369237829', '1');
INSERT INTO `dy_blog_content` VALUES ('6', '1', '0', '<p>笔记本从昨天键盘就出问题了，大概是上档键短路了，电脑开机后一直警报，正在想办法换个键盘。<br />而且马上又要高考，所以这个博客的编写要等两天了，放心，时间不会很长，还有一个周就快考试了。最多15天，就会回来的。<br /></p>', '1369707474', '1');
INSERT INTO `dy_blog_content` VALUES ('7', '1', '0', '<p>没想到还没完成的博客也有人刷评论广告，没办法，先开启审核。<br /></p>', '1371282084', '1');
INSERT INTO `dy_blog_content` VALUES ('8', '1', '0', '<p><strong>RSS的定义</strong></p><p><br /> &nbsp; &nbsp;RSS(Really Simple Syndication)是一种描述和同步网站内容的格式，是目前使用最广泛的XML应用。<br />RSS是一种起源于网景的推技术，将订户订阅的内容传送给他们的通讯协同格式(Protocol)。RSS可以是以下三个解释的其中一个： <br /> &nbsp; Really Simple Syndication <br /> &nbsp; RDF (Resource Description Framework) Site Summary <br /> &nbsp; Rich Site Summary <br /> &nbsp; 其实这三个解释都是指同一种Syndication的技术。 RSS目前广泛用于网上新闻频道，blog和wiki，主要的版本有0.91, 1.0, 2.0。<br /><br /><strong>本站的RSS地址</strong></p><p><br /> &nbsp; &nbsp;<a href=\"http://dingxiaoyu.com/Rss\">http://dingxiaoyu.com/Rss</a><br /></p><p><br /></p><p> <strong>RSS会帮您更好的节省时间</strong></p><p><br /> &nbsp; &nbsp;如果您每天都上网看咨询/技术/朋友的BLOG，那么您如果每个网站/BLOG都去翻一遍的话，那么会使您那宝贵的时间更加的“宝贵”！所以如果 您使用一个RSS阅读器（Google Reader、抓虾都是不错的RSS阅读器）的话，会节省大量的时间.</p>', '1371285801', '1');
INSERT INTO `dy_blog_content` VALUES ('10', '1', '0', '在开发Android的widget时，第一个需要解决的问题就是怎么实现让widget定时更新，在查阅比较多的资料后，一般情况用Service在后台更新，废话不多说，贴代码如下：&nbsp;\r\n<p>\r\n	Widget:&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<pre>public class NewsWidgetProvider extends AppWidgetProvider {\r\n\r\n	@Override\r\n	public void onDeleted(Context context, int[] appWidgetIds) {\r\n	}\r\n\r\n	@Override\r\n	public void onDisabled(Context context) {\r\n		// TODO Auto-generated method stub\r\n		super.onDisabled(context);\r\n	}\r\n\r\n	@Override\r\n	public void onEnabled(Context context) {\r\n		// TODO Auto-generated method stub\r\n		super.onEnabled(context);\r\n	}\r\n\r\n	@Override\r\n	public void onUpdate(Context context, AppWidgetManager appWidgetManager,int[] appWidgetIds) {\r\n\r\n		NewsService.updateAppWidgetIds(appWidgetIds);\r\n		context.startService(new Intent(context,NewsService.class));\r\n	}\r\n	\r\n	public static RemoteViews updateAppWidget(Context context,List&lt;RssNews&gt; list) {\r\n		RemoteViews views = new RemoteViews(context.getPackageName(),R.layout.appwidget_layout);\r\n		if (list.size() &gt; 3) {\r\n			views.setTextViewText(R.id.textView01, list.get(0).title);\r\n			views.setTextViewText(R.id.textView02, list.get(1).title);\r\n			views.setTextViewText(R.id.textView03, list.get(2).title);\r\n		}\r\n\r\n		Intent detailIntent=new Intent(context,NewsSiteList.class);\r\n		\r\n		PendingIntent pending=PendingIntent.getActivity(context, 0, detailIntent, 0);\r\n		views.setOnClickPendingIntent(R.id.textView01, pending);\r\n		views.setOnClickPendingIntent(R.id.textView02, pending);\r\n		views.setOnClickPendingIntent(R.id.textView03, pending);\r\n		return views;\r\n	}\r\n	\r\n	@Override\r\n	public void onReceive(Context context, Intent intent) {\r\n		super.onReceive(context, intent);\r\n	}\r\n\r\n}</pre>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	Service:\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<pre>public class NewsService extends Service implements Runnable {\r\n	\r\n	private static final String TAG=\"NewsService\"; \r\n	private static Queue&lt;Integer&gt; sAppWidgetIds=new LinkedList&lt;Integer&gt;();\r\n	public static final String ACTION_UPDATE_ALL = \"com.xxxx.news.UPDATE_ALL\";\r\n	private static boolean sThreadRunning = false;\r\n	private static Object sLock = new Object();\r\n	\r\n	@Override\r\n	public IBinder onBind(Intent intent) {\r\n		return null;\r\n	}\r\n	\r\n	public static void updateAppWidgetIds(int[] appWidgetIds){\r\n		synchronized (sLock) {\r\n			for (int appWidgetId : appWidgetIds) {\r\n				sAppWidgetIds.add(appWidgetId);\r\n			}\r\n		}\r\n	}\r\n	\r\n	public static int getNextWidgetId(){\r\n		synchronized (sLock) {\r\n			if (sAppWidgetIds.peek() == null) {\r\n				return AppWidgetManager.INVALID_APPWIDGET_ID;\r\n			} else {\r\n				return sAppWidgetIds.poll();\r\n				\r\n			}\r\n		}\r\n	}\r\n	\r\n	private static boolean hasMoreUpdates() {\r\n		synchronized (sLock) {\r\n			boolean hasMore = !sAppWidgetIds.isEmpty();\r\n			if (!hasMore) {\r\n				sThreadRunning = false;\r\n			}\r\n			return hasMore;\r\n		}\r\n	}\r\n\r\n	@Override\r\n	public void onCreate() {\r\n		super.onCreate();\r\n	}\r\n\r\n	@Override\r\n	public void onStart(Intent intent, int startId) {\r\n		super.onStart(intent, startId);\r\n		if (null != intent) {\r\n			if (ACTION_UPDATE_ALL.equals(intent.getAction())) {\r\n				AppWidgetManager widget = AppWidgetManager.getInstance(this);\r\n				updateAppWidgetIds(widget.getAppWidgetIds(new ComponentName(this, NewsWidgetProvider.class)));\r\n			}\r\n		}\r\n		synchronized (sLock) {\r\n			if (!sThreadRunning) {\r\n				sThreadRunning=true;\r\n				new Thread(this).start();\r\n			}\r\n		}\r\n	}\r\n\r\n	@Override\r\n	public void run() {\r\n		SharedPreferences setting=getSharedPreferences(\"com.xxxx.news_preferences\", 0);\r\n		String updateTime=setting.getString(\"list_time\", \"1800000\");\r\n		String updateUrl=setting.getString(\"list_site\", \"xxxxxxxxx\");\r\n		\r\n		\r\n		AppWidgetManager appWidgetManager=AppWidgetManager.getInstance(this);\r\n		RemoteViews updateViews=null;\r\n		\r\n		while (hasMoreUpdates()) {\r\n			int appWidgetId=getNextWidgetId();\r\n			List&lt;RssNews&gt; listNews = NewsContenttList.getNewsList(updateUrl);\r\n			if (listNews != null) {\r\n				updateViews = NewsWidgetProvider.updateAppWidget(this, listNews);\r\n			}\r\n			if (updateViews != null) {\r\n				appWi', '1419162678', '1');

-- ----------------------------
-- Table structure for dy_comment
-- ----------------------------
DROP TABLE IF EXISTS `dy_comment`;
CREATE TABLE `dy_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `user_name` varchar(60) NOT NULL COMMENT '评论者昵称',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论者ID',
  `email` varchar(100) NOT NULL COMMENT '评论者邮箱',
  `url` varchar(200) NOT NULL COMMENT '留言人主页',
  `ip` varchar(40) NOT NULL COMMENT '评论ip',
  `content` varchar(1000) NOT NULL COMMENT '评论内容',
  `create_time` int(11) unsigned NOT NULL COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '修改时间',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '评论类型',
  `from_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论来自哪里',
  `pid` smallint(6) unsigned NOT NULL COMMENT '评论套窃继承',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `sort` smallint(6) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_comment
-- ----------------------------

-- ----------------------------
-- Table structure for dy_config
-- ----------------------------
DROP TABLE IF EXISTS `dy_config`;
CREATE TABLE `dy_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型（0-数字，1-字符，2-文本，3-数组，4-枚举，5-多选）',
  `title` varchar(50) NOT NULL COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组（0-无分组，1-基本设置）',
  `extra` varchar(255) NOT NULL COMMENT '可选配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '选中值',
  `sort` smallint(3) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_config
-- ----------------------------
INSERT INTO `dy_config` VALUES ('1', 'WEB_SITE_TITLE', '1', '网站标题', '0', '', '网站标题前台显示标题', '1378898976', '1439953711', '1', '测试网站', '0');
INSERT INTO `dy_config` VALUES ('2', 'WEB_SITE_DESCRIPTION', '2', '网站描述', '0', '', '网站搜索引擎描述', '1378898976', '1439953711', '1', '默认描述', '1');
INSERT INTO `dy_config` VALUES ('3', 'WEB_SITE_KEYWORD', '2', '网站关键字', '0', '', '网站搜索引擎关键字', '1378898976', '1439953711', '1', 'ThinkPHP,OneThink,dingdayu,小雨,测试', '3');
INSERT INTO `dy_config` VALUES ('4', 'WEB_SITE_ICP', '1', '网站备案号', '0', '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', '1378900335', '1439953711', '1', '', '4');
INSERT INTO `dy_config` VALUES ('5', 'USER_ALLOW_REGISTER', '4', '是否允许用户注册', '2', '0:关闭注册\r\n1:允许注册', '是否开放用户注册', '1379504487', '1379504580', '1', '1', '0');
INSERT INTO `dy_config` VALUES ('6', 'DENY_VISIT', '0', '禁止访问模块', '0', '此项中的模块禁止除系统管理员外所有人访问', '此项中的模块禁止除系统管理员外所有人访问', '0', '0', '0', '', '0');
INSERT INTO `dy_config` VALUES ('7', 'ALLOW_VISIT', '0', '总是允许访问', '0', '总是允许访问', '总是允许访问', '0', '0', '0', '', '0');
INSERT INTO `dy_config` VALUES ('8', 'MAIL_HOST', '0', 'SMTP服务器  ', '3', '邮箱SMTP服务器地址', '邮箱SMTP服务器地址', '0', '0', '1', 'smtp.exmail.qq.com', '1');
INSERT INTO `dy_config` VALUES ('9', 'MAIL_SMTPAUTH', '0', 'SMTP认证', '3', '启用smtp认证', '是否启用smtp认证（默认：是）', '0', '0', '1', 'true', '2');
INSERT INTO `dy_config` VALUES ('10', 'MAIL_USERNAME', '0', '邮箱用户名', '3', '邮箱名称', '邮箱认证用户名', '0', '0', '1', 'admin@dingxiaoyu.com', '3');
INSERT INTO `dy_config` VALUES ('11', 'MAIL_FROM', '0', '发件人地址', '3', '发件人邮箱地址', '发件人邮箱地址', '0', '0', '1', 'admin@dingxiaoyu.com', '4');
INSERT INTO `dy_config` VALUES ('12', 'MAIL_PASSWORD', '0', '邮箱认证密码', '3', '邮箱认证密码', '邮箱认证密码', '0', '0', '1', 'qq614422099', '5');
INSERT INTO `dy_config` VALUES ('13', 'MAIL_CHARSET', '0', '邮件编码', '3', '发送邮件的编码', '发送邮件的编码', '0', '0', '1', 'utf-8', '6');
INSERT INTO `dy_config` VALUES ('15', 'MAIL_FROMNAME', '0', '发件人昵称', '3', '发件人的昵称', '发件人的昵称', '0', '0', '1', '小雨', '7');
INSERT INTO `dy_config` VALUES ('16', 'MAIL_PROT', '0', 'SMTP服务器端口', '3', 'SMTP服务器端口', 'SMTP服务器端口', '0', '0', '1', '465', '8');
INSERT INTO `dy_config` VALUES ('17', 'MAIL_REPLY', '0', '回复邮箱地址', '3', '用户点击回复的时候的邮箱地址', '用户点击回复的时候的邮箱地址', '0', '0', '1', '1003280349@qq.com', '9');
INSERT INTO `dy_config` VALUES ('18', 'MAIL_REPLYNAME', '0', '回复邮箱的昵称', '3', '用户点击回复的时候填写的收件人昵称', '用户点击回复的时候填写的收件人昵称', '0', '0', '1', '服务邮箱', '10');
INSERT INTO `dy_config` VALUES ('19', 'WECHAT_TOKEN', '0', '微信TOKEN', '4', '微信公众平台TOKEN', '微信公众平台TOKEN', '0', '1440644720', '1', 'dingdayu', '0');
INSERT INTO `dy_config` VALUES ('20', 'ENCODING_AES_KEY', '0', '微信通讯秘钥AES_KEY', '4', '微信通讯秘钥AES_KEY', '微信通讯秘钥AES_KEY', '0', '1440644720', '1', 'MqAuKoex6FyT5No0OcpRyCicThGs0P1vz4mJ2gwvvkF', '0');
INSERT INTO `dy_config` VALUES ('21', 'WECHAT_APPID', '0', '微信APPID', '4', '微信APPID', '微信APPID', '0', '1440644720', '1', 'wx43edbcaa6f504062', '0');
INSERT INTO `dy_config` VALUES ('22', 'WECHAT_APPSECRET', '0', '微信APPSECRET', '4', '微信APPSECRET', '微信APPSECRET', '0', '1440644720', '1', '1a7ec2083974a3379fdb655a694b92c5', '0');
INSERT INTO `dy_config` VALUES ('23', 'WECHAT_TYPE', '0', '微信公众号类型', '4', '微信公众号类型', '微信公众号类型', '0', '1440644720', '1', 'service_verify', '0');
INSERT INTO `dy_config` VALUES ('24', 'QINIU_ACCESS', '0', '七牛存储ACCESS', '5', '七牛存储ACCESS', '七牛存储ACCESS', '0', '0', '1', 'US9O6rhUkZmp6sE3qUCy1_OM3iQ9dAAQcdLNOh-8', '0');
INSERT INTO `dy_config` VALUES ('25', 'QINIU_SECRET', '0', '七牛存储SECRET', '5', '七牛存储SECRET', '七牛存储SECRET', '0', '0', '1', 'e8pDprNvwPqRL_XxmRZZQYvMjUKyM6O1MyX4PD9L', '0');
INSERT INTO `dy_config` VALUES ('26', 'QINIU_BUCKET', '0', '七牛存储BUCKET', '5', '七牛存储BUCKET', '七牛存储BUCKET', '0', '0', '1', 'xyser', '0');
INSERT INTO `dy_config` VALUES ('27', 'QINIU_DOMAIN', '0', '七牛存储DOMAIN', '5', '七牛存储DOMAIN', '七牛存储DOMAIN', '0', '0', '1', 'http://7xn8av.com2.z0.glb.qiniucdn.com', '0');

-- ----------------------------
-- Table structure for dy_group
-- ----------------------------
DROP TABLE IF EXISTS `dy_group`;
CREATE TABLE `dy_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分组id',
  `title` varchar(64) NOT NULL COMMENT '分组名',
  `type` tinyint(2) unsigned NOT NULL COMMENT '分组分类',
  `createTime` int(11) unsigned NOT NULL COMMENT '创建时间',
  `lastTime` int(11) unsigned NOT NULL COMMENT '最后使用时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `count` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '已使用次数',
  `remark` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of dy_group
-- ----------------------------

-- ----------------------------
-- Table structure for dy_link
-- ----------------------------
DROP TABLE IF EXISTS `dy_link`;
CREATE TABLE `dy_link` (
  `id` int(11) unsigned NOT NULL COMMENT 'id',
  `title` varchar(80) NOT NULL COMMENT '链接标题',
  `url` varchar(200) NOT NULL COMMENT '链接url',
  `img` varchar(200) NOT NULL COMMENT '图片链接',
  `target` varchar(25) NOT NULL COMMENT '打开方式',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '链接类型',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  `updateTime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `createTime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='链接表';

-- ----------------------------
-- Records of dy_link
-- ----------------------------

-- ----------------------------
-- Table structure for dy_menu
-- ----------------------------
DROP TABLE IF EXISTS `dy_menu`;
CREATE TABLE `dy_menu` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `group` varchar(20) NOT NULL COMMENT '分组名',
  `model` varchar(20) NOT NULL COMMENT '模块名',
  `action` varchar(20) NOT NULL COMMENT '方法名',
  `title` varchar(50) NOT NULL,
  `createTime` int(11) unsigned NOT NULL COMMENT '发布时间',
  `updateTime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '导航类型',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_menu
-- ----------------------------
INSERT INTO `dy_menu` VALUES ('1', 'Blog', 'Admin', 'Blog', '', '博文管理', '0', '0', '1', '0', '0', '1', '后台');
INSERT INTO `dy_menu` VALUES ('2', 'blog', 'Home', 'Blog', 'index', '博文', '0', '0', '1', '0', '0', '2', '首页导航');
INSERT INTO `dy_menu` VALUES ('3', 'comment', 'Home', 'Comment', 'index', '留言', '0', '0', '1', '0', '0', '2', '留言');
INSERT INTO `dy_menu` VALUES ('4', 'comment', 'Admin', 'Comment', 'index', '留言管理', '0', '0', '1', '0', '0', '1', '后台留言管理');
INSERT INTO `dy_menu` VALUES ('5', 'Seting', 'Admin', 'Seting', 'index', '博客配置', '0', '0', '1', '0', '0', '1', null);

-- ----------------------------
-- Table structure for dy_survey
-- ----------------------------
DROP TABLE IF EXISTS `dy_survey`;
CREATE TABLE `dy_survey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '调查id',
  `type` tinyint(2) unsigned NOT NULL COMMENT '调查类型',
  `beId` int(11) unsigned NOT NULL COMMENT '相关id',
  `value` int(5) unsigned NOT NULL COMMENT '得到的值',
  `remark` varchar(200) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1797 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_survey
-- ----------------------------

-- ----------------------------
-- Table structure for dy_tag
-- ----------------------------
DROP TABLE IF EXISTS `dy_tag`;
CREATE TABLE `dy_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `value` varchar(64) NOT NULL COMMENT '标签的值',
  `createTime` int(11) unsigned NOT NULL COMMENT '创建的时间',
  `lastTime` int(11) NOT NULL COMMENT '最后一次使用时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `count` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '权重',
  `remark` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of dy_tag
-- ----------------------------

-- ----------------------------
-- Table structure for dy_upload
-- ----------------------------
DROP TABLE IF EXISTS `dy_upload`;
CREATE TABLE `dy_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '上传文件名',
  `author` varchar(255) NOT NULL COMMENT '作者',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `size` varchar(20) NOT NULL COMMENT '文件大小',
  `extension` varchar(20) NOT NULL COMMENT '文件后缀',
  `savepath` varchar(255) NOT NULL COMMENT '保存的路径',
  `savename` varchar(255) NOT NULL COMMENT '保存的文件名',
  `module` varchar(100) NOT NULL COMMENT '上传分类',
  `recordId` int(11) NOT NULL COMMENT 'ID',
  `userId` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `uploadTime` int(11) unsigned DEFAULT NULL COMMENT '上传时间',
  `downCount` mediumint(9) unsigned DEFAULT '0' COMMENT '下载次数',
  `hash` varchar(32) NOT NULL COMMENT '文件HASH值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `version` mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT '附件版本',
  `updateTime` int(12) unsigned DEFAULT NULL COMMENT '附件更新时间',
  `downloadTime` int(11) unsigned NOT NULL COMMENT '最后下载时间',
  `status` tinyint(1) NOT NULL COMMENT '是否启用',
  `isTop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `recordId` (`recordId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_upload
-- ----------------------------

-- ----------------------------
-- Table structure for dy_user
-- ----------------------------
DROP TABLE IF EXISTS `dy_user`;
CREATE TABLE `dy_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '昵称',
  `password` char(40) NOT NULL COMMENT '密码',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '登录IP',
  `login_count` int(8) unsigned DEFAULT '0' COMMENT '登录次数',
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '邮箱',
  `qq` int(14) unsigned NOT NULL COMMENT 'qq',
  `remark` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `create_ip` varchar(40) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '注册ip',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '启用',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dy_user
-- ----------------------------
INSERT INTO `dy_user` VALUES ('1', 'admin', '管理员', 'p1_b876b471b5d8957045182cd8a665b176', '1453389220', '2130706433', '78', '614422099@qq.com', '614422099', '', '1362651445', '127.0.0.1', '0', '1');
INSERT INTO `dy_user` VALUES ('2', 'test', '测试', 'p1_b876b471b5d8957045182cd8a665b176', '1437465710', '125.122.114.23', '140', 'xyblog@dingxiaoyu.com', '0', '', '0', null, '1372266444', '1');
