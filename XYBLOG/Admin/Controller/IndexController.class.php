<?php
namespace Admin\Controller;

use Think\Controller;

class IndexController extends AdminController
{
    public function index()
    {
        //$this->assign('comm',$comm);// ÖÃ¶¥Êı¾İ¸³Öµ
        //dump($last);
        $this->display();
    }
}