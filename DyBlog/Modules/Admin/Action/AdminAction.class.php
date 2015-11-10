<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现标签处理
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //
// //------------------- // 分组管理页 //----------------------- // //

class AdminAction extends BaseAction {

	//管理员列表
    public function index(){
		$Model = D('User');
		$count = $Model->where('admin=1')->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Model->where('admin=1')->order('create_time')->limit($Page->firstRow.','.$Page->listRows)->select();
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
	
	//添加管理员
	public function adminAdd(){
		$this->display();
    }
	
	//接收添加管理员
	public function adminInsert(){
		$model = D('User');
        if (false === $model->create()) {
            $this->error($model->getError());
        }
        //保存当前数据对象
		$model->admin = 1;
        $list = $model->add();
        if ($list !== false) { //保存成功
			$this->success('新增成功!',cookie('_lastUrl_'));
        } else {
            //失败提示
            $this->error('新增失败!');
        }
    }
	
	//更新管理员数据

	public function adminUpData(){
		$model = D('User');
        if (false === $model->create()) {
            $this->error($model->getError());
        }
        // 更新数据
        $list = $model->save();
        if (false !== $list) {
            //成功提示
            $this->success('编辑成功!',cookie('_lastUrl_'));
        } else {
            //错误提示
            $this->error('编辑失败!');
        }
    }
	
	//删除管理员
	public function adminDel(){
		$model = D('User');
        if (!empty($model)) {
            $pk = $model->getPk();
            $id = $_REQUEST [$pk];
            if (isset($id)) {
                $condition = array($pk => array('in', explode(',', $id)));
                if (false !== $model->where($condition)->delete()) {
                    $this->success($id.'删除成功！');
                } else {
                    $this->error($id.'删除失败！');
                }
            } else {
                $this->error('非法操作');
            }
        }
    }
	
	//编辑管理员
	public function adminEdit(){
		$model = D('User');
        $id = $_REQUEST [$model->getPk()];
        $vo = $model->getById($id);
        $this->assign('vo', $vo);
		$this->display();
    }
	
	//禁用管理
	public function forbid(){
		$model = D('User');
        $pk = $model->getPk();
        $id = $_REQUEST [$pk];
        $condition = array($pk => array('in', $id));
        $list = $model->forbid($condition);
        if ($list !== false) {
            $this->success('状态禁用成功',cookie('_currentUrl_'));
        } else {
            $this->error('状态禁用失败！');
        }
    }
	
	//启用
	public function resume(){
        $model = D('User');
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->resume($condition)) {
            $this->success('状态恢复成功！',cookie('_currentUrl_'));
        } else {
            $this->error('状态恢复失败！');
        }
    }
}