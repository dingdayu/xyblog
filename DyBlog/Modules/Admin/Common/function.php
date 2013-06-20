<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:35
// +----------------------------------------------------------------------
// | 函数文档
// +----------------------------------------------------------------------
// //------------------- //  Admin分组 //----------------------- // //

	/*
	  +----------------------------------------------------------
     * 对数据状态进行输出
      +----------------------------------------------------------
     * @access $status		状态id
	 * @access $imageShow	是否以图片输出
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     */
	function getStatus($status, $imageShow = true) {
		switch ($status) {
			case 0 :
				$showText = '禁用';
				$showImg = '<IMG SRC="__PUBLIC__/Images/locked.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="禁用">';
				break;
			case 2 :
				$showText = '待审';
				$showImg = '<IMG SRC="__PUBLIC__/Images/prected.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="待审">';
				break;
			case - 1 :
				$showText = '删除';
				$showImg = '<IMG SRC="__PUBLIC__/Images/del.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="删除">';
				break;
			case 1 :
			default :
				$showText = '正常';
				$showImg = '<IMG SRC="__PUBLIC__/Images/ok.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="正常">';

		}
		return ($imageShow === true) ?  $showImg  : $showText;
	}

	/*
	  +----------------------------------------------------------
     * 对评论二级进行标识（后台模板）
      +----------------------------------------------------------
     * @access $pid		评论pid
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     */
	function getpcomment($pid) {
	
		$ok = '<IMG SRC="__PUBLIC__/Images/del.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="二级">';
		$no = '<IMG SRC="__PUBLIC__/Images/ok.gif" WIDTH="20" HEIGHT="20" BORDER="0" ALT="顶级">';
		return ($pid == '0') ? $no : $ok;
		unset($no,$ok);
	}

	/*
	  +----------------------------------------------------------
     * 对内容进行自数限制
      +----------------------------------------------------------
     * @access $consent	内容
	 * @access $count	保留字数
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     */
	function conentset($consent,$count) {
		//改成php分割字符
		//return '<div style="width:100px;overflow:hidden;text-overflow:ellipsis;">'.$consent.'</div>';
	}

	/*
	  +----------------------------------------------------------
     * 输出审核javascript
      +----------------------------------------------------------
     * @access $status	是否已审核
	 * @access $id		数据id
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     */
	function showStatus($status, $id) {
		switch ($status) {
			case 0 :
				$info = '<a href="javascript:resume(' . $id . ')">恢复</a>';
				break;
			case 1 :
				$info = '<a href="javascript:forbid(' . $id . ')">禁用</a>';
				break;
		}
		return $info;
	}

	/*
	  +----------------------------------------------------------
     * 输出设置置顶javascript
      +----------------------------------------------------------
     * @access $isTop	是否已置顶
	 * @access $id		数据id
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     */
	function setTop($isTop, $id) {
		switch ($isTop) {
			case 0 :
				$info = '<a href="javascript:istop(' . $id . ')">设置置顶</a>';
				break;
			case 1 :
				$info = '<a href="javascript:notop(' . $id . ')">取消置顶</a>';
				break;
		}
		return $info;
	}