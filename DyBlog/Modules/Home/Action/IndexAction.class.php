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
class IndexAction extends CommonAction {

    public function index(){
	
		$Blogs = M('Blogs');
		$User = M('User');
		$Comment = M('Comment');
		
		$last = $Blogs->order('createTime desc')->limit(7)->where('status=1 and type=1')->getField('id,title,userId,createTime,description,content,imgId,count');
		//$comm = $Comment->order('createTime')->limit(10)->where('status=1')->getField('id,userName,fromId,createTime');
		//dump($last);
		//获取评价数
		foreach ($last as $k => $v) {
			$last[$k]['pcount'] = $Comment->where('status=1 and fromId='.$v['id'])->count();
			if(empty($v['imgId'])){
				$last[$k]['blogimg'] = '/Public/Images/blogimg.png';
			}
		}
		//dump($last);
		//exit;
		//$this->loadTop(0);
		$this->loadCount(1);
		
		$this->assign('last',$last);// 最新日志数据赋值
		//置顶复制在coomen模块中实现
		//dump($last);
		$this->display();
    }
	
		
	//获取下一栏数据
	public function getMore(){
		$i = I('id');
		$list1 = array();
		$Comment = M('Comment');
		$Blogs = M('Blogs');
		
		$first = $i;
		$last = $i+5;//每次获取的数量
		
		$lastid = $Blogs->max('id');
		//and (id>'.$first.'and id<'.$last.')
		while (empty($list1)) {
			$list1 = $Blogs->order('createTime desc')->where('status=1 and type=1 and (id>'.$first.' and id<'.$last.')')->getField('id,title,userId,createTime,description,content,imgId,count');
			//$list1 = $Blogs->order('createTime')->limit($first.','.$last)->where('status=1')->getField('id,title,userId,createTime,description,content,imgId,count');
			if($lastid>$last){
				$last = $last+5;//第一次不进行执行，若为空则会加载+5后的$last
			}else{
				$error['status'] = 0;$error['error'] = '已无数据可加载';$this->ajaxReturn($error);
				//break;
			}
		}
		$is = 0;
		$list = array();
		foreach ($list1 as $k => $v) {
			$list[$is]['id'] = $v['id'];
			$list[$is]['idUrl'] = U('Blog/'.$v['id']);
			$list[$is]['title'] = $v['title'];
			$list[$is]['username'] = getUserName($v['userId']);
			$list[$is]['read_count'] = $v['count'];
			$list[$is]['comment_count'] = $Comment->where('status=1 and type=3 and fromId='.$v['id'])->count();
			$list[$is]['cate_id'] = '';
			if(!empty($v['imgId'])){
				$list[$is]['img'] =  getImgDown($v['imgId']);
			}
			$list[$is]['create_time'] = toDate($v['createTime']);
			$list[$is]['user_id'] = $v['userId'];
			$list[$is]['avatar'] = getAvatar($v['userId']);;
			$content = (empty($v['description'])) ? $v['content'] : $v['description'];
			$list[$is]['content'] = msubstr(strip_tags(ubb($content)),0,100);
			//dump($v);
			$is++;
		}
		
		//dump($list);
		//exit;
		$this->ajaxReturn($list);
		//$this->show('1');
	}
	
	function ceshi(){
		$Text = "啊打发浮动[img]/./Public/Uploads/editorUpload/2013-08-25/1377437833.jpg[/img]efaf短发辅导费地方";
		preg_match("/\[img\](.+?)\[\/img\]/is",$Text,$Text);
		$Text=explode("/",$Text[1]);//6
		$Attach=  M("Upload")->where(array('savename'=>$Text[5].'/'.$Text[6]))->getField('id');
		dump($Attach);
		exit;
	}
}