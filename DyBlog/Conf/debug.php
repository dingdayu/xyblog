<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2012年10月24日 12:47:31
// +----------------------------------------------------------------------
// //------------------- // 首页 //----------------------- // //

/**
  +----------------------------------------------------------
 * 调试配置文件
  +----------------------------------------------------------
*/
return array(

	/*****************运行时间**************/
	'SHOW_RUN_TIME'			=>	0,          			// 运行时间显示
	'SHOW_ADV_TIME'			=>	true,          			// 显示详细的运行时间
	'SHOW_DB_TIMES'			=>	true,          			// 显示数据库查询和写入次数
	'SHOW_CACHE_TIMES'		=>	true,       			// 显示缓存操作次数
	'SHOW_USE_MEM'			=>	true,           		// 显示内存开销
	'SHOW_LOAD_FILE' 		=>	true,  				 	// 显示加载文件数
	'SHOW_FUN_TIMES'		=>	true ,  				// 显示函数调用次数
	
	//自定义trach
	'SHOW_PAGE_TRACE'			=>true,
	'TMPL_TRACE_FILE'			=>THINK_PATH.'Tpl/diy_trace.tpl',
	'TRACE_PAGE_TABS'   		=>array('BASE'=>'基本','EXT'=>'扩展','FILE'=>'文件','INFO'=>'流程','ERR|NOTIC'=>'错误','SQL'=>'SQL','DEBUG'=>'调试'), // 页面Trace可定制的选项卡
	
);
?>