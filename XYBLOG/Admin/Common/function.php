<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/11/17
 * Time: 16:54
 */

/**
+----------------------------------------------------------
 * ���ܣ���ȡ�û��ǳ�
+----------------------------------------------------------
 * @param string $id		�û�id
+----------------------------------------------------------
 * @return string		�û��ǳ�
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