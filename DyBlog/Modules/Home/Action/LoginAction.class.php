<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月15日 18:39:51
// +----------------------------------------------------------------------
// | 登录类，后台检测到未登录跳转到此
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // 登录页 //----------------------- // //

class LoginAction extends CommonAction {
    public function index(){
	
		$this->display();
    }
}