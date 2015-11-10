<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2012年10月24日 12:47:31
// +----------------------------------------------------------------------
// //------------------- // 首页 //----------------------- // //

/**
  +----------------------------------------------------------
 * 函数类
  +----------------------------------------------------------
*/
class CommonAction extends ConfigAction {
    
	public function _initialize() {
		
		$this->config();//config 类加载
		$this->check_status();
		$this->headMenu();
		$this->loadHeadSeo();
		//$this->loadTop();
		//$this->loadNew();
	}
	
	// 检查用户是否登录
    public function checkUser() {
        if(!isset($_SESSION['authId'])) {
            $this->error('没有登录',C('USER_AUTH_GATEWAY'));
        }
    }
	
	public function loadHeadSeo($title='') {
		$html['title'] = empty($title) ? '小雨,博客,xyblog':$title;
		$html['keywords'] = empty($keywords) ? $html['title'].'小雨,博客,xyblog' : $keywords;
		$html['description'] = empty($description) ? $html['keywords'].'小雨,博客,xyblog' : $description;
		$this->assign('html',$html);// html赋值
	}
	
	public function loadTop($type=1) {
		if($type==0){$type='(type=1 or type=2 or type=3)';}else{$type='type='.$type;}
		$Blogs = M('Blogs');
		$Top = $Blogs->where('status=1 and isTop=1 and '.$type)->limit(10)->order('count desc')->getField('id,title,updateTime');
		$Top2 = '';
		foreach ($Top as $k => $v) {
			$Top2[$k] = $v;
		}
		//dump($Top);
		//dump($Top2);
		//exit;
		unset($Top);
		$this->assign('top',$Top2);// 置顶数据赋值
	}
	
	public function loadNew($type=1) {
		$Blogs = M('Blogs');
		$New = $Blogs->where('status=1 and type='.$type)->limit(10)->order('createTime desc')->getField('id,title');
		$this->assign('new',$New);// 置顶数据赋值
	}
	
	public function loadCount($type=1) {
		//echo $type;
		if($type==0){$type='(type=1 or type=2 or type=3)';}else{$type='type='.$type;}
		$Blogs = M('Blogs');
		$count  = $Blogs->where('status=1 and '.$type)->limit(10)->order('count desc')->getField('id,title,updateTime');
		//dump($count);
		//exit;
		$this->assign('count',$count );// 置顶数据赋值
	}
	
	public function headMenu() {
		
		$menu = M('Menu');
		$list = $menu->where('status=1 and type=2')->order('sort asc')->getField('id,group,model,action,title');
		//dump($list);
		//exit;
		$this->assign('headMenu',$list);// 导航数据赋值
	}
}