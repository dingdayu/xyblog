<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现Music输出
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // Music输出页 //----------------------- // //

class RegAction extends CommonAction {

	public function index(){
		$this->display();
	}
	
	public function registerpost(){
        if(empty($_POST['username'])) {
            $this->error('帐号错误！');
        }elseif (empty($_POST['password'])){
            $this->error('密码必须！');
        }elseif (empty($_POST['verify'])){
            $this->error('验证码必须！');
        }
		if(session('verify') != md5($_POST['verify'])) {
            $this->error('验证码错误！');
        }
		$User = D("User"); // 实例化User对象
		// 根据表单提交的POST数据创建数据对象
		if(!$User->create()){
			$this->error($User->getError());
		}
		$result = $User->add(); // 根据条件保存修改的数据
		/*
		array (size=9)
  'username' => string 'woshi' (length=5)
  'password' => string 'dingdayu' (length=8)
  'repassword' => string 'dingdayu' (length=8)
  'email' => string 'dingdayu@qq.com' (length=15)
  'seccodeverify' => string '11850' (length=5)
  '__hash__' => string '632f92a089ec87db861ace383499111e_eab2dfb480cf10e5cac3d1592e3909b1' (length=65)
  0 => string 'user' (length=4)
  1 => string 'reg' (length=3)
  2 => string 'registerpost' (length=12)
  */
		if(false !== $result) {
            $this->success('注册成功等待审核！');
        }else{
            $this->error('注册失败，请重新尝试!');
        }
	}
	
	public function checkUserNameUnique(){
		$name = I('name');
		$param = I('param');
		if($name != 'username'){
			exit(0);
		}
		if(!preg_match('/^[a-z]\w{4,}$/i',$param)){
			$ec = array('data'=>'','info'=>'用户名必须是以字母打头，且5位以上！','status'=>"n");
			$this->ajaxReturn($ec);
			exit;
		}
		$User = M('User');
		$list = $User->where(array('username'=>$param))->select();
		if(empty($list)){
			$ec = array('data'=>'','info'=>'用户名可以注册','status'=>"y");
		}else{
			$ec = array('data'=>'','info'=>'用户名已经存在!','status'=>"n");
		}
		$this->ajaxReturn($ec);
	}
	
	public function checkUserEmailUnique(){
		$name = I('name');
		$param = I('param');
		if($name != 'email'){
			exit(0);
		}
		$User = M('User');
		$list = $User->where(array('email'=>$param))->select();
		if(empty($list)){
			$ec = array('data'=>'','info'=>'邮箱可以注册','status'=>'y');
		}else{
			$ec = array('data'=>'','info'=>'邮箱已经存在!','status'=>'n');
		}
		$this->ajaxReturn($ec);
	}
}