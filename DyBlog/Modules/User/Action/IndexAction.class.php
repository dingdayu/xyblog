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
		$id = I('id');
		$type = I('type');
		$type=(empty($type))?1:$type;
		$this->assign('type',$type);// 赋值数据集
		
		if(empty($id))$this->error('请检查你的链接是否正确！');
		
		$arr['status'] = 1;
		$arr['userId'] = $id;
		if(!empty($type)){
			$arr['type'] = $type;
		}else{
			$arr['type'] = 1;
		}
		
		$User = D("User"); // 实例化User对象
		$Blogs = D('Blogs');
		$Comment = D('Comment');
		$Group = M('Group');
		
		$user = $User->where(array('id'=>$id))->find();
		//dump($user);
		if(empty($user))$this->error('请检查你的链接是否正确！');
		
		$blogcount      = $Blogs->where($arr)->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($blogcount,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性

		$list = $Blogs->where($arr)->order('isTop desc, createTime desc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,title,createTime,groupId,userId');
		
		//分组及评论数量
		foreach ($list as $k => $v) {
			//$list[$k]['pcount'] = $Comment->where('status=1 and type=1 and fromId='.$v['id'])->count();
			$group = $Group->where('type=1 and id='.$v['groupId'])->getField('title');
			$list[$k]['group'] = (empty($group)) ? '未知分组' : $group;
			unset($group);
		}
		
		//获取分组的文章数量
		/*
		$Grouplist = $Group->order('sort desc')->where('type=1 and status=1')->getField('id,title,createTime');
		foreach ($Grouplist as $gk => $gv) {
			$Grouplist[$gk]['count'] = $Blogs->where('status=1 and type=1 and groupId='.$gk)->count();
		}*/
		
		
		//exit;
		
		
		
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('user',$user);// 文章总数
        $this->assign('type',$type);// 文章类型
		$this->display();
    }
	
	public function review(){
		$id = I('id');
		$type = I('type');
		$type=(empty($type))?1:$type;
		$this->assign('type',$type);// 赋值数据集
		
		if(empty($id))$this->error('请检查你的链接是否正确！');
		
		$arr['status'] = 1;
		$arr['userId'] = $id;
		$arr['type'] = $type;
		
		$User = D("User"); // 实例化User对象
		$Blogs = D('Blogs');
		$Comment = D('Comment');
		$Group = M('Group');
		
		$user = $User->where(array('id'=>$id))->find();
		//dump($user);
		if(empty($user))$this->error('请检查你的链接是否正确！');
		
		$commecount      = $Comment->where($arr)->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($commecount,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性

		$comme = $Comment->where($arr)->order('isTop desc, createTime desc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,content,fromId,createTime,type,userId');
		
		//分组及评论数量
		foreach ($comme as $k => $v) {
			//$list[$k]['pcount'] = $Comment->where('status=1 and type=1 and fromId='.$v['id'])->count();
			$group = $Group->where('type=1 and id='.$v['groupId'])->getField('title');
			$comme[$k]['group'] = (empty($group)) ? '未知分组' : $group;
			unset($group);
		}
		
		//获取分组的文章数量
		/*
		$Grouplist = $Group->order('sort desc')->where('type=1 and status=1')->getField('id,title,createTime');
		foreach ($Grouplist as $gk => $gv) {
			$Grouplist[$gk]['count'] = $Blogs->where('status=1 and type=1 and groupId='.$gk)->count();
		}*/
		
		
		//exit;
		//dump($comme);
		//exit;
		
		
		$this->assign('list',$comme);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('user',$user);// 文章总数
        $this->assign('type',$type);// 文章类型
		$this->display();
    }
}