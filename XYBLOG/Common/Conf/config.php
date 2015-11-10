<?php
// +----------------------------------------------------------------------
// | JIANKE [ WWW.XYSER.COM ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015 http://xyser.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( dingdayu @ JIANKE )
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: 2015-10-10 17:50
// +----------------------------------------------------------------------

return array(
    // 加载扩展配置文件
    'LOAD_EXT_CONFIG'           => 'db,router',
    //开发者模式
    'DEVELOP_MODE'              =>  true,
    "SITE_VERSION"	          => "20151020",

    'URL_MODEL'                 =>  2,
    'AUTH_CONFIG'   =>array(
        'AUTH_ON'               => true, //认证开关
        'AUTH_TYPE'             => 1, // 认证方式，1为时时认证；2为登录认证。
        'AUTH_GROUP'            => 'dy_auth_group', //用户组数据表名
        'AUTH_GROUP_ACCESS'    => 'dy_auth_group_access', //用户组明细表
        'AUTH_RULE'             => 'dy_auth_rule', //权限规则表
        'AUTH_USER'             => 'dy_user',//用户信息表
    ),

    //多模块
    'MODULE_ALLOW_LIST'         => array('Home','Admin'),
    'DEFAULT_MODULE'            => 'Home',

    // 设置默认的模板主题
    'DEFAULT_THEME'             => 'default',
);
