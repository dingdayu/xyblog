<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/11/17
 * Time: 16:54
 */

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