<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:35
// +----------------------------------------------------------------------
// | Comment数据模型
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //

class CommentModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('userName','require','标题必须！'),
		array('email','require','邮箱必须！'),
		array('content','require','内容必须！'),
		array('email','email','邮箱格式错误！',1),
		array('content','checkContent','重复提交！',1,'callback'),
    );
    // 自动填充设置
    protected $_auto	 =	 array(
		array('status','1',1),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',3,'function'),//更新时填充
		array('ip','get_client_ip',1,'function'),//更新时填充
    );
	
	public function checkContent() {
		$content = $this->order('createTime desc')->limit(1)->getField('content');
		if(empty($content)){return true;}
		if(I('content') == $content){
			return false;
		}else{
			return true;
		}
	}
}