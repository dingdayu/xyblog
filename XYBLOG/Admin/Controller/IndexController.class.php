<?php
namespace Admin\Controller;

use Think\Controller;

class IndexController extends AdminController
{
    public function index()
    {
        //$this->assign('comm',$comm);// �ö����ݸ�ֵ
        //dump($last);
        $this->display();
    }
}