<?php
// +----------------------------------------------------------------------
// | DINGDAYU [ Rebellious boy ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2014 http://dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: 2015/11/23 13:42
// +----------------------------------------------------------------------
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\AuthGroupModel;
/**
 * ��̨��ҳ������
 * @author ����� <zuojiazi@vip.qq.com>
 */
class AdminController extends Controller {

    /**
     * ��̨��������ʼ��
     */
    protected function _initialize(){
        // ��ȡ��ǰ�û�ID
        if(defined('UID')) return ;
        define('UID',is_login());
        if( !UID ){// ��û��¼ ��ת����¼ҳ��
            $this->redirect('Public/login');
        }
        /* ��ȡ���ݿ��е����� */
        if(!APP_DEBUG)$config =   S('DB_CONFIG_DATA');
        if(!$config){
            $config =   api('Config/lists');
            S('DB_CONFIG_DATA',$config);
        }
        C($config); //�������
        self::initWeChat();

        // �Ƿ��ǳ�������Ա
        define('IS_ROOT',   is_administrator());
        if(!IS_ROOT && C('ADMIN_ALLOW_IP')){
            // ���IP��ַ����
            if(!in_array(get_client_ip(),explode(',',C('ADMIN_ALLOW_IP')))){
                $this->error('403:��ֹ����');
            }
        }
        // ���ϵͳȨ��
        if(!IS_ROOT){
            $access =   $this->accessControl();
            if ( false === $access ) {
                $this->error('403:��ֹ����');
            }elseif(null === $access ){
                //������Ȩ��
                $rule  = strtolower(MODULE_NAME.'/'.CONTROLLER_NAME.'/'.ACTION_NAME);
                if ( !$this->checkRule($rule,array('in','1,2')) ){
                    $this->error('δ��Ȩ����!');
                }else{
                    // �����༰�����йصĸ��̬Ȩ��
                    $dynamic    =   $this->checkDynamic();
                    if( false === $dynamic ){
                        $this->error('δ��Ȩ����!');
                    }
                }
            }
        }

        //$this->assign('__MENU__', $this->getMenus());
    }

    /**
     * Ȩ�޼��
     * @param string  $rule    ���Ĺ���
     * @param int $type         1:url;2:���˵�
     * @param string  $mode    checkģʽ
     * @return boolean
     */
    final protected function checkRule($rule, $type=1, $mode='url'){
        static $Auth    =   null;
        if (!$Auth) {
            $Auth       =   new \Think\Auth();
        }
        if(!$Auth->check($rule,UID,$type,$mode)){
            return false;
        }
        return true;
    }

    /**
     * ����Ƿ�����Ҫ��̬�жϵ�Ȩ��
     * @return boolean|null
     *      ����true���ʾ��ǰ������Ȩ��
     *      ����false���ʾ��ǰ������Ȩ��
     *      ����null�����ʾȨ�޲���
     *
     * @author ���ǽ�  <xcoolcc@gmail.com>
     */
    protected function checkDynamic(){}


    /**
     * action���ʿ���,�� **��½�ɹ�** ��ִ�еĵ�һ��Ȩ�޼������
     * ����ģ���Ƿ��ֹ���ʻ��������ڷ���
     *
     * @return boolean|null  ����ֵ����ʹ�� `===` �����ж�
     *
     *   ���� **false**, �������κ��˷���(���ܳ���)
     *   ���� **true**, �����κι���Ա����,����ִ�нڵ�Ȩ�޼��
     *   ���� **null**, ��Ҫ����ִ�нڵ�Ȩ�޼������Ƿ��������
     */
    final protected function accessControl(){
        $allow = C('ALLOW_VISIT');
        $deny  = C('DENY_VISIT');
        $check = strtolower(CONTROLLER_NAME.'/'.ACTION_NAME);
        if ( !empty($deny)  && in_array_case($check,$deny) ) {
            return false;//�ǳ��ܽ�ֹ����deny�еķ���
        }
        if ( !empty($allow) && in_array_case($check,$allow) ) {
            return true;
        }
        return null;//��Ҫ���ڵ�Ȩ��
    }

    /**
     * �����ݱ��еĵ��л���м�¼ִ���޸� GET����idΪ���ֻ򶺺ŷָ�������
     *
     * @param string $model ģ������,��M����ʹ�õĲ���
     * @param array  $data  �޸ĵ�����
     * @param array  $where ��ѯʱ��where()�����Ĳ���
     * @param array  $msg   ִ����ȷ�ʹ������Ϣ array('success'=>'','error'=>'', 'url'=>'','ajax'=>false)
     *                     urlΪ��תҳ��,ajax�Ƿ�ajax��ʽ(������Ϊ������ʱ����)
     *
     * @author ���ǽ�  <zhuyajie@topthink.net>
     */
    final protected function editRow ( $model ,$data, $where , $msg ){
        $id    = array_unique((array)I('id',0));
        $id    = is_array($id) ? implode(',',$id) : $id;
        //�����id�ֶΣ�����������
        $fields = M($model)->getDbFields();
        if(in_array('id',$fields) && !empty($id)){
            $where = array_merge( array('id' => array('in', $id )) ,(array)$where );
        }

        $msg   = array_merge( array( 'success'=>'�����ɹ���', 'error'=>'����ʧ�ܣ�', 'url'=>'' ,'ajax'=>IS_AJAX) , (array)$msg );
        if( M($model)->where($where)->save($data)!==false ) {
            $this->success($msg['success'],$msg['url'],$msg['ajax']);
        }else{
            $this->error($msg['error'],$msg['url'],$msg['ajax']);
        }
    }

    /**
     * ������Ŀ
     * @param string $model ģ������,��D����ʹ�õĲ���
     * @param array  $where ��ѯʱ�� where()�����Ĳ���
     * @param array  $msg   ִ����ȷ�ʹ������Ϣ,���������ĸ�Ԫ�� array('success'=>'','error'=>'', 'url'=>'','ajax'=>false)
     *                     urlΪ��תҳ��,ajax�Ƿ�ajax��ʽ(������Ϊ������ʱ����)
     *
     * @author ���ǽ�  <zhuyajie@topthink.net>
     */
    protected function forbid ( $model , $where = array() , $msg = array( 'success'=>'״̬���óɹ���', 'error'=>'״̬����ʧ�ܣ�')){
        $data    =  array('status' => 0);
        $this->editRow( $model , $data, $where, $msg);
    }

    /**
     * �ָ���Ŀ
     * @param string $model ģ������,��D����ʹ�õĲ���
     * @param array  $where ��ѯʱ��where()�����Ĳ���
     * @param array  $msg   ִ����ȷ�ʹ������Ϣ array('success'=>'','error'=>'', 'url'=>'','ajax'=>false)
     *                     urlΪ��תҳ��,ajax�Ƿ�ajax��ʽ(������Ϊ������ʱ����)
     *
     * @author ���ǽ�  <zhuyajie@topthink.net>
     */
    protected function resume (  $model , $where = array() , $msg = array( 'success'=>'״̬�ָ��ɹ���', 'error'=>'״̬�ָ�ʧ�ܣ�')){
        $data    =  array('status' => 1);
        $this->editRow(   $model , $data, $where, $msg);
    }

    /**
     * ��ԭ��Ŀ
     * @param string $model ģ������,��D����ʹ�õĲ���
     * @param array  $where ��ѯʱ��where()�����Ĳ���
     * @param array  $msg   ִ����ȷ�ʹ������Ϣ array('success'=>'','error'=>'', 'url'=>'','ajax'=>false)
     *                     urlΪ��תҳ��,ajax�Ƿ�ajax��ʽ(������Ϊ������ʱ����)
     * @author huajie  <banhuajie@163.com>
     */
    protected function restore (  $model , $where = array() , $msg = array( 'success'=>'״̬��ԭ�ɹ���', 'error'=>'״̬��ԭʧ�ܣ�')){
        $data    = array('status' => 1);
        $where   = array_merge(array('status' => -1),$where);
        $this->editRow(   $model , $data, $where, $msg);
    }

    /**
     * ��Ŀ��ɾ��
     * @param string $model ģ������,��D����ʹ�õĲ���
     * @param array  $where ��ѯʱ��where()�����Ĳ���
     * @param array  $msg   ִ����ȷ�ʹ������Ϣ array('success'=>'','error'=>'', 'url'=>'','ajax'=>false)
     *                     urlΪ��תҳ��,ajax�Ƿ�ajax��ʽ(������Ϊ������ʱ����)
     *
     * @author ���ǽ�  <zhuyajie@topthink.net>
     */
    protected function delete ( $model , $where = array() , $msg = array( 'success'=>'ɾ���ɹ���', 'error'=>'ɾ��ʧ�ܣ�')) {
        $data['status']         =   -1;
        $this->editRow(   $model , $data, $where, $msg);
    }

    /**
     * ����һ�����߶������ݵ�״̬
     */
    public function setStatus($Model=CONTROLLER_NAME){

        $ids    =   I('request.ids');
        $status =   I('request.status');
        if(empty($ids)){
            $this->error('��ѡ��Ҫ����������');
        }

        $map['id'] = array('in',$ids);
        switch ($status){
            case -1 :
                $this->delete($Model, $map, array('success'=>'ɾ���ɹ�','error'=>'ɾ��ʧ��'));
                break;
            case 0  :
                $this->forbid($Model, $map, array('success'=>'���óɹ�','error'=>'����ʧ��'));
                break;
            case 1  :
                $this->resume($Model, $map, array('success'=>'���óɹ�','error'=>'����ʧ��'));
                break;
            default :
                $this->error('��������');
                break;
        }
    }

    /**
     * ��ȡ�������˵�����,�����˵�Ԫ��λ��һ���˵���'_child'Ԫ����
     * @author ���ǽ�  <xcoolcc@gmail.com>
     */
    final public function getMenus($controller=CONTROLLER_NAME){
        $menus  =   session('ADMIN_MENU_LIST.'.$controller);
        if(empty($menus)){
            // ��ȡ���˵�
            $where['pid']   =   0;
            $where['hide']  =   0;
            if(!C('DEVELOP_MODE')){ // �Ƿ񿪷���ģʽ
                $where['is_dev']    =   0;
            }
            $menus['main']  =   M('Menu')->where($where)->order('sort asc')->field('id,title,url')->select();
            $menus['child'] =   array(); //�����ӽڵ�
            foreach ($menus['main'] as $key => $item) {
                // �ж����˵�Ȩ��
                if ( !IS_ROOT && !$this->checkRule(strtolower(MODULE_NAME.'/'.$item['url']),AuthRuleModel::RULE_MAIN,null) ) {
                    unset($menus['main'][$key]);
                    continue;//����ѭ��
                }
                if(strtolower(CONTROLLER_NAME.'/'.ACTION_NAME)  == strtolower($item['url'])){
                    $menus['main'][$key]['class']='current';
                }
            }

            // ���ҵ�ǰ�Ӳ˵�
            $pid = M('Menu')->where("pid !=0 AND url like '%{$controller}/".ACTION_NAME."%'")->getField('pid');
            if($pid){
                // ���ҵ�ǰ���˵�
                $nav =  M('Menu')->find($pid);
                if($nav['pid']){
                    $nav    =   M('Menu')->find($nav['pid']);
                }
                foreach ($menus['main'] as $key => $item) {
                    // ��ȡ��ǰ���˵����Ӳ˵���
                    if($item['id'] == $nav['id']){
                        $menus['main'][$key]['class']='current';
                        //����child��
                        $groups = M('Menu')->where(array('group'=>array('neq',''),'pid' =>$item['id']))->distinct(true)->getField("group",true);
                        //��ȡ��������ĺϷ�url
                        $where          =   array();
                        $where['pid']   =   $item['id'];
                        $where['hide']  =   0;
                        if(!C('DEVELOP_MODE')){ // �Ƿ񿪷���ģʽ
                            $where['is_dev']    =   0;
                        }
                        $second_urls = M('Menu')->where($where)->getField('id,url');

                        if(!IS_ROOT){
                            // ���˵�Ȩ��
                            $to_check_urls = array();
                            foreach ($second_urls as $key=>$to_check_url) {
                                if( stripos($to_check_url,MODULE_NAME)!==0 ){
                                    $rule = MODULE_NAME.'/'.$to_check_url;
                                }else{
                                    $rule = $to_check_url;
                                }
                                if($this->checkRule($rule, AuthRuleModel::RULE_URL,null))
                                    $to_check_urls[] = $to_check_url;
                            }
                        }
                        // ���շ��������Ӳ˵���
                        foreach ($groups as $g) {
                            $map = array('group'=>$g);
                            if(isset($to_check_urls)){
                                if(empty($to_check_urls)){
                                    // û���κ�Ȩ��
                                    continue;
                                }else{
                                    $map['url'] = array('in', $to_check_urls);
                                }
                            }
                            $map['pid']     =   $item['id'];
                            $map['hide']    =   0;
                            if(!C('DEVELOP_MODE')){ // �Ƿ񿪷���ģʽ
                                $map['is_dev']  =   0;
                            }
                            $menuList = M('Menu')->where($map)->field('id,pid,title,url,tip')->order('sort asc')->select();
                            $menus['child'][$g] = list_to_tree($menuList, 'id', 'pid', 'operater', $item['id']);
                        }
                    }
                }
            }
            session('ADMIN_MENU_LIST.'.$controller,$menus);
        }
        return $menus;
    }

    /**
     * ���غ�̨�ڵ�����
     * @param boolean $tree    �Ƿ񷵻ض�ά����ṹ(���ɲ˵�ʱ�õ�),Ϊfalse����һά����(����Ȩ�޽ڵ�ʱ�õ�)
     * @retrun array
     *
     * ע��,���ص����˵��ڵ���������'controller'Ԫ��,�Թ������ӽڵ�����ڵ�
     *
     * @author ���ǽ� <xcoolcc@gmail.com>
     */
    final protected function returnNodes($tree = true){
        static $tree_nodes = array();
        if ( $tree && !empty($tree_nodes[(int)$tree]) ) {
            return $tree_nodes[$tree];
        }
        if((int)$tree){
            $list = M('Menu')->field('id,pid,title,url,tip,hide')->order('sort asc')->select();
            foreach ($list as $key => $value) {
                if( stripos($value['url'],MODULE_NAME)!==0 ){
                    $list[$key]['url'] = MODULE_NAME.'/'.$value['url'];
                }
            }
            $nodes = list_to_tree($list,$pk='id',$pid='pid',$child='operator',$root=0);
            foreach ($nodes as $key => $value) {
                if(!empty($value['operator'])){
                    $nodes[$key]['child'] = $value['operator'];
                    unset($nodes[$key]['operator']);
                }
            }
        }else{
            $nodes = M('Menu')->field('title,url,tip,pid')->order('sort asc')->select();
            foreach ($nodes as $key => $value) {
                if( stripos($value['url'],MODULE_NAME)!==0 ){
                    $nodes[$key]['url'] = MODULE_NAME.'/'.$value['url'];
                }
            }
        }
        $tree_nodes[(int)$tree]   = $nodes;
        return $nodes;
    }


    /**
     * ͨ�÷�ҳ�б����ݼ���ȡ����
     *
     *  ����ͨ��url��������where����,����:  index.html?name=asdfasdfasdfddds
     *  ����ͨ��url��ֵ�����ֶκͷ�ʽ,����: index.html?_field=id&_order=asc
     *  ����ͨ��url����rָ��ÿҳ��������,����: index.html?r=5
     *
     * @param sting|Model  $model   ģ������ģ��ʵ��
     * @param array        $where   where��ѯ����(���ȼ�: $where>$_REQUEST>ģ���趨)
     * @param array|string $order   ��������,����nullʱʹ��sqlĬ�������ģ������(���ȼ����);
     *                              ������������ָ����_order��_field��ݴ�����(���ȼ��ڶ�);
     *                              ����ʹ��$order����(���$order����,��ģ��Ҳû���趨��order,��ȡ��������);
     *
     * @param boolean      $field   ����ģ���ò����ò���,Ҫ���ڶ��joinʱΪfield()����ָ������
     * @author ���ǽ� <xcoolcc@gmail.com>
     *
     * @return array|false
     * �������ݼ�
     */
    protected function lists ($model,$where=array(),$order='',$field=true){
        $options    =   array();
        $REQUEST    =   (array)I('request.');
        if(is_string($model)){
            $model  =   M($model);
        }

        $OPT        =   new \ReflectionProperty($model,'options');
        $OPT->setAccessible(true);

        $pk         =   $model->getPk();
        if($order===null){
            //order�ÿ�
        }else if ( isset($REQUEST['_order']) && isset($REQUEST['_field']) && in_array(strtolower($REQUEST['_order']),array('desc','asc')) ) {
            $options['order'] = '`'.$REQUEST['_field'].'` '.$REQUEST['_order'];
        }elseif( $order==='' && empty($options['order']) && !empty($pk) ){
            $options['order'] = $pk.' desc';
        }elseif($order){
            $options['order'] = $order;
        }
        unset($REQUEST['_order'],$REQUEST['_field']);

        if(empty($where)){
            $where  =   array('status'=>array('egt',0));
        }
        if( !empty($where)){
            $options['where']   =   $where;
        }
        $options      =   array_merge( (array)$OPT->getValue($model), $options );
        $total        =   $model->where($options['where'])->count();

        if( isset($REQUEST['r']) ){
            $listRows = (int)$REQUEST['r'];
        }else{
            $listRows = C('LIST_ROWS') > 0 ? C('LIST_ROWS') : 10;
        }
        $page = new \Think\Page($total, $listRows, $REQUEST);
        if($total>$listRows){
            $page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%');
        }
        $p =$page->show();
        $this->assign('_page', $p? $p: '');
        $this->assign('_total',$total);
        $options['limit'] = $page->firstRow.','.$page->listRows;

        $model->setProperty('options',$options);

        return $model->field($field)->select();
    }

    /**
     * �����ĵ��б���ʾ
     * @param array $list �б�����
     * @param integer $model_id ģ��id
     */
    protected function parseDocumentList($list,$model_id=null){
        $model_id = $model_id ? $model_id : 1;
        $attrList = get_model_attribute($model_id,false,'id,name,type,extra');
        // ���б����ݽ�����ʾ����
        if(is_array($list)){
            foreach ($list as $k=>$data){
                foreach($data as $key=>$val){
                    if(isset($attrList[$key])){
                        $extra      =   $attrList[$key]['extra'];
                        $type       =   $attrList[$key]['type'];
                        if('select'== $type || 'checkbox' == $type || 'radio' == $type || 'bool' == $type) {
                            // ö��/��ѡ/��ѡ/������
                            $options    =   parse_field_attr($extra);
                            if($options && array_key_exists($val,$options)) {
                                $data[$key]    =   $options[$val];
                            }
                        }elseif('date'==$type){ // ������
                            $data[$key]    =   date('Y-m-d',$val);
                        }elseif('datetime' == $type){ // ʱ����
                            $data[$key]    =   date('Y-m-d H:i',$val);
                        }
                    }
                }
                $data['model_id'] = $model_id;
                $list[$k]   =   $data;
            }
        }
        return $list;
    }

    /**
     * ���û�����ģ����Ϣ
     * @param $data = array(
     *                  'first'=>array('value'=>'���ã����ѳɹ����ѡ�', 'color'=>'#0A0A0A')
     *                  'keynote1'=>array('value'=>'�ɿ���', 'color'=>'#CCCCCC')
     *                  'keynote2'=>array('value'=>'39.8Ԫ', 'color'=>'#CCCCCC')
     *                  'keynote3'=>array('value'=>'2014��9��16��', 'color'=>'#CCCCCC')
     *                  'keynote3'=>array('value'=>'��ӭ�ٴι���', 'color'=>'#173177')
     * );
     * @param $touser ���շ���OpenId��
     * @param $templateId ģ��Id���ڹ���ƽ̨����ģ�����ѡ��ģ����ID
     * @param $url URL
     * @param string $topcolor ������ɫ�� ����Ϊ�ա�Ĭ���Ǻ�ɫ
     * @return array("errcode"=>0, "errmsg"=>"ok", "msgid"=>200228332} "errcode"��0���ʾû�г���
     *
     * ע�⣺���ͺ��û������Ƿ�ɹ����ܣ�΢�Ż����ں�����һ����Ϣ��
     */
    public function sendTempMessage($data, $touser, $templateId, $url, $topcolor='#FF0000'){
        vendor('XYWeChat.XYWeChat');
        $ret = \XYWeChat\TemplateMessage::sendTemplateMessage($data, $touser, $templateId, $url, $topcolor='#FF0000');
        return $ret;
    }


    public function initWeChat(){
        /*
         * ���������ã�������ο�@link http://mp.weixin.qq.com/wiki/index.php?title=����ָ��
         */
        define("WECHAT_URL", 'http://crop.xyser.com/');
        define('WECHAT_TOKEN', 'dingdayu');
        define('ENCODING_AES_KEY', "MqAuKoex6FyT5No0OcpRyCicThGs0P1vz4mJ2gwvvkF");

        /*
         * ����������
         */
        define("WECHAT_APPID", 'wx730b0df822ae366c');
        define("WECHAT_APPSECRET", '6cf5f26fa09975bca5cfd501083bc34a');
    }

    public function get_club_id(){
        $club_id = session('user_extend.corp_id');
        if(empty($club_id)){
            $uid = session('user_auth.uid');
            $result = M('User')->where("uid = '{$uid}'")->getField('extend');
            session('user_extend', json_decode($result,true));
            $club_id = session('user_extend.corp_id');
        }
        return $club_id;
    }
}