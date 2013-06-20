<?php

/*******************定义项目路径*******************/
define('BLOG_ROOT', dirname( __FILE__ ).'/' );
/**************定义项目名称和路径****************/
define('THINK_PATH','./ThinkPHP/');
define('APP_NAME', 'DyBlog');
define('APP_PATH', './DyBlog/');
/******************开启调试模式*******************/
define('APP_DEBUG', 1);
/*******************云模式设置*******************/
define('ENGINE_NAME','cluster');
/********************目录安全*********************/
define('BUILD_DIR_SECURE',true);
define('DIR_SECURE_FILENAME', 'index.html');
define('DIR_SECURE_CONTENT', '<!-- DyBLOG 项目目录安全防护文件 -->
Deney Access!');

//加载 ThinkPHP
require( THINK_PATH.'ThinkPHP.php');