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
     * ģ���ʼ��
     */
    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        $this->assign('page_title',"��ϵ���б�");// �ö����ݸ�ֵ
        $this->display();
    }

    public function add()
    {
        $this->assign('page_title',"�����ϵ��");// �ö����ݸ�ֵ
        $this->display();
    }
}