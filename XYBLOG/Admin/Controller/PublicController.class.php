<?php
// +----------------------------------------------------------------------
// | DINGDAYU [ WWW.XYSER.COM ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015 http://dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( dingdayu @ XYSER )
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: DATE: 2016-1-10 23:42
// +----------------------------------------------------------------------

namespace Admin\Controller;

use Think\Controller;

class PublicController extends Controller
{
    public function login(){
        if (IS_POST) {
            /* 检测验证码 TODO: */
            $username = I('username');
            $password = I('passowrd');

            //编码密码
            $password = password_encrypt($password);

            /* 登录用户 */
            $User = D('User');
            if($User->login($username, $password)){ //登录用户
                //TODO:跳转到登录前页面
                $this->success('登录成功！', U('Index/index'), 5);
            } else {
                $this->error($User->getError());
            }
        } else {
            if(is_login()){
                $this->redirect('Index/index');
            }else{
                /* 读取数据库中的配置 */
                $config	=	S('DB_CONFIG_DATA');
                if(!$config){
                    $config	=	D('Config')->lists();
                    S('DB_CONFIG_DATA',$config);
                }
                C($config); //添加配置

                $this->display();
            }
        }
    }

    /* 退出登录 */
    public function logout(){
        if(is_login()){
            D('User')->logout();
            session('[destroy]');
            $this->success('退出成功！', U('login'));
        } else {
            $this->redirect('login');
        }
    }

    public function verify(){
        $verify = new \Think\Verify();
        $verify->entry(1);
    }
}