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
    //开启路由
    'URL_ROUTER_ON' => true,
    'URL_ROUTE_RULES' => array( //定义路由规则
        'blog/:id\d'	=>	'Home/Blog/read',
        //'read/:id\d'=>'read/read',
        //'page/:id\d'=>'page/index',
        //'index/:catid\d'=>'Index/index',
        //'cat/:catid\d'=>'cat/index',
        //'blog/:catid\d'=>'Blog/index',
        //'tag/:name\[a-z]'=>'tag/index',
        //'blog/:catid\d'=>'Blog/category',
        //'index/:t\([0-9]{4})-([0-9]{2})'=>'Index/index',
    ),
);
