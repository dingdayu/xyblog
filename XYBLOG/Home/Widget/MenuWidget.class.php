<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/11/19
 * Time: 17:02
 */

namespace Home\Widget;
use Think\Controller;
/**
 * 菜单widget
 * 用于动态调用分类信息
 */
class MenuWidget extends Controller{

    /* 显示指定分类的同级分类或子分类列表 */
    public function header(){
        $list[] = array('url'=>U('Home/Blog/index'),'title'=>'博客列表');

        $this->assign('list', $list);
        $this->display('Widget/menu_header');
    }

}