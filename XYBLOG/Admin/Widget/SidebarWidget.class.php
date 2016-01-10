<?php
// +----------------------------------------------------------------------
// | DINGDAYU [ WWW.XYSER.COM ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015 http://dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( dingdayu @ XYSER )
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: DATE: 2016-1-10 1:17
// +----------------------------------------------------------------------


namespace Admin\Widget;

use Think\Controller;

class SidebarWidget extends Controller
{
    public function left(){
        //$this->assign('menu','1');

        $this->display('Widget:sidebar_left');
    }

    public function right()
    {
        $this->display('Widget:sidebar_right');
    }
}