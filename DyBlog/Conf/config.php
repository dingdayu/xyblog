<?php
return array(
	//'配置项'=>'配置值'
	'SHOW_PAGE_TRACE'=>true,
	'URL_HTML_SUFFIX'=>'html|xml',
	
	'APP_GROUP_MODE'			=> 1,	//独立分组
	'APP_GROUP_LIST'			=>'Home,Mobile,Admin,User',
	'DEFAULT_GROUP'				=>'Home',
	
	/****************数据库设置*****************/
	'DB_HOST'           	=>	'localhost',				//数据库地址
	'DB_USER'           	=>	'root',						//数据库用户名
	'DB_PWD'           	 	=>	'312422',					//数据库密码
	'DB_NAME'           	=>	'xy',					//数据库名
	'DB_PORT'           	=>	'3306',						//数据库端口
	'DB_PREFIX'       		=>	'dy_',   					// 数据库表前缀
	
	/****************时区设置*****************/
	'DEFAULT_TIMEZONE'		=>	'Asia/Shanghai',			// 设置默认时区为新加坡
		
	/****************缓存设置*****************/
	'DATA_CACHE_TYPE' 		=> 'file', 						// 数据缓存方式 文件
	'DATA_CACHE_TIME' 		=> 60, 							// 数据缓存有效期 86400 秒
    'DATA_CACHE_SUBDIR' 	=> true,
	
	/****************模版设置*******************/
	'DEFAULT_THEME'     	=>	'default',					//默认模版
	
	/*****************URL设置******************/
	'URL_MODEL'         	=>	2,							//默认URL模式
	'URL_CASE_INSENSITIVE' =>	true,						//不区分URL大小写
	
	/*****************运行日志**************/
	'LOG_RECORD' 			=> 	true, 						// 开启日志记录
	'LOG_TYPE' 				=>  3, 							//  采用文件方式记录日
	'LOG_LEVEL'  			=>	'EMERG,ALERT,CRIT,ERR,WARN,NOTICE,DEBUG,INFO,SQL', 
	'DB_SQL_LOG'			=>	true, // 记录SQL信息
    'LOG_EXCEPTION_RECORD'  => 	true,    // 是否记录异常信息日志
	
	/*****************模版标签**************/
	'TMPL_L_DELIM'			=>	'{',						//模板引擎普通标签开始标记 
	'TMPL_R_DELIM'			=>	'}',						//模板引擎普通标签结束标记
	
	/***************邮件发送设置************/
	'XYBLOG_EMAIL'			=>	array(
		'smtp_host'		=>	'smtp.exmail.qq.com',					//SMTP服务器
		'smtp_port'		=>	'25',							//SMTP服务器端口
		'smtp_user'		=>	'xyblog@dingxiaoyu.com',		//SMTP服务器用户名
		'smtp_pass'		=>	'qq614422099',					//SMTP服务器密码
		'from_email'	=>	'xyblog@dingxiaoyu.com',		//发件人EMAIL
		'from_name'		=>	'Xy Blog',						//发件人名称
		'reply_email'	=>	'614422099@qq.com',				//回复EMAIL（留空则为发件人EMAIL）
		'reply_name'	=>	'小雨',							//回复名称（留空则为发件人名称）
	),
	
	/***************URL路由设置************/
	'URL_ROUTER_ON'   => true, //开启路由
	'URL_ROUTE_RULES'=> array( 
        'Blog/:id\d'	=>	'Home/Blog/read',
		'Share/:id\d'	=>	'Home/Share/read',
		'Project/:id\d'	=>	'Home/Project/read',
		'Blog/'		=>	'Home/Blog/index',
		'Share/'	=>	'Home/Share/index',
		'Project/'	=>	'Home/Project/index',
		'Down/:id\d'=>	'Home/Down/down',
		'User/:id\d'=>	'User/Index/index',
		'User/review/:id\d'=>	'User/Index/review',
    ), 
	
	/***************令牌设置************/
	'TOKEN_ON'		=>	true,  								// 是否开启令牌验证
	'TOKEN_NAME'	=>	'__hash__',    						// 令牌验证的表单隐藏字段名称
	'TOKEN_TYPE'	=>	'md5',  							//令牌哈希验证规则 默认为MD5
	'TOKEN_RESET	'=>	true,  								//令牌验证出错后是否重置令牌 默认为true\
	
	/***************附件上传设置************/
	'UP_LOAD'=> array( 
        'maxSize'           =>  -1,    // 上传文件的最大值
        'allowExts'         =>  array(),    // 允许上传的文件后缀 留空不作后缀检查
        'allowTypes'        =>  array(),    // 允许上传的文件类型 留空不做检查
        'autoSub'           =>  true,// 启用子目录保存文件
        'subType'           =>  'date',// 子目录创建方式 可以使用hash date custom
        'dateFormat'        =>  'Y-m-d',
        'savePath'          =>  './Public/Uploads/',// 上传文件保存路径
		'saveRule'          =>  'time',// 上传文件命名规则
    ),
	
	//自动加载扩展函数库
	"LOAD_EXT_FILE"			=>	"extend"
);
?>
