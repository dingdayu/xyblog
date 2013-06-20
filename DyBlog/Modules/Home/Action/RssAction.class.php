<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现搜索处理
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // Rss页 //----------------------- // //

class RssAction extends CommonAction {
    public function index(){
	
		$Blogs = D('Blogs');
		$blog = $Blogs->where('status=1')->getField('id,title,description,createTime,userId');
		
		//dump($blog);
		//exit();
		import('ORG.Util.Rss', LIB_PATH);
		$RssConf = array('channelTitle'=>'小雨博客',
			'channelLink'=>'http://xyblog.sinapp.com',
			'channelDescrīption'=>'小雨的首个开源博客',
			'copyright'=>'小雨');
		$RSS = new Rss($RssConf);
		foreach ($blog as $k => $v) {
			//echo $v;
			$RSS->AddItem($v['title'] ,getBlogUrl($v['id']) ,$v['description'] ,toDate($v['createTime']) ,$v['id'] ,getUserName($v['userId']));
		}
		echo $RSS->Show();
	
	/*
		import('ORG.Util.Ping', LIB_PATH);
		$RssConf = array('siteName'=>'小雨博客',
			'siteUrl'=>'http://xyblog.sinapp.com',
			'updateUrl'=>'http://xyblog.sinapp.com/blog/1',
			'updateRss'=>'http://xyblog.sinapp.com/rss');
		$PING = new Ping($RssConf);
		$PING->execute();
	*/
		//$this->error('此模块暂为开通!');
		//$this->display();
    }
}