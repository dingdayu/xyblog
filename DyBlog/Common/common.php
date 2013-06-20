<?php
// +----------------------------------------------------------------------
// | ThinkPHP
// +----------------------------------------------------------------------
// | Copyright (c) 2007 http://www.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 小雨 <614422099@qq.com>
// +----------------------------------------------------------------------
// $Id: common.php 2013年5月19日 23:13:09 小雨 $

/**
  +----------------------------------------------------------
 * 功能：时间格式转换
  +----------------------------------------------------------
 * @param string $time		UTC时间值
 * @param string $format	换换后时间格式
  +----------------------------------------------------------
 * @return string		转换后的时间
  +----------------------------------------------------------
 */
function toDate($time, $format = 'Y-m-d H:i:s') {
	if (empty ( $time )) {
		return '';
	}
	$format = str_replace ( '#', ':', $format );
	return date ($format, $time );
}

/**
  +----------------------------------------------------------
 * 功能：获取用户昵称
  +----------------------------------------------------------
 * @param string $id		用户id
  +----------------------------------------------------------
 * @return string		用户昵称
  +----------------------------------------------------------
 */
function getUserName($id) {
	if (empty ( $id )) {
		return '';
	}
	$User = M('User');
	$use = $User->where('status=1 and id='.$id)->getField('nickname');
	return $use;
}

/**
  +----------------------------------------------------------
 * 功能：获取博客标题
  +----------------------------------------------------------
 * @param string $id		用户id
  +----------------------------------------------------------
 * @return string		博客链接
  +----------------------------------------------------------
 */
function getBlogTitle($id) {
	$B = M('Blogs');
	return "《 <a href=\"".U('Home/Blog/read/'.$id)."#".$id."\" target=\"_blank\">".$B->where('status=1 and id='.$id)->getField('title')."</a> 》";
}

/**
  +----------------------------------------------------------
 * 功能：获取博客地址
  +----------------------------------------------------------
 * @param string $id		用户id
  +----------------------------------------------------------
 * @return string		博客地址
  +----------------------------------------------------------
 */
function getBlogUrl($id ,$url = true) {
	if($url){
		$s = "http://".$_SERVER["HTTP_HOST"].U('Blog/'.$id);
	}else{
		$s = U('Blog/'.$id);
	}
	return $s;
}

/**
  +----------------------------------------------------------
 * 功能：Ping函数
  +----------------------------------------------------------
 * @param array $id		用户id
  +----------------------------------------------------------
 * @return string		博客地址
  +----------------------------------------------------------
 */
function Ping($config=array()) {
		import('ORG.Util.Ping', LIB_PATH);
		$Conf = array(//'siteName' => '小雨博客',
				'siteUrl' => 'http://'.$_SERVER["HTTP_HOST"].'/',
				//'updateUrl' => '',
				'updateRss' => 'http://'.$_SERVER["HTTP_HOST"].'/rss',
				);
		$RssConf = array_merge($Conf ,$config);
		$PING = new Ping($RssConf);
		$PING->execute();
		unset($config,$Conf,$RssConf);
}

/**
  +----------------------------------------------------------
 * 功能：跳转
  +----------------------------------------------------------
 * @param string $msg		提示消息
 * @param string $url		跳转地址
			1	后退一步
			2	后退两步
			3	关闭网页
			$url	跳入网址
  +----------------------------------------------------------
 * @return 
  +----------------------------------------------------------
 */
function alert($msg,$url){
	header('Content-type: text/html; charset=utf-8');
	$msg = str_replace("'","\\'",$msg);
	$str = '<script>';
	$str.="alert('".$msg."');";
	switch($url)
	{
		case 1:
			$s = 'window.history.go(-1);';
			break;
		case 2:
			$s = 'window.history.go(-2);';
			break;
		case 3:
			$s = 'self.close();';
			break;
		default:
			$s = "location.href='{$url}';";
	}
	$str.=$s;
	$str.='</script>';
	exit($str);
}
	
/**
  +----------------------------------------------------------
 * 功能：测试目录是否可写入
  +----------------------------------------------------------
 * @param string $file		测试目录
  +----------------------------------------------------------
 * @return boolean
  +----------------------------------------------------------
 */
function testwrite($file){
	$tfile = '_wk.txt';
	$file = ereg_replace('/$','',$file);
	$fp = @fopen($file.'/'.$tfile,'w');
	if(!$fp){
		return false;
	}else{
		fclose($fp);
		$rs = @unlink($file.'/'.$tfile);
		if($rs){
			return true;
		}else{
			return false;
		}
	}
}

/**
  +----------------------------------------------------------
 * 功能：检测是否手机浏览
  +----------------------------------------------------------
 * @param 
  +----------------------------------------------------------
 * @return boolean
  +----------------------------------------------------------
 */
function isMobile(){
	if(stristr($_SERVER['HTTP_VIA'],"wap")){// 先检查是否为wap代理，准确度高
		return true;
	}elseif(strpos(strtoupper($_SERVER['HTTP_ACCEPT']),"VND.WAP.WML") > 0){// 检查浏览器是否接受 WML.
		return true;
   }elseif(preg_match('/(blackberry|configuration\/cldc|hp|hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera|Googlebot-Mobile|YahooSeeker\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda|xda_)/i', $_SERVER['HTTP_USER_AGENT'])){//检查USER_AGENT
		return true;		 	
	}else{
		return false;	
   }
}

/**
  +----------------------------------------------------------
 * 功能：自动转换字符集 支持数组转换
  +----------------------------------------------------------
 * @param string $fContents    待转换字符串
 * @param string $from    字符串初始编码
 * @param string $to    字符串预编译编码
  +----------------------------------------------------------
 * @return string $value    编译后字符串
  +----------------------------------------------------------
 */
function auto_charset($fContents, $from='gbk', $to='utf-8') {
    $from = strtoupper($from) == 'UTF8' ? 'utf-8' : $from;
    $to = strtoupper($to) == 'UTF8' ? 'utf-8' : $to;
    if (strtoupper($from) === strtoupper($to) || empty($fContents) || (is_scalar($fContents) && !is_string($fContents))) {
        //如果编码相同或者非字符串标量则不转换
        return $fContents;
    }
    if (is_string($fContents)) {
        if (function_exists('mb_convert_encoding')) {
            return mb_convert_encoding($fContents, $to, $from);
        } elseif (function_exists('iconv')) {
            return iconv($from, $to, $fContents);
        } else {
            return $fContents;
        }
    } elseif (is_array($fContents)) {
        foreach ($fContents as $key => $val) {
            $_key = auto_charset($key, $from, $to);
            $fContents[$_key] = auto_charset($val, $from, $to);
            if ($key != $_key)
                unset($fContents[$key]);
        }
        return $fContents;
    }
    else {
        return $fContents;
    }
}

/**
  +----------------------------------------------------------
 * 功能：检测一个字符串是否是邮件地址格式
  +----------------------------------------------------------
 * @param string $value    待检测字符串
  +----------------------------------------------------------
 * @return boolean
  +----------------------------------------------------------
 */
function is_email($value) {
    return preg_match("/^[0-9a-zA-Z]+(?:[\_\.\-][a-z0-9\-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\.[a-zA-Z]+$/i", $value);
}

/**
  +----------------------------------------------------------
 * 功能：系统邮件发送函数
  +----------------------------------------------------------
 * @param string $to    接收邮件者邮箱
 * @param string $name  接收邮件者名称
 * @param string $subject 邮件主题
 * @param string $body    邮件内容
 * @param string $attachment 附件列表
  +----------------------------------------------------------
 * @return boolean
  +----------------------------------------------------------
 */
function send_mail($to, $name, $subject = '', $body = '', $attachment = null, $config = '') {
    $config = is_array($config) ? $config : C('XYBLOG_EMAIL');
    //import('PHPMailer.phpmailer', VENDOR_PATH);         		//从PHPMailer目录导class.phpmailer.php类文件
	//import('@.ORG.PHPMailer.class#phpmailer');				//vendor('PHPMailer.class#phpmailer');
	import('ORG.PHPMailer.phpmailer', LIB_PATH);
    $mail = new PHPMailer();                           			//PHPMailer对象
    $mail->CharSet = 'UTF-8';                         			//设定邮件编码，默认ISO-8859-1，如果发中文此项必须设置，否则乱码
    $mail->IsSMTP();                                   			// 设定使用SMTP服务
	$mail->IsHTML(true);
    $mail->SMTPDebug = 0;                             			// 关闭SMTP调试功能 1 = errors and messages2 = messages only
    $mail->SMTPAuth = true;                           			// 启用 SMTP 验证功能
    if ($config['smtp_port'] == 465)
        $mail->SMTPSecure = 'ssl';                    			// 使用安全协议
    $mail->Host = $config['smtp_host'];                			// SMTP 服务器
    $mail->Port = $config['smtp_port'];                			// SMTP服务器的端口号
    $mail->Username = $config['smtp_user'];           			// SMTP服务器用户名
    $mail->Password = $config['smtp_pass'];           			// SMTP服务器密码
    $mail->SetFrom($config['from_email'],$config['from_name']);
    $replyEmail = $config['reply_email']?$config['reply_email']:$config['from_email'];
    $replyName = $config['reply_name']?$config['reply_name']:$config['from_name'];
    $mail->AddReplyTo($replyEmail, $replyName);
    $mail->Subject = $subject;
    $mail->MsgHTML($body);
    $mail->AddAddress($to, $name);
    if (is_array($attachment)) { // 添加附件
        foreach ($attachment as $file) {
            if (is_array($file)) {
                is_file($file['path']) && $mail->AddAttachment($file['path'], $file['name']);
            } else {
                is_file($file) && $mail->AddAttachment($file);
            }
        }
    } else {
        is_file($attachment) && $mail->AddAttachment($attachment);
    }
    return $mail->Send() ? true : $mail->ErrorInfo;
}


function pwdHash($password, $type = 'md5') {
	return hash ( $type, $password );
}
?>