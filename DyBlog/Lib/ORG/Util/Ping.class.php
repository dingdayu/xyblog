<?php
// +----------------------------------------------------------------------
// | 	Xy Blog [ By xiaoyu ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com>
// +----------------------------------------------------------------------

/**
 * 将内容ping给百度和谷歌
 * @author    xiaoyu <614422099@qq.com>
 */
class Ping {//类定义开始

	private $config =   array(
	    'encoding'          	=>  'UTF-8',					// 缩略图扩展名 
        'siteName'           	=>  '',    					// 博客名
        'siteUrl'      			=>  '',    						// 博客链接
        'updateUrl'         	=>  '',    						// 文章链接
        'updateRss'    			=>  '',    						// RSS
        );
	
	private $pingList =   array(
	    'baidu'          	=>  'http://blogsearch.google.com/ping/RPC2',					// 缩略图扩展名 
        'google'           	=>  'http://ping.baidu.com/ping/RPC2',    					// 博客名
        );
	
	private $callbackList =   array(
	    'baidu'          	=>  '<boolean>0</boolean>',					// 缩略图扩展名 
        'google'           	=>  '<int>0</int>',    					// 博客名
        );
	
	// ping送的内容
    private $content = '';
    // 百度和谷歌的返回内容
    private $callback = '';
	
    public function __get($name){
        if(isset($this->config[$name])) {
            return $this->config[$name];
        }
        return null;
    }

    public function __set($name,$value){
        if(isset($this->config[$name])) {
            $this->config[$name]    =   $value;
        }
    }

    public function __isset($name){
        return isset($this->config[$name]);
    }
	
    /**
     * 架构函数
     * @access public
     * @param array $config  上传参数
     */
    public function __construct($config=array()) {
        if(is_array($config)) {
            $this->config   =   array_merge($this->config,$config);
        }
    }
	
	/**************************************************************************/
	// 函数名: AddItem
	// 功能: 添加一个节点
	// 参数: $title
	// $link
	// $descrīption $pubDate
	/**************************************************************************/
	public function BuildPing() {
        $s = "<?xml version=\"1.0\" encoding=\"{$this->encoding}\"?>";
		$s .= "\r\n<methodCall>\r\n\t<methodName>weblogUpdates.extendedPing</methodName>";
		$s .= "\r\n\t<params>\r\n\t\t<param><value>{$this->siteName}</value></param>";
		$s .= "\r\n\t\t<param><value>{$this->siteUrl}</value></param>";
		$s .= "\r\n\t\t<param><value>{$this->updateUrl}</value></param>";
		$s .= "\r\n\t\t<param><value>{$this->updateRss}</value></param>";
		$s .= "\r\n\t</params>\r\n</methodCall>";
		
        $this->content = $s;
    }
	
	public function _post($url, $postvar) {
        $ch = curl_init();
        $headers = array(
            "POST " . $url . " HTTP/1.0",
            "Content-type: text/xml;charset=\"utf-8\"",
            "Accept: text/xml",
            "Content-length: " . strlen($postvar)
        );
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postvar);
        $res = curl_exec($ch);
        curl_close($ch);
        return $res;
    }
	
	public function execute() {
        foreach ($this->pingList as $k => $v) {
			if (empty($this->content)) $this->BuildPing();
			$callback = $this->_post($v, $this->content);
			//echo $k."\n".$v."\n";
			//echo $this->content;
			//echo $this->callbackList[$k];
			//if(strpos($callback ,$this->callbackList[$k])) ? true : false;
		}
    }
}