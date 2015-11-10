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

class BlogsModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('title','require','昵称必须！'),
		array('groupId','require','分组必须！'),
		array('content','require','内容必须！'),
		array('content','checkContent','重复提交！',1,'callback'),
		array('createTime','checkTime','提交前后间隔时间太短！',1,'callback'),
    );
	
    // 自动填充设置
    protected $_auto =	 array(
		array('status','1',1),//新增时填充
        array('createTime','time',1,'function'),//新增时填充
		array('updateTime','time',3,'function'),//更新时填充
		array('ip','get_client_ip',1,'function'),//更新时填充
		array('userId','getMemberId',1,'function'),//更新时填充
		array('imgId','checkContentimgId',1,'callback'),//更新时填充
    );
	
	public function checkContentimgId(){
		preg_match("/\[img\](.+?)\[\/img\]/is",I('content'),$Text);
		$Text=explode("/",$Text[1]);//6
		$Attach=  M("Upload")->where(array('savename'=>$Text[5].'/'.$Text[6]))->getField('id');
		return empty($Attach)?0:$Attach;
	}
	
	public function checkTime() {
		$last = S('AddBlogLast_ssid_'.session('id'));
		if(empty($last)){
			S('AddBlogLast_ssid_'.session('id'),time());
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
		$cont = $this->order('createTime desc')->limit(1)->getField('content,groupId,tags');
		if(empty($content)){return true;}
		$tags = toTag($cont['content']);
		if(I('content') == $cont['content'] and $cont['tags']==I('tags') and $cont['groupId']==I('groupId')){
			return false;
		}else{
			return true;
		}
	}
}