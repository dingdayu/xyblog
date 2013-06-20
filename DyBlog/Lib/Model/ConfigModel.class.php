<?php
class ConfigModel extends Model {
	
	// 自动验证设置
	protected $_validate = array(
		array('name','','已经存在！',0,'unique',1), // 在新增的时候验证name字段是否唯一
	);
	
	// 自动填充设置
	protected $_auto = array(
		array('status','1',1),//新增时填充
		array('updateTime','time',3,'function'),//更新时填充
    );
	
	 /**
     +----------------------------------------------------------
     * 设置项
     +----------------------------------------------------------
     * @access string	$key		设置键名
     +----------------------------------------------------------
     * @param string	$value 设置键值
     +----------------------------------------------------------
     * @return boolen
     +----------------------------------------------------------
     */
    public function set($key,$value){
		
		$data['key']=$key;
		$data['value']=$value;
		$this->add($data);
		if (false !== $list) {
            return true;
        } else {
            return false;
        }
    }
	
	/**
     +----------------------------------------------------------
     * 读取项
     +----------------------------------------------------------
     * @access string	$key	设置键名
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     */
    public function get($key){
		$rst = $this->where(array('name'=>$key))->find();
		//dump($rst);
		return $rst['value'];
    }
}