<?php
namespace Admin\Controller;


class IndexController extends AdminController
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
        $this->assign('body_class','ecommerce-page');
        $this->assign('page_title','后台管理首页');
        $this->display();
    }
}