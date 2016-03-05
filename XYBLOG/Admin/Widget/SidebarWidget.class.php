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

        $sidebar_menu = array(
            array('title'=>'快捷操作',
                'sub_menu' => array(
                    array('title'=>'后台首页', 'url'=>U('Admin/Index/index'), 'icon'=>'glyphicon glyphicon-book', 'label'=>''),
                    array('title'=>'发布内容', 'url'=>U('Admin/Index/index'), 'icon'=>'glyphicon glyphicon-plus',
                    'sub_menu' => array(
                        array('title'=>'新增日志', 'url'=>U('Admin/Blog/add'), 'icon'=>'glyphicon glyphicon-book', 'name' => 'index'),
                        array('title'=>'发表微博', 'url'=>U('Admin/Weibo/add'), 'icon'=>'glyphicon glyphicon-bullhorn', 'name' => 'add', 'label'=>'添加'),
                        array('title'=>'发布收藏', 'url'=>U('Admin/Device/add'), 'icon'=>'glyphicon glyphicon-briefcase', 'name' => 'add', 'label'=>'添加'),
                    )),
                    array('title'=>'博客列表', 'url'=>U('Admin/Device/index'), 'icon'=>'glyphicon glyphicon-book', 'label'=>'查看'),
                )
            ),
            array('title'=>'内容管理',
                'sub_menu' => array(
                    array(
                        'title'=>'日志管理','icon'=>'glyphicon glyphicon-book', 'name' => 'Blog',
                        'sub_menu' => array(
                            array('title'=>'日志列表', 'url'=>U('Admin/Blog/index'), 'icon'=>'fa fa-th-list', 'name' => 'index'),
                            array('title'=>'添加日志', 'url'=>U('Admin/Blog/add'), 'icon'=>'fa fa-plus', 'name' => 'add', 'label'=>'添加'),
                            array('title'=>'分类管理', 'url'=>U('Admin/Blog/category'), 'icon'=>'glyphicons glyphicons-filter', 'name' => 'category'),
                        ),
                    ),
                    array(
                        'title'=>'微博管理','icon'=>'glyphicon glyphicon-bullhorn', 'name' => 'Weibo',
                        'sub_menu' => array(
                            array('title'=>'微博列表', 'url'=>U('Admin/Weibo/index'), 'icon'=>'fa fa-th-list', 'name' => 'index'),
                            array('title'=>'发布微博', 'url'=>U('Admin/Weibo/add'), 'icon'=>'fa fa-plus', 'label'=>'添加', 'name' => 'add'),
                        ),
                    ),
                    array(
                        'title'=>'相册管理','icon'=>'glyphicon glyphicon-picture', 'name' => 'Photos',
                        'sub_menu' => array(
                            array('title'=>'相册管理', 'url'=>U('Admin/Photos/index'), 'icon'=>'glyphicons glyphicons-show_thumbnails', 'name' => 'index'),
                            array('title'=>'相册目录', 'url'=>U('Admin/Photos/add'), 'icon'=>'glyphicons glyphicons-folder_open', 'label'=>'添加', 'name' => 'add'),
                        ),
                    ),
                    array(
                        'title'=>'项目管理','icon'=>'fa fa-archive', 'name' => 'Project',
                        'sub_menu' => array(
                            array('title'=>'项目列表', 'url'=>U('Admin/Action/index'), 'icon'=>'fa fa-th-list', 'name' => 'index'),
                            array('title'=>'添加项目', 'url'=>U('Admin/Action/add'), 'icon'=>'fa fa-plus', 'label'=>'添加', 'name' => 'add'),
                        ),
                    ),
                    array(
                        'title'=>'收藏管理','icon'=>'glyphicon glyphicon-briefcase', 'name' => 'Collection',
                        'sub_menu' => array(
                            array('title'=>'动作列表', 'url'=>U('Admin/Action/index'), 'icon'=>'fa fa-th-list', 'name' => 'index'),
                            array('title'=>'添加动作', 'url'=>U('Admin/Action/add'), 'icon'=>'fa fa-plus', 'label'=>'添加', 'name' => 'add'),
                        ),
                    ),
                    array(
                        'title'=>'通讯录','icon'=>'fa fa-book', 'name' => 'Contacts',
                        'sub_menu' => array(
                            array('title'=>'联系人列表', 'url'=>U('Admin/Contacts/index'), 'icon'=>'fa fa-th-list', 'name' => 'index'),
                            array('title'=>'添加联系人', 'url'=>U('Admin/Contacts/add'), 'icon'=>'fa fa-plus', 'label'=>'添加', 'name' => 'add'),
                        ),
                    ),
                ),
            ),
            array('title'=>'站点设置',
                'sub_menu' => array(
                    array(
                        'title'=>'资料设置','icon'=>'fa fa-gear','name' => 'Personal',
                        'sub_menu' => array(
                            array('title'=>'资料管理', 'url'=>U('Admin/Personal/index'), 'icon'=>'fa fa-cube', 'name' => 'index'),
                        ),
                    ),
                    array(
                        'title'=>'通知设置','icon'=>'glyphicon glyphicon-wrench','name' => 'Notice',
                        'sub_menu' => array(
                            array('title'=>'接收方式', 'url'=>U('Admin/Notice/index'), 'icon'=>'glyphicons glyphicons-message_in', 'name' => 'index'),
                            array('title'=>'全局设置', 'url'=>U('Admin/Notice/global'), 'icon'=>'glyphicons glyphicons-message_flag', 'name' => 'global', 'label'=>'全局'),
                        ),
                    ),
                    array(
                        'title'=>'KEY设置', 'url'=>U('Admin/Personal/key'), 'icon'=>'fa fa-key', 'name' => 'KEY',
                    ),
                ),
            ),
        );

        //常用设备
        $device_list = array(
            array('title'=>'Website Redesign','icon'=>'fa fa-dot-circle-o text-primary','url'=>U('Admin/Index/index')),
            array('title'=>'Ecommerce Panel','icon'=>'fa fa-dot-circle-o text-info','url'=>U('Admin/Index/index'))
        );

        $utilization = array(

        );

        $this->assign('device_list', $device_list);
        $this->assign('sidebar_menu', $sidebar_menu);
        $this->display('Widget:sidebar_left');
    }

    public function right()
    {
        $this->display('Widget:sidebar_right');
    }
}