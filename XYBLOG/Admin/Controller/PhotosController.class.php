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
// | DATE: DATE: 2016-3-6 3:52
// +----------------------------------------------------------------------


namespace Admin\Controller;


class PhotosController extends AdminController
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
        //$this->assign('comm',$comm);// 置顶数据赋值
        //dump($last);
        $this->assign('body_class','gallery-page');
        $this->assign('page_title','相册管理');
        $this->display();
    }
}