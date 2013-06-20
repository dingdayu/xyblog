<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:35
// +----------------------------------------------------------------------
// | Blogs数据模型
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //

class BlogsModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('title','require','标题必须！'),
		array('content_1','require','内容必须！'),
    );
    // 自动填充设置
    protected $_auto	 =	 array(
		array('status','1',1),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',2,'function'),//更新时填充
		array('ip','get_client_ip',1,'function'),//更新时填充
    );
}