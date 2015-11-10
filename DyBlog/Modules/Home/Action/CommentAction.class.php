<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现评论列表和评论页
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // 评论页 //----------------------- // //

class CommentAction extends CommonAction {

    public function leave(){
		$html['title'] = '留言板 - 小雨 博客';
		$html['keywords'] = '留言板,小雨,博客,thinkphp,xyblog';
		$html['description'] = '小雨博客的留言板';
		$this->assign('html',$html);// html赋值
		//dump($_SESSION);
		//exit;
		
		$this->display();
    }
	
	public function index(){
		$html['title'] = '留言板 - 小雨 博客';
		$html['keywords'] = '留言板,小雨,博客,thinkphp,xyblog';
		$html['description'] = '小雨博客的留言板';
		$this->assign('html',$html);// html赋值
		//dump($_SESSION);
		//exit;
		
		//开始加载留言
		$Comment = D('Comment');
		$count      = $Comment->where('status=1 and pid=0 and type=1')->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Comment->where('status=1 and pid=0 and type=1')->order('createTime asc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,userName,content,createTime,pid');
		
		foreach ($list as $k => $v) {
			$list[$k]['pcomment'] = $Comment->where('status=1 and type=1 and pid='.$v['id'])->select();
		}
		
		$this->assign('count',$count);// 赋值数据集
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		//dump($show);
		//exit;
		//留言加载完毕
		
		$this->display();
    }
	
	function insert() {
	
		$i = I();
		//dump($i['pid']);
		//exit;
        $Comment = D('Comment');
		
        if (false === $Comment->create()) {
            $this->error($Comment->getError());
        }
        //保存当前数据对象
        $list = $Comment->add();
		
		//发送邮件
		$Config = S('Config');
		//$commentEmail = D('Config')->get('commentEmail');
		if($Config['commentEmail'] == '1'){
			if($i['pid'] == 0){
				$mailcon = '<pre dir="ltr"> '.$i['userName'].' 在 <a href="http://dingxiaoyu.com">Xy Blog</a> 的留言板 进行了留言。

	'.$i['content'].'  <span class="date">'.toDate(time()).'</span>

</pre>
访问 <a href="http://dingxiaoyu.com'.U('Home/Comment/index').'">http://dingxiaoyu.com'.U('Home/Comment/index').'</a> 进行查看。';

				//echo $mailcon;
				echo send_mail('614422099@qq.com','小雨','有人在 XyBlog 留言',$mailcon);
			}else{
				$pid = $Comment->where('status=1 and id='.$i['pid'].' and type=1')->order('createTime asc')->getField('id,userName,email,content,createTime,pid');
				$p = $pid[$i['pid']];
				$mailcon = '<pre dir="ltr"> '.$i['userName'].' 在 <a href="http://dingxiaoyu.com">Xy Blog</a> 对 您（'.$p['userName'].'） 的留言，进行了回复。

	'.$p['content'].' <span class="date">'.toDate($p['createTime']).'</span>

		'.$i['content'].' <span class="date">'.toDate(time()).'</span>

</pre>
访问 <a href="http://dingxiaoyu.com'.U('Home/Comment/index').'">http://dingxiaoyu.com'.U('Home/Comment/index').'</a> 进行查看。';
			
				//echo $mailcon;
				//dump($pid);
				echo send_mail($p['email'],'小雨','有人在 XyBlog 对您的留言进行了回复',$mailcon);
			}
		}
		//发送邮件结束
		$Survey = M("Survey"); // 实例化对象
		$data['type'] = '1';//访问来源
		$data['beId'] = $list;//关联id
		$data['value'] = I('fromType');//访问来源
		$Survey->add($data);
		
        if ($list !== false) { //保存成功
            $this->success('留言成功!');
        } else {
            //失败提示
            $this->error('新增失败!');
        }
    }
}