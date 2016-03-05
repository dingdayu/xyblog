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
// | DATE: DATE: 2016-3-6 0:43
// +----------------------------------------------------------------------


namespace Admin\Controller;


class ContactsController extends AdminController
{
    /**
     * 模块初始化
     */
    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        $this->assign('page_title',"联系人列表");// 置顶数据赋值
        $this->display();
    }

    public function add()
    {
        $this->assign('page_title',"添加联系人");// 置顶数据赋值
        $this->display();
    }
}