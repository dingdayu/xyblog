<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现博客列表和博客输出
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // 博客页 //----------------------- // //

class ProjectAction extends CommonAction {

	public function index(){
		
		$Blogs = D('Blogs');
		$Comment = D('Comment');
		$Group = M('Group');
		
		$groupId = I('groupId');
		$whe['status'] = 1;
		$whe['type'] = 3;
		if(!empty($groupId)){
			$whe['groupId'] = $groupId;
		}
		
		$blogcount1      = $Blogs->where('status=1 and type=3')->count();// 查询满足要求的总记录数
		$blogcount      = $Blogs->where($whe)->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($blogcount,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Blogs->where($whe)->order('isTop desc, createTime desc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,title,createTime,count,isTop,groupId,imgId,userId,description');
		
		foreach ($list as $k => $v) {
			$list[$k]['pcount'] = $Comment->where('status=1 and fromId='.$v['id'])->count();
			$group = $Group->where('type=3 and id='.$v['groupId'])->getField('title');
			$list[$k]['group'] = (empty($group)) ? '未知分组' : $group;
			unset($group);
		}
		
		//获取分组
		$Grouplist = $Group->order('sort desc')->where('type=3 and status=1')->getField('id,title,createTime');
		foreach ($Grouplist as $gk => $gv) {
			$Grouplist[$gk]['count'] = $Blogs->where('status=1 and type=3 and groupId='.$gk)->count();
		}
		
		//dump($Grouplist);
		//dump($list);
		//exit;
		
		//获取最新文章和置顶文章
		$this->loadNew(3);
		$this->loadTop(3);
		$this->loadCount(3);
		
		$this->assign('blogcount1',$blogcount1);// 文章总数
		$this->assign('blogcount',$blogcount);// 文章总数
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('Grouplist',$Grouplist);// 分组输出
		
		$this->display();
	}
	
	public function insert(){
		$this->checkUser();
		
		import("ORG.Util.Input",LIB_PATH);
		
		$Blog = D('Blogs');
		
		//dump(I());
		//exit;
		
		if (!$Blog->create()) {
            $this->error($Blog->getError());
        }
		$Blog->type = 3;
		$Blog->fileId = I('attachment');
		//$Blog->content = Input::getVar(I('content'));
		$Blog->content = I('content');
		$tags = I('tags');
		if(!empty($tags)){
			$Tag = D('Tag');
			$tags = explode(" ", $tags);
			$tagId = $Tag->addTag($tags);
			$Blog->tag = $tagId;
		}

		//保存当前数据对象
        $list = $Blog->add();
        if ($list !== false) { //保存成功
            //$config = S('Config');
			//$blogUrl = getBlogUrl($list);
			//Ping(array('updateUrl'=>$blogUrl,'siteName' =>$config['blogName']));
			
			$this->success('新增成功!',U('/Project/'.$list));
			//$this->show('新增成功!');
        } else {
            //失败提示
            $this->error('新增失败!');
        }
	}
	
	public function add(){
		//检查登录
		$this->checkUser();
		$Group = M('Group');
		//获取分组
		$Grouplist = $Group->order('sort desc')->where('type=3')->getField('id,title,createTime');
		
		
		$this->assign('Grouplist',$Grouplist);// 分组输出
		$this->display();
	}
	
	/*
	  +----------------------------------------------------------
     * 编辑数据操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
	function edit() {
        $model = D('Blogs');
        $id = $_REQUEST [$model->getPk()];
        $vo = $model->getById($id);
		//文章分组
		$Group = M('Group');
		//分组列表
		$Grouplist = $Group->order('sort desc')->where('type=3')->getField('id,title,createTime');
		$this->assign('Grouplist',$Grouplist);// 分组输出
		//dump($Grouplist);
		//exit;
		trace($_SESSION,'SESSION');
        $this->assign('vo', $vo);
        $this->display();
    }
	
	/*
	  +----------------------------------------------------------
     * 更新数据操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
	function update() {
        $model = D('Blogs');
		if (false === $DA = $model->create()) {
            $this->error($model->getError());
        }
		
        // 更新数据
		$tags = I('tags');
		$imgId = I('imgId');
		$attachment = I('attachment');
		if(!empty($tags)){
			$Tag = D('Tag');
			$tags = explode(" ", $tags);
			$tagId = $Tag->addTag($tags);
			$model->tag = $tagId;
		}
		if(empty($imgId)){
			$model->imgId = 0;
			$this->error('未上传封面!');
		}
		if(empty($attachment)){
			$model->fileId = NULL;
		}else{
			$model->fileId = I('attachment');
		}
		//开启审核
		$model->status = 1;
        $list = $model->where('id='.I('id'))->save();
        if (false !== $list) {
            //成功提示
            $this->success('编辑成功!',cookie('_lastUrl_'));
        } else {
            //错误提示
            $this->error('编辑失败!');
        }
    }
	
	/**
      +----------------------------------------------------------
     * 删除操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
	public function foreverdelete() {
        //删除指定记录
        $model = D('Blogs');
        if (!empty($model)) {
            $pk = $model->getPk();
            $id = $_REQUEST [$pk];
            if (isset($id)) {
                $condition = array($pk => array('in', explode(',', $id)));
                if (false !== $model->where($condition)->delete()) {
                    $this->success('删除成功！',U('/Project/'));
                } else {
                    $this->error('删除失败！');
                }
            } else {
                $this->error('非法操作');
            }
        }
    }
		
	public function review(){
		$Comment = D('Comment');
		$first = (I('page')-1)*I('num');
		$last = $first+I('num');
		$list = $Comment->where('status=1 and pid=0 and fromId='.I('record'))->limit($first.','.$last)->select();
		//$review = $Comment->where('status=1 and pid!=0 and fromId='.I('record'))->select();
		//对顶级评论循环输出
		$ec = '';
		foreach ($list as $k => $v) {
			$ec['list'][$k]['id'] = $v['id'];
			$ec['list'][$k]['user_id'] = $v['userId'];
			$ec['list'][$k]['username'] = $v['userName'];
			$ec['list'][$k]['model_id'] = '18';
			$ec['list'][$k]['record_id'] = $v['fromId'];
			$ec['list'][$k]['review_id'] = $v['pid'];
			$ec['list'][$k]['sort'] = $v['sort'];
			$ec['list'][$k]['content'] = $v['content'];
			$ec['list'][$k]['pos'] = '0';
			$ec['list'][$k]['create_time'] = $v['createTime'];
			$ec['list'][$k]['update_time'] = $v['updateTime'];
			$ec['list'][$k]['status'] = $v['status'];
			$ec['list'][$k]['content'] = $v['content'];
			$ec['list'][$k]['review_time'] = toDate($v['createTime']);
			$ec['list'][$k]['avatar'] = getAvatar($v['userId'],2);
			$ec['list'][$k]['ico'] = '';
		}
		foreach($ec['list'] as $sk => $sv){
		//对二级评论循环输出
			$review = $Comment->where('status=1 and pid='.$sv['id'].' and fromId='.I('record'))->order('createTime desc')->select();
			if(is_array($review)){
				foreach ($review as $k => $v) {
					$ec['review'][$k]['id'] = $v['id'];
					$ec['review'][$k]['user_id'] = $v['userId'];
					$ec['review'][$k]['username'] = $v['userName'];
					$ec['review'][$k]['model_id'] = '18';
					$ec['review'][$k]['record_id'] = $v['fromId'];
					$ec['review'][$k]['review_id'] = $v['pid'];
					$ec['review'][$k]['sort'] = $v['sort'];
					$ec['review'][$k]['content'] = $v['content'];
					$ec['review'][$k]['pos'] = '0';
					$ec['review'][$k]['create_time'] = $v['createTime'];
					$ec['review'][$k]['update_time'] = $v['updateTime'];
					$ec['review'][$k]['status'] = $v['status'];
					$ec['review'][$k]['content'] = $v['content'];
					$ec['review'][$k]['review_time'] = toDate($v['createTime']);
					$ec['review'][$k]['avatar'] = getAvatar($v['userId'],2);
					$ec['review'][$k]['ico'] = '';
				}
			}
		}
		$count = $Comment->where('status=1 and pid=0 and fromId='.I('record'))->count();// 查询满足要求的总记录数
		$ec['count'] = $count;
		$ec['avatar'] = getAvatar('',2);
		if(I('userId')=='' or I('userId')==0 or !isset($_SESSION['authId'])){
			$ec['is_login'] = 0;
		}else{
			$ec['is_login'] = 1;
		}
		$ec['is_admin'] = $_SESSION['admin'];
		$ec['ico'] = '';
		$ec['self_user_id'] = I('userId');
		
		//dump($review);
		//dump($ec);
		//$this->show('l');
		$this->ajaxReturn($ec);
	}
	
    public function read(){
		$Blogs = M('Blogs');
		$Group = M('Group');
		
		$id = I('id');//安全获取id值
		
		//$data['count'] = array('exp','count+1');// 用户的积分加1
		$Blogs->where('id='.$id)->setInc('count'); // 根据条件保存修改的数据
		
		if(empty($id)) $id=$I[2];
		$blog = $Blogs->where('status=1 and type=3 and id='.$id)->select();
		$blog = $blog['0'];
		
		if(empty($blog)){
			$this->error('请检查您的链接!');
		}
		
		//加载附件信息
		if(!empty($blog['fileId'])){
			$Upload = M('Upload');
			//$file = $Upload->where('status=1 and id='.$blog['fileId'])->getField('title,size,name,downCount');
			$file = $Upload->where('status=1 and id='.$blog['fileId'])->limit('1')->find();
			//dump($file);
			//exit;
			$this->assign('file',$file);// 对附件进行赋值
		}
		
		//加载分组名
		$group = $Group->where('type=3 and id='.$blog['groupId'])->getField('title');
		$blog['group'] = (empty($group)) ? '未知分组' : $group;
		
		/*
		//加载评论
		$Comment = D('Comment');
		$count      = $Comment->where('status=1 and pid=0 and type=3 and fromId='.$id)->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Comment->where('status=1 and type=3 and pid=0 and fromId='.$id)->order('createTime asc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,userName,content,isTop,createTime,pid');
		
		foreach ($list as $k => $v) {
			$list[$k]['pcomment'] = $Comment->where('status=1 and type=3 and pid='.$v['id'])->select();
		}
		
		$this->assign('count',$count);// 赋值数据集
		$this->assign('list',$list);// 赋值数据集
		$this->assign('show',$show);// 赋值分页输出
		//dump($list['10']['pcomment']);
		//exit;
		//评论加载完毕
		*/
		
		$prev = $Blogs->where('id<'.$blog['id'].' and status=1 and type=3')->find();//获取上一篇
		$next = $Blogs->where('id>'.$blog['id'].' and status=1 and type=3')->find();//获取下一片
		$page['prev']['id'] = $prev['id'];$page['next']['id'] = $next['id'];
		$page['prev']['title'] = $prev['title'];$page['next']['title'] = $next['title'];
		//dump($prev);
		//dump($next);
		$trh = $Blogs->where('id='.$blog['id'].'+1 and status=1')->getField('id,title');//获取相关日志
		//dump($page);
		//dump($blog);
		//dump($trh);
		//exit;
		
		$this->loadTop(3);
		$this->loadCount(3);
		cookie('_lastUrl_', __SELF__);
		$this->assign('trh',$trh);// 相关日志赋值
		$this->assign('page',$page);// 上下篇赋值
		$this->assign('blog',$blog);// 博客内容赋值
		//dump($page);
		$this->display();
    }
	
	function comment() {
	
        $Comment = D('Comment');
        if (false === $Comment->create()) {
            $this->error($Comment->getError());
        }
        //保存当前数据对象
        $list = $Comment->add();
		//dump(I());
		
		//发送邮件
		//发送邮件结束
        if ($list !== false) { //保存成功
            $this->success('评论成功!');
        } else {
            //失败提示
            $this->error('评论失败!');
        }
    }
}