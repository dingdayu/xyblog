<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $Blogs = M('Blogs');
        $User = M('User');
        $Comment = M('Comment');

        $list = $Blogs->where('status=1 and is_top=1')->order('create_time')->getField('id,title');
        $last = $Blogs->order('create_time')->limit(10)->where('status=1')->getField('id,title,create_time');
        //$comm = $Comment->order('createTime')->limit(10)->where('status=1')->getField('id,userName,fromId,createTime');
        foreach ($last as $k => $v) {
            $last[$k]['pcount'] = $Comment->where('status=1 and type=3 and from_id='.$v['id'])->count();
        }

        $this->assign('last',$last);// 最新日志数据赋值
        $this->assign('top',$list);// 置顶数据赋值
        //$this->assign('comm',$comm);// 置顶数据赋值
        //dump($last);
        $this->display();
    }
}