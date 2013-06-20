<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2013年5月26日 22:44:25
// +----------------------------------------------------------------------
// | 此类实现博客列表和博客输出
// +----------------------------------------------------------------------
// //------------------- //  Home分组 //----------------------- // //
// //------------------- // 博客页 //----------------------- // //

class BlogAction extends CommonAction {

	public function index(){
		
		$Blogs = D('Blogs');
		$Comment = D('Comment');
		
		$count      = $Blogs->where('status=1')->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Blogs->order('isTop desc, createTime asc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,title,createTime,isTop,userId');
		
		foreach ($list as $k => $v) {
			$list[$k]['pcount'] = $Comment->where('status=1 and type=3 and fromId='.$v['id'])->count();
		}
		
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		//dump($list);
		
		
		$this->display();
	}
	
	public function tougao(){
		$this->display();
	}
	
	public function add(){
		$this->error('本站咱不提供投稿!');
	}
	
    public function read(){
		$Blogs = M('Blogs');
		
		$id = I('id');//安全获取id值
		$I = I();
		if(empty($id)) $id=$I[2];
		$blog = $Blogs->where('status=1 and id='.$id)->select();
		$blog = $blog['0'];
		//echo $id;
		//dump($blog);
		//exit;
		if(empty($blog)){
			$this->error('请检查您的链接!');
		}
		
		//加载评论
		$Comment = D('Comment');
		$count      = $Comment->where('status=1 and pid=0 and type=3 and fromId='.$id)->count();// 查询满足要求的总记录数
		import('ORG.Util.Page', LIB_PATH);
		$Page       = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Comment->where('status=1 and type=3 and pid=0 and fromId='.$id)->order('createTime asc')->limit($Page->firstRow.','.$Page->listRows)->getField('id,userName,content,isTop,createTime,pid');
		
		foreach ($list as $k => $v) {
			$list[$k]['pcomment'] = $Comment->where('status=1 and type=3 and pid='.$v['id'])->select();
		}
		
		$this->assign('count',$count);// 赋值数据集
		$this->assign('list',$list);// 赋值数据集
		$this->assign('show',$show);// 赋值分页输出
		//dump($list['10']['pcomment']);
		//exit;
		//评论加载完毕
		
		$prev =	$Blogs->where('id='.$blog['id'].'-1 and status=1')->getField('id,title');//获取上一篇
		$next = $Blogs->where('id='.$blog['id'].'+1 and status=1')->getField('id,title');//获取下一片
		$page['prev'] = $prev['0'];$page['next'] = $next['0'];
		
		$trh = $Blogs->where('id='.$blog['id'].'+1 and status=1')->getField('id,title');//获取相关日志
		
		//dump($trh);
		
		$html['title'] = $blog['title'].' - 小雨 博客';
		//$html['keywords'] = $blog['keywords'];
		empty($blog['keywords'])?$html['keywords'] = $blog['title'].'小雨,博客,xyblog':$html['keywords'] = $blog['keywords'];
		$html['description'] = $blog['description'];
		$this->assign('html',$html);// html赋值
		
		$this->assign('trh',$trh);// 相关日志赋值
		$this->assign('page',$page);// 上下篇赋值
		$this->assign('blog',$blog);// 博客内容赋值
		//dump($page);
		$this->display();
    }
	
	function comment() {
	
		$i = I();
        $Comment = D('Comment');
        if (false === $Comment->create()) {
            $this->error($Comment->getError());
        }
        //保存当前数据对象
        $list = $Comment->add();
		//dump(I());
		
		//发送邮件
		$Config = S('Config');
		//$commentEmail = D('Config')->get('commentEmail');
		if($Config['commentEmail'] == '1'){
			if($i['pid'] == 0){
				$mailcon = '<pre dir="ltr"> '.$i['userName'].' 在 <a href="http://dingxiaoyu.com">Xy Blog</a> 的留言板 进行了留言。

	'.$i['content'].'  <span class="date">'.toDate(time()).'</span>

</pre>
访问 <a href="http://dingxiaoyu.com'.U('blog/'.$i['fromId']).'">http://dingxiaoyu.com'.U('blog/'.$i['fromId']).'</a> 进行查看。';

				//echo $mailcon;
				//$Config = S('Config');
				echo send_mail($Config['adminEmail'],'小雨','有人在 XyBlog 留言',$mailcon);
			}else{
				$pid = $Comment->where('status=1 and id='.$i['pid'].' and type=3')->order('createTime asc')->getField('id,userName,email,content,createTime,pid');
				$p = $pid[$i['pid']];
				$mailcon = '<pre dir="ltr"> '.$i['userName'].' 在 <a href="http://dingxiaoyu.com">Xy Blog</a> 对 您（'.$p['userName'].'） 的留言，进行了回复。

	'.$p['content'].' <span class="date">'.toDate($p['createTime']).'</span>

		'.$i['content'].' <span class="date">'.toDate(time()).'</span>

</pre>
访问 <a href="http://dingxiaoyu.com'.U('blog/'.$i['fromId']).'">http://dingxiaoyu.com'.U('blog/'.$i['fromId']).'</a> 进行查看。';
			
				//echo $mailcon;
				//dump($pid);
				echo send_mail($p['email'],'小雨','有人在 XyBlog 对您的留言进行了回复',$mailcon);
			}
		//发送邮件结束
		}
		
        if ($list !== false) { //保存成功
            $this->success('评论成功!');
        } else {
            //失败提示
            $this->error('评论失败!');
        }
    }
}