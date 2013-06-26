<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:35
// +----------------------------------------------------------------------
// | User表数据模型函数
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //

class UserModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
		array('repassword','password','确认密码不正确',0,'confirm'), // 验证确认密码是否和密码一致
		array('username','require','用户名必须！'),
		array('username','','帐号名称已经存在！',0,'unique',1),
		array('username','/^[a-z]\w{4,}$/i','用户名必须是以字母打头，且5位以上！'),
		array('email','email','邮箱格式错误！',1),
		array('email','require','邮箱必须！'),
		array('email','','邮箱已注册！',0,'unique',1),
        );
    // 自动填充设置
    protected $_auto	 =	 array(
        array('status','1',1),
        array('create_ip','get_client_ip',1,'function'),
        array('create_time','time',1,'function'),
		array('update_time','time',2,'function'),
		array('password','pwdHash',3,'callback'),
        );
	
	/**
     +----------------------------------------------------------
     * 对post来的password数据进行pwdHash加密，函数位于项目函数文件
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     */	
	protected function pwdHash() {
		if(isset($_POST['password'])) {
			return pwdHash($_POST['password']);
		}else{
			return false;
		}
	}
}