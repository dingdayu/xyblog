<?php

// +----------------------------------------------------------------------
// | DyBLOG
// +----------------------------------------------------------------------
// | Copyright (c) 2012 http://blog.dingxiaoyu.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xiaoyu <614422099@qq.com> 2012年10月24日 12:47:31
// +----------------------------------------------------------------------
// //------------------- // 首页 //----------------------- // //

/**
  +----------------------------------------------------------
 * 函数类
  +----------------------------------------------------------
*/
class IndexAction extends CommonAction {

    public function index(){
	
		$Blogs = M('Blogs');
		$User = M('User');
		$Comment = M('Comment');
		
		$blog = $Blogs->order('createTime')->limit(10)->where('status=1 and type=1')->getField('id,title,userId,createTime,description,count');
		$share = $Blogs->order('createTime')->limit(10)->where('status=1 and type=2')->getField('id,title,userId,createTime,description,count');
		$project = $Blogs->order('createTime')->limit(10)->where('status=1 and type=3')->getField('id,title,userId,createTime,description,count');
		//dump($last);
		//exit;
		$this->assign('blog',$blog);// 最新日志数据赋值
		$this->assign('share',$share);// 最新日志数据赋值
		$this->assign('project',$project);// 最新日志数据赋值
		//置顶复制在coomen模块中实现
		//dump($last);
		$this->display();
    }
	
		
	//获取下一栏数据
	public function getMore(){
		$i = I('id');
		$first = $i;
		$last = $i+2;
		
		$Blogs = M('Blogs');
		$Comment = M('Comment');
		$last = $Blogs->order('createTime')->limit($first.','.$last)->where('status=1')->getField('id,title,userId,createTime,description,content,imgId,count');
		$list = array();
		$is = 0;
		
		foreach ($last as $k => $v) {
			$list[$is]['id'] = $v['id'];
			$list[$is]['idUrl'] = U('Blog/'.$v['id']);
			$list[$is]['title'] = $v['title'];
			$list[$is]['username'] = getUserName($v['userId']);
			$list[$is]['read_count'] = $v['count'];
			$list[$is]['comment_count'] = $Comment->where('status=1 and type=3 and fromId='.$v['id'])->count();
			$list[$is]['cate_id'] = '';
			if(empty($v['imgId'])){
				$list[$is]['img'] =  __PUBLIC__ .'/Images/blogimg.png';
			}
			$list[$is]['create_time'] = $v['createTime'];
			$list[$is]['user_id'] = $v['userId'];
			$list[$is]['avatar'] = $v['avatar'];
			$content = (empty($v['description'])) ? $v['content'] : $v['description'];
			$list[$is]['content'] = msubstr(strip_tags($content),0,100);
			//dump($v);
			$is++;
		}
		
		//dump($list);
		//exit;
		$this->ajaxReturn($list);
	}
	
	function erweima(){
		$this->display();
	}
	
	function ceshi(){
		$c = '[{"id":"180","title":"HuiCms","username":"sje410","cate_id":"9","img":"\/Uploads\/case\/2013-05-29\/51a5c6ca4e4e5_202_500.jpg","url":"http:\/\/www.huicms.cn","create_time":"05-29","user_id":"26967","content":"[b]\u8fd9\u662f\u4e00\u4e2a\u7b80\u5355\u5c0f\u5de7\u5b9e\u7528\u7684CMS\u7f51\u7ad9\u7ba1\u7406\u7cfb\u7edf[\/b]","read_count":"1929","comment_count":"9","review":{"user_id":"73633","username":"dxhuii","content":"\u7a0b\u5e8f\u8fd8\u6ca1\u6709\u51fa\u6765\u5417\uff1f","avatar":"\/avatar\/44_44.png"},"avatar":"\/avatar\/000\/002\/69\/67\/original_44_44.gif","ico":""},{"id":"179","title":"\u5a1c\u7f8e\u79c0\u5b98\u7f51","username":"yn2010","cate_id":"12","img":"\/Uploads\/case\/2013-05-27\/51a2d61ddead9_202_500.gif","url":"http:\/\/www.nameixiu.com","create_time":"05-27","user_id":"75634","content":"\u5a1c\u7f8e\u79c0\u5b98\u7f51\u7cbe\u9009\u8d85\u503c\u4f18\u60e0\u5185\u8863,\u8ba9\u5973\u6027\u7f51\u53cb\u4e70\u5230\u79f0\u5fc3\u5982\u610f\u7684\u5185\u8863\uff0c\u8ba9\u7537\u6027\u670b\u53cb\u7ed9\u5973\u53cb\u4e70\u5230\u6f02\u4eae\u7684\u5185\u8863\u793c...","read_count":"1063","comment_count":"7","review":{"user_id":"82552","username":"\u79fb\u52a8\u7238\u7238","content":"\u611f\u89c9\u4e0d\u9519 \u652f\u6301","avatar":"\/avatar\/000\/008\/25\/52\/original_44_44.gif"},"avatar":"\/avatar\/44_44.png","ico":""},{"id":"177","title":"\u79ef\u5584\u7f51","username":"65443734","cate_id":"15","img":"\/Uploads\/case\/2013-05-24\/519ecc42a6dc1_202_500.jpg","url":"http:\/\/baifo365.com","create_time":"05-24","user_id":"43979","content":"\u79ef\u5584\u7f51\u662f\u4e92\u8054\u7f51\u7edc\u4e0a\u6700\u5927\u7684\u7f51\u4e0a\u793c\u4f5b\u3001\u62dc\u4f5b\u5e73\u53f0\uff0c\u4ee5\u8654\u8bda\u4e4b\u5fc3\u670d\u52a1\u5e7f\u5927\u4f5b\u5b50\uff0c\u63d0\u4f9b\u5728\u7ebf\u6284\u7ecf\u3001\u5ff5\u7ecf\u548c\u653e...","read_count":"512","comment_count":"3","review":{"user_id":"60701","username":"wxj4205","content":"\u8fd9\u4e2a\u7f51\u7ad9\u505a\u7684\u771f\u4e0d\u9519\uff0c\u6211\u53bb\u770b\u4e86\u4e0b\uff0c\u7a0b\u5e8f\u548c\u8bbe\u8ba1\u5c31\u4e0d\u8bf4\u4e86\uff0c\u975e\u5e38\u597d\uff01 \u4e3b\u8981\u662f\u7f51\u7ad9\u505a\u7684\u5f88\u6709\u610f\u4e49\uff0c\u8fd9\u4e2a\u4e3b\u9898\u5f88\u6709\u610f\u601d\uff0c\u5f88\u771f\u5b9e\uff01\u800c\u4e14\u5f88\u7acb\u4f53\u5316","avatar":"\/avatar\/000\/006\/07\/01\/original_44_44.gif"},"avatar":"\/avatar\/000\/004\/39\/79\/original_44_44.gif","ico":""},{"id":"176","title":"G3\u539f\u521b\u97f3\u4e50\u7f51","username":"65443734","cate_id":"8","img":"\/Uploads\/case\/2013-05-24\/519ecbae17f70_202_500.jpg","url":"http:\/\/www.yyg3.com","create_time":"05-24","user_id":"43979","content":"G3\u539f\u521b\u97f3\u4e50\u7f51\u662f\u96c6\u5a31\u4e50\u3001\u539f\u521b\u97f3\u4e50\u3001\u539f\u521b\u6b4c\u66f2\u3001\u514d\u8d39\u4f34\u594f\u3001\u7ffb\u5531\u97f3\u4e50\u3001\u6d41\u884c\u7f51\u7edc\u6b4c\u66f2\u4e3a\u4e00\u4f53\u7684\u514d\u8d39\u97f3...","read_count":"772","comment_count":"5","review":{"user_id":"71635","username":"haran","content":"\u5728GOOGLE\u6d4f\u89c8\u5668\u4e0b\u5168\u9519\u4f4d\u5566\uff01","avatar":"\/avatar\/000\/007\/16\/35\/original_44_44.gif"},"avatar":"\/avatar\/000\/004\/39\/79\/original_44_44.gif","ico":""},{"id":"174","title":"\u6ca1\u5f97\u6bd4","username":"liujun99","cate_id":"12","img":"\/Uploads\/case\/2013-05-21\/519ad364c0989_202_500.jpg","url":"http:\/\/www.meidebi.com","create_time":"05-21","user_id":"17861","content":"\u4e00\u4e2a\u516c\u6b63\u7684\u6bd4\u4ef7\u5206\u4eab\u7f51\u7ad9","read_count":"1454","comment_count":"5","review":{"user_id":"82546","username":"manlboro","content":"\u6069\uff0c\u4e0d\u9519\u3002\u516c\u5e03\u554a\uff1f","avatar":"\/avatar\/44_44.png"},"avatar":"\/avatar\/000\/001\/78\/61\/original_44_44.gif","ico":""},{"id":"173","title":"\u65b0\u7586\u5b89\u9014\u56fd\u9645\u65c5\u884c\u793e","username":"F5","cate_id":"14","img":"\/Uploads\/case\/2013-05-18\/519762f2b7789_202_500.jpg","url":"http:\/\/www.ontourxj.com","create_time":"05-18","user_id":"72455","content":"\u5b89\u9014\u65c5\u6e38\u7f51 \uff0c\u754c\u9762\u7531\u5ba2\u6237\u8bbe\u8ba1\r\n\u6709 \u5bfc\u6e38 \u6c7d\u8f66 \u666f\u70b9  \u9152\u5e97 \u6c7d\u8f66 \u7ebf\u8def   \u6587\u6863   \u7b49\u4fe1\u606f\uff01\u3000\r\n\u5185\u5bb9\u4e30...","read_count":"947","comment_count":"2","review":{"user_id":"60701","username":"wxj4205","content":"\u8fd9\u90fd\u662f\u4e9b\u4ec0\u4e48\u6848\u4f8b\u554a\uff01 \u6ca1\u51e0\u4e2a\u6b63\u7ecf\u7684\uff0c\u8981\u4e48\u6253\u4e0d\u5f00\uff0c\u8981\u4e48\u8fd8\u5728\u6d4b\u8bd5\u9636\u6bb5\uff01 ","avatar":"\/avatar\/000\/006\/07\/01\/original_44_44.gif"},"avatar":"\/avatar\/44_44.png","ico":""}]';
		
		$c1 = json_decode($c, true);
		//$this->ajaxReturn($c1);
		dump($c1);
		exit;
	}
}