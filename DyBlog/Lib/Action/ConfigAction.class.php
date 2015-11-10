<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月15日 18:39:51
// +----------------------------------------------------------------------
// | 配置加载类，前后台第一个类
// +----------------------------------------------------------------------
// //------------------- // 配置类 //----------------------- // //

class ConfigAction extends Action {
	
	public function config() {
		header("Content-Type:text/html; charset=utf-8");
		
		
		$this->check_inst();
		$this->load_conf();
		$this->check_status();
		$this->check_mobile();
		//$this->email_conf();

	}
	
	/**
      +----------------------------------------------------------
     * 检测是否已安装
      +----------------------------------------------------------
    */
	public function check_inst($file = "./Public/Install/install.lock",$url = ''){
		if(empty($url)){
			$url = __ROOT__.'/install';
		}
		if (!file_exists($file)){
			header("Location:$url");
			exit();
		}
	}
	
	/**
      +----------------------------------------------------------
     * 检查手机 访问
      +----------------------------------------------------------
    */
	public function check_mobile(){
		if(GROUP_NAME == 'Home'){
			//$url = "http://".$_SERVER["HTTP_HOST"].U('Blog/'.$id);
			//$url = "http://".$_SERVER["HTTP_HOST"]."/Mobile.html";
			//echo GROUP_NAME;exit;
			if(isMobile()){
				redirect('/Mobile.html', 3, '<div style="font-size:60;">检测到手机登录，跳入手机版...</div>');
			}
		}
	}
	
	/**
      +----------------------------------------------------------
     * 站点是否开启
      +----------------------------------------------------------
    */
	public function check_status(){
		if(GROUP_NAME != 'Admin' and MODULE_NAME != 'Login'){
			$Config = S('Config');
			//$status = D('Config')->get('blogStatus');
			if($Config['blogStatus'] == 0){
				//dump(S('Config'));
				if(!empty($Config['blogCloseMsg'])){
					echo '<div style="whdth:100%;height:100%;font-size:60;color:#5FAA92;">'.$Config['blogCloseMsg'].'</div>';
				}else{
					echo '<div style="whdth:100%;height:100%;font-size:60;color:#5FAA92;">网站维护中...</div>';
				}
				exit();
			}
		}
	}
	
	/**
      +----------------------------------------------------------
     * 加载邮箱配置，若有空则失效
      +----------------------------------------------------------
    */
	public function email_conf(){
		$emailConfig = D('Config')->where(array('status'=>1 ,'group'=>2))->getField('name,value');
		//dump($emailConfig);
		//trace('s',S('Config'));
		if(!empty($emailConfig['email_smtpHost']) and !empty($emailConfig['email_smtpPort']) and !empty($emailConfig['eamil_smtpUser']) and !empty($emailConfig['email_smtpPass']) and !empty($emailConfig['email_fromEmail']) and !empty($emailConfig['email_fromName'])){
			//dump($emailConfig);
			//dump(C('XYBLOG_EMAIL'));
			C('XYBLOG_EMAIL.smtp_host',$emailConfig['email_smtpHost']);
			C('XYBLOG_EMAIL.smtp_port',$emailConfig['email_smtpPort']);
			C('XYBLOG_EMAIL.smtp_user',$emailConfig['email_smtpUser']);
			C('XYBLOG_EMAIL.smtp_pass',$emailConfig['email_smtpPass']);
			C('XYBLOG_EMAIL.from_email',$emailConfig['email_formEmail']);
			C('XYBLOG_EMAIL.from_name',$emailConfig['email_fromName']);
			if(!empty($emailConfig['email_replyEmail'])){
				C('XYBLOG_EMAIL.reply_email',$emailConfig['email_replyEmail']);
			}
			if(!empty($emailConfig['email_replyName'])){
				C('XYBLOG_EMAIL.reply_name',$emailConfig['email_replyName']);
			}
			//dump(C('XYBLOG_EMAIL'));
		}
		//exit();
	}
	
	/**
      +----------------------------------------------------------
     * 加载配置文件
      +----------------------------------------------------------
    */
	public function load_conf(){
		$Conf = S('Config');
		if(empty($Conf)){
			$config = D('Config')->where(array('status'=>1))->getField('name,value');
			S('Config',$config);
		}
		/*
			array (size=9)
				  'blogName' => string 'Xy Blog' (length=7)
					'blogDescription' => string '小雨的第一个开源博客' (length=30)
					'adminEmail' => string '614422099@qq.com' (length=16)
					'commentAudit' => string '0' (length=1)
					'commentEmailInform' => string '1' (length=1)
					'blogKeywords' => string 'Xy Blog' (length=7)
					'blogStatus' => string '1' (length=1)
					'blogCloseMsg' => string '博客升级中，请稍后重试。' (length=36)
					'statCode' => string '' (length=0)
					'email_smtpHost' => string 'smtp.exmail.qq.com' (length=18)
					'email_smtpPort' => string '25' (length=2)
					'eamil_smtpUser' => string 'xyblog@dingxiaoyu.com' (length=21)
					'email_smtpPass' => string 'qq614422099' (length=11)
					'email_fromEmail' => string 'xyblog@dingxiaoyu.com' (length=21)
					'email_fromName' => string 'Xy Blog' (length=7)
					'email_replyEmail' => string '614422099@qq.com' (length=16)
					'email_replyName' => string '小雨' (length=6)
		*/
		//dump(S('Config'));
		//trace('s',S('Config'));
		//exit();
	}
}