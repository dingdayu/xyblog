<?php
namespace Admin\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
        //$this->assign('comm',$comm);// �ö����ݸ�ֵ
        //dump($last);
        $this->display();
    }
}