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
		array('createTime','checkTime','提交前后间隔时间太短！',1,'callback'),
    );
    // 自动填充设置
    protected $_auto	 =	 array(
		array('status','1',1),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',2,'function'),//更新时填充
		array('status','getComment',1,'callback'),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',3,'function'),//更新时填充
		array('ip','get_client_ip',1,'function'),//更新时填充
    );
	
	public function getComment() {
		//$Audit = D('Config')->get('commentAudit');
		//$re = ($Audit == '0') ? '1' : '0';
		$re = '0';
		return $re;
	}
	
	public function checkTime() {
		$uploadTime = $this->order('createTime desc')->limit(1)->getField('createTime');
		$time = time()-$uploadTime;
		if($time<10){
			return false;
		}else{
			return true;
		}
	}
}