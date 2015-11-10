<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现Photo输出
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // Photo输出页 //----------------------- // //

class DownAction extends CommonAction {
    public function index(){
		$this->error('此模块暂为开通!');
		$this->display();
    }
	
	public function down($id){
		import("ORG.Util.Http",LIB_PATH);
		
		$Attach =  M("Upload");
		$map['id'] =  $id;
		$map['status'] =  '1';
		if($Attach->where($map)->find()) {
			$filename   =   $Attach->savepath.$Attach->savename;
			if(file_get($filename)) {
                //$showname = auto_charset($Attach->name,'utf-8','gb2312');
                //$showname = $Attach->name;
				//echo $filename.'<br>'.$showname.'<br>'.$Attach->name;
				//下载次数
				if(!isset($_SESSION['downloadattach_'.$id])) {
                    // 下载计数
                    $Attach->where('id='.$id)->setInc('downCount');
                    $_SESSION['downloadattach_'.$id]   =  true;
                }
                $con = file_get($filename);
				Http::download($filename,$showname,$con);
			}else{
				$this->error('附件不存在或者已经删除！');
			}
		}else{
			$this->error('附件不存在或者已经删除！');
		}
    }
}