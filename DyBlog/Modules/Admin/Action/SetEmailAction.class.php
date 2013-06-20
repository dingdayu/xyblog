<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:41:36
// +----------------------------------------------------------------------
// | 此类实现设置管理
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //
// //------------------- // 设置管理页 //----------------------- // //

class SetEmailAction extends BaseAction {
    
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
		
		$Config = D('Config');
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		//$list = $Blogs->order('createTime')->limit($Page->firstRow.','.$Page->listRows)->select();
		$conf = $Config->where(array('status'=>1 ,'group'=>2))->getField('name,value,remark');
		foreach ($conf as $k => $v) {
			$c[$v['name']] = $v;
		}
		//dump($c);
		$this->assign('conf', $c);
		//dump($list);
        C ( 'SHOW_RUN_TIME', false ); // 运行时间显示
        C ( 'SHOW_PAGE_TRACE', true );
		cookie('_currentUrl_', __SELF__);
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
        $model = D('Config');
		foreach(I('post.') as $key=>$vae){
		dump($vae);
			$list = $model->where(array('name' =>$key))->setField('value',$vae);
			dump($list);
			if (false === $list) {
				$this->error('编辑失败!',cookie('_currentUrl_'));
			}
		}
        $this->success('编辑成功!',cookie('_currentUrl_'));
		S('Config',NULL);//清空缓存
	}
}