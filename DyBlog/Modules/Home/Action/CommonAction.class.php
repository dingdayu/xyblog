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
class CommonAction extends ConfigAction {
    
	public function _initialize() {
		
		$this->config();//config 类加载
		$this->check_status();
		$this->headMenu();
	}
	
	public function headMenu() {
		
		$menu = M('Menu');
		$list = $menu->where('status=1 and type=2')->order('sort')->getField('id,group,model,action,title');
		//dump($list);
		//exit;
		$this->assign('headMenu',$list);// 导航数据赋值
	}
}