-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2013 年 06 月 20 日 22:22
-- 服务器版本: 5.5.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_xyblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `dy_access`
--

CREATE TABLE IF NOT EXISTS `dy_access` (
  `role_id` smallint(6) unsigned NOT NULL COMMENT '角色id',
  `node_id` smallint(6) unsigned NOT NULL COMMENT '节点id',
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dy_access`
--

INSERT INTO `dy_access` (`role_id`, `node_id`, `level`, `module`) VALUES
(1, 4, 2, NULL),
(1, 5, 3, NULL),
(1, 6, 2, NULL),
(1, 1, 1, NULL),
(1, 2, 2, NULL),
(1, 3, 3, NULL),
(1, 7, 3, NULL),
(1, 8, 3, NULL),
(1, 9, 3, NULL),
(1, 10, 3, NULL),
(1, 11, 3, NULL),
(1, 12, 3, NULL),
(1, 13, 3, NULL),
(1, 14, 3, NULL),
(1, 15, 3, NULL),
(1, 16, 3, NULL),
(1, 17, 3, NULL),
(1, 18, 3, NULL),
(1, 19, 2, NULL),
(1, 20, 3, NULL),
(1, 21, 3, NULL),
(1, 22, 3, NULL),
(1, 23, 3, NULL),
(1, 24, 3, NULL),
(1, 25, 3, NULL),
(1, 26, 3, NULL),
(1, 27, 2, NULL),
(1, 28, 3, NULL),
(1, 29, 3, NULL),
(1, 30, 3, NULL),
(1, 31, 3, NULL),
(1, 32, 3, NULL),
(1, 33, 3, NULL),
(1, 34, 3, NULL),
(1, 35, 3, NULL),
(1, 36, 3, NULL),
(1, 37, 3, NULL),
(1, 38, 3, NULL),
(1, 39, 3, NULL),
(1, 40, 2, NULL),
(1, 41, 3, NULL),
(2, 1, 1, NULL),
(2, 2, 2, NULL),
(2, 3, 3, NULL),
(2, 4, 2, NULL),
(2, 5, 3, NULL),
(2, 6, 2, NULL),
(2, 7, 3, NULL),
(2, 8, 3, NULL),
(2, 13, 3, NULL),
(2, 19, 2, NULL),
(2, 20, 3, NULL),
(2, 27, 2, NULL),
(2, 28, 3, NULL),
(2, 29, 3, NULL),
(2, 38, 3, NULL),
(2, 39, 3, NULL),
(2, 40, 2, NULL),
(2, 41, 3, NULL),
(2, 13, 2, NULL),
(1, 4, 2, NULL),
(1, 5, 3, NULL),
(1, 6, 2, NULL),
(1, 1, 1, NULL),
(1, 2, 2, NULL),
(1, 3, 3, NULL),
(1, 7, 3, NULL),
(1, 8, 3, NULL),
(1, 9, 3, NULL),
(1, 10, 3, NULL),
(1, 11, 3, NULL),
(1, 12, 3, NULL),
(1, 13, 3, NULL),
(1, 14, 3, NULL),
(1, 15, 3, NULL),
(1, 16, 3, NULL),
(1, 17, 3, NULL),
(1, 18, 3, NULL),
(1, 19, 2, NULL),
(1, 20, 3, NULL),
(1, 21, 3, NULL),
(1, 22, 3, NULL),
(1, 23, 3, NULL),
(1, 24, 3, NULL),
(1, 25, 3, NULL),
(1, 26, 3, NULL),
(1, 27, 2, NULL),
(1, 28, 3, NULL),
(1, 29, 3, NULL),
(1, 30, 3, NULL),
(1, 31, 3, NULL),
(1, 32, 3, NULL),
(1, 33, 3, NULL),
(1, 34, 3, NULL),
(1, 35, 3, NULL),
(1, 36, 3, NULL),
(1, 37, 3, NULL),
(1, 38, 3, NULL),
(1, 39, 3, NULL),
(1, 40, 2, NULL),
(1, 41, 3, NULL),
(2, 1, 1, NULL),
(2, 2, 2, NULL),
(2, 3, 3, NULL),
(2, 4, 2, NULL),
(2, 5, 3, NULL),
(2, 6, 2, NULL),
(2, 7, 3, NULL),
(2, 8, 3, NULL),
(2, 13, 3, NULL),
(2, 19, 2, NULL),
(2, 20, 3, NULL),
(2, 27, 2, NULL),
(2, 28, 3, NULL),
(2, 29, 3, NULL),
(2, 38, 3, NULL),
(2, 39, 3, NULL),
(2, 40, 2, NULL),
(2, 41, 3, NULL),
(2, 13, 2, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dy_blogs`
--

CREATE TABLE IF NOT EXISTS `dy_blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `title` varchar(50) NOT NULL COMMENT '日志标题',
  `url` varchar(50) NOT NULL COMMENT '友好url',
  `content` varchar(4000) NOT NULL COMMENT '日志内容',
  `tag` varchar(500) NOT NULL COMMENT '关键词（标签）',
  `description` varchar(500) NOT NULL COMMENT '描述',
  `ip` varchar(40) NOT NULL COMMENT 'ip',
  `createTime` int(11) unsigned DEFAULT NULL COMMENT '发表时间',
  `updateTime` int(11) unsigned DEFAULT NULL COMMENT '最后更新时间',
  `isTop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `pwd` varchar(60) DEFAULT NULL COMMENT '查看密码',
  `count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数量',
  `userId` int(11) unsigned DEFAULT NULL COMMENT '发表用户id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dy_blogs`
--

INSERT INTO `dy_blogs` (`id`, `title`, `url`, `content`, `tag`, `description`, `ip`, `createTime`, `updateTime`, `isTop`, `pwd`, `count`, `userId`, `status`) VALUES
(1, '世界你好', 'first', '<p>你好，世界。</p><p><br /></p><p>by Xy Blog。</p><p>2013年5月16日 20:11:55</p><p>localhost<br /></p>', '小雨,blog,你好，世界。', '', '', 1368628954, 1368879136, 0, '', 0, 1, 1),
(2, '更新日志', 'change log', '<p style="text-align:left;"><br /></p><p style="text-align:left;">2013年5月15日 &nbsp;</p><blockquote><p style="text-align:left;">完成项目目录，配置TP框架</p></blockquote><p style="text-align:left;">2013年5月16日 &nbsp;<br /></p><blockquote><p style="text-align:left;">移植后台模版，设计博客数据库</p></blockquote><p style="text-align:left;">2013年5月17日 &nbsp;<br /></p><blockquote><p style="text-align:left;">设计博客浏览页，移植TP官网模版</p></blockquote><p style="text-align:left;">2013年5月18日 &nbsp;<br /></p><blockquote><p style="text-align:left;">上传云空间（SAE,BAE）,进行第一次修改，完善数据库link表，修复html的HEAD描述和关键词<br /></p></blockquote><p style="text-align:left;">2013年5月19日 </p><blockquote><p style="text-align:left;">0:14:34 &nbsp; &nbsp;前台留言初步完成。</p><p style="text-align:left;">13:03:51 &nbsp; &nbsp;后台留言管理初步完成</p><p style="text-align:left;">17:24:27 &nbsp; &nbsp;增加反馈管理</p><p style="text-align:left;">17:24:34 &nbsp; &nbsp;日志，留言，反馈 删除修复</p></blockquote><p style="text-align:left;">2013年5月20日</p><blockquote><p style="text-align:left;">修复SAE云平台部署<br /></p></blockquote><p style="text-align:left;">2013-05-21</p><blockquote><p style="text-align:left;">13:10:55 &nbsp; &nbsp;完成留言列表，留言审核</p></blockquote><p style="text-align:left;">2013-05-22</p><blockquote><p style="text-align:left;">0:14:06 &nbsp; &nbsp;完成后台留言管理，完成评论以及评论管理</p><p style="text-align:left;">20:22:36 &nbsp; 完成Home分组下的二维码生成，增加测试账户</p><p style="text-align:left;">23:37:33 &nbsp; 开放后台测试</p></blockquote><p style="text-align:left;">2013-05-24</p><blockquote><p style="text-align:left;">完成二级评论的实现，已在博客页和留言页实现</p><p style="text-align:left;">优化后台显示</p></blockquote><p style="text-align:left;">2013-05-25</p><blockquote><p style="text-align:left;">13:39:44 &nbsp; &nbsp;完成留言邮箱提醒，二级评论邮箱提醒，修复id错误时提醒</p></blockquote><p style="text-align:left;">2013-05-26</p><blockquote><p style="text-align:left;">0:33:51 &nbsp; &nbsp;完成数据库配置部分，及其生效部分，现已实现：博客开关，回复审核，邮箱通知开关</p><p style="text-align:left;">0:52:49 &nbsp; &nbsp;修复博客评论邮件通知内容里的链接地址，留言部分新增主页项</p></blockquote><p>2013-06-15</p><blockquote><p>15:23:10 &nbsp; &nbsp;完成博客初级配置部分，邮件配置部分</p><p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;完成rss生成，完成百度和谷歌的ping服务<br /></p></blockquote><p dir="rtl">小雨<br /></p>', '日志,小雨,blog,xyblog', '', '', 1368628954, 1371281051, 1, NULL, 0, 1, 1),
(3, '求暑假工机会', '', '<p>本人资料在首页上略有介绍，今年高三，高考的话题不太愿意提起，成绩太差。</p><p>而在高考结束，就会有三个月的暑假，考虑到其他原因，也有两个月的时间，不太想在家待着。</p><p>说到这里，就要再对自己进行进一步介绍了。</p><p>本人，来自农村，至此尚未走出，曾趁暑假随外出打工的父母去过广东两次，随对大城市有这些许向往。</p><p>虽来自农村，但却也较早的接触到计算机（相比于同伴，无法与大城市相比），在对计算机接触的六年里，前三年懵懵懂懂，在虚拟世界里游荡，曾参与过现在很多游戏的内测，曾沉迷过网络文学（网络小说），也曾作为白痴般的小白混迹于曾经的黑客论坛。</p><p>在进入高中后，意识到，那些都是虚幻，自学计算机知识。</p><p>在这里不得不说自己对于计算机的自学能力，在无人帮助，没有门路的情况下，学习至此，很是辛苦。当初的条件，不可谓不辛苦。</p><p>在初一一年里学习计算机基础知识，恶补很多理论知识，编程的一些理论和网站建设的一些理论。写到这里，又想起当初接触到这些的时候域名还是廉价品，几元一个；空间还可以申请免费的，而且免备案，只可惜恰巧错过。</p><p><br /></p><p>好像前面说到的都是无用的，下面说下我能做些什么吧。</p><p><br /></p><p>如同这个博客，在所懂的‘编程’里，较擅长的就是这个PHP动态网页编程了。</p><p>其次，对于C#,也有所基础，不得不说的是接触才不过两个月，但是已有一个插件作品。</p><p>其实，对于计算机的维护和一般问题的维修及组装，也懂些许，（当然一般主板芯片什么的无能为力）。</p><p>在高中三年里，高二的时候班级里配置了多媒体，在参与多媒体维护的时间里，学习到不少东西，也对系统有了不少的认识。</p><p>另外Java的编程也能看懂一些，但独立编程尚不能完成。</p><p><br /></p><p>其实这些都是次要，我最想表达的是我的学习能力，而且是计算机方面的学习能力。</p><p>上面这些都是在学校学习的同时完成的，而上面的学习都是通过当初诺基亚6700s的智能机，学习的理论知识，不要不相信，都是通过uc上网查资料学习理论，很少有实践的机会。</p><p><br /></p><p>如果你那里有工作的机会，还请考虑我一下，但是很抱歉的是我只能作为暑假工参与，因为我暂时还不能放弃学业，纵使高考最后只是大专。</p><p><br /></p><p>联系方式:</p><p>QQ:614422099</p><p>邮箱：614422099@qq.com</p><p><br /></p><p>工作地点不限，暑假打算自己外出闯荡一番。</p>', '', '', '', 1369114395, 1369114657, 1, NULL, 0, 1, 1),
(4, '开放后台测试', 'test', '<p>现已开放后台测试登陆。</p><blockquote><p>用户名：<strong>test</strong></p><p>密码：<strong>123456</strong></p></blockquote><p>已封闭测试用户的密码修改和资料修改。</p><p>开放各模块的浏览权限，但未开放编辑和增加权限。</p><p><br /></p><p>其实，后台只有基本功能，设置模块和附件管理模块还在本地测试中。</p><p>所以只有，博客管理，评价管理，和留言管理。<br /></p>', '', '', '', 1369233741, 1369237906, 1, NULL, 0, 1, 1),
(5, '已实现离线二维码功能', 'qrcode', '<p>今天下午已完成二维码的生成功能。</p><p><br /></p><p>前台已部署上。</p><p>后续会支持二维码登陆功能。</p><p><br /></p><p>二维码在每个页面的右侧上方悬浮。</p><p><br /></p><p>可以使用你的手机进行扫描了，测试看看哦！<br /></p>', '', '', '', 1369237829, NULL, 0, NULL, 0, 1, 1),
(6, '笔记本键盘坏了，而且又快高考，停两天', '', '<p>笔记本从昨天键盘就出问题了，大概是上档键短路了，电脑开机后一直警报，正在想办法换个键盘。<br />而且马上又要高考，所以这个博客的编写要等两天了，放心，时间不会很长，还有一个周就快考试了。最多15天，就会回来的。<br /></p>', '', '', '', 1369707474, NULL, 0, NULL, 0, 1, 0),
(7, '还真有人刷评论', '', '<p>没想到还没完成的博客也有人刷评论广告，没办法，先开启审核。<br /></p>', '', '', '', 1371282084, NULL, 0, NULL, 0, 1, 1),
(8, '什么是RSS？', '', '<p><strong>RSS的定义</strong></p><p><br /> &nbsp; &nbsp;RSS(Really Simple Syndication)是一种描述和同步网站内容的格式，是目前使用最广泛的XML应用。<br />RSS是一种起源于网景的推技术，将订户订阅的内容传送给他们的通讯协同格式(Protocol)。RSS可以是以下三个解释的其中一个： <br /> &nbsp; Really Simple Syndication <br /> &nbsp; RDF (Resource Description Framework) Site Summary <br /> &nbsp; Rich Site Summary <br /> &nbsp; 其实这三个解释都是指同一种Syndication的技术。 RSS目前广泛用于网上新闻频道，blog和wiki，主要的版本有0.91, 1.0, 2.0。<br /><br /><strong>本站的RSS地址</strong></p><p><br /> &nbsp; &nbsp;<a href="http://dingxiaoyu.com/Rss">http://dingxiaoyu.com/Rss</a><br /></p><p><br /></p><p> <strong>RSS会帮您更好的节省时间</strong></p><p><br /> &nbsp; &nbsp;如果您每天都上网看咨询/技术/朋友的BLOG，那么您如果每个网站/BLOG都去翻一遍的话，那么会使您那宝贵的时间更加的“宝贵”！所以如果 您使用一个RSS阅读器（Google Reader、抓虾都是不错的RSS阅读器）的话，会节省大量的时间.</p>', '', '', '', 1371285801, NULL, 0, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dy_comment`
--

CREATE TABLE IF NOT EXISTS `dy_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `userName` varchar(60) NOT NULL COMMENT '评论者昵称',
  `userId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论者ID',
  `email` varchar(100) NOT NULL COMMENT '评论者邮箱',
  `url` varchar(200) NOT NULL COMMENT '留言人主页',
  `ip` varchar(40) NOT NULL COMMENT '评论ip',
  `content` varchar(1000) NOT NULL COMMENT '评论内容',
  `createTime` int(11) unsigned NOT NULL COMMENT '提交时间',
  `updateTime` int(11) unsigned NOT NULL COMMENT '修改时间',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '评论类型',
  `fromId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论来自哪里',
  `pid` smallint(6) unsigned NOT NULL COMMENT '评论套窃继承',
  `isTop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `sort` smallint(6) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `dy_comment`
--

INSERT INTO `dy_comment` (`id`, `userName`, `userId`, `email`, `url`, `ip`, `content`, `createTime`, `updateTime`, `type`, `fromId`, `pid`, `isTop`, `sort`, `status`) VALUES
(1, '管理员', 1, '614422099@qq.com', '', '127.0.0.1', '来自管理员的第一篇评论，祝福Xy Blog。', 1369225534, 1369225534, 3, 1, 0, 0, 0, 1),
(2, '管理员', 1, '614422099@qq.com', '', '127.0.0.1', '<p>来自管理员的第一个评论。</p><p>祝愿XyBlog，越走越远。<br /></p>', 1369225704, 1369225704, 1, 0, 0, 0, 0, 1),
(3, 'ibrahim', 0, 'ibrahim.steed@gmail.com', '', '218.205.192.49', '<p>XYBlog能否支持手机版本？</p>', 1369232425, 1369232425, 1, 0, 0, 0, 0, 1),
(4, 'hello word', 0, 'dd@dd.dd', '', '203.156.208.58', '呵呵', 1369286520, 1369286520, 3, 2, 0, 0, 0, 1),
(5, 'Cansnow', 0, '261001642@qq.com', '', '14.20.101.143', '<p>怎么早不出现?,我昨晚刚刚发布了我的博客界面出来给大家看..</p><p> 早知道你做了,我就不做了嘛..</p><p><br /></p>', 1369358110, 1369358110, 1, 0, 0, 0, 0, 1),
(6, 'Cansnow', 2, '261001642@qq.com', '', '14.20.101.143', '<p>遗憾的是后台的功能好少,不知道是不是你没开发<br /></p>', 1369358292, 1369358292, 1, 0, 0, 0, 0, 1),
(7, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '<p>肯定会的，只不过要电脑板的功能先完善了。打算用 jq mobile<br /></p>', 1369439771, 1369500400, 1, 0, 3, 0, 0, 1),
(8, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '<p>才做没几天嘛，二期后台部分也有在调试。配置部分，和附件部分已经在做了，不过还没优化，等下一步该他们俩了。是要一电脑做嘛，今天中午刚把邮件通知搞定，你应该收到邮件了的。<br /></p>', 1369441821, 1369500522, 1, 0, 6, 0, 0, 1),
(9, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '你的地址多少啊？学习下。', 1369448155, 1369448155, 1, 0, 5, 0, 0, 1),
(10, '管理员', 1, 'admin@dingxiaoyu.com', '', '127.0.0.1', '测试评论审核，审核已关', 1369497107, 1369497107, 1, 0, 0, 0, 0, 1),
(11, '管理员', 1, 'admin@dingxiaoyu.com', '', '127.0.0.1', '测试设置缓存', 1369499009, 1369499009, 1, 0, 0, 0, 0, 1),
(12, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '测试邮箱验证问题是否修复', 1369553573, 1369553573, 1, 0, 0, 0, 0, 1),
(13, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '多谢提醒，邮箱验证为空问题已修复。\r\n非常欢迎你加入这个博客的开发，我放在sae上了，详细可以加我QQ，细聊。', 1369553707, 1369553707, 1, 0, 5, 0, 0, 1),
(14, 'ibrahim', 0, 'ibrahim.steed@gmail.com', '', '218.205.192.48', '加油考试', 1369735249, 1369735249, 3, 6, 0, 0, 0, 1),
(15, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '测试邮件通知', 1369740549, 1369740549, 3, 4, 0, 0, 0, 1),
(16, 'm', 0, 'm@m.com', '', '58.254.0.10', '好厉害。好年青，继续努力学习，不要荒废了', 1369818078, 1369818078, 1, 0, 0, 0, 0, 1),
(17, 'xifan', 0, 'kaaa888@163.com', '', '114.249.214.126', '感觉跟 tp 官网很像...', 1369993982, 1369993982, 1, 0, 0, 0, 0, 1),
(18, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '看右下角', 1370051666, 1370051666, 1, 0, 0, 0, 0, 1),
(19, '管理员', 1, '614422099@qq.com', '', '61.163.196.24', '看右下角', 1370051699, 1370051699, 1, 0, 17, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dy_config`
--

CREATE TABLE IF NOT EXISTS `dy_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '功能设置id',
  `name` varchar(64) NOT NULL COMMENT '功能名称',
  `value` varchar(64) NOT NULL COMMENT '功能设置',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类',
  `group` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `status` tinyint(1) unsigned NOT NULL COMMENT '启用',
  `update_time` int(11) unsigned NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dy_config`
--

INSERT INTO `dy_config` (`id`, `name`, `value`, `remark`, `type`, `group`, `status`, `update_time`) VALUES
(1, 'blogName', 'Xy Blog', '博客名称，将显示在浏览器窗口标题等位置', 2, 1, 1, 0),
(2, 'blogDescription', '小雨的第一个开源博客', '博客描述，对博客进行描述，有利于搜索引擎收录', 2, 1, 1, 0),
(3, 'adminEmail', '614422099@qq.com', '管理员邮箱', 2, 1, 1, 0),
(4, 'commentAudit', '0', '评论审核，0关闭，1开启', 2, 1, 1, 0),
(5, 'commentEmailInform', '1', '评论邮箱通知，1开启，0关闭', 2, 1, 1, 0),
(6, 'blogKeywords', 'Xy Blog', '博客关键词，有利于搜索引擎收录', 2, 1, 1, 0),
(7, 'blogStatus', '1', '暂时将站点关闭，其他人无法访问，但不影响后台访问（1开启，0关闭）', 2, 1, 1, 0),
(8, 'blogCloseMsg', '博客升级中，请稍后重试。', '站点关闭时出现的提示信息', 2, 1, 1, 0),
(9, 'statCode', '', '第三方统计代码', 2, 1, 1, 0),
(10, 'email_smtpHost', 'smtp.exmail.qq.com', '邮箱配置  SMTP服务器', 1, 2, 1, 0),
(11, 'email_smtpPort', '25', '邮箱配置  SMTP服务器端口', 1, 2, 1, 0),
(12, 'eamil_smtpUser', 'xyblog@dingxiaoyu.com', '邮箱配置  SMTP服务器用户名', 1, 2, 1, 0),
(13, 'email_smtpPass', 'qq614422099', '邮箱配置  SMTP服务器密码', 1, 2, 1, 1),
(14, 'email_fromEmail', 'xyblog@dingxiaoyu.com', '邮箱配置  发件人EMAIL', 1, 2, 1, 0),
(15, 'email_fromName', 'Xy Blog', '邮箱配置  发件人名称', 1, 2, 1, 0),
(16, 'email_replyEmail', '614422099@qq.com', '邮箱配置  回复EMAIL（留空则为发件人EMAIL）', 1, 2, 1, 0),
(17, 'email_replyName', '小雨', '邮箱配置  回复名称（留空则为发件人名称）', 1, 2, 1, 0),
(18, 'adminQq', '614422099', '管理员QQ', 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dy_group`
--

CREATE TABLE IF NOT EXISTS `dy_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分组id',
  `title` varchar(64) NOT NULL COMMENT '分组名',
  `type` tinyint(2) unsigned NOT NULL COMMENT '分组分类',
  `createTime` int(11) unsigned NOT NULL COMMENT '创建时间',
  `lastTime` int(11) unsigned NOT NULL COMMENT '最后使用时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `count` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '已使用次数',
  `remark` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分组表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dy_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `dy_link`
--

CREATE TABLE IF NOT EXISTS `dy_link` (
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

--
-- 转存表中的数据 `dy_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `dy_menu`
--

CREATE TABLE IF NOT EXISTS `dy_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dy_menu`
--

INSERT INTO `dy_menu` (`id`, `name`, `group`, `model`, `action`, `title`, `createTime`, `updateTime`, `status`, `sort`, `show`, `type`, `remark`) VALUES
(1, 'Blog', 'Admin', 'Blog', '', '博文管理', 0, 0, 1, 0, 0, 1, '后台'),
(2, 'blog', 'Home', 'Blog', 'index', '博文', 0, 0, 1, 0, 0, 2, '首页导航'),
(3, 'comment', 'Home', 'Comment', 'index', '留言', 0, 0, 1, 0, 0, 2, '留言'),
(4, 'comment', 'Admin', 'Comment', 'index', '留言管理', 0, 0, 1, 0, 0, 1, '后台留言管理'),
(5, 'Seting', 'Admin', 'Seting', 'index', '博客配置', 0, 0, 1, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dy_node`
--

CREATE TABLE IF NOT EXISTS `dy_node` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='节点表' AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `dy_node`
--

INSERT INTO `dy_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `group_id`) VALUES
(1, 'Admin', '管理组', 1, '管理组', NULL, 0, 1, 0),
(2, 'Index', '管理首页', 1, '管理框架页', NULL, 1, 2, 0),
(3, 'index', '管理页操作', 1, '默认操作', NULL, 2, 3, 0),
(4, 'Blog', '博客管理', 1, NULL, NULL, 1, 2, 1),
(5, 'index', '博客列表', 1, NULL, NULL, 4, 3, 0),
(6, 'Leave', '留言管理', 1, NULL, NULL, 1, 2, 4),
(7, 'index', '留言列表', 1, '留言管理', NULL, 6, 3, 0),
(8, 'edit', '留言编辑', 1, NULL, NULL, 6, 3, 0),
(9, 'update', '留言更新', 1, NULL, NULL, 6, 3, 0),
(10, 'resume', '状态启用', 1, NULL, NULL, 6, 3, 0),
(11, 'forbid', '状态禁用', 1, NULL, NULL, 6, 3, 0),
(12, 'insert', '新增博客', 1, NULL, NULL, 4, 3, 0),
(13, 'edit', '编辑博客', 1, NULL, NULL, 4, 3, 0),
(14, 'update', '更新博客', 1, NULL, NULL, 4, 3, 0),
(15, 'forbid', '状态禁用', 1, NULL, NULL, 4, 3, 0),
(16, 'resume', '状态启用', 1, NULL, NULL, 4, 3, 0),
(17, 'isTop', '博客置顶', 1, NULL, NULL, 4, 3, 0),
(18, 'noTop', '取消置顶', 1, NULL, NULL, 4, 3, 0),
(19, 'Feedback', '反馈管理', 1, NULL, NULL, 1, 2, 4),
(20, 'edit', '反馈编辑', 1, NULL, NULL, 19, 3, 0),
(21, 'update', '反馈更新', 1, NULL, NULL, 19, 3, 0),
(22, 'forbid', '反馈禁用', 1, NULL, NULL, 19, 3, 0),
(23, 'resume', '反馈启用', 1, NULL, NULL, 19, 3, 0),
(24, 'foreverdelete', '日志删除', 1, NULL, NULL, 4, 3, 0),
(25, 'foreverdelete', '留言删除', 1, NULL, NULL, 6, 3, 0),
(26, 'foreverdelete', '反馈删除', 1, NULL, NULL, 19, 3, 0),
(27, 'Comment', '评论管理', 1, NULL, NULL, 1, 2, 1),
(28, 'index', '评论列表', 1, NULL, NULL, 27, 3, 0),
(29, 'edit', '评论编辑', 1, NULL, NULL, 27, 3, 0),
(30, 'update', '评论更新', 1, NULL, NULL, 27, 3, 0),
(31, 'forbid', '评论禁用', 1, NULL, NULL, 27, 3, 0),
(32, 'resume', '评论恢复', 1, NULL, NULL, 27, 3, 0),
(33, 'foreverdelete', '评论删除', 1, NULL, NULL, 27, 3, 0),
(34, 'isTop', '评论置顶', 1, NULL, NULL, 6, 3, 0),
(35, 'isTop', '留言置顶', 1, NULL, NULL, 27, 3, 0),
(36, 'noTop', '取消置顶', 1, NULL, NULL, 6, 3, 0),
(37, 'noTop', '取消置顶', 1, NULL, NULL, 27, 3, 0),
(38, 'index', '反馈列表', 1, NULL, NULL, 19, 3, 0),
(39, 'add', '新增博客', 1, NULL, NULL, 4, 3, 0),
(40, 'Seting', '网站配置', 1, NULL, NULL, 1, 2, 5),
(41, 'index', '设置列表', 1, NULL, NULL, 40, 3, 0),
(42, 'update', '更新配置', 1, NULL, NULL, 40, 3, 0),
(43, 'SetEmail', '邮箱设置', 1, NULL, NULL, 1, 2, 5),
(44, 'index', '邮箱设置流量', 1, NULL, NULL, 43, 3, 0),
(45, 'update', '更新邮箱设置', 1, NULL, NULL, 43, 3, 0),
(46, 'Upload', '上传管理', 1, NULL, NULL, 1, 2, 1),
(47, 'index', '附件列表', 1, NULL, NULL, 46, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dy_role`
--

CREATE TABLE IF NOT EXISTS `dy_role` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='角色表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dy_role`
--

INSERT INTO `dy_role` (`id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`) VALUES
(2, 'test', 0, 1, '测试组', 0, 0),
(1, 'admin', 0, 1, '管理组', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dy_role_user`
--

CREATE TABLE IF NOT EXISTS `dy_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL COMMENT '角色id',
  `user_id` char(32) DEFAULT NULL COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色用户表';

--
-- 转存表中的数据 `dy_role_user`
--

INSERT INTO `dy_role_user` (`role_id`, `user_id`) VALUES
(1, '1'),
(2, '1'),
(2, '2');

-- --------------------------------------------------------

--
-- 表的结构 `dy_survey`
--

CREATE TABLE IF NOT EXISTS `dy_survey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '调查id',
  `type` tinyint(2) unsigned NOT NULL COMMENT '调查类型',
  `beId` int(11) unsigned NOT NULL COMMENT '相关id',
  `value` int(5) unsigned NOT NULL COMMENT '得到的值',
  `remark` varchar(200) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `dy_survey`
--

INSERT INTO `dy_survey` (`id`, `type`, `beId`, `value`, `remark`) VALUES
(4, 1, 11, 1, ''),
(5, 1, 12, 1, ''),
(6, 1, 14, 2, ''),
(7, 1, 15, 2, ''),
(8, 1, 16, 0, ''),
(9, 1, 17, 0, ''),
(10, 1, 18, 0, ''),
(11, 1, 10, 0, ''),
(12, 1, 11, 0, ''),
(13, 1, 12, 0, ''),
(14, 1, 13, 0, ''),
(15, 1, 11, 0, ''),
(16, 1, 12, 0, ''),
(17, 1, 12, 0, ''),
(18, 1, 13, 0, ''),
(19, 1, 16, 0, ''),
(20, 1, 17, 0, ''),
(21, 1, 18, 0, ''),
(22, 1, 19, 0, ''),
(23, 1, 20, 0, ''),
(24, 1, 21, 0, ''),
(25, 1, 22, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dy_tag`
--

CREATE TABLE IF NOT EXISTS `dy_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `value` varchar(64) NOT NULL COMMENT '标签的值',
  `createTime` int(11) unsigned NOT NULL COMMENT '创建的时间',
  `lastTime` int(11) NOT NULL COMMENT '最后一次使用时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `count` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '权重',
  `remark` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dy_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `dy_upload`
--

CREATE TABLE IF NOT EXISTS `dy_upload` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dy_upload`
--


-- --------------------------------------------------------

--
-- 表的结构 `dy_user`
--

CREATE TABLE IF NOT EXISTS `dy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `password` char(32) NOT NULL COMMENT '密码',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '登录IP',
  `login_count` mediumint(8) unsigned DEFAULT '0' COMMENT '登录次数',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `qq` int(14) unsigned NOT NULL COMMENT 'qq',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `create_ip` varchar(40) DEFAULT NULL COMMENT '注册ip',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dy_user`
--

INSERT INTO `dy_user` (`id`, `username`, `nickname`, `password`, `last_login_time`, `last_login_ip`, `login_count`, `email`, `qq`, `remark`, `create_time`, `create_ip`, `update_time`, `status`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', 1371737923, '106.33.63.27', 58, '614422099@qq.com', 614422099, '', 1362651445, '127.0.0.1', 0, 1),
(2, 'test', '11', 'e10adc3949ba59abbe56e057f20f883e', 1370801240, '222.217.118.187', 81, 'xyblog@dingxiaoyu.com', 0, '', 0, NULL, 1369651678, 1);
