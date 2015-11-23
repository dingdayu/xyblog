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
// | DATE: 2015/11/23 13:44
// +----------------------------------------------------------------------


namespace Admin\Controller;
use Think\Model;

/**
 * �û���ģ����
 * Class AuthGroupModel
 * @author ���ǽ� <zhuyajie@topthink.net>
 */
class AuthGroupModel
{
    const TYPE_ADMIN                = 1;                   // ����Ա�û������ͱ�ʶ
    const MEMBER                    = 'member';
    const UCENTER_MEMBER            = 'ucenter_member';
    const AUTH_GROUP_ACCESS         = 'auth_group_access'; // ��ϵ�����
    const AUTH_EXTEND               = 'auth_extend';       // ��̬Ȩ����չ��Ϣ��
    const AUTH_GROUP                = 'auth_group';        // �û������
    const AUTH_EXTEND_CATEGORY_TYPE = 1;              // ����Ȩ�ޱ�ʶ
    const AUTH_EXTEND_MODEL_TYPE    = 2; //����Ȩ�ޱ�ʶ

    protected $_validate = array(
        array('title','require', '���������û������', Model::MUST_VALIDATE ,'regex',Model::MODEL_INSERT),
        //array('title','require', '���������û������', Model::EXISTS_VALIDATE  ,'regex',Model::MODEL_INSERT),
        array('description','0,80', '�������80�ַ�', Model::VALUE_VALIDATE , 'length'  ,Model::MODEL_BOTH ),
        // array('rules','/^(\d,?)+(?<!,)$/', '�������ݲ��Ϸ�', Model::VALUE_VALIDATE , 'regex'  ,Model::MODEL_BOTH ),
    );

    /**
     * �����û����б�
     * Ĭ�Ϸ�������״̬�Ĺ���Ա�û����б�
     * @param array $where   ��ѯ����,��where()����ʹ��
     *
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    public function getGroups($where=array()){
        $map = array('status'=>1,'type'=>self::TYPE_ADMIN,'module'=>'admin');
        $map = array_merge($map,$where);
        return $this->where($map)->select();
    }

    /**
     * ���û���ӵ��û���,֧����������û����û���
     * @author ���ǽ� <zhuyajie@topthink.net>
     *
     * ʾ��: ��uid=1���û���ӵ�group_idΪ1,2���� `AuthGroupModel->addToGroup(1,'1,2');`
     */
    public function addToGroup($uid,$gid){
        $uid = is_array($uid)?implode(',',$uid):trim($uid,',');
        $gid = is_array($gid)?$gid:explode( ',',trim($gid,',') );

        $Access = M(self::AUTH_GROUP_ACCESS);
        if( isset($_REQUEST['batch']) ){
            //Ϊ�����û���������û���ʱ,��ɾ��������
            $del = $Access->where( array('uid'=>array('in',$uid)) )->delete();
        }

        $uid_arr = explode(',',$uid);
        $uid_arr = array_diff($uid_arr,array(C('USER_ADMINISTRATOR')));
        $add = array();
        if( $del!==false ){
            foreach ($uid_arr as $u){
                //�ж��û�id�Ƿ�Ϸ�
                if(M('Member')->getFieldByUid($u,'uid') == false){
                    $this->error = "���Ϊ{$u}���û������ڣ�";
                    return false;
                }
                foreach ($gid as $g){
                    if( is_numeric($u) && is_numeric($g) ){
                        $add[] = array('group_id'=>$g,'uid'=>$u);
                    }
                }
            }
            $Access->addAll($add);
        }
        if ($Access->getDbError()) {
            if( count($uid_arr)==1 && count($gid)==1 ){
                //�������ʱ���ƴ�����ʾ
                $this->error = "�����ظ����";
            }
            return false;
        }else{
            return true;
        }
    }

    /**
     * �����û������û�����Ϣ
     * @param  int    $uid �û�id
     * @return array  �û��������û��� array(
     *                                         array('uid'=>'�û�id','group_id'=>'�û���id','title'=>'�û�������','rules'=>'�û���ӵ�еĹ���id,���,�Ÿ���'),
     *                                         ...)
     */
    static public function getUserGroup($uid){
        static $groups = array();
        if (isset($groups[$uid]))
            return $groups[$uid];
        $prefix = C('DB_PREFIX');
        $user_groups = M()
            ->field('uid,group_id,title,description,rules')
            ->table($prefix.self::AUTH_GROUP_ACCESS.' a')
            ->join ($prefix.self::AUTH_GROUP." g on a.group_id=g.id")
            ->where("a.uid='$uid' and g.status='1'")
            ->select();
        $groups[$uid]=$user_groups?$user_groups:array();
        return $groups[$uid];
    }

    /**
     * �����û�ӵ�й���Ȩ�޵���չ����id�б�
     *
     * @param int     $uid  �û�id
     * @param int     $type ��չ���ݱ�ʶ
     * @param int     $session  ��������ʶ
     * @return array
     *
     *  array(2,4,8,13)
     *
     * @author ���ǽ� <xcoolcc@gmail.com>
     */
    static public function getAuthExtend($uid,$type,$session){
        if ( !$type ) {
            return false;
        }
        if ( $session ) {
            $result = session($session);
        }
        if ( $uid == UID && !empty($result) ) {
            return $result;
        }
        $prefix = C('DB_PREFIX');
        $result = M()
            ->table($prefix.self::AUTH_GROUP_ACCESS.' g')
            ->join($prefix.self::AUTH_EXTEND.' c on g.group_id=c.group_id')
            ->where("g.uid='$uid' and c.type='$type' and !isnull(extend_id)")
            ->getfield('extend_id',true);
        if ( $uid == UID && $session ) {
            session($session,$result);
        }
        return $result;
    }

    /**
     * �����û�ӵ�й���Ȩ�޵ķ���id�б�
     *
     * @param int     $uid  �û�id
     * @return array
     *
     *  array(2,4,8,13)
     *
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    static public function getAuthCategories($uid){
        return self::getAuthExtend($uid,self::AUTH_EXTEND_CATEGORY_TYPE,'AUTH_CATEGORY');
    }



    /**
     * ��ȡ�û�����Ȩ����չ��Ϣ����
     *
     * @param int     $gid  �û���id
     * @return array
     *
     *  array(2,4,8,13)
     *
     * @author ���ǽ� <xcoolcc@gmail.com>
     */
    static public function getExtendOfGroup($gid,$type){
        if ( !is_numeric($type) ) {
            return false;
        }
        return M(self::AUTH_EXTEND)->where( array('group_id'=>$gid,'type'=>$type) )->getfield('extend_id',true);
    }

    /**
     * ��ȡ�û�����Ȩ�ķ���id�б�
     *
     * @param int     $gid  �û���id
     * @return array
     *
     *  array(2,4,8,13)
     *
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    static public function getCategoryOfGroup($gid){
        return self::getExtendOfGroup($gid,self::AUTH_EXTEND_CATEGORY_TYPE);
    }


    /**
     * ���������û���ɹ������չȨ������
     *
     * @param int|string|array $gid   �û���id
     * @param int|string|array $cid   ����id
     *
     * @author ���ǽ� <xcoolcc@gmail.com>
     */
    static public function addToExtend($gid,$cid,$type){
        $gid = is_array($gid)?implode(',',$gid):trim($gid,',');
        $cid = is_array($cid)?$cid:explode( ',',trim($cid,',') );

        $Access = M(self::AUTH_EXTEND);
        $del = $Access->where( array('group_id'=>array('in',$gid),'type'=>$type) )->delete();

        $gid = explode(',',$gid);
        $add = array();
        if( $del!==false ){
            foreach ($gid as $g){
                foreach ($cid as $c){
                    if( is_numeric($g) && is_numeric($c) ){
                        $add[] = array('group_id'=>$g,'extend_id'=>$c,'type'=>$type);
                    }
                }
            }
            $Access->addAll($add);
        }
        if ($Access->getDbError()) {
            return false;
        }else{
            return true;
        }
    }

    /**
     * ���������û���ɹ���ķ���
     *
     * @param int|string|array $gid   �û���id
     * @param int|string|array $cid   ����id
     *
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    static public function addToCategory($gid,$cid){
        return self::addToExtend($gid,$cid,self::AUTH_EXTEND_CATEGORY_TYPE);
    }


    /**
     * ���û����û������Ƴ�
     * @param int|string|array $gid   �û���id
     * @param int|string|array $cid   ����id
     * @author ���ǽ� <xcoolcc@gmail.com>
     */
    public function removeFromGroup($uid,$gid){
        return M(self::AUTH_GROUP_ACCESS)->where( array( 'uid'=>$uid,'group_id'=>$gid) )->delete();
    }

    /**
     * ��ȡĳ���û�����û��б�
     *
     * @param int $group_id   �û���id
     *
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    static public function memberInGroup($group_id){
        $prefix   = C('DB_PREFIX');
        $l_table  = $prefix.self::MEMBER;
        $r_table  = $prefix.self::AUTH_GROUP_ACCESS;
        $r_table2 = $prefix.self::UCENTER_MEMBER;
        $list     = M() ->field('m.uid,u.username,m.last_login_time,m.last_login_ip,m.status')
            ->table($l_table.' m')
            ->join($r_table.' a ON m.uid=a.uid')
            ->join($r_table2.' u ON m.uid=u.id')
            ->where(array('a.group_id'=>$group_id))
            ->select();
        return $list;
    }

    /**
     * ���id�Ƿ�ȫ������
     * @param array|string $gid  �û���id�б�
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    public function checkId($modelname,$mid,$msg = '����id������:'){
        if(is_array($mid)){
            $count = count($mid);
            $ids   = implode(',',$mid);
        }else{
            $mid   = explode(',',$mid);
            $count = count($mid);
            $ids   = $mid;
        }

        $s = M($modelname)->where(array('id'=>array('IN',$ids)))->getField('id',true);
        if(count($s)===$count){
            return true;
        }else{
            $diff = implode(',',array_diff($mid,$s));
            $this->error = $msg.$diff;
            return false;
        }
    }

    /**
     * ����û����Ƿ�ȫ������
     * @param array|string $gid  �û���id�б�
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    public function checkGroupId($gid){
        return $this->checkId('AuthGroup',$gid, '�����û���id������:');
    }

    /**
     * �������Ƿ�ȫ������
     * @param array|string $cid  ��Ŀ����id�б�
     * @author ���ǽ� <zhuyajie@topthink.net>
     */
    public function checkCategoryId($cid){
        return $this->checkId('Category',$cid, '���·���id������:');
    }
}