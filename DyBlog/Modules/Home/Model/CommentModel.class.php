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
// //------------------- //  Home分组 //----------------------- // //

class CommentModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('userName','require','昵称必须！'),
		array('email','require','邮箱必须！'),
		array('content','require','内容必须！'),
		array('email','email','邮箱格式错误！',1),
		array('content','checkContent','重复提交！',1,'callback'),
		array('createTime','checkTime','提交前后间隔时间太短！',1,'callback'),
    );
	
	protected $_map = array(
        'author_id' =>'userId', // 把表单中name映射到数据表的username字段
        'blog_id'  =>'fromId', // 把表单中的mail映射到数据表的email字段
		'review_id'  =>'pid', // 把表单中的mail映射到数据表的email字段
		
    );
	
    // 自动填充设置
    protected $_auto =	 array(
		array('status','getComment',1,'callback'),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',3,'function'),//更新时填充
		array('ip','get_client_ip',1,'function'),//更新时填充
    );
	
	public function getComment() {
		$Audit = D('Config')->get('commentAudit');
		$re = ($Audit == '0') ? '1' : '0';
		return $re;
	}
	
	public function checkTime() {
		//$id = getMemberId();
		//if($id == 0){return false;}
		$last = S('AddBlogLast_ssid_time'.session('id'));
		if(empty($last)){
			S('AddBlogLast_ssid_time'.session('id'),time());
			return true;
		}
		$time = time()-$last;
		if($time<10){
			return false;
		}else{
			return true;
		}
	}
	
	public function checkContent() {
		$last = S('AddBlogLast_ssid_con'.session('id'));
		if(empty($last)){
			$arr = array('fromId'=>I('blog_id'),'con'=>I('content'));
			S('AddBlogLast_ssid_con'.session('id'),$arr);
			return true;
		}
		if(empty($last['con'])){return true;}
		if(I('content') == $last['con'] and I('blog_id')==$last['fromId']){
			return false;
		}else{
			return true;
		}
	}
}