<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2012年10月24日 12:47:31
// +----------------------------------------------------------------------
// //------------------- // 首页 //----------------------- // //

/**
  +----------------------------------------------------------
 * 函数类
  +----------------------------------------------------------
*/
class IndexAction extends CommonAction {

    public function index(){
	
		$Blogs = M('Blogs');
		$User = M('User');
		$Comment = M('Comment');
		
		$list = $Blogs->where('status=1 and isTOp=1')->order('createTime')->getField('id,title');
		$last = $Blogs->order('createTime')->limit(10)->where('status=1')->getField('id,title,createTime');
		//$comm = $Comment->order('createTime')->limit(10)->where('status=1')->getField('id,userName,fromId,createTime');
		foreach ($last as $k => $v) {
			$last[$k]['pcount'] = $Comment->where('status=1 and type=3 and fromId='.$v['id'])->count();
		}
		
		$this->assign('last',$last);// 最新日志数据赋值
		$this->assign('top',$list);// 置顶数据赋值
		//$this->assign('comm',$comm);// 置顶数据赋值
		//dump($last);
		$this->display();
    }
}