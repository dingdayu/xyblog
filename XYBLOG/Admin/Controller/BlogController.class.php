<?php
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.mocentre.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: 2016/3/5 13:57
// +----------------------------------------------------------------------

namespace Admin\Controller;

use Think\Controller;

class BlogController extends AdminController
{
    public function index()
    {
        //$this->assign('comm',$comm);// 置顶数据赋值
        //dump($last);
        $this->assign('page_title',"博客列表");// 置顶数据赋值
        $this->display();
    }

    public function add()
    {
        $this->assign('page_title',"添加博客");// 置顶数据赋值
        $this->display();
    }

    public function category()
    {
        $this->assign('page_title',"博客分类");// 置顶数据赋值
        $this->display();
    }
}