<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:41:36
// +----------------------------------------------------------------------
// | 此类实现博客管理
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //
// //------------------- // 博文管理页 //----------------------- // //

class ProjectAction extends BaseAction {
    
	/*
	  +----------------------------------------------------------
     * 数据列表页
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    public function index() {
		
		$Blogs = D('Blogs');
		$count      = $Blogs->where('type=3')->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Blogs->where('type=3')->order('createTime desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		
		$sortAlt = $sort == 'desc' ? '升序排列' : '倒序排列'; //排序提示
        $sort = $sort == 'desc' ? 1 : 0; //排序方式
		$this->assign('sort', $sort);
		$this->assign('sortType', $sortAlt);
		//dump($list);
		cookie('_lastUrl_', __SELF__);
        C ( 'SHOW_RUN_TIME', false ); // 运行时间显示
        C ( 'SHOW_PAGE_TRACE', true );
        $this->display();
    }
	
	/*
	  +----------------------------------------------------------
     * 新增数据操作
      +----------------------------------------------------------
     */
	function add() {
		//文章分组
		$Group = M('Group');
		//分组列表
		$Grouplist = $Group->order('sort desc')->where('type=3')->getField('id,title,createTime');
		$this->assign('Grouplist',$Grouplist);// 分组输出
		$this->display();
    }
	
	/*
	  +----------------------------------------------------------
     * 新增数据操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
	function insert() {
        $model = D('Blogs');
        if (false === $model->create()) {
            $this->error($model->getError());
        }
		$model->type = 3;
		$model->fileId = I('attachment');
		$tags = I('tags');
		if(!empty($tags)){
			$Tag = D('Tag');
			$tags = explode(" ", $tags);
			$tagId = $Tag->addTag($tags);
			$Blog->tag = $tagId;
		}
        //保存当前数据对象
        $list = $model->add();
        if ($list !== false) { //保存成功
            $config = S('Config');
			$blogUrl = getBlogUrl($list);
			//Ping(array('updateUrl'=>$blogUrl,'siteName' =>$config['blogName']));
			
			$this->success('新增成功!',cookie('_lastUrl_'));
        } else {
            //失败提示
            $this->error('新增失败!');
        }
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
        if (false === $model->create()) {
            $this->error($model->getError());
        }
		$tags = I('tags');
		if(!empty($tags)){
			$Tag = D('Tag');
			$tags = explode(" ", $tags);
			$tagId = $Tag->addTag($tags);
			$model->tag = $tagId;
			//dump($tagId);
		}
        // 更新数据
		$model->fileId = I('attachment');
        $list = $model->where('id='.I('id'))->save();
        if (false !== $list) {
            //成功提示
            $this->success('编辑成功!',cookie('_lastUrl_'));
        } else {
            //错误提示
            $this->error('编辑失败!');
        }
    }
	
	/*
	  +----------------------------------------------------------
     * 默认禁用操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    public function forbid() {
        $model = D('Blogs');
        $pk = $model->getPk();
        $id = $_REQUEST [$pk];
        $condition = array($pk => array('in', $id));
        $list = $model->forbid($condition);
        if ($list !== false) {
            $this->success('状态禁用成功',$this->getReturnUrl());
        } else {
            $this->error('状态禁用失败！');
        }
    }
	
	/**
      +----------------------------------------------------------
     * 默认恢复操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    function resume() {
        $model = D('Blogs');
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->resume($condition)) {
            $this->success('状态恢复成功！',$this->getReturnUrl());
        } else {
            $this->error('状态恢复失败！');
        }
    }
	
	/**
      +----------------------------------------------------------
     * 置顶操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    function isTop() {
        $model = D('Blogs');
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->isTop($condition)) {
            $this->success('状态恢复成功！',$this->getReturnUrl());
        } else {
            $this->error('状态恢复失败！');
        }
    }
	
	/**
      +----------------------------------------------------------
     * 取消置顶
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    function noTop() {
        $model = D('Blogs');
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->noTop($condition)) {
            $this->success('状态恢复成功！',$this->getReturnUrl());
        } else {
            $this->error('状态恢复失败！');
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
                    $this->success('删除成功！');
                } else {
                    $this->error('删除失败！');
                }
            } else {
                $this->error('非法操作');
            }
        }
        $this->forward();
    }
}