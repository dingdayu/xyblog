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

class UploadAction extends BaseAction {
    
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
		$conf = $Config->where('status=1 and type=2')->getField('name,value,remark');
		//dump($conf);
		//exit;
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
	
	public function upload(){
        if (!empty($_FILES)) {
            import("ORG.Util.UploadFile",LIB_PATH);
            import("ORG.Util.Image",LIB_PATH);
            $upload = new UploadFile(); // 实例化上传类
            $upload->maxSize = 500000; // 设置附件上传大小
            $upload->saveRule = 'uniqid';
			$upload->uploadReplace = true;
            $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg'); // 设置附件上传类型
            $upload->savePath = './Upload/'; // 设置附件上传目录
            if (!$upload->upload()) { // 上传错误提示错误信息
				$error['message'] = $upload->getErrorMsg();
                $error['status'] = 0;
				/*echo '<script type="text/javascript">alert("'.$error['message'].'");</script>';*/
			    echo json_encode($error);
                exit;
            } else {
                // 上传成功 获取上传文件信息
                $info = $upload->getUploadFileInfo();
                $info[0]['file'] = trim($info[0]['savepath'].$info[0]['savename'],'.');
                echo json_encode($info[0]);
				//echo '<script>parent.set('.json_encode($info[0]).')</script>';
                exit;
            }
        }
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
	function up() {
        import('ORG.Util.RBAC', LIB_PATH);
		$upconf = C('UP_LOAD');
		$upload = new UploadFile($upconf);// 实例化上传类
		if(!$upload->upload()) {// 上传错误提示错误信息
			
			if(IS_AJAX){
				echo json_encode(array('error' => 1, 'message' => $upload->getErrorMsg()));
				exit(0);
			}else{
				$this->error($upload->getErrorMsg());
				exit(0);
			}
		}else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			foreach($info as $k => $v){
				$data['savepath'] = $info[$k]['savepath'];
				$data['savename'] = $info[$k]['savename'];
				$data['size'] = $info[$k]['size'];
				$data['extension'] = $info[$k]['extension'];
				$data['type'] = $info[$k]['type'];
				$data['hash'] = $info[$k]['hash'];
				$data['module'] = '1';
				$data['version'] = '1';
				$data['recordId'] = '0';
				$data['status'] = '1';
				$data['userId'] = $this->getMemberId();
				$data['uploadTime'] = time();
				$data['remark'] = $this->_post('remark');
				$data['name'] = $this->_post('title');
				// 保存表单数据 包括附件数据
				$User = M("User"); // 实例化User对象
				$User->create(); // 创建数据对象
				$id[] = $User->add($data); // 写入用户数据到数据库
			}
			S('updateId_'.$this->getMemberId() ,$id);
			//S('updateId_'.$this->getMemberId() ,NULL)
			if(IS_AJAX){
				echo json_encode(array('error' => 1, 'message' => $upload->getErrorMsg()));
				exit(0);
			}else{
				$this->success('数据保存成功！');
				exit(0);
			}
		}
	}
}