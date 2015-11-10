<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:35
// +----------------------------------------------------------------------
// | Comment数据模型
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //

class TagModel extends CommonModel {
    // 自动验证设置
    protected $_validate	 =	 array(
        array('value','require','关键词错误！'),
		//array('createTime','checkTime','提交前后间隔时间太短！',1,'callback'),
    );
	
    // 自动填充设置
    protected $_auto =	 array(
		array('status','1'),//新增时填充
		array('count','1'),//新增时填充
		array('createTime','time',1,'function'),//新增时填充
		array('lastTime','time',3,'function'),//更新时填充
    );
	
	public function checkTime() {
		$id = getMemberId();
		if($id == 0){return false;}
		$last = S('AddBlogLast_id_'.$id);
		if(empty($last)){
			S('AddBlogLast_id_'.$id,time());
			return true;
		}
		$time = time()-$last;
		S('AddBlogLast_id_'.$id,time());
		if($time<30){
			return false;
		}else{
			return true;
		}
	}
	
	/**
     +----------------------------------------------------------
     * 添加关键词
     +----------------------------------------------------------
     * @access array	$tag	关键词数组
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     */
    public function addTag($tag){
		$tagId = '';
		$tag = array_unique($tag);
		$i = 0;
		foreach ($tag as $key => $V) {
			if(empty($V)) continue;
			$rst = $this->where(array('value'=>$V))->getField('id');
			if($i>0){$tagId .= ',';}
			if(empty($rst)){
				$data['value']=$V;
				if (!$data = $this->token(false)->create($data)) {
					$this->error($this->getError());
				}
				//dump($data);
				//exit;
				$tagId .= $this->add($data);
			}else{
				$tagId .= $rst;
				$this->where(array('id'=>$rst))->setField('lastTime',time());
				$this->where(array('id'=>$rst))->setInc('count');
			}
			$i++;
		}
		return $tagId;
    }
}