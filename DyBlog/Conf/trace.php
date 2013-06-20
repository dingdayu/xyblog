<?php
	$groupname = (GROUP_NAME) ? GROUP_NAME . '/' : '';
	$trace_config = array(
		'xdebug' => extension_loaded('xdebug') ? '√' : '×',
		'gd'    =>extension_loaded('gd') && function_exists('gd_info')? '√' : '×',
		'tokenizer' => function_exists('token_get_all') ? '√' : '×',
		'eaccelerator' => extension_loaded('eaccelerator') && ini_get('eaccelerator.enable') ? '√' : '×',
		'apc' => extension_loaded('apc') && ini_get('apc.enabled') ? '√' : '×',
		'xcache' => extension_loaded('xcache') && ini_get('xcache.cacher') ? '√' : '×',
		'memcache' => extension_loaded('memcache') && ini_get('memcache.default_port') ? '√' : '×',
	);
	$extensions = '';
	foreach($trace_config as $key=>$value){
		$extensions .= $key.$value. ', ';
	}
	$extensions = rtrim($extensions,', ');
	trace($_GET,'GET','EXT');
	trace($_POST,'POST','EXT');
	trace($_FILES,'FILES','EXT');
	trace(MODULE_NAME . '/' . ACTION_NAME,'模块/方法','EXT');
	trace(APP_PATH . 'lib/' . $groupname . 'Action/' . MODULE_NAME . 'Action.class.php','Action文件路径/方法','EXT');
	
	// 系统默认的特殊变量替换
        $replace =  array(
            '__TMPL__'      =>  APP_TMPL_PATH,  // 项目模板目录
            '__ROOT__'      =>  __ROOT__,       // 当前网站地址
            '__APP__'       =>  __APP__,        // 当前项目地址
            '__GROUP__'     =>  defined('GROUP_NAME')?__GROUP__:__APP__,
            '__ACTION__'    =>  __ACTION__,     // 当前操作地址
            '__SELF__'      =>  __SELF__,       // 当前页面地址
            '__URL__'       =>  __URL__,
            '../Public'     =>  APP_TMPL_PATH.'Public',// 项目公共模板目录
            '__PUBLIC__'    =>  __ROOT__.'/Public',// 站点公共目录
        );
        // 允许用户自定义模板的字符串替换
        if(is_array(C('TMPL_PARSE_STRING')) )
            $replace =  array_merge($replace,C('TMPL_PARSE_STRING'));
      	trace('','以下是模板有效常量','EXT');
      	foreach ($replace as $key => $value) {
		if($value)	trace($value,$key,'EXT');
	}
	#Config 有配过值的配置列表
	foreach (C() as $key => $value) {
		if($value)	trace($value,$key,'CONFIG');
	}
	return array(
		'框架版本'=>THINK_VERSION,
		'PHP扩展'=>$extensions,
	);