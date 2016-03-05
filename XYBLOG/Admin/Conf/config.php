<?php
return array(
	//'配置项'=>'配置值'

    'TMPL_PARSE_STRING'  =>array(
        '__Public__' => '/XYBLOG/Admin/View/AdminDesigns/Public',
    ),
    'LOAD_EXT_CONFIG'   =>  'user',

    'USER_ADMINISTRATOR'    =>  1,


    // 设置默认的模板主题
    'DEFAULT_THEME'    =>    'AdminDesigns',
    'TMPL_ACTION_ERROR'      => 'base/dispatch_jump', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'    => 'base/dispatch_jump', // 默认成功跳转对应的模板文件
);