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
// //------------------- // 搜索处理页 //----------------------- // //

class PublicAction extends CommonAction {
    public function index(){
	
		$this->error('此模块暂为开通!');
		$this->display();
    }
	
	public function blogUpload(){
		if(!empty($_FILES)) {
			import("ORG.Util.UploadFile",LIB_PATH);
			import("ORG.Util.Image",LIB_PATH);
			$upconf = C('UP_LOAD');
			$upconf['savePath'] = './Public/Uploads/blogCover/';
			$upload = new UploadFile($upconf);// 实例化上传类
			if (!$upload->upload()) { // 上传错误提示错误信息
				$error['error'] = $upload->getErrorMsg();
				//$error['message'] = '测试错误';
				$error['status'] = 0;
				/*echo '<script type="text/javascript">alert("'.$error['message'].'");</script>';*/
				//echo json_encode($error);
				$this->ajaxReturn($error);
			}else {
				$info =  $upload->getUploadFileInfo();
				foreach($info as $k => $v){
					$data['savepath'] = $v['savepath'];
					$data['savename'] = $v['savename'];
					$data['size'] = $v['size'];
					$data['extension'] = $v['extension'];
					$data['type'] = $v['type'];
					$data['hash'] = $v['hash'];
					$data['module'] = '1';
					$data['version'] = '1';
					$data['recordId'] = '0';
					$data['status'] = '1';
					
					$data['userId'] = getMemberId();
					$data['author'] = getUserName($data['userId']);
					$data['uploadTime'] = time();
					$data['name'] = $v['name'];
					// 保存表单数据 包括附件数据
					$Uploads = M("Upload"); // 实例化User对象
					//$Uploads->create(); // 创建数据对象
					$id = $Uploads->add($data); // 写入用户数据到数据库
				}
				if(empty($id)){$error['status'] = 0;$error['error'] = '数据库保存错误';$this->ajaxReturn($error);}
				// 上传成功 获取上传文件信息
				//$info = $upload->getUploadFileInfo();
				$to['img'] = '/'.$info[0]['savepath'].$info[0]['savename'];
				//$Image = new Image();
				//$to['q'] = $Image->water($info[0]['savepath'].$info[0]['savename'],'Public/Images/logo.jpg');
				$to['data'] = $id;
				$to['status'] = 1;
				//echo json_encode($to);
				$this->ajaxReturn($to);
				//echo '<script>parent.set('.json_encode($info[0]).')</script>';
			}
		}
    }
	
	public function attachmentUpload(){
		if(!empty($_FILES)) {
			import("ORG.Util.UploadFile",LIB_PATH);
			import("ORG.Util.Image",LIB_PATH);
			$upconf = C('UP_LOAD');
			$upconf['allowExts'] = array('gz','7z','tar','zip','rar');
			$upconf['savePath'] = './Public/Uploads/attachment/';
			$upload = new UploadFile($upconf);// 实例化上传类
			if (!$upload->upload()) { // 上传错误提示错误信息
				$error['error'] = $upload->getErrorMsg();
				$error['data'] = '';
				$error['status'] = 0;
				$this->ajaxReturn($error);
			}else {
				$info =  $upload->getUploadFileInfo();
				foreach($info as $k => $v){
					$data['savepath'] = $v['savepath'];
					$data['savename'] = $v['savename'];
					$data['size'] = $v['size'];
					$data['extension'] = $v['extension'];
					$data['type'] = $v['type'];
					$data['hash'] = $v['hash'];
					$data['module'] = '1';
					$data['version'] = '1';
					$data['recordId'] = '0';
					$data['status'] = '1';
					
					$data['userId'] = getMemberId();
					$data['author'] = getUserName($data['userId']);
					$data['uploadTime'] = time();
					$data['name'] = $v['name'];
					// 保存表单数据 包括附件数据
					$Uploads = M("Upload"); // 实例化User对象
					//if (!$Uploads->create()){
					//	$this->error($Uploads->getError());
					//}
					$id = $Uploads->add($data); // 写入用户数据到数据库
				}
				if(empty($id)){$error['status'] = 0;$error['data'] = '';$error['error'] = '数据库保存错误';$this->ajaxReturn($error);}
				// 上传成功 获取上传文件信息
				$to['data'] = $id;
				$to['status'] = 1;
				//echo json_encode($to);
				$this->ajaxReturn($to);
				//echo '<script>parent.set('.json_encode($info[0]).')</script>';
			}
		}
    }
	
	//{"status":0,"data":"","error":"\u4e0a\u4f20\u6587\u4ef6\u7c7b\u578b\u4e0d\u5141\u8bb8"}
	public function editorUpload(){
		if(!empty($_FILES)) {
			import("ORG.Util.UploadFile",LIB_PATH);
			import("ORG.Util.Image",LIB_PATH);
			$upconf = C('UP_LOAD');
			$upconf['savePath'] = './Public/Uploads/editorUpload/';
			$upload = new UploadFile($upconf);// 实例化上传类
			if (!$upload->upload()) { // 上传错误提示错误信息
				$error['error'] = $upload->getErrorMsg();
				//$error['message'] = '测试错误';
				$error['status'] = 0;
				/*echo '<script type="text/javascript">alert("'.$error['message'].'");</script>';*/
				//echo json_encode($error);
				$this->ajaxReturn($error);
			}else {
				$info =  $upload->getUploadFileInfo();
				foreach($info as $k => $v){
					$data['savepath'] = $v['savepath'];
					$data['savename'] = $v['savename'];
					$data['size'] = $v['size'];
					$data['extension'] = $v['extension'];
					$data['type'] = $v['type'];
					$data['hash'] = $v['hash'];
					$data['module'] = '1';
					$data['version'] = '1';
					$data['recordId'] = '0';
					$data['status'] = '1';
					
					$data['userId'] = getMemberId();
					$data['author'] = getUserName($data['userId']);
					$data['uploadTime'] = time();
					$data['name'] = $v['name'];
					// 保存表单数据 包括附件数据
					$Uploads = M("Upload"); // 实例化User对象
					//$Uploads->create(); // 创建数据对象
					$id = $Uploads->add($data); // 写入用户数据到数据库
				}
				if(empty($id)){$error['status'] = 0;$error['error'] = '数据库保存错误';$this->ajaxReturn($error);}
				// 上传成功 获取上传文件信息
				//$info = $upload->getUploadFileInfo();
				$to['data'] = '/'.$info[0]['savepath'].$info[0]['savename'];
				$to['status'] = 1;
				//echo json_encode($to);
				$this->ajaxReturn($to);
				//echo '<script>parent.set('.json_encode($info[0]).')</script>';
			}
		}
    }
}