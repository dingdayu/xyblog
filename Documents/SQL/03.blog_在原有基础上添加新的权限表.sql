/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-01-11 01:23:24
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
  `bid` int(11) unsigned NOT NULL COMMENT '博客ID',
  `content` text,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dy_blog_content
-- ----------------------------
INSERT INTO `dy_blog_content` VALUES ('1', '<p>你好，世界。</p><p><br /></p><p>by Xy Blog。</p><p>2013年5月16日 20:11:55</p><p>localhost<br /></p>');
INSERT INTO `dy_blog_content` VALUES ('2', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2013年5月15日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		完成项目目录，配置TP框架\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月16日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		移植后台模版，设计博客数据库\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月17日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		设计博客浏览页，移植TP官网模版\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月18日 &nbsp;\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		上传云空间（SAE,BAE）,进行第一次修改，完善数据库link表，修复html的HEAD描述和关键词\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月19日\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:14:34 &nbsp; &nbsp;前台留言初步完成。\r\n	</p>\r\n	<p>\r\n		13:03:51 &nbsp; &nbsp;后台留言管理初步完成\r\n	</p>\r\n	<p>\r\n		17:24:27 &nbsp; &nbsp;增加反馈管理\r\n	</p>\r\n	<p>\r\n		17:24:34 &nbsp; &nbsp;日志，留言，反馈 删除修复\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013年5月20日\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		修复SAE云平台部署\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-21\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		13:10:55 &nbsp; &nbsp;完成留言列表，留言审核\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-22\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:14:06 &nbsp; &nbsp;完成后台留言管理，完成评论以及评论管理\r\n	</p>\r\n	<p>\r\n		20:22:36 &nbsp; 完成Home分组下的二维码生成，增加测试账户\r\n	</p>\r\n	<p>\r\n		23:37:33 &nbsp; 开放后台测试\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-24\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		完成二级评论的实现，已在博客页和留言页实现\r\n	</p>\r\n	<p>\r\n		优化后台显示\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-25\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		13:39:44 &nbsp; &nbsp;完成留言邮箱提醒，二级评论邮箱提醒，修复id错误时提醒\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-05-26\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		0:33:51 &nbsp; &nbsp;完成数据库配置部分，及其生效部分，现已实现：博客开关，回复审核，邮箱通知开关\r\n	</p>\r\n	<p>\r\n		0:52:49 &nbsp; &nbsp;修复博客评论邮件通知内容里的链接地址，留言部分新增主页项\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-06-15\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		15:23:10 &nbsp; &nbsp;完成博客初级配置部分，邮件配置部分\r\n	</p>\r\n	<p>\r\n		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;完成rss生成，完成百度和谷歌的ping服务\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	2013-06-2-\r\n</p>\r\n<blockquote>\r\n	<p>\r\n		22:00:00&nbsp;&nbsp;&nbsp; 更新在线编辑器（换为：<a href=\"http://www.kindsoft.net/\" target=\"_blank\">kindsoft.net</a>）\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 完成Home分组的投稿\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	小雨\r\n</p>');
INSERT INTO `dy_blog_content` VALUES ('9', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	GIThub地址：<a target=\"_blank\" href=\"https://github.com/dingdayu/xyblog\">https://github.com/dingdayu/xyblog</a>\r\n</p>\r\n<p>\r\n	CSDN code：<a target=\"_blank\" href=\"https://code.csdn.net/dingdayu/xyblog\">https://code.csdn.net/dingdayu/xyblog</a>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	测试链接：<a target=\"_blank\" href=\"http://xyblog.sinaapp.com/\">http://xyblog.sinaapp.com/</a>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `dy_blog_content` VALUES ('3', '<p>本人资料在首页上略有介绍，今年高三，高考的话题不太愿意提起，成绩太差。</p><p>而在高考结束，就会有三个月的暑假，考虑到其他原因，也有两个月的时间，不太想在家待着。</p><p>说到这里，就要再对自己进行进一步介绍了。</p><p>本人，来自农村，至此尚未走出，曾趁暑假随外出打工的父母去过广东两次，随对大城市有这些许向往。</p><p>虽来自农村，但却也较早的接触到计算机（相比于同伴，无法与大城市相比），在对计算机接触的六年里，前三年懵懵懂懂，在虚拟世界里游荡，曾参与过现在很多游戏的内测，曾沉迷过网络文学（网络小说），也曾作为白痴般的小白混迹于曾经的黑客论坛。</p><p>在进入高中后，意识到，那些都是虚幻，自学计算机知识。</p><p>在这里不得不说自己对于计算机的自学能力，在无人帮助，没有门路的情况下，学习至此，很是辛苦。当初的条件，不可谓不辛苦。</p><p>在初一一年里学习计算机基础知识，恶补很多理论知识，编程的一些理论和网站建设的一些理论。写到这里，又想起当初接触到这些的时候域名还是廉价品，几元一个；空间还可以申请免费的，而且免备案，只可惜恰巧错过。</p><p><br /></p><p>好像前面说到的都是无用的，下面说下我能做些什么吧。</p><p><br /></p><p>如同这个博客，在所懂的‘编程’里，较擅长的就是这个PHP动态网页编程了。</p><p>其次，对于C#,也有所基础，不得不说的是接触才不过两个月，但是已有一个插件作品。</p><p>其实，对于计算机的维护和一般问题的维修及组装，也懂些许，（当然一般主板芯片什么的无能为力）。</p><p>在高中三年里，高二的时候班级里配置了多媒体，在参与多媒体维护的时间里，学习到不少东西，也对系统有了不少的认识。</p><p>另外Java的编程也能看懂一些，但独立编程尚不能完成。</p><p><br /></p><p>其实这些都是次要，我最想表达的是我的学习能力，而且是计算机方面的学习能力。</p><p>上面这些都是在学校学习的同时完成的，而上面的学习都是通过当初诺基亚6700s的智能机，学习的理论知识，不要不相信，都是通过uc上网查资料学习理论，很少有实践的机会。</p><p><br /></p><p>如果你那里有工作的机会，还请考虑我一下，但是很抱歉的是我只能作为暑假工参与，因为我暂时还不能放弃学业，纵使高考最后只是大专。</p><p><br /></p><p>联系方式:</p><p>QQ:614422099</p><p>邮箱：614422099@qq.com</p><p><br /></p><p>工作地点不限，暑假打算自己外出闯荡一番。</p>');
INSERT INTO `dy_blog_content` VALUES ('4', '<p>现已开放后台测试登陆。</p><blockquote><p>用户名：<strong>test</strong></p><p>密码：<strong>123456</strong></p></blockquote><p>已封闭测试用户的密码修改和资料修改。</p><p>开放各模块的浏览权限，但未开放编辑和增加权限。</p><p><br /></p><p>其实，后台只有基本功能，设置模块和附件管理模块还在本地测试中。</p><p>所以只有，博客管理，评价管理，和留言管理。<br /></p>');
INSERT INTO `dy_blog_content` VALUES ('5', '<p>今天下午已完成二维码的生成功能。</p><p><br /></p><p>前台已部署上。</p><p>后续会支持二维码登陆功能。</p><p><br /></p><p>二维码在每个页面的右侧上方悬浮。</p><p><br /></p><p>可以使用你的手机进行扫描了，测试看看哦！<br /></p>');
INSERT INTO `dy_blog_content` VALUES ('6', '<p>笔记本从昨天键盘就出问题了，大概是上档键短路了，电脑开机后一直警报，正在想办法换个键盘。<br />而且马上又要高考，所以这个博客的编写要等两天了，放心，时间不会很长，还有一个周就快考试了。最多15天，就会回来的。<br /></p>');
INSERT INTO `dy_blog_content` VALUES ('7', '<p>没想到还没完成的博客也有人刷评论广告，没办法，先开启审核。<br /></p>');
INSERT INTO `dy_blog_content` VALUES ('8', '<p><strong>RSS的定义</strong></p><p><br /> &nbsp; &nbsp;RSS(Really Simple Syndication)是一种描述和同步网站内容的格式，是目前使用最广泛的XML应用。<br />RSS是一种起源于网景的推技术，将订户订阅的内容传送给他们的通讯协同格式(Protocol)。RSS可以是以下三个解释的其中一个： <br /> &nbsp; Really Simple Syndication <br /> &nbsp; RDF (Resource Description Framework) Site Summary <br /> &nbsp; Rich Site Summary <br /> &nbsp; 其实这三个解释都是指同一种Syndication的技术。 RSS目前广泛用于网上新闻频道，blog和wiki，主要的版本有0.91, 1.0, 2.0。<br /><br /><strong>本站的RSS地址</strong></p><p><br /> &nbsp; &nbsp;<a href=\"http://dingxiaoyu.com/Rss\">http://dingxiaoyu.com/Rss</a><br /></p><p><br /></p><p> <strong>RSS会帮您更好的节省时间</strong></p><p><br /> &nbsp; &nbsp;如果您每天都上网看咨询/技术/朋友的BLOG，那么您如果每个网站/BLOG都去翻一遍的话，那么会使您那宝贵的时间更加的“宝贵”！所以如果 您使用一个RSS阅读器（Google Reader、抓虾都是不错的RSS阅读器）的话，会节省大量的时间.</p>');
INSERT INTO `dy_blog_content` VALUES ('10', '在开发Android的widget时，第一个需要解决的问题就是怎么实现让widget定时更新，在查阅比较多的资料后，一般情况用Service在后台更新，废话不多说，贴代码如下：&nbsp;\r\n<p>\r\n	Widget:&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<pre>public class NewsWidgetProvider extends AppWidgetProvider {\r\n\r\n	@Override\r\n	public void onDeleted(Context context, int[] appWidgetIds) {\r\n	}\r\n\r\n	@Override\r\n	public void onDisabled(Context context) {\r\n		// TODO Auto-generated method stub\r\n		super.onDisabled(context);\r\n	}\r\n\r\n	@Override\r\n	public void onEnabled(Context context) {\r\n		// TODO Auto-generated method stub\r\n		super.onEnabled(context);\r\n	}\r\n\r\n	@Override\r\n	public void onUpdate(Context context, AppWidgetManager appWidgetManager,int[] appWidgetIds) {\r\n\r\n		NewsService.updateAppWidgetIds(appWidgetIds);\r\n		context.startService(new Intent(context,NewsService.class));\r\n	}\r\n	\r\n	public static RemoteViews updateAppWidget(Context context,List&lt;RssNews&gt; list) {\r\n		RemoteViews views = new RemoteViews(context.getPackageName(),R.layout.appwidget_layout);\r\n		if (list.size() &gt; 3) {\r\n			views.setTextViewText(R.id.textView01, list.get(0).title);\r\n			views.setTextViewText(R.id.textView02, list.get(1).title);\r\n			views.setTextViewText(R.id.textView03, list.get(2).title);\r\n		}\r\n\r\n		Intent detailIntent=new Intent(context,NewsSiteList.class);\r\n		\r\n		PendingIntent pending=PendingIntent.getActivity(context, 0, detailIntent, 0);\r\n		views.setOnClickPendingIntent(R.id.textView01, pending);\r\n		views.setOnClickPendingIntent(R.id.textView02, pending);\r\n		views.setOnClickPendingIntent(R.id.textView03, pending);\r\n		return views;\r\n	}\r\n	\r\n	@Override\r\n	public void onReceive(Context context, Intent intent) {\r\n		super.onReceive(context, intent);\r\n	}\r\n\r\n}</pre>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	Service:\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<pre>public class NewsService extends Service implements Runnable {\r\n	\r\n	private static final String TAG=\"NewsService\"; \r\n	private static Queue&lt;Integer&gt; sAppWidgetIds=new LinkedList&lt;Integer&gt;();\r\n	public static final String ACTION_UPDATE_ALL = \"com.xxxx.news.UPDATE_ALL\";\r\n	private static boolean sThreadRunning = false;\r\n	private static Object sLock = new Object();\r\n	\r\n	@Override\r\n	public IBinder onBind(Intent intent) {\r\n		return null;\r\n	}\r\n	\r\n	public static void updateAppWidgetIds(int[] appWidgetIds){\r\n		synchronized (sLock) {\r\n			for (int appWidgetId : appWidgetIds) {\r\n				sAppWidgetIds.add(appWidgetId);\r\n			}\r\n		}\r\n	}\r\n	\r\n	public static int getNextWidgetId(){\r\n		synchronized (sLock) {\r\n			if (sAppWidgetIds.peek() == null) {\r\n				return AppWidgetManager.INVALID_APPWIDGET_ID;\r\n			} else {\r\n				return sAppWidgetIds.poll();\r\n				\r\n			}\r\n		}\r\n	}\r\n	\r\n	private static boolean hasMoreUpdates() {\r\n		synchronized (sLock) {\r\n			boolean hasMore = !sAppWidgetIds.isEmpty();\r\n			if (!hasMore) {\r\n				sThreadRunning = false;\r\n			}\r\n			return hasMore;\r\n		}\r\n	}\r\n\r\n	@Override\r\n	public void onCreate() {\r\n		super.onCreate();\r\n	}\r\n\r\n	@Override\r\n	public void onStart(Intent intent, int startId) {\r\n		super.onStart(intent, startId);\r\n		if (null != intent) {\r\n			if (ACTION_UPDATE_ALL.equals(intent.getAction())) {\r\n				AppWidgetManager widget = AppWidgetManager.getInstance(this);\r\n				updateAppWidgetIds(widget.getAppWidgetIds(new ComponentName(this, NewsWidgetProvider.class)));\r\n			}\r\n		}\r\n		synchronized (sLock) {\r\n			if (!sThreadRunning) {\r\n				sThreadRunning=true;\r\n				new Thread(this).start();\r\n			}\r\n		}\r\n	}\r\n\r\n	@Override\r\n	public void run() {\r\n		SharedPreferences setting=getSharedPreferences(\"com.xxxx.news_preferences\", 0);\r\n		String updateTime=setting.getString(\"list_time\", \"1800000\");\r\n		String updateUrl=setting.getString(\"list_site\", \"xxxxxxxxx\");\r\n		\r\n		\r\n		AppWidgetManager appWidgetManager=AppWidgetManager.getInstance(this);\r\n		RemoteViews updateViews=null;\r\n		\r\n		while (hasMoreUpdates()) {\r\n			int appWidgetId=getNextWidgetId();\r\n			List&lt;RssNews&gt; listNews = NewsContenttList.getNewsList(updateUrl);\r\n			if (listNews != null) {\r\n				updateViews = NewsWidgetProvider.updateAppWidget(this, listNews);\r\n			}\r\n			if (updateViews != null) {\r\n				appWi');

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
-- Table structure for dy_node
-- ----------------------------
DROP TABLE IF EXISTS `dy_node`;
CREATE TABLE `dy_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点id',
  `name` varchar(20) NOT NULL COMMENT '节点名',
  `title` varchar(50) DEFAULT NULL COMMENT '节点标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '启用',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL COMMENT 'pid',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点权限',
  `group_id` tinyint(3) unsigned DEFAULT '0' COMMENT '分组id',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of dy_node
-- ----------------------------
INSERT INTO `dy_node` VALUES ('1', 'Admin', '管理组', '1', '管理组', null, '0', '1', '0');
INSERT INTO `dy_node` VALUES ('2', 'Index', '管理首页', '1', '管理框架页', null, '1', '2', '0');
INSERT INTO `dy_node` VALUES ('3', 'index', '管理页操作', '1', '默认操作', null, '2', '3', '0');
INSERT INTO `dy_node` VALUES ('4', 'Blog', '博客管理', '1', null, null, '1', '2', '1');
INSERT INTO `dy_node` VALUES ('5', 'index', '博客列表', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('6', 'Leave', '留言管理', '1', null, null, '1', '2', '4');
INSERT INTO `dy_node` VALUES ('7', 'index', '留言列表', '1', '留言管理', null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('8', 'edit', '留言编辑', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('9', 'update', '留言更新', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('10', 'resume', '状态启用', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('11', 'forbid', '状态禁用', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('12', 'insert', '新增博客', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('13', 'edit', '编辑博客', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('14', 'update', '更新博客', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('15', 'forbid', '状态禁用', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('16', 'resume', '状态启用', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('17', 'isTop', '博客置顶', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('18', 'noTop', '取消置顶', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('19', 'Feedback', '反馈管理', '1', null, null, '1', '2', '4');
INSERT INTO `dy_node` VALUES ('20', 'edit', '反馈编辑', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('21', 'update', '反馈更新', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('22', 'forbid', '反馈禁用', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('23', 'resume', '反馈启用', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('24', 'foreverdelete', '日志删除', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('25', 'foreverdelete', '留言删除', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('26', 'foreverdelete', '反馈删除', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('27', 'Comment', '评论管理', '1', null, null, '1', '2', '1');
INSERT INTO `dy_node` VALUES ('28', 'index', '评论列表', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('29', 'edit', '评论编辑', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('30', 'update', '评论更新', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('31', 'forbid', '评论禁用', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('32', 'resume', '评论恢复', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('33', 'foreverdelete', '评论删除', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('34', 'isTop', '评论置顶', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('35', 'isTop', '留言置顶', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('36', 'noTop', '取消置顶', '1', null, null, '6', '3', '0');
INSERT INTO `dy_node` VALUES ('37', 'noTop', '取消置顶', '1', null, null, '27', '3', '0');
INSERT INTO `dy_node` VALUES ('38', 'index', '反馈列表', '1', null, null, '19', '3', '0');
INSERT INTO `dy_node` VALUES ('39', 'add', '新增博客', '1', null, null, '4', '3', '0');
INSERT INTO `dy_node` VALUES ('40', 'Seting', '网站配置', '1', null, null, '1', '2', '5');
INSERT INTO `dy_node` VALUES ('41', 'index', '设置列表', '1', null, null, '40', '3', '0');
INSERT INTO `dy_node` VALUES ('42', 'update', '更新配置', '1', null, null, '40', '3', '0');
INSERT INTO `dy_node` VALUES ('43', 'SetEmail', '邮箱设置', '1', null, null, '1', '2', '5');
INSERT INTO `dy_node` VALUES ('44', 'index', '邮箱设置流量', '1', null, null, '43', '3', '0');
INSERT INTO `dy_node` VALUES ('45', 'update', '更新邮箱设置', '1', null, null, '43', '3', '0');
INSERT INTO `dy_node` VALUES ('46', 'Upload', '上传管理', '1', null, null, '1', '2', '1');
INSERT INTO `dy_node` VALUES ('47', 'index', '附件列表', '1', null, null, '46', '3', '0');

-- ----------------------------
-- Table structure for dy_role
-- ----------------------------
DROP TABLE IF EXISTS `dy_role`;
CREATE TABLE `dy_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) NOT NULL COMMENT '角色名',
  `pid` smallint(6) DEFAULT NULL COMMENT 'pid',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '是否启用',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of dy_role
-- ----------------------------
INSERT INTO `dy_role` VALUES ('2', 'test', '0', '1', '测试组', '0', '0');
INSERT INTO `dy_role` VALUES ('1', 'admin', '0', '1', '管理组', '0', '0');

-- ----------------------------
-- Table structure for dy_role_user
-- ----------------------------
DROP TABLE IF EXISTS `dy_role_user`;
CREATE TABLE `dy_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL COMMENT '角色id',
  `user_id` char(32) DEFAULT NULL COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色用户表';

-- ----------------------------
-- Records of dy_role_user
-- ----------------------------
INSERT INTO `dy_role_user` VALUES ('1', '1');
INSERT INTO `dy_role_user` VALUES ('2', '1');
INSERT INTO `dy_role_user` VALUES ('2', '2');

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
INSERT INTO `dy_survey` VALUES ('1', '1', '167', '0', '');
INSERT INTO `dy_survey` VALUES ('2', '1', '539', '0', '');
INSERT INTO `dy_survey` VALUES ('3', '1', '540', '0', '');
INSERT INTO `dy_survey` VALUES ('4', '1', '541', '0', '');
INSERT INTO `dy_survey` VALUES ('5', '1', '5574', '0', '');
INSERT INTO `dy_survey` VALUES ('6', '1', '6352', '0', '');
INSERT INTO `dy_survey` VALUES ('7', '1', '6403', '0', '');
INSERT INTO `dy_survey` VALUES ('8', '1', '6545', '0', '');
INSERT INTO `dy_survey` VALUES ('9', '1', '6614', '0', '');
INSERT INTO `dy_survey` VALUES ('10', '1', '6848', '0', '');
INSERT INTO `dy_survey` VALUES ('11', '1', '6851', '0', '');
INSERT INTO `dy_survey` VALUES ('12', '1', '6950', '0', '');
INSERT INTO `dy_survey` VALUES ('13', '1', '7165', '0', '');
INSERT INTO `dy_survey` VALUES ('14', '1', '7222', '0', '');
INSERT INTO `dy_survey` VALUES ('15', '1', '7463', '0', '');
INSERT INTO `dy_survey` VALUES ('16', '1', '7471', '0', '');
INSERT INTO `dy_survey` VALUES ('17', '1', '7615', '0', '');
INSERT INTO `dy_survey` VALUES ('18', '1', '8102', '0', '');
INSERT INTO `dy_survey` VALUES ('19', '1', '8447', '0', '');
INSERT INTO `dy_survey` VALUES ('20', '1', '8838', '0', '');
INSERT INTO `dy_survey` VALUES ('21', '1', '8968', '0', '');
INSERT INTO `dy_survey` VALUES ('22', '1', '9119', '0', '');
INSERT INTO `dy_survey` VALUES ('23', '1', '9530', '0', '');
INSERT INTO `dy_survey` VALUES ('24', '1', '9567', '0', '');
INSERT INTO `dy_survey` VALUES ('25', '1', '9707', '0', '');
INSERT INTO `dy_survey` VALUES ('26', '1', '10486', '0', '');
INSERT INTO `dy_survey` VALUES ('27', '1', '10523', '0', '');
INSERT INTO `dy_survey` VALUES ('28', '1', '10557', '0', '');
INSERT INTO `dy_survey` VALUES ('29', '1', '10949', '0', '');
INSERT INTO `dy_survey` VALUES ('30', '1', '10967', '0', '');
INSERT INTO `dy_survey` VALUES ('31', '1', '10987', '0', '');
INSERT INTO `dy_survey` VALUES ('32', '1', '10992', '0', '');
INSERT INTO `dy_survey` VALUES ('33', '1', '11101', '0', '');
INSERT INTO `dy_survey` VALUES ('34', '1', '11291', '0', '');
INSERT INTO `dy_survey` VALUES ('35', '1', '11703', '0', '');
INSERT INTO `dy_survey` VALUES ('36', '1', '12722', '0', '');
INSERT INTO `dy_survey` VALUES ('37', '1', '15210', '0', '');
INSERT INTO `dy_survey` VALUES ('38', '1', '15852', '0', '');
INSERT INTO `dy_survey` VALUES ('39', '1', '16338', '0', '');
INSERT INTO `dy_survey` VALUES ('40', '1', '21982', '0', '');
INSERT INTO `dy_survey` VALUES ('41', '1', '22061', '0', '');
INSERT INTO `dy_survey` VALUES ('42', '1', '22240', '0', '');
INSERT INTO `dy_survey` VALUES ('43', '1', '22564', '0', '');
INSERT INTO `dy_survey` VALUES ('44', '1', '22966', '0', '');
INSERT INTO `dy_survey` VALUES ('45', '1', '23208', '0', '');
INSERT INTO `dy_survey` VALUES ('46', '1', '23546', '0', '');
INSERT INTO `dy_survey` VALUES ('47', '1', '24115', '0', '');
INSERT INTO `dy_survey` VALUES ('48', '1', '24357', '0', '');
INSERT INTO `dy_survey` VALUES ('49', '1', '24394', '0', '');
INSERT INTO `dy_survey` VALUES ('50', '1', '24461', '0', '');
INSERT INTO `dy_survey` VALUES ('51', '1', '24487', '0', '');
INSERT INTO `dy_survey` VALUES ('52', '1', '24525', '0', '');
INSERT INTO `dy_survey` VALUES ('53', '1', '24610', '0', '');
INSERT INTO `dy_survey` VALUES ('54', '1', '24695', '0', '');
INSERT INTO `dy_survey` VALUES ('55', '1', '25894', '0', '');
INSERT INTO `dy_survey` VALUES ('56', '1', '27248', '0', '');
INSERT INTO `dy_survey` VALUES ('57', '1', '27672', '0', '');
INSERT INTO `dy_survey` VALUES ('58', '1', '28069', '0', '');
INSERT INTO `dy_survey` VALUES ('59', '1', '28205', '0', '');
INSERT INTO `dy_survey` VALUES ('60', '1', '29271', '0', '');
INSERT INTO `dy_survey` VALUES ('61', '1', '29901', '0', '');
INSERT INTO `dy_survey` VALUES ('62', '1', '30068', '0', '');
INSERT INTO `dy_survey` VALUES ('63', '1', '33881', '0', '');
INSERT INTO `dy_survey` VALUES ('64', '1', '34438', '0', '');
INSERT INTO `dy_survey` VALUES ('65', '1', '34687', '0', '');
INSERT INTO `dy_survey` VALUES ('66', '1', '38214', '0', '');
INSERT INTO `dy_survey` VALUES ('67', '1', '38596', '0', '');
INSERT INTO `dy_survey` VALUES ('68', '1', '38613', '0', '');
INSERT INTO `dy_survey` VALUES ('69', '1', '38673', '0', '');
INSERT INTO `dy_survey` VALUES ('70', '1', '39987', '0', '');
INSERT INTO `dy_survey` VALUES ('71', '1', '40025', '0', '');
INSERT INTO `dy_survey` VALUES ('72', '1', '40356', '0', '');
INSERT INTO `dy_survey` VALUES ('73', '1', '40499', '0', '');
INSERT INTO `dy_survey` VALUES ('74', '1', '40686', '0', '');
INSERT INTO `dy_survey` VALUES ('75', '1', '40831', '0', '');
INSERT INTO `dy_survey` VALUES ('76', '1', '41349', '0', '');
INSERT INTO `dy_survey` VALUES ('77', '1', '41668', '0', '');
INSERT INTO `dy_survey` VALUES ('78', '1', '41786', '0', '');
INSERT INTO `dy_survey` VALUES ('79', '1', '41839', '0', '');
INSERT INTO `dy_survey` VALUES ('80', '1', '41890', '0', '');
INSERT INTO `dy_survey` VALUES ('81', '1', '41941', '0', '');
INSERT INTO `dy_survey` VALUES ('82', '1', '41986', '0', '');
INSERT INTO `dy_survey` VALUES ('83', '1', '43104', '0', '');
INSERT INTO `dy_survey` VALUES ('84', '1', '43155', '0', '');
INSERT INTO `dy_survey` VALUES ('85', '1', '43205', '0', '');
INSERT INTO `dy_survey` VALUES ('86', '1', '43258', '0', '');
INSERT INTO `dy_survey` VALUES ('87', '1', '43315', '0', '');
INSERT INTO `dy_survey` VALUES ('88', '1', '43350', '0', '');
INSERT INTO `dy_survey` VALUES ('89', '1', '44454', '0', '');
INSERT INTO `dy_survey` VALUES ('90', '1', '44507', '0', '');
INSERT INTO `dy_survey` VALUES ('91', '1', '44566', '0', '');
INSERT INTO `dy_survey` VALUES ('92', '1', '44617', '0', '');
INSERT INTO `dy_survey` VALUES ('93', '1', '45063', '0', '');
INSERT INTO `dy_survey` VALUES ('94', '1', '45307', '0', '');
INSERT INTO `dy_survey` VALUES ('95', '1', '45805', '0', '');
INSERT INTO `dy_survey` VALUES ('96', '1', '47900', '0', '');
INSERT INTO `dy_survey` VALUES ('97', '1', '49203', '0', '');
INSERT INTO `dy_survey` VALUES ('98', '1', '49735', '0', '');
INSERT INTO `dy_survey` VALUES ('99', '1', '50859', '0', '');
INSERT INTO `dy_survey` VALUES ('100', '1', '52466', '0', '');
INSERT INTO `dy_survey` VALUES ('101', '1', '52467', '0', '');
INSERT INTO `dy_survey` VALUES ('102', '1', '52838', '0', '');
INSERT INTO `dy_survey` VALUES ('103', '1', '52889', '0', '');
INSERT INTO `dy_survey` VALUES ('104', '1', '53196', '0', '');
INSERT INTO `dy_survey` VALUES ('105', '1', '53297', '0', '');
INSERT INTO `dy_survey` VALUES ('106', '1', '53748', '0', '');
INSERT INTO `dy_survey` VALUES ('107', '1', '53808', '0', '');
INSERT INTO `dy_survey` VALUES ('108', '1', '54089', '0', '');
INSERT INTO `dy_survey` VALUES ('109', '1', '54287', '0', '');
INSERT INTO `dy_survey` VALUES ('110', '1', '55098', '0', '');
INSERT INTO `dy_survey` VALUES ('111', '1', '55456', '0', '');
INSERT INTO `dy_survey` VALUES ('112', '1', '55502', '0', '');
INSERT INTO `dy_survey` VALUES ('113', '1', '55552', '0', '');
INSERT INTO `dy_survey` VALUES ('114', '1', '56024', '0', '');
INSERT INTO `dy_survey` VALUES ('115', '1', '56025', '0', '');
INSERT INTO `dy_survey` VALUES ('116', '1', '56520', '0', '');
INSERT INTO `dy_survey` VALUES ('117', '1', '57078', '0', '');
INSERT INTO `dy_survey` VALUES ('118', '1', '57985', '0', '');
INSERT INTO `dy_survey` VALUES ('119', '1', '58898', '0', '');
INSERT INTO `dy_survey` VALUES ('120', '1', '58900', '0', '');
INSERT INTO `dy_survey` VALUES ('121', '1', '58933', '0', '');
INSERT INTO `dy_survey` VALUES ('122', '1', '58934', '0', '');
INSERT INTO `dy_survey` VALUES ('123', '1', '59201', '0', '');
INSERT INTO `dy_survey` VALUES ('124', '1', '59434', '0', '');
INSERT INTO `dy_survey` VALUES ('125', '1', '61228', '0', '');
INSERT INTO `dy_survey` VALUES ('126', '1', '61554', '0', '');
INSERT INTO `dy_survey` VALUES ('127', '1', '61691', '0', '');
INSERT INTO `dy_survey` VALUES ('128', '1', '63066', '0', '');
INSERT INTO `dy_survey` VALUES ('129', '1', '65438', '0', '');
INSERT INTO `dy_survey` VALUES ('130', '1', '65643', '0', '');
INSERT INTO `dy_survey` VALUES ('131', '1', '65845', '0', '');
INSERT INTO `dy_survey` VALUES ('132', '1', '66703', '0', '');
INSERT INTO `dy_survey` VALUES ('133', '1', '67188', '0', '');
INSERT INTO `dy_survey` VALUES ('134', '1', '67396', '0', '');
INSERT INTO `dy_survey` VALUES ('135', '1', '67913', '0', '');
INSERT INTO `dy_survey` VALUES ('136', '1', '68390', '0', '');
INSERT INTO `dy_survey` VALUES ('137', '1', '68440', '0', '');
INSERT INTO `dy_survey` VALUES ('138', '1', '68694', '0', '');
INSERT INTO `dy_survey` VALUES ('139', '1', '68734', '0', '');
INSERT INTO `dy_survey` VALUES ('140', '1', '68906', '0', '');
INSERT INTO `dy_survey` VALUES ('141', '1', '69041', '0', '');
INSERT INTO `dy_survey` VALUES ('142', '1', '69338', '0', '');
INSERT INTO `dy_survey` VALUES ('143', '1', '69642', '0', '');
INSERT INTO `dy_survey` VALUES ('144', '1', '69954', '0', '');
INSERT INTO `dy_survey` VALUES ('145', '1', '70401', '0', '');
INSERT INTO `dy_survey` VALUES ('146', '1', '70609', '0', '');
INSERT INTO `dy_survey` VALUES ('147', '1', '71503', '0', '');
INSERT INTO `dy_survey` VALUES ('148', '1', '71641', '0', '');
INSERT INTO `dy_survey` VALUES ('149', '1', '71798', '0', '');
INSERT INTO `dy_survey` VALUES ('150', '1', '72057', '0', '');
INSERT INTO `dy_survey` VALUES ('151', '1', '72080', '0', '');
INSERT INTO `dy_survey` VALUES ('152', '1', '72129', '0', '');
INSERT INTO `dy_survey` VALUES ('153', '1', '72387', '0', '');
INSERT INTO `dy_survey` VALUES ('154', '1', '72583', '0', '');
INSERT INTO `dy_survey` VALUES ('155', '1', '72616', '0', '');
INSERT INTO `dy_survey` VALUES ('156', '1', '72724', '0', '');
INSERT INTO `dy_survey` VALUES ('157', '1', '72745', '0', '');
INSERT INTO `dy_survey` VALUES ('158', '1', '73234', '0', '');
INSERT INTO `dy_survey` VALUES ('159', '1', '73568', '0', '');
INSERT INTO `dy_survey` VALUES ('160', '1', '73769', '0', '');
INSERT INTO `dy_survey` VALUES ('161', '1', '73994', '0', '');
INSERT INTO `dy_survey` VALUES ('162', '1', '74061', '0', '');
INSERT INTO `dy_survey` VALUES ('163', '1', '74224', '0', '');
INSERT INTO `dy_survey` VALUES ('164', '1', '74478', '0', '');
INSERT INTO `dy_survey` VALUES ('165', '1', '75025', '0', '');
INSERT INTO `dy_survey` VALUES ('166', '1', '75075', '0', '');
INSERT INTO `dy_survey` VALUES ('167', '1', '75289', '0', '');
INSERT INTO `dy_survey` VALUES ('168', '1', '75350', '0', '');
INSERT INTO `dy_survey` VALUES ('169', '1', '75609', '0', '');
INSERT INTO `dy_survey` VALUES ('170', '1', '75820', '0', '');
INSERT INTO `dy_survey` VALUES ('171', '1', '76119', '0', '');
INSERT INTO `dy_survey` VALUES ('172', '1', '76172', '0', '');
INSERT INTO `dy_survey` VALUES ('173', '1', '76957', '0', '');
INSERT INTO `dy_survey` VALUES ('174', '1', '76977', '0', '');
INSERT INTO `dy_survey` VALUES ('175', '1', '76985', '0', '');
INSERT INTO `dy_survey` VALUES ('176', '1', '77002', '0', '');
INSERT INTO `dy_survey` VALUES ('177', '1', '77068', '0', '');
INSERT INTO `dy_survey` VALUES ('178', '1', '77106', '0', '');
INSERT INTO `dy_survey` VALUES ('179', '1', '77108', '0', '');
INSERT INTO `dy_survey` VALUES ('180', '1', '77112', '0', '');
INSERT INTO `dy_survey` VALUES ('181', '1', '77115', '0', '');
INSERT INTO `dy_survey` VALUES ('182', '1', '77129', '0', '');
INSERT INTO `dy_survey` VALUES ('183', '1', '77193', '0', '');
INSERT INTO `dy_survey` VALUES ('184', '1', '77204', '0', '');
INSERT INTO `dy_survey` VALUES ('185', '1', '77205', '0', '');
INSERT INTO `dy_survey` VALUES ('186', '1', '77436', '0', '');
INSERT INTO `dy_survey` VALUES ('187', '1', '77446', '0', '');
INSERT INTO `dy_survey` VALUES ('188', '1', '79089', '0', '');
INSERT INTO `dy_survey` VALUES ('189', '1', '79943', '0', '');
INSERT INTO `dy_survey` VALUES ('190', '1', '81276', '0', '');
INSERT INTO `dy_survey` VALUES ('191', '1', '81629', '0', '');
INSERT INTO `dy_survey` VALUES ('192', '1', '81668', '0', '');
INSERT INTO `dy_survey` VALUES ('193', '1', '81670', '0', '');
INSERT INTO `dy_survey` VALUES ('194', '1', '81671', '0', '');
INSERT INTO `dy_survey` VALUES ('195', '1', '81700', '0', '');
INSERT INTO `dy_survey` VALUES ('196', '1', '81748', '0', '');
INSERT INTO `dy_survey` VALUES ('197', '1', '81979', '0', '');
INSERT INTO `dy_survey` VALUES ('198', '1', '82058', '0', '');
INSERT INTO `dy_survey` VALUES ('199', '1', '82074', '0', '');
INSERT INTO `dy_survey` VALUES ('200', '1', '82076', '0', '');
INSERT INTO `dy_survey` VALUES ('201', '1', '83361', '0', '');
INSERT INTO `dy_survey` VALUES ('202', '1', '83773', '0', '');
INSERT INTO `dy_survey` VALUES ('203', '1', '84342', '0', '');
INSERT INTO `dy_survey` VALUES ('204', '1', '84474', '0', '');
INSERT INTO `dy_survey` VALUES ('205', '1', '85709', '0', '');
INSERT INTO `dy_survey` VALUES ('206', '1', '85976', '0', '');
INSERT INTO `dy_survey` VALUES ('207', '1', '86021', '0', '');
INSERT INTO `dy_survey` VALUES ('208', '1', '86023', '0', '');
INSERT INTO `dy_survey` VALUES ('209', '1', '86028', '0', '');
INSERT INTO `dy_survey` VALUES ('210', '1', '86047', '0', '');
INSERT INTO `dy_survey` VALUES ('211', '1', '86268', '0', '');
INSERT INTO `dy_survey` VALUES ('212', '1', '86389', '0', '');
INSERT INTO `dy_survey` VALUES ('213', '1', '86392', '0', '');
INSERT INTO `dy_survey` VALUES ('214', '1', '86405', '0', '');
INSERT INTO `dy_survey` VALUES ('215', '1', '86408', '0', '');
INSERT INTO `dy_survey` VALUES ('216', '1', '86919', '0', '');
INSERT INTO `dy_survey` VALUES ('217', '1', '87299', '0', '');
INSERT INTO `dy_survey` VALUES ('218', '1', '87515', '0', '');
INSERT INTO `dy_survey` VALUES ('219', '1', '87701', '0', '');
INSERT INTO `dy_survey` VALUES ('220', '1', '88283', '0', '');
INSERT INTO `dy_survey` VALUES ('221', '1', '88437', '0', '');
INSERT INTO `dy_survey` VALUES ('222', '1', '88484', '0', '');
INSERT INTO `dy_survey` VALUES ('223', '1', '88562', '0', '');
INSERT INTO `dy_survey` VALUES ('224', '1', '89305', '0', '');
INSERT INTO `dy_survey` VALUES ('225', '1', '89648', '0', '');
INSERT INTO `dy_survey` VALUES ('226', '1', '89773', '0', '');
INSERT INTO `dy_survey` VALUES ('227', '1', '89808', '0', '');
INSERT INTO `dy_survey` VALUES ('228', '1', '90276', '0', '');
INSERT INTO `dy_survey` VALUES ('229', '1', '91348', '0', '');
INSERT INTO `dy_survey` VALUES ('230', '1', '91657', '0', '');
INSERT INTO `dy_survey` VALUES ('231', '1', '91660', '0', '');
INSERT INTO `dy_survey` VALUES ('232', '1', '92395', '0', '');
INSERT INTO `dy_survey` VALUES ('233', '1', '92529', '0', '');
INSERT INTO `dy_survey` VALUES ('234', '1', '93535', '0', '');
INSERT INTO `dy_survey` VALUES ('235', '1', '93715', '0', '');
INSERT INTO `dy_survey` VALUES ('236', '1', '93945', '0', '');
INSERT INTO `dy_survey` VALUES ('237', '1', '94356', '0', '');
INSERT INTO `dy_survey` VALUES ('238', '1', '94445', '0', '');
INSERT INTO `dy_survey` VALUES ('239', '1', '95625', '0', '');
INSERT INTO `dy_survey` VALUES ('240', '1', '95640', '0', '');
INSERT INTO `dy_survey` VALUES ('241', '1', '96218', '0', '');
INSERT INTO `dy_survey` VALUES ('242', '1', '96311', '0', '');
INSERT INTO `dy_survey` VALUES ('243', '1', '96415', '0', '');
INSERT INTO `dy_survey` VALUES ('244', '1', '96420', '0', '');
INSERT INTO `dy_survey` VALUES ('245', '1', '96535', '0', '');
INSERT INTO `dy_survey` VALUES ('246', '1', '96695', '0', '');
INSERT INTO `dy_survey` VALUES ('247', '1', '97674', '0', '');
INSERT INTO `dy_survey` VALUES ('248', '1', '97757', '0', '');
INSERT INTO `dy_survey` VALUES ('249', '1', '97879', '0', '');
INSERT INTO `dy_survey` VALUES ('250', '1', '97944', '0', '');
INSERT INTO `dy_survey` VALUES ('251', '1', '97947', '0', '');
INSERT INTO `dy_survey` VALUES ('252', '1', '98054', '0', '');
INSERT INTO `dy_survey` VALUES ('253', '1', '98110', '0', '');
INSERT INTO `dy_survey` VALUES ('254', '1', '98135', '0', '');
INSERT INTO `dy_survey` VALUES ('255', '1', '98592', '0', '');
INSERT INTO `dy_survey` VALUES ('256', '1', '99364', '0', '');
INSERT INTO `dy_survey` VALUES ('257', '1', '99495', '0', '');
INSERT INTO `dy_survey` VALUES ('258', '1', '99744', '0', '');
INSERT INTO `dy_survey` VALUES ('259', '1', '99823', '0', '');
INSERT INTO `dy_survey` VALUES ('260', '1', '99825', '0', '');
INSERT INTO `dy_survey` VALUES ('261', '1', '99883', '0', '');
INSERT INTO `dy_survey` VALUES ('262', '1', '100109', '0', '');
INSERT INTO `dy_survey` VALUES ('263', '1', '100299', '0', '');
INSERT INTO `dy_survey` VALUES ('264', '1', '100774', '0', '');
INSERT INTO `dy_survey` VALUES ('265', '1', '101019', '0', '');
INSERT INTO `dy_survey` VALUES ('266', '1', '101727', '0', '');
INSERT INTO `dy_survey` VALUES ('267', '1', '102345', '0', '');
INSERT INTO `dy_survey` VALUES ('268', '1', '103105', '0', '');
INSERT INTO `dy_survey` VALUES ('269', '1', '103426', '0', '');
INSERT INTO `dy_survey` VALUES ('270', '1', '103586', '0', '');
INSERT INTO `dy_survey` VALUES ('271', '1', '103970', '0', '');
INSERT INTO `dy_survey` VALUES ('272', '1', '104048', '0', '');
INSERT INTO `dy_survey` VALUES ('273', '1', '104417', '0', '');
INSERT INTO `dy_survey` VALUES ('274', '1', '104734', '0', '');
INSERT INTO `dy_survey` VALUES ('275', '1', '105110', '0', '');
INSERT INTO `dy_survey` VALUES ('276', '1', '105183', '0', '');
INSERT INTO `dy_survey` VALUES ('277', '1', '105226', '0', '');
INSERT INTO `dy_survey` VALUES ('278', '1', '105336', '0', '');
INSERT INTO `dy_survey` VALUES ('279', '1', '105449', '0', '');
INSERT INTO `dy_survey` VALUES ('280', '1', '105574', '0', '');
INSERT INTO `dy_survey` VALUES ('281', '1', '106020', '0', '');
INSERT INTO `dy_survey` VALUES ('282', '1', '106126', '0', '');
INSERT INTO `dy_survey` VALUES ('283', '1', '106134', '0', '');
INSERT INTO `dy_survey` VALUES ('284', '1', '106191', '0', '');
INSERT INTO `dy_survey` VALUES ('285', '1', '106264', '0', '');
INSERT INTO `dy_survey` VALUES ('286', '1', '106343', '0', '');
INSERT INTO `dy_survey` VALUES ('287', '1', '106421', '0', '');
INSERT INTO `dy_survey` VALUES ('288', '1', '106705', '0', '');
INSERT INTO `dy_survey` VALUES ('289', '1', '106848', '0', '');
INSERT INTO `dy_survey` VALUES ('290', '1', '106913', '0', '');
INSERT INTO `dy_survey` VALUES ('291', '1', '106981', '0', '');
INSERT INTO `dy_survey` VALUES ('292', '1', '106992', '0', '');
INSERT INTO `dy_survey` VALUES ('293', '1', '107052', '0', '');
INSERT INTO `dy_survey` VALUES ('294', '1', '107645', '0', '');
INSERT INTO `dy_survey` VALUES ('295', '1', '107747', '0', '');
INSERT INTO `dy_survey` VALUES ('296', '1', '107756', '0', '');
INSERT INTO `dy_survey` VALUES ('297', '1', '107768', '0', '');
INSERT INTO `dy_survey` VALUES ('298', '1', '107856', '0', '');
INSERT INTO `dy_survey` VALUES ('299', '1', '107930', '0', '');
INSERT INTO `dy_survey` VALUES ('300', '1', '107974', '0', '');
INSERT INTO `dy_survey` VALUES ('301', '1', '108020', '0', '');
INSERT INTO `dy_survey` VALUES ('302', '1', '108050', '0', '');
INSERT INTO `dy_survey` VALUES ('303', '1', '108119', '0', '');
INSERT INTO `dy_survey` VALUES ('304', '1', '108141', '0', '');
INSERT INTO `dy_survey` VALUES ('305', '1', '108214', '0', '');
INSERT INTO `dy_survey` VALUES ('306', '1', '108298', '0', '');
INSERT INTO `dy_survey` VALUES ('307', '1', '108409', '0', '');
INSERT INTO `dy_survey` VALUES ('308', '1', '108424', '0', '');
INSERT INTO `dy_survey` VALUES ('309', '1', '108446', '0', '');
INSERT INTO `dy_survey` VALUES ('310', '1', '108486', '0', '');
INSERT INTO `dy_survey` VALUES ('311', '1', '108502', '0', '');
INSERT INTO `dy_survey` VALUES ('312', '1', '108546', '0', '');
INSERT INTO `dy_survey` VALUES ('313', '1', '108553', '0', '');
INSERT INTO `dy_survey` VALUES ('314', '1', '108595', '0', '');
INSERT INTO `dy_survey` VALUES ('315', '1', '108601', '0', '');
INSERT INTO `dy_survey` VALUES ('316', '1', '108612', '0', '');
INSERT INTO `dy_survey` VALUES ('317', '1', '108614', '0', '');
INSERT INTO `dy_survey` VALUES ('318', '1', '108648', '0', '');
INSERT INTO `dy_survey` VALUES ('319', '1', '108649', '0', '');
INSERT INTO `dy_survey` VALUES ('320', '1', '108665', '0', '');
INSERT INTO `dy_survey` VALUES ('321', '1', '108694', '0', '');
INSERT INTO `dy_survey` VALUES ('322', '1', '108754', '0', '');
INSERT INTO `dy_survey` VALUES ('323', '1', '108756', '0', '');
INSERT INTO `dy_survey` VALUES ('324', '1', '108782', '0', '');
INSERT INTO `dy_survey` VALUES ('325', '1', '108792', '0', '');
INSERT INTO `dy_survey` VALUES ('326', '1', '108793', '0', '');
INSERT INTO `dy_survey` VALUES ('327', '1', '109005', '0', '');
INSERT INTO `dy_survey` VALUES ('328', '1', '109075', '0', '');
INSERT INTO `dy_survey` VALUES ('329', '1', '109115', '0', '');
INSERT INTO `dy_survey` VALUES ('330', '1', '109163', '0', '');
INSERT INTO `dy_survey` VALUES ('331', '1', '109285', '0', '');
INSERT INTO `dy_survey` VALUES ('332', '1', '109358', '0', '');
INSERT INTO `dy_survey` VALUES ('333', '1', '109787', '0', '');
INSERT INTO `dy_survey` VALUES ('334', '1', '109857', '0', '');
INSERT INTO `dy_survey` VALUES ('335', '1', '109905', '0', '');
INSERT INTO `dy_survey` VALUES ('336', '1', '109958', '0', '');
INSERT INTO `dy_survey` VALUES ('337', '1', '110004', '0', '');
INSERT INTO `dy_survey` VALUES ('338', '1', '110050', '0', '');
INSERT INTO `dy_survey` VALUES ('339', '1', '110263', '0', '');
INSERT INTO `dy_survey` VALUES ('340', '1', '110277', '0', '');
INSERT INTO `dy_survey` VALUES ('341', '1', '110536', '0', '');
INSERT INTO `dy_survey` VALUES ('342', '1', '110755', '0', '');
INSERT INTO `dy_survey` VALUES ('343', '1', '110868', '0', '');
INSERT INTO `dy_survey` VALUES ('344', '1', '110933', '0', '');
INSERT INTO `dy_survey` VALUES ('345', '1', '111107', '0', '');
INSERT INTO `dy_survey` VALUES ('346', '1', '111108', '0', '');
INSERT INTO `dy_survey` VALUES ('347', '1', '111269', '0', '');
INSERT INTO `dy_survey` VALUES ('348', '1', '111310', '0', '');
INSERT INTO `dy_survey` VALUES ('349', '1', '111386', '0', '');
INSERT INTO `dy_survey` VALUES ('350', '1', '111878', '0', '');
INSERT INTO `dy_survey` VALUES ('351', '1', '111949', '0', '');
INSERT INTO `dy_survey` VALUES ('352', '1', '111960', '0', '');
INSERT INTO `dy_survey` VALUES ('353', '1', '112031', '0', '');
INSERT INTO `dy_survey` VALUES ('354', '1', '112181', '0', '');
INSERT INTO `dy_survey` VALUES ('355', '1', '112202', '0', '');
INSERT INTO `dy_survey` VALUES ('356', '1', '112727', '0', '');
INSERT INTO `dy_survey` VALUES ('357', '1', '112728', '0', '');
INSERT INTO `dy_survey` VALUES ('358', '1', '112761', '0', '');
INSERT INTO `dy_survey` VALUES ('359', '1', '112773', '0', '');
INSERT INTO `dy_survey` VALUES ('360', '1', '112779', '0', '');
INSERT INTO `dy_survey` VALUES ('361', '1', '112812', '0', '');
INSERT INTO `dy_survey` VALUES ('362', '1', '112859', '0', '');
INSERT INTO `dy_survey` VALUES ('363', '1', '112885', '0', '');
INSERT INTO `dy_survey` VALUES ('364', '1', '113081', '0', '');
INSERT INTO `dy_survey` VALUES ('365', '1', '113203', '0', '');
INSERT INTO `dy_survey` VALUES ('366', '1', '113353', '0', '');
INSERT INTO `dy_survey` VALUES ('367', '1', '113506', '0', '');
INSERT INTO `dy_survey` VALUES ('368', '1', '113558', '0', '');
INSERT INTO `dy_survey` VALUES ('369', '1', '113567', '0', '');
INSERT INTO `dy_survey` VALUES ('370', '1', '114151', '0', '');
INSERT INTO `dy_survey` VALUES ('371', '1', '114832', '0', '');
INSERT INTO `dy_survey` VALUES ('372', '1', '115738', '0', '');
INSERT INTO `dy_survey` VALUES ('373', '1', '116232', '0', '');
INSERT INTO `dy_survey` VALUES ('374', '1', '116543', '0', '');
INSERT INTO `dy_survey` VALUES ('375', '1', '116714', '0', '');
INSERT INTO `dy_survey` VALUES ('376', '1', '117222', '0', '');
INSERT INTO `dy_survey` VALUES ('377', '1', '117391', '0', '');
INSERT INTO `dy_survey` VALUES ('378', '1', '117392', '0', '');
INSERT INTO `dy_survey` VALUES ('379', '1', '117393', '0', '');
INSERT INTO `dy_survey` VALUES ('380', '1', '117395', '0', '');
INSERT INTO `dy_survey` VALUES ('381', '1', '117396', '0', '');
INSERT INTO `dy_survey` VALUES ('382', '1', '117397', '0', '');
INSERT INTO `dy_survey` VALUES ('383', '1', '117398', '0', '');
INSERT INTO `dy_survey` VALUES ('384', '1', '117399', '0', '');
INSERT INTO `dy_survey` VALUES ('385', '1', '117400', '0', '');
INSERT INTO `dy_survey` VALUES ('386', '1', '117402', '0', '');
INSERT INTO `dy_survey` VALUES ('387', '1', '117405', '0', '');
INSERT INTO `dy_survey` VALUES ('388', '1', '117407', '0', '');
INSERT INTO `dy_survey` VALUES ('389', '1', '117408', '0', '');
INSERT INTO `dy_survey` VALUES ('390', '1', '117409', '0', '');
INSERT INTO `dy_survey` VALUES ('391', '1', '117410', '0', '');
INSERT INTO `dy_survey` VALUES ('392', '1', '117412', '0', '');
INSERT INTO `dy_survey` VALUES ('393', '1', '117427', '0', '');
INSERT INTO `dy_survey` VALUES ('394', '1', '117439', '0', '');
INSERT INTO `dy_survey` VALUES ('395', '1', '117449', '0', '');
INSERT INTO `dy_survey` VALUES ('396', '1', '117458', '0', '');
INSERT INTO `dy_survey` VALUES ('397', '1', '117992', '0', '');
INSERT INTO `dy_survey` VALUES ('398', '1', '118028', '0', '');
INSERT INTO `dy_survey` VALUES ('399', '1', '0', '0', '');
INSERT INTO `dy_survey` VALUES ('400', '1', '118402', '0', '');
INSERT INTO `dy_survey` VALUES ('401', '1', '118555', '0', '');
INSERT INTO `dy_survey` VALUES ('402', '1', '118843', '0', '');
INSERT INTO `dy_survey` VALUES ('403', '1', '119096', '0', '');
INSERT INTO `dy_survey` VALUES ('404', '1', '119142', '0', '');
INSERT INTO `dy_survey` VALUES ('405', '1', '119154', '0', '');
INSERT INTO `dy_survey` VALUES ('406', '1', '119261', '0', '');
INSERT INTO `dy_survey` VALUES ('407', '1', '119300', '0', '');
INSERT INTO `dy_survey` VALUES ('408', '1', '119390', '0', '');
INSERT INTO `dy_survey` VALUES ('409', '1', '119713', '0', '');
INSERT INTO `dy_survey` VALUES ('410', '1', '119772', '0', '');
INSERT INTO `dy_survey` VALUES ('411', '1', '119779', '0', '');
INSERT INTO `dy_survey` VALUES ('412', '1', '119780', '0', '');
INSERT INTO `dy_survey` VALUES ('413', '1', '119797', '0', '');
INSERT INTO `dy_survey` VALUES ('414', '1', '120102', '0', '');
INSERT INTO `dy_survey` VALUES ('415', '1', '120143', '0', '');
INSERT INTO `dy_survey` VALUES ('416', '1', '120710', '0', '');
INSERT INTO `dy_survey` VALUES ('417', '1', '120769', '0', '');
INSERT INTO `dy_survey` VALUES ('418', '1', '121133', '0', '');
INSERT INTO `dy_survey` VALUES ('419', '1', '121229', '0', '');
INSERT INTO `dy_survey` VALUES ('420', '1', '122144', '0', '');
INSERT INTO `dy_survey` VALUES ('421', '1', '122513', '0', '');
INSERT INTO `dy_survey` VALUES ('422', '1', '122516', '0', '');
INSERT INTO `dy_survey` VALUES ('423', '1', '122661', '0', '');
INSERT INTO `dy_survey` VALUES ('424', '1', '123180', '0', '');
INSERT INTO `dy_survey` VALUES ('425', '1', '123740', '0', '');
INSERT INTO `dy_survey` VALUES ('426', '1', '123783', '0', '');
INSERT INTO `dy_survey` VALUES ('427', '1', '124474', '0', '');
INSERT INTO `dy_survey` VALUES ('428', '1', '125378', '0', '');
INSERT INTO `dy_survey` VALUES ('429', '1', '125441', '0', '');
INSERT INTO `dy_survey` VALUES ('430', '1', '125704', '0', '');
INSERT INTO `dy_survey` VALUES ('431', '1', '126857', '0', '');
INSERT INTO `dy_survey` VALUES ('432', '1', '126920', '0', '');
INSERT INTO `dy_survey` VALUES ('433', '1', '126975', '0', '');
INSERT INTO `dy_survey` VALUES ('434', '1', '127946', '0', '');
INSERT INTO `dy_survey` VALUES ('435', '1', '128605', '0', '');
INSERT INTO `dy_survey` VALUES ('436', '1', '128700', '0', '');
INSERT INTO `dy_survey` VALUES ('437', '1', '129417', '0', '');
INSERT INTO `dy_survey` VALUES ('438', '1', '129668', '0', '');
INSERT INTO `dy_survey` VALUES ('439', '1', '129670', '0', '');
INSERT INTO `dy_survey` VALUES ('440', '1', '130105', '0', '');
INSERT INTO `dy_survey` VALUES ('441', '1', '130661', '0', '');
INSERT INTO `dy_survey` VALUES ('442', '1', '130662', '0', '');
INSERT INTO `dy_survey` VALUES ('443', '1', '130825', '0', '');
INSERT INTO `dy_survey` VALUES ('444', '1', '131254', '0', '');
INSERT INTO `dy_survey` VALUES ('445', '1', '131388', '0', '');
INSERT INTO `dy_survey` VALUES ('446', '1', '131971', '0', '');
INSERT INTO `dy_survey` VALUES ('447', '1', '131972', '0', '');
INSERT INTO `dy_survey` VALUES ('448', '1', '132117', '0', '');
INSERT INTO `dy_survey` VALUES ('449', '1', '132415', '0', '');
INSERT INTO `dy_survey` VALUES ('450', '1', '133084', '0', '');
INSERT INTO `dy_survey` VALUES ('451', '1', '133085', '0', '');
INSERT INTO `dy_survey` VALUES ('452', '1', '133281', '0', '');
INSERT INTO `dy_survey` VALUES ('453', '1', '133401', '0', '');
INSERT INTO `dy_survey` VALUES ('454', '1', '134016', '0', '');
INSERT INTO `dy_survey` VALUES ('455', '1', '134107', '0', '');
INSERT INTO `dy_survey` VALUES ('456', '1', '134108', '0', '');
INSERT INTO `dy_survey` VALUES ('457', '1', '134271', '0', '');
INSERT INTO `dy_survey` VALUES ('458', '1', '134288', '0', '');
INSERT INTO `dy_survey` VALUES ('459', '1', '134584', '0', '');
INSERT INTO `dy_survey` VALUES ('460', '1', '134847', '0', '');
INSERT INTO `dy_survey` VALUES ('461', '1', '134848', '0', '');
INSERT INTO `dy_survey` VALUES ('462', '1', '135048', '0', '');
INSERT INTO `dy_survey` VALUES ('463', '1', '135893', '0', '');
INSERT INTO `dy_survey` VALUES ('464', '1', '135894', '0', '');
INSERT INTO `dy_survey` VALUES ('465', '1', '136154', '0', '');
INSERT INTO `dy_survey` VALUES ('466', '1', '136658', '0', '');
INSERT INTO `dy_survey` VALUES ('467', '1', '136731', '0', '');
INSERT INTO `dy_survey` VALUES ('468', '1', '136748', '0', '');
INSERT INTO `dy_survey` VALUES ('469', '1', '137064', '0', '');
INSERT INTO `dy_survey` VALUES ('470', '1', '137077', '1', '');
INSERT INTO `dy_survey` VALUES ('471', '1', '137116', '0', '');
INSERT INTO `dy_survey` VALUES ('472', '1', '137133', '0', '');
INSERT INTO `dy_survey` VALUES ('473', '1', '137616', '0', '');
INSERT INTO `dy_survey` VALUES ('474', '1', '139045', '0', '');
INSERT INTO `dy_survey` VALUES ('475', '1', '139047', '0', '');
INSERT INTO `dy_survey` VALUES ('476', '1', '139166', '0', '');
INSERT INTO `dy_survey` VALUES ('477', '1', '139260', '0', '');
INSERT INTO `dy_survey` VALUES ('478', '1', '139491', '0', '');
INSERT INTO `dy_survey` VALUES ('479', '1', '139716', '0', '');
INSERT INTO `dy_survey` VALUES ('480', '1', '140149', '0', '');
INSERT INTO `dy_survey` VALUES ('481', '1', '140814', '0', '');
INSERT INTO `dy_survey` VALUES ('482', '1', '140880', '0', '');
INSERT INTO `dy_survey` VALUES ('483', '1', '140896', '0', '');
INSERT INTO `dy_survey` VALUES ('484', '1', '141012', '0', '');
INSERT INTO `dy_survey` VALUES ('485', '1', '141051', '0', '');
INSERT INTO `dy_survey` VALUES ('486', '1', '141053', '0', '');
INSERT INTO `dy_survey` VALUES ('487', '1', '142093', '0', '');
INSERT INTO `dy_survey` VALUES ('488', '1', '142842', '0', '');
INSERT INTO `dy_survey` VALUES ('489', '1', '143342', '0', '');
INSERT INTO `dy_survey` VALUES ('490', '1', '143412', '0', '');
INSERT INTO `dy_survey` VALUES ('491', '1', '143514', '0', '');
INSERT INTO `dy_survey` VALUES ('492', '1', '143576', '0', '');
INSERT INTO `dy_survey` VALUES ('493', '1', '143663', '0', '');
INSERT INTO `dy_survey` VALUES ('494', '1', '143720', '0', '');
INSERT INTO `dy_survey` VALUES ('495', '1', '143791', '0', '');
INSERT INTO `dy_survey` VALUES ('496', '1', '143894', '0', '');
INSERT INTO `dy_survey` VALUES ('497', '1', '143954', '0', '');
INSERT INTO `dy_survey` VALUES ('498', '1', '144004', '0', '');
INSERT INTO `dy_survey` VALUES ('499', '1', '144050', '0', '');
INSERT INTO `dy_survey` VALUES ('500', '1', '144163', '0', '');
INSERT INTO `dy_survey` VALUES ('501', '1', '144164', '0', '');
INSERT INTO `dy_survey` VALUES ('502', '1', '144194', '0', '');
INSERT INTO `dy_survey` VALUES ('503', '1', '144239', '0', '');
INSERT INTO `dy_survey` VALUES ('504', '1', '144279', '0', '');
INSERT INTO `dy_survey` VALUES ('505', '1', '144353', '0', '');
INSERT INTO `dy_survey` VALUES ('506', '1', '144415', '0', '');
INSERT INTO `dy_survey` VALUES ('507', '1', '144463', '0', '');
INSERT INTO `dy_survey` VALUES ('508', '1', '144563', '0', '');
INSERT INTO `dy_survey` VALUES ('509', '1', '144640', '0', '');
INSERT INTO `dy_survey` VALUES ('510', '1', '144877', '0', '');
INSERT INTO `dy_survey` VALUES ('511', '1', '144936', '0', '');
INSERT INTO `dy_survey` VALUES ('512', '1', '144946', '0', '');
INSERT INTO `dy_survey` VALUES ('513', '1', '145029', '0', '');
INSERT INTO `dy_survey` VALUES ('514', '1', '145068', '0', '');
INSERT INTO `dy_survey` VALUES ('515', '1', '145113', '0', '');
INSERT INTO `dy_survey` VALUES ('516', '1', '146071', '0', '');
INSERT INTO `dy_survey` VALUES ('517', '1', '146491', '0', '');
INSERT INTO `dy_survey` VALUES ('518', '1', '146663', '0', '');
INSERT INTO `dy_survey` VALUES ('519', '1', '146897', '0', '');
INSERT INTO `dy_survey` VALUES ('520', '1', '146921', '0', '');
INSERT INTO `dy_survey` VALUES ('521', '1', '146941', '0', '');
INSERT INTO `dy_survey` VALUES ('522', '1', '146975', '0', '');
INSERT INTO `dy_survey` VALUES ('523', '1', '147656', '0', '');
INSERT INTO `dy_survey` VALUES ('524', '1', '147773', '0', '');
INSERT INTO `dy_survey` VALUES ('525', '1', '147796', '0', '');
INSERT INTO `dy_survey` VALUES ('526', '1', '147825', '0', '');
INSERT INTO `dy_survey` VALUES ('527', '1', '147850', '0', '');
INSERT INTO `dy_survey` VALUES ('528', '1', '148503', '0', '');
INSERT INTO `dy_survey` VALUES ('529', '1', '149471', '0', '');
INSERT INTO `dy_survey` VALUES ('530', '1', '149683', '0', '');
INSERT INTO `dy_survey` VALUES ('531', '1', '149975', '0', '');
INSERT INTO `dy_survey` VALUES ('532', '1', '150158', '0', '');
INSERT INTO `dy_survey` VALUES ('533', '1', '150165', '0', '');
INSERT INTO `dy_survey` VALUES ('534', '1', '150217', '0', '');
INSERT INTO `dy_survey` VALUES ('535', '1', '150285', '0', '');
INSERT INTO `dy_survey` VALUES ('536', '1', '150287', '0', '');
INSERT INTO `dy_survey` VALUES ('537', '1', '150368', '0', '');
INSERT INTO `dy_survey` VALUES ('538', '1', '150391', '0', '');
INSERT INTO `dy_survey` VALUES ('539', '1', '150765', '0', '');
INSERT INTO `dy_survey` VALUES ('540', '1', '150770', '0', '');
INSERT INTO `dy_survey` VALUES ('541', '1', '150899', '0', '');
INSERT INTO `dy_survey` VALUES ('542', '1', '151189', '0', '');
INSERT INTO `dy_survey` VALUES ('543', '1', '151221', '0', '');
INSERT INTO `dy_survey` VALUES ('544', '1', '151278', '0', '');
INSERT INTO `dy_survey` VALUES ('545', '1', '151330', '0', '');
INSERT INTO `dy_survey` VALUES ('546', '1', '151412', '0', '');
INSERT INTO `dy_survey` VALUES ('547', '1', '151499', '0', '');
INSERT INTO `dy_survey` VALUES ('548', '1', '151899', '0', '');
INSERT INTO `dy_survey` VALUES ('549', '1', '152117', '0', '');
INSERT INTO `dy_survey` VALUES ('550', '1', '152190', '0', '');
INSERT INTO `dy_survey` VALUES ('551', '1', '152762', '0', '');
INSERT INTO `dy_survey` VALUES ('552', '1', '153200', '0', '');
INSERT INTO `dy_survey` VALUES ('553', '1', '153331', '0', '');
INSERT INTO `dy_survey` VALUES ('554', '1', '153376', '0', '');
INSERT INTO `dy_survey` VALUES ('555', '1', '153419', '0', '');
INSERT INTO `dy_survey` VALUES ('556', '1', '153434', '0', '');
INSERT INTO `dy_survey` VALUES ('557', '1', '153890', '0', '');
INSERT INTO `dy_survey` VALUES ('558', '1', '154329', '0', '');
INSERT INTO `dy_survey` VALUES ('559', '1', '154350', '0', '');
INSERT INTO `dy_survey` VALUES ('560', '1', '154400', '0', '');
INSERT INTO `dy_survey` VALUES ('561', '1', '154600', '0', '');
INSERT INTO `dy_survey` VALUES ('562', '1', '155025', '0', '');
INSERT INTO `dy_survey` VALUES ('563', '1', '155063', '0', '');
INSERT INTO `dy_survey` VALUES ('564', '1', '155168', '0', '');
INSERT INTO `dy_survey` VALUES ('565', '1', '155180', '0', '');
INSERT INTO `dy_survey` VALUES ('566', '1', '155189', '0', '');
INSERT INTO `dy_survey` VALUES ('567', '1', '155272', '0', '');
INSERT INTO `dy_survey` VALUES ('568', '1', '155363', '0', '');
INSERT INTO `dy_survey` VALUES ('569', '1', '155387', '0', '');
INSERT INTO `dy_survey` VALUES ('570', '1', '155466', '0', '');
INSERT INTO `dy_survey` VALUES ('571', '1', '155606', '0', '');
INSERT INTO `dy_survey` VALUES ('572', '1', '155658', '0', '');
INSERT INTO `dy_survey` VALUES ('573', '1', '155818', '0', '');
INSERT INTO `dy_survey` VALUES ('574', '1', '155882', '0', '');
INSERT INTO `dy_survey` VALUES ('575', '1', '155893', '0', '');
INSERT INTO `dy_survey` VALUES ('576', '1', '156087', '0', '');
INSERT INTO `dy_survey` VALUES ('577', '1', '156150', '0', '');
INSERT INTO `dy_survey` VALUES ('578', '1', '156589', '0', '');
INSERT INTO `dy_survey` VALUES ('579', '1', '156683', '0', '');
INSERT INTO `dy_survey` VALUES ('580', '1', '156701', '0', '');
INSERT INTO `dy_survey` VALUES ('581', '1', '156841', '0', '');
INSERT INTO `dy_survey` VALUES ('582', '1', '156885', '0', '');
INSERT INTO `dy_survey` VALUES ('583', '1', '157455', '0', '');
INSERT INTO `dy_survey` VALUES ('584', '1', '157470', '0', '');
INSERT INTO `dy_survey` VALUES ('585', '1', '157523', '0', '');
INSERT INTO `dy_survey` VALUES ('586', '1', '157530', '0', '');
INSERT INTO `dy_survey` VALUES ('587', '1', '157596', '0', '');
INSERT INTO `dy_survey` VALUES ('588', '1', '157753', '0', '');
INSERT INTO `dy_survey` VALUES ('589', '1', '158072', '0', '');
INSERT INTO `dy_survey` VALUES ('590', '1', '158713', '0', '');
INSERT INTO `dy_survey` VALUES ('591', '1', '158717', '0', '');
INSERT INTO `dy_survey` VALUES ('592', '1', '158719', '0', '');
INSERT INTO `dy_survey` VALUES ('593', '1', '158737', '0', '');
INSERT INTO `dy_survey` VALUES ('594', '1', '159274', '0', '');
INSERT INTO `dy_survey` VALUES ('595', '1', '159293', '0', '');
INSERT INTO `dy_survey` VALUES ('596', '1', '159384', '0', '');
INSERT INTO `dy_survey` VALUES ('597', '1', '159723', '0', '');
INSERT INTO `dy_survey` VALUES ('598', '1', '159776', '0', '');
INSERT INTO `dy_survey` VALUES ('599', '1', '159826', '0', '');
INSERT INTO `dy_survey` VALUES ('600', '1', '159885', '0', '');
INSERT INTO `dy_survey` VALUES ('601', '1', '159918', '0', '');
INSERT INTO `dy_survey` VALUES ('602', '1', '160094', '0', '');
INSERT INTO `dy_survey` VALUES ('603', '1', '160123', '0', '');
INSERT INTO `dy_survey` VALUES ('604', '1', '160747', '0', '');
INSERT INTO `dy_survey` VALUES ('605', '1', '160921', '0', '');
INSERT INTO `dy_survey` VALUES ('606', '1', '161011', '0', '');
INSERT INTO `dy_survey` VALUES ('607', '1', '161123', '0', '');
INSERT INTO `dy_survey` VALUES ('608', '1', '161277', '0', '');
INSERT INTO `dy_survey` VALUES ('609', '1', '161288', '0', '');
INSERT INTO `dy_survey` VALUES ('610', '1', '161418', '0', '');
INSERT INTO `dy_survey` VALUES ('611', '1', '161710', '0', '');
INSERT INTO `dy_survey` VALUES ('612', '1', '161796', '0', '');
INSERT INTO `dy_survey` VALUES ('613', '1', '162202', '0', '');
INSERT INTO `dy_survey` VALUES ('614', '1', '162246', '0', '');
INSERT INTO `dy_survey` VALUES ('615', '1', '162551', '0', '');
INSERT INTO `dy_survey` VALUES ('616', '1', '162848', '0', '');
INSERT INTO `dy_survey` VALUES ('617', '1', '162871', '0', '');
INSERT INTO `dy_survey` VALUES ('618', '1', '162947', '0', '');
INSERT INTO `dy_survey` VALUES ('619', '1', '163012', '0', '');
INSERT INTO `dy_survey` VALUES ('620', '1', '163125', '0', '');
INSERT INTO `dy_survey` VALUES ('621', '1', '163437', '0', '');
INSERT INTO `dy_survey` VALUES ('622', '1', '163564', '0', '');
INSERT INTO `dy_survey` VALUES ('623', '1', '163617', '0', '');
INSERT INTO `dy_survey` VALUES ('624', '1', '164053', '0', '');
INSERT INTO `dy_survey` VALUES ('625', '1', '164062', '0', '');
INSERT INTO `dy_survey` VALUES ('626', '1', '164081', '0', '');
INSERT INTO `dy_survey` VALUES ('627', '1', '164083', '0', '');
INSERT INTO `dy_survey` VALUES ('628', '1', '164207', '0', '');
INSERT INTO `dy_survey` VALUES ('629', '1', '164255', '0', '');
INSERT INTO `dy_survey` VALUES ('630', '1', '165222', '0', '');
INSERT INTO `dy_survey` VALUES ('631', '1', '165668', '0', '');
INSERT INTO `dy_survey` VALUES ('632', '1', '165707', '0', '');
INSERT INTO `dy_survey` VALUES ('633', '1', '165883', '0', '');
INSERT INTO `dy_survey` VALUES ('634', '1', '165946', '0', '');
INSERT INTO `dy_survey` VALUES ('635', '1', '166004', '0', '');
INSERT INTO `dy_survey` VALUES ('636', '1', '166061', '0', '');
INSERT INTO `dy_survey` VALUES ('637', '1', '166088', '0', '');
INSERT INTO `dy_survey` VALUES ('638', '1', '166663', '0', '');
INSERT INTO `dy_survey` VALUES ('639', '1', '166898', '0', '');
INSERT INTO `dy_survey` VALUES ('640', '1', '167172', '0', '');
INSERT INTO `dy_survey` VALUES ('641', '1', '167431', '0', '');
INSERT INTO `dy_survey` VALUES ('642', '1', '167437', '0', '');
INSERT INTO `dy_survey` VALUES ('643', '1', '167687', '0', '');
INSERT INTO `dy_survey` VALUES ('644', '1', '167897', '0', '');
INSERT INTO `dy_survey` VALUES ('645', '1', '167966', '0', '');
INSERT INTO `dy_survey` VALUES ('646', '1', '168183', '0', '');
INSERT INTO `dy_survey` VALUES ('647', '1', '168204', '0', '');
INSERT INTO `dy_survey` VALUES ('648', '1', '168430', '0', '');
INSERT INTO `dy_survey` VALUES ('649', '1', '168936', '0', '');
INSERT INTO `dy_survey` VALUES ('650', '1', '168999', '0', '');
INSERT INTO `dy_survey` VALUES ('651', '1', '169061', '0', '');
INSERT INTO `dy_survey` VALUES ('652', '1', '169210', '0', '');
INSERT INTO `dy_survey` VALUES ('653', '1', '169501', '0', '');
INSERT INTO `dy_survey` VALUES ('654', '1', '169695', '0', '');
INSERT INTO `dy_survey` VALUES ('655', '1', '169847', '0', '');
INSERT INTO `dy_survey` VALUES ('656', '1', '169902', '0', '');
INSERT INTO `dy_survey` VALUES ('657', '1', '170110', '0', '');
INSERT INTO `dy_survey` VALUES ('658', '1', '170282', '0', '');
INSERT INTO `dy_survey` VALUES ('659', '1', '170529', '0', '');
INSERT INTO `dy_survey` VALUES ('660', '1', '170535', '0', '');
INSERT INTO `dy_survey` VALUES ('661', '1', '170539', '0', '');
INSERT INTO `dy_survey` VALUES ('662', '1', '170545', '0', '');
INSERT INTO `dy_survey` VALUES ('663', '1', '170567', '0', '');
INSERT INTO `dy_survey` VALUES ('664', '1', '170572', '0', '');
INSERT INTO `dy_survey` VALUES ('665', '1', '171206', '0', '');
INSERT INTO `dy_survey` VALUES ('666', '1', '171386', '0', '');
INSERT INTO `dy_survey` VALUES ('667', '1', '171548', '0', '');
INSERT INTO `dy_survey` VALUES ('668', '1', '171574', '0', '');
INSERT INTO `dy_survey` VALUES ('669', '1', '171849', '0', '');
INSERT INTO `dy_survey` VALUES ('670', '1', '171934', '0', '');
INSERT INTO `dy_survey` VALUES ('671', '1', '172143', '0', '');
INSERT INTO `dy_survey` VALUES ('672', '1', '172232', '0', '');
INSERT INTO `dy_survey` VALUES ('673', '1', '172753', '0', '');
INSERT INTO `dy_survey` VALUES ('674', '1', '173100', '0', '');
INSERT INTO `dy_survey` VALUES ('675', '1', '173290', '0', '');
INSERT INTO `dy_survey` VALUES ('676', '1', '173477', '0', '');
INSERT INTO `dy_survey` VALUES ('677', '1', '174028', '0', '');
INSERT INTO `dy_survey` VALUES ('678', '1', '174033', '0', '');
INSERT INTO `dy_survey` VALUES ('679', '1', '174071', '0', '');
INSERT INTO `dy_survey` VALUES ('680', '1', '174492', '0', '');
INSERT INTO `dy_survey` VALUES ('681', '1', '174608', '0', '');
INSERT INTO `dy_survey` VALUES ('682', '1', '175134', '0', '');
INSERT INTO `dy_survey` VALUES ('683', '1', '175209', '0', '');
INSERT INTO `dy_survey` VALUES ('684', '1', '175401', '0', '');
INSERT INTO `dy_survey` VALUES ('685', '1', '175452', '0', '');
INSERT INTO `dy_survey` VALUES ('686', '1', '175469', '0', '');
INSERT INTO `dy_survey` VALUES ('687', '1', '175633', '0', '');
INSERT INTO `dy_survey` VALUES ('688', '1', '175748', '0', '');
INSERT INTO `dy_survey` VALUES ('689', '1', '175787', '0', '');
INSERT INTO `dy_survey` VALUES ('690', '1', '175799', '0', '');
INSERT INTO `dy_survey` VALUES ('691', '1', '175835', '0', '');
INSERT INTO `dy_survey` VALUES ('692', '1', '175868', '0', '');
INSERT INTO `dy_survey` VALUES ('693', '1', '175984', '0', '');
INSERT INTO `dy_survey` VALUES ('694', '1', '176344', '0', '');
INSERT INTO `dy_survey` VALUES ('695', '1', '176410', '0', '');
INSERT INTO `dy_survey` VALUES ('696', '1', '176515', '0', '');
INSERT INTO `dy_survey` VALUES ('697', '1', '176702', '0', '');
INSERT INTO `dy_survey` VALUES ('698', '1', '176908', '0', '');
INSERT INTO `dy_survey` VALUES ('699', '1', '176951', '0', '');
INSERT INTO `dy_survey` VALUES ('700', '1', '177347', '0', '');
INSERT INTO `dy_survey` VALUES ('701', '1', '177535', '0', '');
INSERT INTO `dy_survey` VALUES ('702', '1', '177555', '0', '');
INSERT INTO `dy_survey` VALUES ('703', '1', '177632', '0', '');
INSERT INTO `dy_survey` VALUES ('704', '1', '177701', '0', '');
INSERT INTO `dy_survey` VALUES ('705', '1', '177950', '0', '');
INSERT INTO `dy_survey` VALUES ('706', '1', '177970', '0', '');
INSERT INTO `dy_survey` VALUES ('707', '1', '178015', '0', '');
INSERT INTO `dy_survey` VALUES ('708', '1', '178034', '0', '');
INSERT INTO `dy_survey` VALUES ('709', '1', '178042', '0', '');
INSERT INTO `dy_survey` VALUES ('710', '1', '178276', '0', '');
INSERT INTO `dy_survey` VALUES ('711', '1', '178469', '0', '');
INSERT INTO `dy_survey` VALUES ('712', '1', '178587', '0', '');
INSERT INTO `dy_survey` VALUES ('713', '1', '178889', '0', '');
INSERT INTO `dy_survey` VALUES ('714', '1', '178995', '0', '');
INSERT INTO `dy_survey` VALUES ('715', '1', '179084', '0', '');
INSERT INTO `dy_survey` VALUES ('716', '1', '179275', '0', '');
INSERT INTO `dy_survey` VALUES ('717', '1', '179428', '0', '');
INSERT INTO `dy_survey` VALUES ('718', '1', '179586', '0', '');
INSERT INTO `dy_survey` VALUES ('719', '1', '179641', '0', '');
INSERT INTO `dy_survey` VALUES ('720', '1', '179684', '0', '');
INSERT INTO `dy_survey` VALUES ('721', '1', '179813', '0', '');
INSERT INTO `dy_survey` VALUES ('722', '1', '179985', '0', '');
INSERT INTO `dy_survey` VALUES ('723', '1', '180006', '0', '');
INSERT INTO `dy_survey` VALUES ('724', '1', '180047', '0', '');
INSERT INTO `dy_survey` VALUES ('725', '1', '180106', '0', '');
INSERT INTO `dy_survey` VALUES ('726', '1', '180119', '0', '');
INSERT INTO `dy_survey` VALUES ('727', '1', '180233', '0', '');
INSERT INTO `dy_survey` VALUES ('728', '1', '180381', '0', '');
INSERT INTO `dy_survey` VALUES ('729', '1', '180388', '0', '');
INSERT INTO `dy_survey` VALUES ('730', '1', '180392', '0', '');
INSERT INTO `dy_survey` VALUES ('731', '1', '180398', '0', '');
INSERT INTO `dy_survey` VALUES ('732', '1', '180400', '0', '');
INSERT INTO `dy_survey` VALUES ('733', '1', '180406', '0', '');
INSERT INTO `dy_survey` VALUES ('734', '1', '180463', '0', '');
INSERT INTO `dy_survey` VALUES ('735', '1', '180834', '0', '');
INSERT INTO `dy_survey` VALUES ('736', '1', '180915', '0', '');
INSERT INTO `dy_survey` VALUES ('737', '1', '180971', '0', '');
INSERT INTO `dy_survey` VALUES ('738', '1', '181355', '0', '');
INSERT INTO `dy_survey` VALUES ('739', '1', '181359', '0', '');
INSERT INTO `dy_survey` VALUES ('740', '1', '181419', '0', '');
INSERT INTO `dy_survey` VALUES ('741', '1', '181444', '0', '');
INSERT INTO `dy_survey` VALUES ('742', '1', '181515', '0', '');
INSERT INTO `dy_survey` VALUES ('743', '1', '181747', '0', '');
INSERT INTO `dy_survey` VALUES ('744', '1', '182017', '0', '');
INSERT INTO `dy_survey` VALUES ('745', '1', '182118', '0', '');
INSERT INTO `dy_survey` VALUES ('746', '1', '182156', '0', '');
INSERT INTO `dy_survey` VALUES ('747', '1', '182235', '0', '');
INSERT INTO `dy_survey` VALUES ('748', '1', '182682', '0', '');
INSERT INTO `dy_survey` VALUES ('749', '1', '182714', '0', '');
INSERT INTO `dy_survey` VALUES ('750', '1', '182746', '0', '');
INSERT INTO `dy_survey` VALUES ('751', '1', '182747', '0', '');
INSERT INTO `dy_survey` VALUES ('752', '1', '182819', '0', '');
INSERT INTO `dy_survey` VALUES ('753', '1', '182902', '0', '');
INSERT INTO `dy_survey` VALUES ('754', '1', '183076', '0', '');
INSERT INTO `dy_survey` VALUES ('755', '1', '183112', '0', '');
INSERT INTO `dy_survey` VALUES ('756', '1', '183196', '0', '');
INSERT INTO `dy_survey` VALUES ('757', '1', '183392', '0', '');
INSERT INTO `dy_survey` VALUES ('758', '1', '183396', '0', '');
INSERT INTO `dy_survey` VALUES ('759', '1', '183514', '0', '');
INSERT INTO `dy_survey` VALUES ('760', '1', '183674', '0', '');
INSERT INTO `dy_survey` VALUES ('761', '1', '183859', '0', '');
INSERT INTO `dy_survey` VALUES ('762', '1', '184238', '0', '');
INSERT INTO `dy_survey` VALUES ('763', '1', '184274', '0', '');
INSERT INTO `dy_survey` VALUES ('764', '1', '184473', '0', '');
INSERT INTO `dy_survey` VALUES ('765', '1', '184713', '0', '');
INSERT INTO `dy_survey` VALUES ('766', '1', '184758', '0', '');
INSERT INTO `dy_survey` VALUES ('767', '1', '184815', '0', '');
INSERT INTO `dy_survey` VALUES ('768', '1', '184912', '0', '');
INSERT INTO `dy_survey` VALUES ('769', '1', '184990', '0', '');
INSERT INTO `dy_survey` VALUES ('770', '1', '185176', '0', '');
INSERT INTO `dy_survey` VALUES ('771', '1', '185419', '0', '');
INSERT INTO `dy_survey` VALUES ('772', '1', '185562', '0', '');
INSERT INTO `dy_survey` VALUES ('773', '1', '185580', '0', '');
INSERT INTO `dy_survey` VALUES ('774', '1', '185605', '0', '');
INSERT INTO `dy_survey` VALUES ('775', '1', '185609', '0', '');
INSERT INTO `dy_survey` VALUES ('776', '1', '186192', '0', '');
INSERT INTO `dy_survey` VALUES ('777', '1', '186193', '0', '');
INSERT INTO `dy_survey` VALUES ('778', '1', '186216', '0', '');
INSERT INTO `dy_survey` VALUES ('779', '1', '186268', '0', '');
INSERT INTO `dy_survey` VALUES ('780', '1', '186307', '0', '');
INSERT INTO `dy_survey` VALUES ('781', '1', '186325', '0', '');
INSERT INTO `dy_survey` VALUES ('782', '1', '186831', '0', '');
INSERT INTO `dy_survey` VALUES ('783', '1', '186853', '0', '');
INSERT INTO `dy_survey` VALUES ('784', '1', '186870', '0', '');
INSERT INTO `dy_survey` VALUES ('785', '1', '187058', '0', '');
INSERT INTO `dy_survey` VALUES ('786', '1', '187543', '0', '');
INSERT INTO `dy_survey` VALUES ('787', '1', '187567', '0', '');
INSERT INTO `dy_survey` VALUES ('788', '1', '187591', '0', '');
INSERT INTO `dy_survey` VALUES ('789', '1', '187599', '0', '');
INSERT INTO `dy_survey` VALUES ('790', '1', '188103', '0', '');
INSERT INTO `dy_survey` VALUES ('791', '1', '188133', '0', '');
INSERT INTO `dy_survey` VALUES ('792', '1', '188135', '0', '');
INSERT INTO `dy_survey` VALUES ('793', '1', '188150', '0', '');
INSERT INTO `dy_survey` VALUES ('794', '1', '188195', '0', '');
INSERT INTO `dy_survey` VALUES ('795', '1', '188367', '0', '');
INSERT INTO `dy_survey` VALUES ('796', '1', '188501', '0', '');
INSERT INTO `dy_survey` VALUES ('797', '1', '188784', '0', '');
INSERT INTO `dy_survey` VALUES ('798', '1', '188794', '0', '');
INSERT INTO `dy_survey` VALUES ('799', '1', '188867', '0', '');
INSERT INTO `dy_survey` VALUES ('800', '1', '188979', '0', '');
INSERT INTO `dy_survey` VALUES ('801', '1', '189103', '0', '');
INSERT INTO `dy_survey` VALUES ('802', '1', '189168', '0', '');
INSERT INTO `dy_survey` VALUES ('803', '1', '189217', '0', '');
INSERT INTO `dy_survey` VALUES ('804', '1', '189247', '0', '');
INSERT INTO `dy_survey` VALUES ('805', '1', '189485', '0', '');
INSERT INTO `dy_survey` VALUES ('806', '1', '189763', '0', '');
INSERT INTO `dy_survey` VALUES ('807', '1', '189813', '0', '');
INSERT INTO `dy_survey` VALUES ('808', '1', '189990', '0', '');
INSERT INTO `dy_survey` VALUES ('809', '1', '190027', '0', '');
INSERT INTO `dy_survey` VALUES ('810', '1', '190097', '0', '');
INSERT INTO `dy_survey` VALUES ('811', '1', '190140', '0', '');
INSERT INTO `dy_survey` VALUES ('812', '1', '190155', '0', '');
INSERT INTO `dy_survey` VALUES ('813', '1', '190330', '0', '');
INSERT INTO `dy_survey` VALUES ('814', '1', '190341', '0', '');
INSERT INTO `dy_survey` VALUES ('815', '1', '190342', '0', '');
INSERT INTO `dy_survey` VALUES ('816', '1', '190359', '0', '');
INSERT INTO `dy_survey` VALUES ('817', '1', '190391', '0', '');
INSERT INTO `dy_survey` VALUES ('818', '1', '190516', '0', '');
INSERT INTO `dy_survey` VALUES ('819', '1', '190600', '0', '');
INSERT INTO `dy_survey` VALUES ('820', '1', '190742', '0', '');
INSERT INTO `dy_survey` VALUES ('821', '1', '190920', '0', '');
INSERT INTO `dy_survey` VALUES ('822', '1', '190982', '0', '');
INSERT INTO `dy_survey` VALUES ('823', '1', '190997', '0', '');
INSERT INTO `dy_survey` VALUES ('824', '1', '191073', '0', '');
INSERT INTO `dy_survey` VALUES ('825', '1', '191108', '0', '');
INSERT INTO `dy_survey` VALUES ('826', '1', '191205', '0', '');
INSERT INTO `dy_survey` VALUES ('827', '1', '191502', '0', '');
INSERT INTO `dy_survey` VALUES ('828', '1', '191518', '0', '');
INSERT INTO `dy_survey` VALUES ('829', '1', '191706', '0', '');
INSERT INTO `dy_survey` VALUES ('830', '1', '191892', '0', '');
INSERT INTO `dy_survey` VALUES ('831', '1', '191901', '0', '');
INSERT INTO `dy_survey` VALUES ('832', '1', '191979', '0', '');
INSERT INTO `dy_survey` VALUES ('833', '1', '192048', '0', '');
INSERT INTO `dy_survey` VALUES ('834', '1', '192167', '0', '');
INSERT INTO `dy_survey` VALUES ('835', '1', '192446', '0', '');
INSERT INTO `dy_survey` VALUES ('836', '1', '192473', '0', '');
INSERT INTO `dy_survey` VALUES ('837', '1', '192560', '0', '');
INSERT INTO `dy_survey` VALUES ('838', '1', '192610', '0', '');
INSERT INTO `dy_survey` VALUES ('839', '1', '192736', '0', '');
INSERT INTO `dy_survey` VALUES ('840', '1', '192897', '0', '');
INSERT INTO `dy_survey` VALUES ('841', '1', '193136', '0', '');
INSERT INTO `dy_survey` VALUES ('842', '1', '193244', '0', '');
INSERT INTO `dy_survey` VALUES ('843', '1', '193284', '0', '');
INSERT INTO `dy_survey` VALUES ('844', '1', '193337', '0', '');
INSERT INTO `dy_survey` VALUES ('845', '1', '193374', '0', '');
INSERT INTO `dy_survey` VALUES ('846', '1', '193505', '0', '');
INSERT INTO `dy_survey` VALUES ('847', '1', '193553', '0', '');
INSERT INTO `dy_survey` VALUES ('848', '1', '193675', '0', '');
INSERT INTO `dy_survey` VALUES ('849', '1', '193697', '0', '');
INSERT INTO `dy_survey` VALUES ('850', '1', '193812', '0', '');
INSERT INTO `dy_survey` VALUES ('851', '1', '193869', '0', '');
INSERT INTO `dy_survey` VALUES ('852', '1', '193906', '0', '');
INSERT INTO `dy_survey` VALUES ('853', '1', '193999', '0', '');
INSERT INTO `dy_survey` VALUES ('854', '1', '194007', '0', '');
INSERT INTO `dy_survey` VALUES ('855', '1', '194016', '0', '');
INSERT INTO `dy_survey` VALUES ('856', '1', '194041', '0', '');
INSERT INTO `dy_survey` VALUES ('857', '1', '194051', '0', '');
INSERT INTO `dy_survey` VALUES ('858', '1', '194052', '0', '');
INSERT INTO `dy_survey` VALUES ('859', '1', '194252', '0', '');
INSERT INTO `dy_survey` VALUES ('860', '1', '194526', '0', '');
INSERT INTO `dy_survey` VALUES ('861', '1', '194556', '0', '');
INSERT INTO `dy_survey` VALUES ('862', '1', '194581', '0', '');
INSERT INTO `dy_survey` VALUES ('863', '1', '194641', '0', '');
INSERT INTO `dy_survey` VALUES ('864', '1', '194775', '0', '');
INSERT INTO `dy_survey` VALUES ('865', '1', '194899', '0', '');
INSERT INTO `dy_survey` VALUES ('866', '1', '195081', '0', '');
INSERT INTO `dy_survey` VALUES ('867', '1', '195204', '0', '');
INSERT INTO `dy_survey` VALUES ('868', '1', '195238', '0', '');
INSERT INTO `dy_survey` VALUES ('869', '1', '195470', '0', '');
INSERT INTO `dy_survey` VALUES ('870', '1', '195482', '0', '');
INSERT INTO `dy_survey` VALUES ('871', '1', '195486', '0', '');
INSERT INTO `dy_survey` VALUES ('872', '1', '195510', '0', '');
INSERT INTO `dy_survey` VALUES ('873', '1', '195520', '0', '');
INSERT INTO `dy_survey` VALUES ('874', '1', '195521', '0', '');
INSERT INTO `dy_survey` VALUES ('875', '1', '195708', '0', '');
INSERT INTO `dy_survey` VALUES ('876', '1', '195775', '0', '');
INSERT INTO `dy_survey` VALUES ('877', '1', '195906', '0', '');
INSERT INTO `dy_survey` VALUES ('878', '1', '195976', '0', '');
INSERT INTO `dy_survey` VALUES ('879', '1', '196073', '0', '');
INSERT INTO `dy_survey` VALUES ('880', '1', '196177', '0', '');
INSERT INTO `dy_survey` VALUES ('881', '1', '196184', '0', '');
INSERT INTO `dy_survey` VALUES ('882', '1', '196196', '0', '');
INSERT INTO `dy_survey` VALUES ('883', '1', '196336', '0', '');
INSERT INTO `dy_survey` VALUES ('884', '1', '196367', '0', '');
INSERT INTO `dy_survey` VALUES ('885', '1', '196582', '0', '');
INSERT INTO `dy_survey` VALUES ('886', '1', '196583', '0', '');
INSERT INTO `dy_survey` VALUES ('887', '1', '196621', '0', '');
INSERT INTO `dy_survey` VALUES ('888', '1', '196704', '0', '');
INSERT INTO `dy_survey` VALUES ('889', '1', '196722', '0', '');
INSERT INTO `dy_survey` VALUES ('890', '1', '196794', '0', '');
INSERT INTO `dy_survey` VALUES ('891', '1', '196847', '0', '');
INSERT INTO `dy_survey` VALUES ('892', '1', '196856', '0', '');
INSERT INTO `dy_survey` VALUES ('893', '1', '196884', '0', '');
INSERT INTO `dy_survey` VALUES ('894', '1', '197217', '0', '');
INSERT INTO `dy_survey` VALUES ('895', '1', '197387', '0', '');
INSERT INTO `dy_survey` VALUES ('896', '1', '197395', '0', '');
INSERT INTO `dy_survey` VALUES ('897', '1', '197623', '0', '');
INSERT INTO `dy_survey` VALUES ('898', '1', '197698', '0', '');
INSERT INTO `dy_survey` VALUES ('899', '1', '197848', '0', '');
INSERT INTO `dy_survey` VALUES ('900', '1', '197891', '0', '');
INSERT INTO `dy_survey` VALUES ('901', '1', '198064', '0', '');
INSERT INTO `dy_survey` VALUES ('902', '1', '198082', '0', '');
INSERT INTO `dy_survey` VALUES ('903', '1', '198189', '0', '');
INSERT INTO `dy_survey` VALUES ('904', '1', '198398', '0', '');
INSERT INTO `dy_survey` VALUES ('905', '1', '198741', '0', '');
INSERT INTO `dy_survey` VALUES ('906', '1', '198781', '0', '');
INSERT INTO `dy_survey` VALUES ('907', '1', '198826', '0', '');
INSERT INTO `dy_survey` VALUES ('908', '1', '198976', '0', '');
INSERT INTO `dy_survey` VALUES ('909', '1', '198982', '0', '');
INSERT INTO `dy_survey` VALUES ('910', '1', '199217', '0', '');
INSERT INTO `dy_survey` VALUES ('911', '1', '199232', '0', '');
INSERT INTO `dy_survey` VALUES ('912', '1', '199293', '0', '');
INSERT INTO `dy_survey` VALUES ('913', '1', '199421', '0', '');
INSERT INTO `dy_survey` VALUES ('914', '1', '199500', '0', '');
INSERT INTO `dy_survey` VALUES ('915', '1', '199563', '0', '');
INSERT INTO `dy_survey` VALUES ('916', '1', '199707', '0', '');
INSERT INTO `dy_survey` VALUES ('917', '1', '199996', '0', '');
INSERT INTO `dy_survey` VALUES ('918', '1', '200014', '0', '');
INSERT INTO `dy_survey` VALUES ('919', '1', '200113', '0', '');
INSERT INTO `dy_survey` VALUES ('920', '1', '200114', '0', '');
INSERT INTO `dy_survey` VALUES ('921', '1', '200348', '0', '');
INSERT INTO `dy_survey` VALUES ('922', '1', '200374', '0', '');
INSERT INTO `dy_survey` VALUES ('923', '1', '200486', '0', '');
INSERT INTO `dy_survey` VALUES ('924', '1', '200577', '0', '');
INSERT INTO `dy_survey` VALUES ('925', '1', '200653', '0', '');
INSERT INTO `dy_survey` VALUES ('926', '1', '200672', '0', '');
INSERT INTO `dy_survey` VALUES ('927', '1', '200675', '0', '');
INSERT INTO `dy_survey` VALUES ('928', '1', '200683', '0', '');
INSERT INTO `dy_survey` VALUES ('929', '1', '200712', '0', '');
INSERT INTO `dy_survey` VALUES ('930', '1', '200980', '0', '');
INSERT INTO `dy_survey` VALUES ('931', '1', '201141', '0', '');
INSERT INTO `dy_survey` VALUES ('932', '1', '201152', '0', '');
INSERT INTO `dy_survey` VALUES ('933', '1', '203054', '0', '');
INSERT INTO `dy_survey` VALUES ('934', '1', '203103', '0', '');
INSERT INTO `dy_survey` VALUES ('935', '1', '203108', '0', '');
INSERT INTO `dy_survey` VALUES ('936', '1', '203119', '0', '');
INSERT INTO `dy_survey` VALUES ('937', '1', '203122', '0', '');
INSERT INTO `dy_survey` VALUES ('938', '1', '203144', '0', '');
INSERT INTO `dy_survey` VALUES ('939', '1', '203168', '0', '');
INSERT INTO `dy_survey` VALUES ('940', '1', '203201', '0', '');
INSERT INTO `dy_survey` VALUES ('941', '1', '203301', '0', '');
INSERT INTO `dy_survey` VALUES ('942', '1', '203548', '0', '');
INSERT INTO `dy_survey` VALUES ('943', '1', '203614', '0', '');
INSERT INTO `dy_survey` VALUES ('944', '1', '203616', '0', '');
INSERT INTO `dy_survey` VALUES ('945', '1', '203794', '0', '');
INSERT INTO `dy_survey` VALUES ('946', '1', '203892', '0', '');
INSERT INTO `dy_survey` VALUES ('947', '1', '204011', '0', '');
INSERT INTO `dy_survey` VALUES ('948', '1', '204264', '0', '');
INSERT INTO `dy_survey` VALUES ('949', '1', '204268', '0', '');
INSERT INTO `dy_survey` VALUES ('950', '1', '204432', '0', '');
INSERT INTO `dy_survey` VALUES ('951', '1', '204726', '0', '');
INSERT INTO `dy_survey` VALUES ('952', '1', '205015', '0', '');
INSERT INTO `dy_survey` VALUES ('953', '1', '205098', '0', '');
INSERT INTO `dy_survey` VALUES ('954', '1', '205105', '0', '');
INSERT INTO `dy_survey` VALUES ('955', '1', '205564', '0', '');
INSERT INTO `dy_survey` VALUES ('956', '1', '205752', '0', '');
INSERT INTO `dy_survey` VALUES ('957', '1', '205756', '0', '');
INSERT INTO `dy_survey` VALUES ('958', '1', '205787', '0', '');
INSERT INTO `dy_survey` VALUES ('959', '1', '205841', '0', '');
INSERT INTO `dy_survey` VALUES ('960', '1', '206139', '0', '');
INSERT INTO `dy_survey` VALUES ('961', '1', '206244', '0', '');
INSERT INTO `dy_survey` VALUES ('962', '1', '206376', '0', '');
INSERT INTO `dy_survey` VALUES ('963', '1', '206414', '0', '');
INSERT INTO `dy_survey` VALUES ('964', '1', '207058', '0', '');
INSERT INTO `dy_survey` VALUES ('965', '1', '207076', '0', '');
INSERT INTO `dy_survey` VALUES ('966', '1', '207201', '0', '');
INSERT INTO `dy_survey` VALUES ('967', '1', '207446', '0', '');
INSERT INTO `dy_survey` VALUES ('968', '1', '207462', '0', '');
INSERT INTO `dy_survey` VALUES ('969', '1', '207475', '0', '');
INSERT INTO `dy_survey` VALUES ('970', '1', '207510', '0', '');
INSERT INTO `dy_survey` VALUES ('971', '1', '207517', '0', '');
INSERT INTO `dy_survey` VALUES ('972', '1', '207529', '0', '');
INSERT INTO `dy_survey` VALUES ('973', '1', '207535', '0', '');
INSERT INTO `dy_survey` VALUES ('974', '1', '207537', '0', '');
INSERT INTO `dy_survey` VALUES ('975', '1', '207538', '0', '');
INSERT INTO `dy_survey` VALUES ('976', '1', '208001', '0', '');
INSERT INTO `dy_survey` VALUES ('977', '1', '208159', '0', '');
INSERT INTO `dy_survey` VALUES ('978', '1', '209220', '0', '');
INSERT INTO `dy_survey` VALUES ('979', '1', '209400', '0', '');
INSERT INTO `dy_survey` VALUES ('980', '1', '209623', '0', '');
INSERT INTO `dy_survey` VALUES ('981', '1', '209804', '0', '');
INSERT INTO `dy_survey` VALUES ('982', '1', '210250', '0', '');
INSERT INTO `dy_survey` VALUES ('983', '1', '210271', '0', '');
INSERT INTO `dy_survey` VALUES ('984', '1', '211193', '0', '');
INSERT INTO `dy_survey` VALUES ('985', '1', '211215', '0', '');
INSERT INTO `dy_survey` VALUES ('986', '1', '211328', '0', '');
INSERT INTO `dy_survey` VALUES ('987', '1', '211368', '0', '');
INSERT INTO `dy_survey` VALUES ('988', '1', '211788', '0', '');
INSERT INTO `dy_survey` VALUES ('989', '1', '211839', '0', '');
INSERT INTO `dy_survey` VALUES ('990', '1', '211844', '0', '');
INSERT INTO `dy_survey` VALUES ('991', '1', '211846', '0', '');
INSERT INTO `dy_survey` VALUES ('992', '1', '211867', '0', '');
INSERT INTO `dy_survey` VALUES ('993', '1', '211986', '0', '');
INSERT INTO `dy_survey` VALUES ('994', '1', '212116', '0', '');
INSERT INTO `dy_survey` VALUES ('995', '1', '212172', '0', '');
INSERT INTO `dy_survey` VALUES ('996', '1', '212210', '0', '');
INSERT INTO `dy_survey` VALUES ('997', '1', '212287', '0', '');
INSERT INTO `dy_survey` VALUES ('998', '1', '212581', '0', '');
INSERT INTO `dy_survey` VALUES ('999', '1', '212721', '0', '');
INSERT INTO `dy_survey` VALUES ('1000', '1', '212754', '0', '');
INSERT INTO `dy_survey` VALUES ('1001', '1', '212799', '0', '');
INSERT INTO `dy_survey` VALUES ('1002', '1', '212897', '0', '');
INSERT INTO `dy_survey` VALUES ('1003', '1', '212907', '0', '');
INSERT INTO `dy_survey` VALUES ('1004', '1', '212921', '0', '');
INSERT INTO `dy_survey` VALUES ('1005', '1', '212978', '0', '');
INSERT INTO `dy_survey` VALUES ('1006', '1', '213178', '0', '');
INSERT INTO `dy_survey` VALUES ('1007', '1', '213305', '0', '');
INSERT INTO `dy_survey` VALUES ('1008', '1', '213484', '0', '');
INSERT INTO `dy_survey` VALUES ('1009', '1', '213639', '0', '');
INSERT INTO `dy_survey` VALUES ('1010', '1', '213646', '0', '');
INSERT INTO `dy_survey` VALUES ('1011', '1', '213695', '0', '');
INSERT INTO `dy_survey` VALUES ('1012', '1', '213710', '0', '');
INSERT INTO `dy_survey` VALUES ('1013', '1', '214124', '0', '');
INSERT INTO `dy_survey` VALUES ('1014', '1', '214188', '0', '');
INSERT INTO `dy_survey` VALUES ('1015', '1', '214193', '0', '');
INSERT INTO `dy_survey` VALUES ('1016', '1', '214374', '0', '');
INSERT INTO `dy_survey` VALUES ('1017', '1', '214476', '0', '');
INSERT INTO `dy_survey` VALUES ('1018', '1', '214614', '0', '');
INSERT INTO `dy_survey` VALUES ('1019', '1', '214639', '0', '');
INSERT INTO `dy_survey` VALUES ('1020', '1', '214744', '0', '');
INSERT INTO `dy_survey` VALUES ('1021', '1', '215117', '0', '');
INSERT INTO `dy_survey` VALUES ('1022', '1', '215136', '0', '');
INSERT INTO `dy_survey` VALUES ('1023', '1', '215156', '0', '');
INSERT INTO `dy_survey` VALUES ('1024', '1', '215219', '0', '');
INSERT INTO `dy_survey` VALUES ('1025', '1', '215559', '0', '');
INSERT INTO `dy_survey` VALUES ('1026', '1', '215637', '0', '');
INSERT INTO `dy_survey` VALUES ('1027', '1', '215697', '0', '');
INSERT INTO `dy_survey` VALUES ('1028', '1', '215711', '0', '');
INSERT INTO `dy_survey` VALUES ('1029', '1', '215799', '0', '');
INSERT INTO `dy_survey` VALUES ('1030', '1', '215839', '0', '');
INSERT INTO `dy_survey` VALUES ('1031', '1', '215883', '0', '');
INSERT INTO `dy_survey` VALUES ('1032', '1', '216130', '0', '');
INSERT INTO `dy_survey` VALUES ('1033', '1', '216487', '0', '');
INSERT INTO `dy_survey` VALUES ('1034', '1', '216497', '0', '');
INSERT INTO `dy_survey` VALUES ('1035', '1', '216566', '0', '');
INSERT INTO `dy_survey` VALUES ('1036', '1', '216646', '0', '');
INSERT INTO `dy_survey` VALUES ('1037', '1', '216669', '0', '');
INSERT INTO `dy_survey` VALUES ('1038', '1', '216873', '0', '');
INSERT INTO `dy_survey` VALUES ('1039', '1', '216922', '0', '');
INSERT INTO `dy_survey` VALUES ('1040', '1', '217150', '0', '');
INSERT INTO `dy_survey` VALUES ('1041', '1', '217199', '0', '');
INSERT INTO `dy_survey` VALUES ('1042', '1', '217201', '0', '');
INSERT INTO `dy_survey` VALUES ('1043', '1', '217219', '0', '');
INSERT INTO `dy_survey` VALUES ('1044', '1', '217290', '0', '');
INSERT INTO `dy_survey` VALUES ('1045', '1', '217291', '0', '');
INSERT INTO `dy_survey` VALUES ('1046', '1', '217317', '0', '');
INSERT INTO `dy_survey` VALUES ('1047', '1', '217398', '0', '');
INSERT INTO `dy_survey` VALUES ('1048', '1', '217490', '0', '');
INSERT INTO `dy_survey` VALUES ('1049', '1', '217509', '0', '');
INSERT INTO `dy_survey` VALUES ('1050', '1', '217513', '0', '');
INSERT INTO `dy_survey` VALUES ('1051', '1', '217530', '0', '');
INSERT INTO `dy_survey` VALUES ('1052', '1', '217611', '0', '');
INSERT INTO `dy_survey` VALUES ('1053', '1', '217706', '0', '');
INSERT INTO `dy_survey` VALUES ('1054', '1', '217744', '0', '');
INSERT INTO `dy_survey` VALUES ('1055', '1', '217838', '0', '');
INSERT INTO `dy_survey` VALUES ('1056', '1', '218094', '0', '');
INSERT INTO `dy_survey` VALUES ('1057', '1', '218110', '0', '');
INSERT INTO `dy_survey` VALUES ('1058', '1', '218210', '0', '');
INSERT INTO `dy_survey` VALUES ('1059', '1', '218547', '0', '');
INSERT INTO `dy_survey` VALUES ('1060', '1', '218686', '0', '');
INSERT INTO `dy_survey` VALUES ('1061', '1', '218776', '0', '');
INSERT INTO `dy_survey` VALUES ('1062', '1', '218857', '0', '');
INSERT INTO `dy_survey` VALUES ('1063', '1', '218863', '0', '');
INSERT INTO `dy_survey` VALUES ('1064', '1', '218888', '0', '');
INSERT INTO `dy_survey` VALUES ('1065', '1', '218950', '0', '');
INSERT INTO `dy_survey` VALUES ('1066', '1', '218963', '0', '');
INSERT INTO `dy_survey` VALUES ('1067', '1', '219153', '0', '');
INSERT INTO `dy_survey` VALUES ('1068', '1', '219324', '0', '');
INSERT INTO `dy_survey` VALUES ('1069', '1', '219392', '0', '');
INSERT INTO `dy_survey` VALUES ('1070', '1', '219445', '0', '');
INSERT INTO `dy_survey` VALUES ('1071', '1', '219461', '0', '');
INSERT INTO `dy_survey` VALUES ('1072', '1', '219699', '0', '');
INSERT INTO `dy_survey` VALUES ('1073', '1', '219801', '0', '');
INSERT INTO `dy_survey` VALUES ('1074', '1', '219832', '0', '');
INSERT INTO `dy_survey` VALUES ('1075', '1', '220009', '0', '');
INSERT INTO `dy_survey` VALUES ('1076', '1', '220017', '0', '');
INSERT INTO `dy_survey` VALUES ('1077', '1', '220032', '0', '');
INSERT INTO `dy_survey` VALUES ('1078', '1', '220051', '0', '');
INSERT INTO `dy_survey` VALUES ('1079', '1', '220124', '0', '');
INSERT INTO `dy_survey` VALUES ('1080', '1', '220282', '0', '');
INSERT INTO `dy_survey` VALUES ('1081', '1', '220388', '0', '');
INSERT INTO `dy_survey` VALUES ('1082', '1', '220626', '0', '');
INSERT INTO `dy_survey` VALUES ('1083', '1', '221351', '0', '');
INSERT INTO `dy_survey` VALUES ('1084', '1', '222165', '0', '');
INSERT INTO `dy_survey` VALUES ('1085', '1', '222199', '0', '');
INSERT INTO `dy_survey` VALUES ('1086', '1', '222256', '0', '');
INSERT INTO `dy_survey` VALUES ('1087', '1', '222308', '0', '');
INSERT INTO `dy_survey` VALUES ('1088', '1', '222368', '0', '');
INSERT INTO `dy_survey` VALUES ('1089', '1', '222411', '0', '');
INSERT INTO `dy_survey` VALUES ('1090', '1', '222432', '0', '');
INSERT INTO `dy_survey` VALUES ('1091', '1', '222517', '0', '');
INSERT INTO `dy_survey` VALUES ('1092', '1', '222526', '0', '');
INSERT INTO `dy_survey` VALUES ('1093', '1', '222549', '0', '');
INSERT INTO `dy_survey` VALUES ('1094', '1', '223393', '0', '');
INSERT INTO `dy_survey` VALUES ('1095', '1', '223538', '0', '');
INSERT INTO `dy_survey` VALUES ('1096', '1', '223905', '0', '');
INSERT INTO `dy_survey` VALUES ('1097', '1', '223932', '0', '');
INSERT INTO `dy_survey` VALUES ('1098', '1', '223951', '0', '');
INSERT INTO `dy_survey` VALUES ('1099', '1', '223952', '0', '');
INSERT INTO `dy_survey` VALUES ('1100', '1', '223962', '0', '');
INSERT INTO `dy_survey` VALUES ('1101', '1', '223965', '0', '');
INSERT INTO `dy_survey` VALUES ('1102', '1', '223973', '0', '');
INSERT INTO `dy_survey` VALUES ('1103', '1', '224061', '0', '');
INSERT INTO `dy_survey` VALUES ('1104', '1', '224445', '0', '');
INSERT INTO `dy_survey` VALUES ('1105', '1', '224529', '0', '');
INSERT INTO `dy_survey` VALUES ('1106', '1', '224724', '0', '');
INSERT INTO `dy_survey` VALUES ('1107', '1', '224794', '0', '');
INSERT INTO `dy_survey` VALUES ('1108', '1', '224814', '0', '');
INSERT INTO `dy_survey` VALUES ('1109', '1', '224892', '0', '');
INSERT INTO `dy_survey` VALUES ('1110', '1', '224912', '0', '');
INSERT INTO `dy_survey` VALUES ('1111', '1', '224931', '0', '');
INSERT INTO `dy_survey` VALUES ('1112', '1', '225202', '0', '');
INSERT INTO `dy_survey` VALUES ('1113', '1', '225232', '0', '');
INSERT INTO `dy_survey` VALUES ('1114', '1', '225515', '0', '');
INSERT INTO `dy_survey` VALUES ('1115', '1', '225533', '0', '');
INSERT INTO `dy_survey` VALUES ('1116', '1', '225766', '0', '');
INSERT INTO `dy_survey` VALUES ('1117', '1', '225767', '0', '');
INSERT INTO `dy_survey` VALUES ('1118', '1', '225773', '0', '');
INSERT INTO `dy_survey` VALUES ('1119', '1', '225783', '0', '');
INSERT INTO `dy_survey` VALUES ('1120', '1', '225789', '0', '');
INSERT INTO `dy_survey` VALUES ('1121', '1', '225798', '0', '');
INSERT INTO `dy_survey` VALUES ('1122', '1', '226017', '0', '');
INSERT INTO `dy_survey` VALUES ('1123', '1', '226082', '0', '');
INSERT INTO `dy_survey` VALUES ('1124', '1', '226084', '0', '');
INSERT INTO `dy_survey` VALUES ('1125', '1', '226102', '0', '');
INSERT INTO `dy_survey` VALUES ('1126', '1', '226106', '0', '');
INSERT INTO `dy_survey` VALUES ('1127', '1', '226115', '0', '');
INSERT INTO `dy_survey` VALUES ('1128', '1', '226117', '0', '');
INSERT INTO `dy_survey` VALUES ('1129', '1', '226122', '0', '');
INSERT INTO `dy_survey` VALUES ('1130', '1', '226125', '0', '');
INSERT INTO `dy_survey` VALUES ('1131', '1', '226134', '0', '');
INSERT INTO `dy_survey` VALUES ('1132', '1', '226136', '0', '');
INSERT INTO `dy_survey` VALUES ('1133', '1', '226368', '0', '');
INSERT INTO `dy_survey` VALUES ('1134', '1', '227207', '0', '');
INSERT INTO `dy_survey` VALUES ('1135', '1', '227746', '0', '');
INSERT INTO `dy_survey` VALUES ('1136', '1', '228360', '0', '');
INSERT INTO `dy_survey` VALUES ('1137', '1', '228369', '0', '');
INSERT INTO `dy_survey` VALUES ('1138', '1', '228754', '0', '');
INSERT INTO `dy_survey` VALUES ('1139', '1', '228756', '0', '');
INSERT INTO `dy_survey` VALUES ('1140', '1', '228826', '0', '');
INSERT INTO `dy_survey` VALUES ('1141', '1', '228831', '0', '');
INSERT INTO `dy_survey` VALUES ('1142', '1', '228987', '0', '');
INSERT INTO `dy_survey` VALUES ('1143', '1', '229031', '0', '');
INSERT INTO `dy_survey` VALUES ('1144', '1', '229074', '0', '');
INSERT INTO `dy_survey` VALUES ('1145', '1', '229075', '0', '');
INSERT INTO `dy_survey` VALUES ('1146', '1', '229135', '0', '');
INSERT INTO `dy_survey` VALUES ('1147', '1', '229145', '0', '');
INSERT INTO `dy_survey` VALUES ('1148', '1', '230266', '0', '');
INSERT INTO `dy_survey` VALUES ('1149', '1', '230891', '0', '');
INSERT INTO `dy_survey` VALUES ('1150', '1', '230984', '0', '');
INSERT INTO `dy_survey` VALUES ('1151', '1', '231109', '0', '');
INSERT INTO `dy_survey` VALUES ('1152', '1', '231170', '0', '');
INSERT INTO `dy_survey` VALUES ('1153', '1', '231220', '0', '');
INSERT INTO `dy_survey` VALUES ('1154', '1', '231331', '0', '');
INSERT INTO `dy_survey` VALUES ('1155', '1', '231479', '0', '');
INSERT INTO `dy_survey` VALUES ('1156', '1', '231487', '0', '');
INSERT INTO `dy_survey` VALUES ('1157', '1', '231677', '0', '');
INSERT INTO `dy_survey` VALUES ('1158', '1', '231708', '0', '');
INSERT INTO `dy_survey` VALUES ('1159', '1', '231735', '0', '');
INSERT INTO `dy_survey` VALUES ('1160', '1', '233112', '0', '');
INSERT INTO `dy_survey` VALUES ('1161', '1', '233539', '0', '');
INSERT INTO `dy_survey` VALUES ('1162', '1', '233541', '0', '');
INSERT INTO `dy_survey` VALUES ('1163', '1', '234020', '0', '');
INSERT INTO `dy_survey` VALUES ('1164', '1', '234022', '0', '');
INSERT INTO `dy_survey` VALUES ('1165', '1', '234336', '0', '');
INSERT INTO `dy_survey` VALUES ('1166', '1', '234947', '0', '');
INSERT INTO `dy_survey` VALUES ('1167', '1', '234969', '0', '');
INSERT INTO `dy_survey` VALUES ('1168', '1', '234985', '0', '');
INSERT INTO `dy_survey` VALUES ('1169', '1', '234995', '0', '');
INSERT INTO `dy_survey` VALUES ('1170', '1', '234999', '0', '');
INSERT INTO `dy_survey` VALUES ('1171', '1', '235015', '0', '');
INSERT INTO `dy_survey` VALUES ('1172', '1', '235023', '0', '');
INSERT INTO `dy_survey` VALUES ('1173', '1', '235024', '0', '');
INSERT INTO `dy_survey` VALUES ('1174', '1', '235936', '0', '');
INSERT INTO `dy_survey` VALUES ('1175', '1', '236687', '0', '');
INSERT INTO `dy_survey` VALUES ('1176', '1', '236700', '0', '');
INSERT INTO `dy_survey` VALUES ('1177', '1', '236721', '0', '');
INSERT INTO `dy_survey` VALUES ('1178', '1', '236733', '0', '');
INSERT INTO `dy_survey` VALUES ('1179', '1', '236790', '0', '');
INSERT INTO `dy_survey` VALUES ('1180', '1', '236796', '0', '');
INSERT INTO `dy_survey` VALUES ('1181', '1', '236803', '0', '');
INSERT INTO `dy_survey` VALUES ('1182', '1', '236885', '0', '');
INSERT INTO `dy_survey` VALUES ('1183', '1', '236995', '0', '');
INSERT INTO `dy_survey` VALUES ('1184', '1', '237152', '0', '');
INSERT INTO `dy_survey` VALUES ('1185', '1', '237156', '0', '');
INSERT INTO `dy_survey` VALUES ('1186', '1', '238610', '0', '');
INSERT INTO `dy_survey` VALUES ('1187', '1', '238749', '0', '');
INSERT INTO `dy_survey` VALUES ('1188', '1', '238833', '0', '');
INSERT INTO `dy_survey` VALUES ('1189', '1', '238903', '0', '');
INSERT INTO `dy_survey` VALUES ('1190', '1', '239034', '0', '');
INSERT INTO `dy_survey` VALUES ('1191', '1', '239164', '0', '');
INSERT INTO `dy_survey` VALUES ('1192', '1', '239245', '0', '');
INSERT INTO `dy_survey` VALUES ('1193', '1', '239253', '0', '');
INSERT INTO `dy_survey` VALUES ('1194', '1', '239256', '0', '');
INSERT INTO `dy_survey` VALUES ('1195', '1', '239328', '0', '');
INSERT INTO `dy_survey` VALUES ('1196', '1', '239714', '0', '');
INSERT INTO `dy_survey` VALUES ('1197', '1', '239953', '0', '');
INSERT INTO `dy_survey` VALUES ('1198', '1', '240145', '0', '');
INSERT INTO `dy_survey` VALUES ('1199', '1', '240428', '0', '');
INSERT INTO `dy_survey` VALUES ('1200', '1', '240462', '0', '');
INSERT INTO `dy_survey` VALUES ('1201', '1', '240556', '0', '');
INSERT INTO `dy_survey` VALUES ('1202', '1', '240695', '0', '');
INSERT INTO `dy_survey` VALUES ('1203', '1', '240774', '0', '');
INSERT INTO `dy_survey` VALUES ('1204', '1', '240781', '0', '');
INSERT INTO `dy_survey` VALUES ('1205', '1', '240818', '0', '');
INSERT INTO `dy_survey` VALUES ('1206', '1', '240852', '0', '');
INSERT INTO `dy_survey` VALUES ('1207', '1', '240898', '0', '');
INSERT INTO `dy_survey` VALUES ('1208', '1', '54', '0', '');
INSERT INTO `dy_survey` VALUES ('1209', '1', '408', '0', '');
INSERT INTO `dy_survey` VALUES ('1210', '1', '532', '0', '');
INSERT INTO `dy_survey` VALUES ('1211', '1', '886', '0', '');
INSERT INTO `dy_survey` VALUES ('1212', '1', '1063', '0', '');
INSERT INTO `dy_survey` VALUES ('1213', '1', '1148', '0', '');
INSERT INTO `dy_survey` VALUES ('1214', '1', '1228', '0', '');
INSERT INTO `dy_survey` VALUES ('1215', '1', '1257', '0', '');
INSERT INTO `dy_survey` VALUES ('1216', '1', '1339', '0', '');
INSERT INTO `dy_survey` VALUES ('1217', '1', '1597', '0', '');
INSERT INTO `dy_survey` VALUES ('1218', '1', '1646', '0', '');
INSERT INTO `dy_survey` VALUES ('1219', '1', '1659', '0', '');
INSERT INTO `dy_survey` VALUES ('1220', '1', '1759', '0', '');
INSERT INTO `dy_survey` VALUES ('1221', '1', '1879', '0', '');
INSERT INTO `dy_survey` VALUES ('1222', '1', '3280', '0', '');
INSERT INTO `dy_survey` VALUES ('1223', '1', '3525', '0', '');
INSERT INTO `dy_survey` VALUES ('1224', '1', '3699', '0', '');
INSERT INTO `dy_survey` VALUES ('1225', '1', '3875', '0', '');
INSERT INTO `dy_survey` VALUES ('1226', '1', '3884', '0', '');
INSERT INTO `dy_survey` VALUES ('1227', '1', '3907', '0', '');
INSERT INTO `dy_survey` VALUES ('1228', '1', '3940', '0', '');
INSERT INTO `dy_survey` VALUES ('1229', '1', '4202', '0', '');
INSERT INTO `dy_survey` VALUES ('1230', '1', '4544', '0', '');
INSERT INTO `dy_survey` VALUES ('1231', '1', '5378', '0', '');
INSERT INTO `dy_survey` VALUES ('1232', '1', '5416', '0', '');
INSERT INTO `dy_survey` VALUES ('1233', '1', '5437', '0', '');
INSERT INTO `dy_survey` VALUES ('1234', '1', '5680', '0', '');
INSERT INTO `dy_survey` VALUES ('1235', '1', '5729', '0', '');
INSERT INTO `dy_survey` VALUES ('1236', '1', '5749', '0', '');
INSERT INTO `dy_survey` VALUES ('1237', '1', '5875', '0', '');
INSERT INTO `dy_survey` VALUES ('1238', '1', '6084', '0', '');
INSERT INTO `dy_survey` VALUES ('1239', '1', '6109', '0', '');
INSERT INTO `dy_survey` VALUES ('1240', '1', '6137', '0', '');
INSERT INTO `dy_survey` VALUES ('1241', '1', '6149', '0', '');
INSERT INTO `dy_survey` VALUES ('1242', '1', '6223', '0', '');
INSERT INTO `dy_survey` VALUES ('1243', '1', '6556', '0', '');
INSERT INTO `dy_survey` VALUES ('1244', '1', '6637', '0', '');
INSERT INTO `dy_survey` VALUES ('1245', '1', '6833', '0', '');
INSERT INTO `dy_survey` VALUES ('1246', '1', '6841', '0', '');
INSERT INTO `dy_survey` VALUES ('1247', '1', '7137', '0', '');
INSERT INTO `dy_survey` VALUES ('1248', '1', '7222', '0', '');
INSERT INTO `dy_survey` VALUES ('1249', '1', '7834', '0', '');
INSERT INTO `dy_survey` VALUES ('1250', '1', '7940', '0', '');
INSERT INTO `dy_survey` VALUES ('1251', '1', '8197', '0', '');
INSERT INTO `dy_survey` VALUES ('1252', '1', '8471', '0', '');
INSERT INTO `dy_survey` VALUES ('1253', '1', '8477', '0', '');
INSERT INTO `dy_survey` VALUES ('1254', '1', '8511', '0', '');
INSERT INTO `dy_survey` VALUES ('1255', '1', '8547', '0', '');
INSERT INTO `dy_survey` VALUES ('1256', '1', '8578', '0', '');
INSERT INTO `dy_survey` VALUES ('1257', '1', '8621', '0', '');
INSERT INTO `dy_survey` VALUES ('1258', '1', '8631', '0', '');
INSERT INTO `dy_survey` VALUES ('1259', '1', '9503', '0', '');
INSERT INTO `dy_survey` VALUES ('1260', '1', '9528', '0', '');
INSERT INTO `dy_survey` VALUES ('1261', '1', '9792', '0', '');
INSERT INTO `dy_survey` VALUES ('1262', '1', '10222', '0', '');
INSERT INTO `dy_survey` VALUES ('1263', '1', '10278', '0', '');
INSERT INTO `dy_survey` VALUES ('1264', '1', '10640', '0', '');
INSERT INTO `dy_survey` VALUES ('1265', '1', '10699', '0', '');
INSERT INTO `dy_survey` VALUES ('1266', '1', '10714', '0', '');
INSERT INTO `dy_survey` VALUES ('1267', '1', '10759', '0', '');
INSERT INTO `dy_survey` VALUES ('1268', '1', '10905', '0', '');
INSERT INTO `dy_survey` VALUES ('1269', '1', '10964', '0', '');
INSERT INTO `dy_survey` VALUES ('1270', '1', '10977', '0', '');
INSERT INTO `dy_survey` VALUES ('1271', '1', '11221', '0', '');
INSERT INTO `dy_survey` VALUES ('1272', '1', '11235', '0', '');
INSERT INTO `dy_survey` VALUES ('1273', '1', '11237', '0', '');
INSERT INTO `dy_survey` VALUES ('1274', '1', '11292', '0', '');
INSERT INTO `dy_survey` VALUES ('1275', '1', '11371', '0', '');
INSERT INTO `dy_survey` VALUES ('1276', '1', '11636', '0', '');
INSERT INTO `dy_survey` VALUES ('1277', '1', '11735', '0', '');
INSERT INTO `dy_survey` VALUES ('1278', '1', '11738', '0', '');
INSERT INTO `dy_survey` VALUES ('1279', '1', '12132', '0', '');
INSERT INTO `dy_survey` VALUES ('1280', '1', '12314', '0', '');
INSERT INTO `dy_survey` VALUES ('1281', '1', '12331', '0', '');
INSERT INTO `dy_survey` VALUES ('1282', '1', '12487', '0', '');
INSERT INTO `dy_survey` VALUES ('1283', '1', '12678', '0', '');
INSERT INTO `dy_survey` VALUES ('1284', '1', '12737', '0', '');
INSERT INTO `dy_survey` VALUES ('1285', '1', '12772', '0', '');
INSERT INTO `dy_survey` VALUES ('1286', '1', '12839', '0', '');
INSERT INTO `dy_survey` VALUES ('1287', '1', '12867', '0', '');
INSERT INTO `dy_survey` VALUES ('1288', '1', '13396', '0', '');
INSERT INTO `dy_survey` VALUES ('1289', '1', '13405', '0', '');
INSERT INTO `dy_survey` VALUES ('1290', '1', '13606', '0', '');
INSERT INTO `dy_survey` VALUES ('1291', '1', '13972', '0', '');
INSERT INTO `dy_survey` VALUES ('1292', '1', '13974', '0', '');
INSERT INTO `dy_survey` VALUES ('1293', '1', '14990', '0', '');
INSERT INTO `dy_survey` VALUES ('1294', '1', '15091', '0', '');
INSERT INTO `dy_survey` VALUES ('1295', '1', '15367', '0', '');
INSERT INTO `dy_survey` VALUES ('1296', '1', '15738', '0', '');
INSERT INTO `dy_survey` VALUES ('1297', '1', '16408', '0', '');
INSERT INTO `dy_survey` VALUES ('1298', '1', '17346', '0', '');
INSERT INTO `dy_survey` VALUES ('1299', '1', '18472', '0', '');
INSERT INTO `dy_survey` VALUES ('1300', '1', '18511', '0', '');
INSERT INTO `dy_survey` VALUES ('1301', '1', '18517', '0', '');
INSERT INTO `dy_survey` VALUES ('1302', '1', '18610', '0', '');
INSERT INTO `dy_survey` VALUES ('1303', '1', '18988', '0', '');
INSERT INTO `dy_survey` VALUES ('1304', '1', '19012', '0', '');
INSERT INTO `dy_survey` VALUES ('1305', '1', '19079', '0', '');
INSERT INTO `dy_survey` VALUES ('1306', '1', '19327', '0', '');
INSERT INTO `dy_survey` VALUES ('1307', '1', '19611', '0', '');
INSERT INTO `dy_survey` VALUES ('1308', '1', '20535', '0', '');
INSERT INTO `dy_survey` VALUES ('1309', '1', '20665', '0', '');
INSERT INTO `dy_survey` VALUES ('1310', '1', '20804', '0', '');
INSERT INTO `dy_survey` VALUES ('1311', '1', '20982', '0', '');
INSERT INTO `dy_survey` VALUES ('1312', '1', '21171', '0', '');
INSERT INTO `dy_survey` VALUES ('1313', '1', '21183', '0', '');
INSERT INTO `dy_survey` VALUES ('1314', '1', '21583', '0', '');
INSERT INTO `dy_survey` VALUES ('1315', '1', '21880', '0', '');
INSERT INTO `dy_survey` VALUES ('1316', '1', '22380', '1', '');
INSERT INTO `dy_survey` VALUES ('1317', '1', '22559', '0', '');
INSERT INTO `dy_survey` VALUES ('1318', '1', '22587', '0', '');
INSERT INTO `dy_survey` VALUES ('1319', '1', '22957', '0', '');
INSERT INTO `dy_survey` VALUES ('1320', '1', '22964', '0', '');
INSERT INTO `dy_survey` VALUES ('1321', '1', '23331', '0', '');
INSERT INTO `dy_survey` VALUES ('1322', '1', '23484', '0', '');
INSERT INTO `dy_survey` VALUES ('1323', '1', '23490', '0', '');
INSERT INTO `dy_survey` VALUES ('1324', '1', '23533', '0', '');
INSERT INTO `dy_survey` VALUES ('1325', '1', '23916', '0', '');
INSERT INTO `dy_survey` VALUES ('1326', '1', '24253', '0', '');
INSERT INTO `dy_survey` VALUES ('1327', '1', '24332', '0', '');
INSERT INTO `dy_survey` VALUES ('1328', '1', '24505', '0', '');
INSERT INTO `dy_survey` VALUES ('1329', '1', '24523', '0', '');
INSERT INTO `dy_survey` VALUES ('1330', '1', '25323', '0', '');
INSERT INTO `dy_survey` VALUES ('1331', '1', '25837', '0', '');
INSERT INTO `dy_survey` VALUES ('1332', '1', '25857', '0', '');
INSERT INTO `dy_survey` VALUES ('1333', '1', '25858', '0', '');
INSERT INTO `dy_survey` VALUES ('1334', '1', '25953', '0', '');
INSERT INTO `dy_survey` VALUES ('1335', '1', '26649', '0', '');
INSERT INTO `dy_survey` VALUES ('1336', '1', '26650', '0', '');
INSERT INTO `dy_survey` VALUES ('1337', '1', '26661', '0', '');
INSERT INTO `dy_survey` VALUES ('1338', '1', '26768', '0', '');
INSERT INTO `dy_survey` VALUES ('1339', '1', '26874', '0', '');
INSERT INTO `dy_survey` VALUES ('1340', '1', '27414', '0', '');
INSERT INTO `dy_survey` VALUES ('1341', '1', '27420', '0', '');
INSERT INTO `dy_survey` VALUES ('1342', '1', '28017', '0', '');
INSERT INTO `dy_survey` VALUES ('1343', '1', '28127', '0', '');
INSERT INTO `dy_survey` VALUES ('1344', '1', '28444', '0', '');
INSERT INTO `dy_survey` VALUES ('1345', '1', '29114', '0', '');
INSERT INTO `dy_survey` VALUES ('1346', '1', '29135', '0', '');
INSERT INTO `dy_survey` VALUES ('1347', '1', '29175', '0', '');
INSERT INTO `dy_survey` VALUES ('1348', '1', '29649', '0', '');
INSERT INTO `dy_survey` VALUES ('1349', '1', '29731', '0', '');
INSERT INTO `dy_survey` VALUES ('1350', '1', '29747', '0', '');
INSERT INTO `dy_survey` VALUES ('1351', '1', '29749', '0', '');
INSERT INTO `dy_survey` VALUES ('1352', '1', '29899', '0', '');
INSERT INTO `dy_survey` VALUES ('1353', '1', '30503', '0', '');
INSERT INTO `dy_survey` VALUES ('1354', '1', '30565', '0', '');
INSERT INTO `dy_survey` VALUES ('1355', '1', '30691', '0', '');
INSERT INTO `dy_survey` VALUES ('1356', '1', '31189', '0', '');
INSERT INTO `dy_survey` VALUES ('1357', '1', '31247', '0', '');
INSERT INTO `dy_survey` VALUES ('1358', '1', '31316', '0', '');
INSERT INTO `dy_survey` VALUES ('1359', '1', '31951', '0', '');
INSERT INTO `dy_survey` VALUES ('1360', '1', '31952', '0', '');
INSERT INTO `dy_survey` VALUES ('1361', '1', '31980', '0', '');
INSERT INTO `dy_survey` VALUES ('1362', '1', '32048', '0', '');
INSERT INTO `dy_survey` VALUES ('1363', '1', '32116', '0', '');
INSERT INTO `dy_survey` VALUES ('1364', '1', '32138', '0', '');
INSERT INTO `dy_survey` VALUES ('1365', '1', '32196', '0', '');
INSERT INTO `dy_survey` VALUES ('1366', '1', '32899', '0', '');
INSERT INTO `dy_survey` VALUES ('1367', '1', '33051', '0', '');
INSERT INTO `dy_survey` VALUES ('1368', '1', '33085', '0', '');
INSERT INTO `dy_survey` VALUES ('1369', '1', '33583', '0', '');
INSERT INTO `dy_survey` VALUES ('1370', '1', '34027', '0', '');
INSERT INTO `dy_survey` VALUES ('1371', '1', '34032', '0', '');
INSERT INTO `dy_survey` VALUES ('1372', '1', '34055', '0', '');
INSERT INTO `dy_survey` VALUES ('1373', '1', '34078', '0', '');
INSERT INTO `dy_survey` VALUES ('1374', '1', '34088', '0', '');
INSERT INTO `dy_survey` VALUES ('1375', '1', '34089', '0', '');
INSERT INTO `dy_survey` VALUES ('1376', '1', '34113', '0', '');
INSERT INTO `dy_survey` VALUES ('1377', '1', '34206', '0', '');
INSERT INTO `dy_survey` VALUES ('1378', '1', '34210', '0', '');
INSERT INTO `dy_survey` VALUES ('1379', '1', '34211', '0', '');
INSERT INTO `dy_survey` VALUES ('1380', '1', '34357', '0', '');
INSERT INTO `dy_survey` VALUES ('1381', '1', '34363', '0', '');
INSERT INTO `dy_survey` VALUES ('1382', '1', '34364', '0', '');
INSERT INTO `dy_survey` VALUES ('1383', '1', '34429', '0', '');
INSERT INTO `dy_survey` VALUES ('1384', '1', '34494', '0', '');
INSERT INTO `dy_survey` VALUES ('1385', '1', '34577', '0', '');
INSERT INTO `dy_survey` VALUES ('1386', '1', '34744', '0', '');
INSERT INTO `dy_survey` VALUES ('1387', '1', '34931', '0', '');
INSERT INTO `dy_survey` VALUES ('1388', '1', '35035', '0', '');
INSERT INTO `dy_survey` VALUES ('1389', '1', '35161', '0', '');
INSERT INTO `dy_survey` VALUES ('1390', '1', '35196', '0', '');
INSERT INTO `dy_survey` VALUES ('1391', '1', '35316', '0', '');
INSERT INTO `dy_survey` VALUES ('1392', '1', '35943', '0', '');
INSERT INTO `dy_survey` VALUES ('1393', '1', '35997', '0', '');
INSERT INTO `dy_survey` VALUES ('1394', '1', '36032', '0', '');
INSERT INTO `dy_survey` VALUES ('1395', '1', '36057', '0', '');
INSERT INTO `dy_survey` VALUES ('1396', '1', '36303', '0', '');
INSERT INTO `dy_survey` VALUES ('1397', '1', '36331', '0', '');
INSERT INTO `dy_survey` VALUES ('1398', '1', '36388', '0', '');
INSERT INTO `dy_survey` VALUES ('1399', '1', '36855', '0', '');
INSERT INTO `dy_survey` VALUES ('1400', '1', '36901', '0', '');
INSERT INTO `dy_survey` VALUES ('1401', '1', '36920', '0', '');
INSERT INTO `dy_survey` VALUES ('1402', '1', '37040', '0', '');
INSERT INTO `dy_survey` VALUES ('1403', '1', '37054', '0', '');
INSERT INTO `dy_survey` VALUES ('1404', '1', '37597', '0', '');
INSERT INTO `dy_survey` VALUES ('1405', '1', '37604', '0', '');
INSERT INTO `dy_survey` VALUES ('1406', '1', '37624', '0', '');
INSERT INTO `dy_survey` VALUES ('1407', '1', '37714', '0', '');
INSERT INTO `dy_survey` VALUES ('1408', '1', '38070', '0', '');
INSERT INTO `dy_survey` VALUES ('1409', '1', '38157', '0', '');
INSERT INTO `dy_survey` VALUES ('1410', '1', '38265', '0', '');
INSERT INTO `dy_survey` VALUES ('1411', '1', '38315', '0', '');
INSERT INTO `dy_survey` VALUES ('1412', '1', '38456', '0', '');
INSERT INTO `dy_survey` VALUES ('1413', '1', '38457', '0', '');
INSERT INTO `dy_survey` VALUES ('1414', '1', '38460', '0', '');
INSERT INTO `dy_survey` VALUES ('1415', '1', '38571', '0', '');
INSERT INTO `dy_survey` VALUES ('1416', '1', '38606', '0', '');
INSERT INTO `dy_survey` VALUES ('1417', '1', '38622', '0', '');
INSERT INTO `dy_survey` VALUES ('1418', '1', '38787', '0', '');
INSERT INTO `dy_survey` VALUES ('1419', '1', '38947', '0', '');
INSERT INTO `dy_survey` VALUES ('1420', '1', '39135', '0', '');
INSERT INTO `dy_survey` VALUES ('1421', '1', '39199', '0', '');
INSERT INTO `dy_survey` VALUES ('1422', '1', '40025', '0', '');
INSERT INTO `dy_survey` VALUES ('1423', '1', '40052', '0', '');
INSERT INTO `dy_survey` VALUES ('1424', '1', '40109', '0', '');
INSERT INTO `dy_survey` VALUES ('1425', '1', '40438', '0', '');
INSERT INTO `dy_survey` VALUES ('1426', '1', '40508', '0', '');
INSERT INTO `dy_survey` VALUES ('1427', '1', '40838', '0', '');
INSERT INTO `dy_survey` VALUES ('1428', '1', '41027', '0', '');
INSERT INTO `dy_survey` VALUES ('1429', '1', '41063', '0', '');
INSERT INTO `dy_survey` VALUES ('1430', '1', '41107', '0', '');
INSERT INTO `dy_survey` VALUES ('1431', '1', '41108', '0', '');
INSERT INTO `dy_survey` VALUES ('1432', '1', '41123', '0', '');
INSERT INTO `dy_survey` VALUES ('1433', '1', '41146', '0', '');
INSERT INTO `dy_survey` VALUES ('1434', '1', '41212', '0', '');
INSERT INTO `dy_survey` VALUES ('1435', '1', '41213', '0', '');
INSERT INTO `dy_survey` VALUES ('1436', '1', '41284', '0', '');
INSERT INTO `dy_survey` VALUES ('1437', '1', '41531', '0', '');
INSERT INTO `dy_survey` VALUES ('1438', '1', '41548', '0', '');
INSERT INTO `dy_survey` VALUES ('1439', '1', '41835', '0', '');
INSERT INTO `dy_survey` VALUES ('1440', '1', '41957', '0', '');
INSERT INTO `dy_survey` VALUES ('1441', '1', '41999', '0', '');
INSERT INTO `dy_survey` VALUES ('1442', '1', '42043', '0', '');
INSERT INTO `dy_survey` VALUES ('1443', '1', '42775', '0', '');
INSERT INTO `dy_survey` VALUES ('1444', '1', '42816', '0', '');
INSERT INTO `dy_survey` VALUES ('1445', '1', '42964', '0', '');
INSERT INTO `dy_survey` VALUES ('1446', '1', '43048', '0', '');
INSERT INTO `dy_survey` VALUES ('1447', '1', '43302', '0', '');
INSERT INTO `dy_survey` VALUES ('1448', '1', '43648', '0', '');
INSERT INTO `dy_survey` VALUES ('1449', '1', '43837', '0', '');
INSERT INTO `dy_survey` VALUES ('1450', '1', '44110', '0', '');
INSERT INTO `dy_survey` VALUES ('1451', '1', '44197', '0', '');
INSERT INTO `dy_survey` VALUES ('1452', '1', '44400', '0', '');
INSERT INTO `dy_survey` VALUES ('1453', '1', '44461', '0', '');
INSERT INTO `dy_survey` VALUES ('1454', '1', '44677', '0', '');
INSERT INTO `dy_survey` VALUES ('1455', '1', '44680', '0', '');
INSERT INTO `dy_survey` VALUES ('1456', '1', '44700', '0', '');
INSERT INTO `dy_survey` VALUES ('1457', '1', '44742', '0', '');
INSERT INTO `dy_survey` VALUES ('1458', '1', '44824', '0', '');
INSERT INTO `dy_survey` VALUES ('1459', '1', '44861', '0', '');
INSERT INTO `dy_survey` VALUES ('1460', '1', '44867', '0', '');
INSERT INTO `dy_survey` VALUES ('1461', '1', '44884', '0', '');
INSERT INTO `dy_survey` VALUES ('1462', '1', '45065', '0', '');
INSERT INTO `dy_survey` VALUES ('1463', '1', '45196', '0', '');
INSERT INTO `dy_survey` VALUES ('1464', '1', '45216', '0', '');
INSERT INTO `dy_survey` VALUES ('1465', '1', '45248', '0', '');
INSERT INTO `dy_survey` VALUES ('1466', '1', '45253', '0', '');
INSERT INTO `dy_survey` VALUES ('1467', '1', '45254', '0', '');
INSERT INTO `dy_survey` VALUES ('1468', '1', '45311', '0', '');
INSERT INTO `dy_survey` VALUES ('1469', '1', '45354', '0', '');
INSERT INTO `dy_survey` VALUES ('1470', '1', '45358', '0', '');
INSERT INTO `dy_survey` VALUES ('1471', '1', '45368', '0', '');
INSERT INTO `dy_survey` VALUES ('1472', '1', '45498', '0', '');
INSERT INTO `dy_survey` VALUES ('1473', '1', '45515', '0', '');
INSERT INTO `dy_survey` VALUES ('1474', '1', '45628', '0', '');
INSERT INTO `dy_survey` VALUES ('1475', '1', '45679', '0', '');
INSERT INTO `dy_survey` VALUES ('1476', '1', '45745', '0', '');
INSERT INTO `dy_survey` VALUES ('1477', '1', '45772', '0', '');
INSERT INTO `dy_survey` VALUES ('1478', '1', '45777', '0', '');
INSERT INTO `dy_survey` VALUES ('1479', '1', '45843', '0', '');
INSERT INTO `dy_survey` VALUES ('1480', '1', '45941', '0', '');
INSERT INTO `dy_survey` VALUES ('1481', '1', '45969', '0', '');
INSERT INTO `dy_survey` VALUES ('1482', '1', '46105', '0', '');
INSERT INTO `dy_survey` VALUES ('1483', '1', '46138', '0', '');
INSERT INTO `dy_survey` VALUES ('1484', '1', '46220', '0', '');
INSERT INTO `dy_survey` VALUES ('1485', '1', '46266', '0', '');
INSERT INTO `dy_survey` VALUES ('1486', '1', '46269', '0', '');
INSERT INTO `dy_survey` VALUES ('1487', '1', '46272', '0', '');
INSERT INTO `dy_survey` VALUES ('1488', '1', '46300', '0', '');
INSERT INTO `dy_survey` VALUES ('1489', '1', '46354', '0', '');
INSERT INTO `dy_survey` VALUES ('1490', '1', '46361', '0', '');
INSERT INTO `dy_survey` VALUES ('1491', '1', '46460', '0', '');
INSERT INTO `dy_survey` VALUES ('1492', '1', '46569', '0', '');
INSERT INTO `dy_survey` VALUES ('1493', '1', '46830', '0', '');
INSERT INTO `dy_survey` VALUES ('1494', '1', '46834', '0', '');
INSERT INTO `dy_survey` VALUES ('1495', '1', '46846', '0', '');
INSERT INTO `dy_survey` VALUES ('1496', '1', '46876', '0', '');
INSERT INTO `dy_survey` VALUES ('1497', '1', '46877', '0', '');
INSERT INTO `dy_survey` VALUES ('1498', '1', '46900', '0', '');
INSERT INTO `dy_survey` VALUES ('1499', '1', '46901', '0', '');
INSERT INTO `dy_survey` VALUES ('1500', '1', '46976', '0', '');
INSERT INTO `dy_survey` VALUES ('1501', '1', '47009', '0', '');
INSERT INTO `dy_survey` VALUES ('1502', '1', '47389', '0', '');
INSERT INTO `dy_survey` VALUES ('1503', '1', '47468', '0', '');
INSERT INTO `dy_survey` VALUES ('1504', '1', '47635', '0', '');
INSERT INTO `dy_survey` VALUES ('1505', '1', '47647', '0', '');
INSERT INTO `dy_survey` VALUES ('1506', '1', '47713', '0', '');
INSERT INTO `dy_survey` VALUES ('1507', '1', '47767', '0', '');
INSERT INTO `dy_survey` VALUES ('1508', '1', '47831', '0', '');
INSERT INTO `dy_survey` VALUES ('1509', '1', '47847', '0', '');
INSERT INTO `dy_survey` VALUES ('1510', '1', '47852', '0', '');
INSERT INTO `dy_survey` VALUES ('1511', '1', '47860', '0', '');
INSERT INTO `dy_survey` VALUES ('1512', '1', '47863', '0', '');
INSERT INTO `dy_survey` VALUES ('1513', '1', '47919', '0', '');
INSERT INTO `dy_survey` VALUES ('1514', '1', '47927', '0', '');
INSERT INTO `dy_survey` VALUES ('1515', '1', '47931', '0', '');
INSERT INTO `dy_survey` VALUES ('1516', '1', '47932', '0', '');
INSERT INTO `dy_survey` VALUES ('1517', '1', '47978', '0', '');
INSERT INTO `dy_survey` VALUES ('1518', '1', '48017', '0', '');
INSERT INTO `dy_survey` VALUES ('1519', '1', '48037', '0', '');
INSERT INTO `dy_survey` VALUES ('1520', '1', '48115', '0', '');
INSERT INTO `dy_survey` VALUES ('1521', '1', '48151', '0', '');
INSERT INTO `dy_survey` VALUES ('1522', '1', '48173', '0', '');
INSERT INTO `dy_survey` VALUES ('1523', '1', '48203', '0', '');
INSERT INTO `dy_survey` VALUES ('1524', '1', '48207', '0', '');
INSERT INTO `dy_survey` VALUES ('1525', '1', '48247', '0', '');
INSERT INTO `dy_survey` VALUES ('1526', '1', '48277', '0', '');
INSERT INTO `dy_survey` VALUES ('1527', '1', '48281', '0', '');
INSERT INTO `dy_survey` VALUES ('1528', '1', '48288', '0', '');
INSERT INTO `dy_survey` VALUES ('1529', '1', '48320', '0', '');
INSERT INTO `dy_survey` VALUES ('1530', '1', '48340', '0', '');
INSERT INTO `dy_survey` VALUES ('1531', '1', '48345', '0', '');
INSERT INTO `dy_survey` VALUES ('1532', '1', '48350', '0', '');
INSERT INTO `dy_survey` VALUES ('1533', '1', '48356', '0', '');
INSERT INTO `dy_survey` VALUES ('1534', '1', '48392', '0', '');
INSERT INTO `dy_survey` VALUES ('1535', '1', '48401', '0', '');
INSERT INTO `dy_survey` VALUES ('1536', '1', '48410', '0', '');
INSERT INTO `dy_survey` VALUES ('1537', '1', '48418', '0', '');
INSERT INTO `dy_survey` VALUES ('1538', '1', '48427', '0', '');
INSERT INTO `dy_survey` VALUES ('1539', '1', '48431', '0', '');
INSERT INTO `dy_survey` VALUES ('1540', '1', '48477', '0', '');
INSERT INTO `dy_survey` VALUES ('1541', '1', '48489', '0', '');
INSERT INTO `dy_survey` VALUES ('1542', '1', '48512', '0', '');
INSERT INTO `dy_survey` VALUES ('1543', '1', '48534', '0', '');
INSERT INTO `dy_survey` VALUES ('1544', '1', '48541', '0', '');
INSERT INTO `dy_survey` VALUES ('1545', '1', '48545', '0', '');
INSERT INTO `dy_survey` VALUES ('1546', '1', '48552', '0', '');
INSERT INTO `dy_survey` VALUES ('1547', '1', '48559', '0', '');
INSERT INTO `dy_survey` VALUES ('1548', '1', '48569', '0', '');
INSERT INTO `dy_survey` VALUES ('1549', '1', '48576', '0', '');
INSERT INTO `dy_survey` VALUES ('1550', '1', '48586', '0', '');
INSERT INTO `dy_survey` VALUES ('1551', '1', '48690', '0', '');
INSERT INTO `dy_survey` VALUES ('1552', '1', '48696', '0', '');
INSERT INTO `dy_survey` VALUES ('1553', '1', '48716', '0', '');
INSERT INTO `dy_survey` VALUES ('1554', '1', '48731', '0', '');
INSERT INTO `dy_survey` VALUES ('1555', '1', '48867', '0', '');
INSERT INTO `dy_survey` VALUES ('1556', '1', '48873', '0', '');
INSERT INTO `dy_survey` VALUES ('1557', '1', '48909', '0', '');
INSERT INTO `dy_survey` VALUES ('1558', '1', '48951', '0', '');
INSERT INTO `dy_survey` VALUES ('1559', '1', '48983', '0', '');
INSERT INTO `dy_survey` VALUES ('1560', '1', '49087', '0', '');
INSERT INTO `dy_survey` VALUES ('1561', '1', '49130', '0', '');
INSERT INTO `dy_survey` VALUES ('1562', '1', '49358', '0', '');
INSERT INTO `dy_survey` VALUES ('1563', '1', '49445', '0', '');
INSERT INTO `dy_survey` VALUES ('1564', '1', '49476', '0', '');
INSERT INTO `dy_survey` VALUES ('1565', '1', '49567', '0', '');
INSERT INTO `dy_survey` VALUES ('1566', '1', '49744', '0', '');
INSERT INTO `dy_survey` VALUES ('1567', '1', '49745', '0', '');
INSERT INTO `dy_survey` VALUES ('1568', '1', '49955', '0', '');
INSERT INTO `dy_survey` VALUES ('1569', '1', '50177', '0', '');
INSERT INTO `dy_survey` VALUES ('1570', '1', '50245', '0', '');
INSERT INTO `dy_survey` VALUES ('1571', '1', '50339', '0', '');
INSERT INTO `dy_survey` VALUES ('1572', '1', '50530', '0', '');
INSERT INTO `dy_survey` VALUES ('1573', '1', '50570', '0', '');
INSERT INTO `dy_survey` VALUES ('1574', '1', '50600', '0', '');
INSERT INTO `dy_survey` VALUES ('1575', '1', '50674', '0', '');
INSERT INTO `dy_survey` VALUES ('1576', '1', '50887', '0', '');
INSERT INTO `dy_survey` VALUES ('1577', '1', '51000', '0', '');
INSERT INTO `dy_survey` VALUES ('1578', '1', '51144', '0', '');
INSERT INTO `dy_survey` VALUES ('1579', '1', '51147', '0', '');
INSERT INTO `dy_survey` VALUES ('1580', '1', '51149', '0', '');
INSERT INTO `dy_survey` VALUES ('1581', '1', '51279', '0', '');
INSERT INTO `dy_survey` VALUES ('1582', '1', '51290', '0', '');
INSERT INTO `dy_survey` VALUES ('1583', '1', '51448', '0', '');
INSERT INTO `dy_survey` VALUES ('1584', '1', '51598', '0', '');
INSERT INTO `dy_survey` VALUES ('1585', '1', '52004', '0', '');
INSERT INTO `dy_survey` VALUES ('1586', '1', '52087', '0', '');
INSERT INTO `dy_survey` VALUES ('1587', '1', '52174', '0', '');
INSERT INTO `dy_survey` VALUES ('1588', '1', '52305', '0', '');
INSERT INTO `dy_survey` VALUES ('1589', '1', '52522', '0', '');
INSERT INTO `dy_survey` VALUES ('1590', '1', '52550', '0', '');
INSERT INTO `dy_survey` VALUES ('1591', '1', '52574', '0', '');
INSERT INTO `dy_survey` VALUES ('1592', '1', '52702', '0', '');
INSERT INTO `dy_survey` VALUES ('1593', '1', '53020', '0', '');
INSERT INTO `dy_survey` VALUES ('1594', '1', '53096', '0', '');
INSERT INTO `dy_survey` VALUES ('1595', '1', '53104', '0', '');
INSERT INTO `dy_survey` VALUES ('1596', '1', '53131', '0', '');
INSERT INTO `dy_survey` VALUES ('1597', '1', '53232', '0', '');
INSERT INTO `dy_survey` VALUES ('1598', '1', '53304', '0', '');
INSERT INTO `dy_survey` VALUES ('1599', '1', '53391', '0', '');
INSERT INTO `dy_survey` VALUES ('1600', '1', '53558', '0', '');
INSERT INTO `dy_survey` VALUES ('1601', '1', '53561', '0', '');
INSERT INTO `dy_survey` VALUES ('1602', '1', '53807', '0', '');
INSERT INTO `dy_survey` VALUES ('1603', '1', '53826', '0', '');
INSERT INTO `dy_survey` VALUES ('1604', '1', '53831', '0', '');
INSERT INTO `dy_survey` VALUES ('1605', '1', '54145', '0', '');
INSERT INTO `dy_survey` VALUES ('1606', '1', '54285', '0', '');
INSERT INTO `dy_survey` VALUES ('1607', '1', '54386', '0', '');
INSERT INTO `dy_survey` VALUES ('1608', '1', '54550', '0', '');
INSERT INTO `dy_survey` VALUES ('1609', '1', '54552', '0', '');
INSERT INTO `dy_survey` VALUES ('1610', '1', '54569', '0', '');
INSERT INTO `dy_survey` VALUES ('1611', '1', '55002', '0', '');
INSERT INTO `dy_survey` VALUES ('1612', '1', '55164', '0', '');
INSERT INTO `dy_survey` VALUES ('1613', '1', '55304', '0', '');
INSERT INTO `dy_survey` VALUES ('1614', '1', '55541', '0', '');
INSERT INTO `dy_survey` VALUES ('1615', '1', '55599', '0', '');
INSERT INTO `dy_survey` VALUES ('1616', '1', '55672', '0', '');
INSERT INTO `dy_survey` VALUES ('1617', '1', '56119', '0', '');
INSERT INTO `dy_survey` VALUES ('1618', '1', '56140', '0', '');
INSERT INTO `dy_survey` VALUES ('1619', '1', '56360', '0', '');
INSERT INTO `dy_survey` VALUES ('1620', '1', '56362', '0', '');
INSERT INTO `dy_survey` VALUES ('1621', '1', '56465', '0', '');
INSERT INTO `dy_survey` VALUES ('1622', '1', '56741', '0', '');
INSERT INTO `dy_survey` VALUES ('1623', '1', '56879', '0', '');
INSERT INTO `dy_survey` VALUES ('1624', '1', '56937', '0', '');
INSERT INTO `dy_survey` VALUES ('1625', '1', '56960', '0', '');
INSERT INTO `dy_survey` VALUES ('1626', '1', '57173', '0', '');
INSERT INTO `dy_survey` VALUES ('1627', '1', '57183', '0', '');
INSERT INTO `dy_survey` VALUES ('1628', '1', '57193', '0', '');
INSERT INTO `dy_survey` VALUES ('1629', '1', '57254', '0', '');
INSERT INTO `dy_survey` VALUES ('1630', '1', '57532', '0', '');
INSERT INTO `dy_survey` VALUES ('1631', '1', '57556', '0', '');
INSERT INTO `dy_survey` VALUES ('1632', '1', '57615', '0', '');
INSERT INTO `dy_survey` VALUES ('1633', '1', '57677', '0', '');
INSERT INTO `dy_survey` VALUES ('1634', '1', '57829', '0', '');
INSERT INTO `dy_survey` VALUES ('1635', '1', '57975', '0', '');
INSERT INTO `dy_survey` VALUES ('1636', '1', '57986', '0', '');
INSERT INTO `dy_survey` VALUES ('1637', '1', '58032', '0', '');
INSERT INTO `dy_survey` VALUES ('1638', '1', '58068', '0', '');
INSERT INTO `dy_survey` VALUES ('1639', '1', '58073', '0', '');
INSERT INTO `dy_survey` VALUES ('1640', '1', '58080', '0', '');
INSERT INTO `dy_survey` VALUES ('1641', '1', '58161', '0', '');
INSERT INTO `dy_survey` VALUES ('1642', '1', '58265', '0', '');
INSERT INTO `dy_survey` VALUES ('1643', '1', '58314', '0', '');
INSERT INTO `dy_survey` VALUES ('1644', '1', '58393', '0', '');
INSERT INTO `dy_survey` VALUES ('1645', '1', '58435', '0', '');
INSERT INTO `dy_survey` VALUES ('1646', '1', '58542', '0', '');
INSERT INTO `dy_survey` VALUES ('1647', '1', '58575', '0', '');
INSERT INTO `dy_survey` VALUES ('1648', '1', '58626', '0', '');
INSERT INTO `dy_survey` VALUES ('1649', '1', '58752', '0', '');
INSERT INTO `dy_survey` VALUES ('1650', '1', '58761', '0', '');
INSERT INTO `dy_survey` VALUES ('1651', '1', '58847', '0', '');
INSERT INTO `dy_survey` VALUES ('1652', '1', '58854', '0', '');
INSERT INTO `dy_survey` VALUES ('1653', '1', '58943', '0', '');
INSERT INTO `dy_survey` VALUES ('1654', '1', '59026', '0', '');
INSERT INTO `dy_survey` VALUES ('1655', '1', '59029', '0', '');
INSERT INTO `dy_survey` VALUES ('1656', '1', '59191', '0', '');
INSERT INTO `dy_survey` VALUES ('1657', '1', '59322', '0', '');
INSERT INTO `dy_survey` VALUES ('1658', '1', '59365', '0', '');
INSERT INTO `dy_survey` VALUES ('1659', '1', '59474', '0', '');
INSERT INTO `dy_survey` VALUES ('1660', '1', '59582', '0', '');
INSERT INTO `dy_survey` VALUES ('1661', '1', '59779', '0', '');
INSERT INTO `dy_survey` VALUES ('1662', '1', '59811', '0', '');
INSERT INTO `dy_survey` VALUES ('1663', '1', '59873', '0', '');
INSERT INTO `dy_survey` VALUES ('1664', '1', '59904', '0', '');
INSERT INTO `dy_survey` VALUES ('1665', '1', '60043', '0', '');
INSERT INTO `dy_survey` VALUES ('1666', '1', '60088', '0', '');
INSERT INTO `dy_survey` VALUES ('1667', '1', '60142', '0', '');
INSERT INTO `dy_survey` VALUES ('1668', '1', '60524', '0', '');
INSERT INTO `dy_survey` VALUES ('1669', '1', '60549', '0', '');
INSERT INTO `dy_survey` VALUES ('1670', '1', '60705', '0', '');
INSERT INTO `dy_survey` VALUES ('1671', '1', '60737', '0', '');
INSERT INTO `dy_survey` VALUES ('1672', '1', '60822', '0', '');
INSERT INTO `dy_survey` VALUES ('1673', '1', '60917', '0', '');
INSERT INTO `dy_survey` VALUES ('1674', '1', '61050', '0', '');
INSERT INTO `dy_survey` VALUES ('1675', '1', '61085', '0', '');
INSERT INTO `dy_survey` VALUES ('1676', '1', '61149', '0', '');
INSERT INTO `dy_survey` VALUES ('1677', '1', '61158', '0', '');
INSERT INTO `dy_survey` VALUES ('1678', '1', '61233', '0', '');
INSERT INTO `dy_survey` VALUES ('1679', '1', '61234', '0', '');
INSERT INTO `dy_survey` VALUES ('1680', '1', '61559', '0', '');
INSERT INTO `dy_survey` VALUES ('1681', '1', '61660', '0', '');
INSERT INTO `dy_survey` VALUES ('1682', '1', '61668', '0', '');
INSERT INTO `dy_survey` VALUES ('1683', '1', '61904', '0', '');
INSERT INTO `dy_survey` VALUES ('1684', '1', '61996', '0', '');
INSERT INTO `dy_survey` VALUES ('1685', '1', '62061', '0', '');
INSERT INTO `dy_survey` VALUES ('1686', '1', '62122', '0', '');
INSERT INTO `dy_survey` VALUES ('1687', '1', '62183', '0', '');
INSERT INTO `dy_survey` VALUES ('1688', '1', '62244', '0', '');
INSERT INTO `dy_survey` VALUES ('1689', '1', '62269', '0', '');
INSERT INTO `dy_survey` VALUES ('1690', '1', '62581', '0', '');
INSERT INTO `dy_survey` VALUES ('1691', '1', '62659', '0', '');
INSERT INTO `dy_survey` VALUES ('1692', '1', '62733', '0', '');
INSERT INTO `dy_survey` VALUES ('1693', '1', '62836', '0', '');
INSERT INTO `dy_survey` VALUES ('1694', '1', '62901', '0', '');
INSERT INTO `dy_survey` VALUES ('1695', '1', '62971', '0', '');
INSERT INTO `dy_survey` VALUES ('1696', '1', '62993', '0', '');
INSERT INTO `dy_survey` VALUES ('1697', '1', '63411', '0', '');
INSERT INTO `dy_survey` VALUES ('1698', '1', '63490', '0', '');
INSERT INTO `dy_survey` VALUES ('1699', '1', '63492', '0', '');
INSERT INTO `dy_survey` VALUES ('1700', '1', '63494', '0', '');
INSERT INTO `dy_survey` VALUES ('1701', '1', '63633', '0', '');
INSERT INTO `dy_survey` VALUES ('1702', '1', '63746', '0', '');
INSERT INTO `dy_survey` VALUES ('1703', '1', '63899', '0', '');
INSERT INTO `dy_survey` VALUES ('1704', '1', '63909', '0', '');
INSERT INTO `dy_survey` VALUES ('1705', '1', '64121', '0', '');
INSERT INTO `dy_survey` VALUES ('1706', '1', '64199', '0', '');
INSERT INTO `dy_survey` VALUES ('1707', '1', '64407', '0', '');
INSERT INTO `dy_survey` VALUES ('1708', '1', '65048', '0', '');
INSERT INTO `dy_survey` VALUES ('1709', '1', '65066', '0', '');
INSERT INTO `dy_survey` VALUES ('1710', '1', '65137', '0', '');
INSERT INTO `dy_survey` VALUES ('1711', '1', '65177', '0', '');
INSERT INTO `dy_survey` VALUES ('1712', '1', '65202', '0', '');
INSERT INTO `dy_survey` VALUES ('1713', '1', '65345', '0', '');
INSERT INTO `dy_survey` VALUES ('1714', '1', '65357', '0', '');
INSERT INTO `dy_survey` VALUES ('1715', '1', '65468', '0', '');
INSERT INTO `dy_survey` VALUES ('1716', '1', '65758', '0', '');
INSERT INTO `dy_survey` VALUES ('1717', '1', '65837', '0', '');
INSERT INTO `dy_survey` VALUES ('1718', '1', '65849', '0', '');
INSERT INTO `dy_survey` VALUES ('1719', '1', '65874', '0', '');
INSERT INTO `dy_survey` VALUES ('1720', '1', '65888', '0', '');
INSERT INTO `dy_survey` VALUES ('1721', '1', '65999', '0', '');
INSERT INTO `dy_survey` VALUES ('1722', '1', '66093', '0', '');
INSERT INTO `dy_survey` VALUES ('1723', '1', '66284', '0', '');
INSERT INTO `dy_survey` VALUES ('1724', '1', '66400', '0', '');
INSERT INTO `dy_survey` VALUES ('1725', '1', '66404', '0', '');
INSERT INTO `dy_survey` VALUES ('1726', '1', '66408', '0', '');
INSERT INTO `dy_survey` VALUES ('1727', '1', '66560', '0', '');
INSERT INTO `dy_survey` VALUES ('1728', '1', '66770', '0', '');
INSERT INTO `dy_survey` VALUES ('1729', '1', '66824', '0', '');
INSERT INTO `dy_survey` VALUES ('1730', '1', '66989', '0', '');
INSERT INTO `dy_survey` VALUES ('1731', '1', '66999', '0', '');
INSERT INTO `dy_survey` VALUES ('1732', '1', '67088', '0', '');
INSERT INTO `dy_survey` VALUES ('1733', '1', '67121', '0', '');
INSERT INTO `dy_survey` VALUES ('1734', '1', '67124', '0', '');
INSERT INTO `dy_survey` VALUES ('1735', '1', '67195', '0', '');
INSERT INTO `dy_survey` VALUES ('1736', '1', '67323', '0', '');
INSERT INTO `dy_survey` VALUES ('1737', '1', '67439', '0', '');
INSERT INTO `dy_survey` VALUES ('1738', '1', '67443', '0', '');
INSERT INTO `dy_survey` VALUES ('1739', '1', '67458', '0', '');
INSERT INTO `dy_survey` VALUES ('1740', '1', '67539', '0', '');
INSERT INTO `dy_survey` VALUES ('1741', '1', '67659', '0', '');
INSERT INTO `dy_survey` VALUES ('1742', '1', '67719', '0', '');
INSERT INTO `dy_survey` VALUES ('1743', '1', '67751', '0', '');
INSERT INTO `dy_survey` VALUES ('1744', '1', '67787', '0', '');
INSERT INTO `dy_survey` VALUES ('1745', '1', '68158', '0', '');
INSERT INTO `dy_survey` VALUES ('1746', '1', '68357', '0', '');
INSERT INTO `dy_survey` VALUES ('1747', '1', '68423', '0', '');
INSERT INTO `dy_survey` VALUES ('1748', '1', '68453', '0', '');
INSERT INTO `dy_survey` VALUES ('1749', '1', '68459', '0', '');
INSERT INTO `dy_survey` VALUES ('1750', '1', '68539', '0', '');
INSERT INTO `dy_survey` VALUES ('1751', '1', '68593', '0', '');
INSERT INTO `dy_survey` VALUES ('1752', '1', '68649', '0', '');
INSERT INTO `dy_survey` VALUES ('1753', '1', '68726', '0', '');
INSERT INTO `dy_survey` VALUES ('1754', '1', '68799', '0', '');
INSERT INTO `dy_survey` VALUES ('1755', '1', '68873', '0', '');
INSERT INTO `dy_survey` VALUES ('1756', '1', '68889', '0', '');
INSERT INTO `dy_survey` VALUES ('1757', '1', '69037', '0', '');
INSERT INTO `dy_survey` VALUES ('1758', '1', '69038', '0', '');
INSERT INTO `dy_survey` VALUES ('1759', '1', '69101', '0', '');
INSERT INTO `dy_survey` VALUES ('1760', '1', '69159', '0', '');
INSERT INTO `dy_survey` VALUES ('1761', '1', '69266', '0', '');
INSERT INTO `dy_survey` VALUES ('1762', '1', '69499', '0', '');
INSERT INTO `dy_survey` VALUES ('1763', '1', '69532', '0', '');
INSERT INTO `dy_survey` VALUES ('1764', '1', '69753', '0', '');
INSERT INTO `dy_survey` VALUES ('1765', '1', '69905', '1', '');
INSERT INTO `dy_survey` VALUES ('1766', '1', '69990', '0', '');
INSERT INTO `dy_survey` VALUES ('1767', '1', '70026', '0', '');
INSERT INTO `dy_survey` VALUES ('1768', '1', '70224', '0', '');
INSERT INTO `dy_survey` VALUES ('1769', '1', '70270', '0', '');
INSERT INTO `dy_survey` VALUES ('1770', '1', '70346', '0', '');
INSERT INTO `dy_survey` VALUES ('1771', '1', '70358', '0', '');
INSERT INTO `dy_survey` VALUES ('1772', '1', '70428', '0', '');
INSERT INTO `dy_survey` VALUES ('1773', '1', '70465', '0', '');
INSERT INTO `dy_survey` VALUES ('1774', '1', '70515', '0', '');
INSERT INTO `dy_survey` VALUES ('1775', '1', '70531', '0', '');
INSERT INTO `dy_survey` VALUES ('1776', '1', '70668', '0', '');
INSERT INTO `dy_survey` VALUES ('1777', '1', '70747', '0', '');
INSERT INTO `dy_survey` VALUES ('1778', '1', '70790', '0', '');
INSERT INTO `dy_survey` VALUES ('1779', '1', '70829', '0', '');
INSERT INTO `dy_survey` VALUES ('1780', '1', '70920', '0', '');
INSERT INTO `dy_survey` VALUES ('1781', '1', '71006', '0', '');
INSERT INTO `dy_survey` VALUES ('1782', '1', '71013', '0', '');
INSERT INTO `dy_survey` VALUES ('1783', '1', '71160', '0', '');
INSERT INTO `dy_survey` VALUES ('1784', '1', '71216', '0', '');
INSERT INTO `dy_survey` VALUES ('1785', '1', '71512', '0', '');
INSERT INTO `dy_survey` VALUES ('1786', '1', '71589', '0', '');
INSERT INTO `dy_survey` VALUES ('1787', '1', '71659', '0', '');
INSERT INTO `dy_survey` VALUES ('1788', '1', '72061', '0', '');
INSERT INTO `dy_survey` VALUES ('1789', '1', '72116', '0', '');
INSERT INTO `dy_survey` VALUES ('1790', '1', '72175', '0', '');
INSERT INTO `dy_survey` VALUES ('1791', '1', '72304', '0', '');
INSERT INTO `dy_survey` VALUES ('1792', '1', '72311', '0', '');
INSERT INTO `dy_survey` VALUES ('1793', '1', '72518', '0', '');
INSERT INTO `dy_survey` VALUES ('1794', '1', '72537', '0', '');
INSERT INTO `dy_survey` VALUES ('1795', '1', '72552', '0', '');
INSERT INTO `dy_survey` VALUES ('1796', '1', '72642', '0', '');

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
INSERT INTO `dy_user` VALUES ('1', 'admin', '管理员', 'p1_b876b471b5d8957045182cd8a665b176', '1452444140', '2130706433', '69', '614422099@qq.com', '614422099', '', '1362651445', '127.0.0.1', '0', '1');
INSERT INTO `dy_user` VALUES ('2', 'test', '测试', 'p1_b876b471b5d8957045182cd8a665b176', '1437465710', '125.122.114.23', '140', 'xyblog@dingxiaoyu.com', '0', '', '0', null, '1372266444', '1');
