<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现搜索处理
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // 搜索处理页 //----------------------- // //

class SearchAction extends CommonAction {
    public function index(){
	
		$this->error('此模块暂为开通!');
		$this->display();
    }
}