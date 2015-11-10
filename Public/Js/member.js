//初始化时判断锚点（个人设置选项卡切换）
function checkMall(){
	var local = location.hash.split("#", 2)[1];
	if(local == undefined){
		local = "bases";
	}
	//如果有锚点，则切换到对应的选项卡
	$("[data-target=\""+local+"\"]").addClass("current").siblings().removeClass("current");
	var id = local.substr(0, local.length - 1);
	$("#" + id).removeClass("hidden").siblings().addClass("hidden");
}
$(function(){
	checkMall();
	//选项卡切换
	$(".ua-tab li").click(function(){
		location.hash = "#" + $(this).data("target");
		var local = location.hash.split("#", 2)[1];
		//如果有锚点，则切换到对应的选项卡
    	$("[data-target=\""+local+"\"]").addClass("current").siblings().removeClass("current");
    	var id = local.substr(0, local.length - 1);
		$("#" + id).removeClass("hidden").siblings().addClass("hidden");
	})
	
	// 隐藏thinkbox内容div
	$('.hiddenUserAction').hide();
	$('.des-btn-change').click(function(){
		var desc = $('div[class=description]');
		var texts = desc.text();
		$('.hiddenUserAction>.changedesc').find('textarea').text(texts);
		var html = $('.changedesc');
		var box = $.ThinkBox(html, {'title' : '修改描述','drag' : true,'unload'	: true,});
		$(".ThinkBox-content #changeDesc").Validform({
				tiptype:function(msg,o,cssctl){
					if(!o.obj.is("form")){
						var objtip=o.obj.siblings(".Validform_checktip");
						cssctl(objtip,o.type);
						objtip.text(msg);
					}
				},
				label:'.label',
				postonce:true,
				ajaxPost:true,
				callback:function(data){
					if(data.status=="y"){
						$.ThinkBox.success('修改成功!');
						$('.description').text(data.data);
						box.hide();
					}else{
						$.ThinkBox.error('修改失败！请重新提交!');
					}
				}
			});
	});
		
	$('.edit-btn').click(function(){
		var html = $('.changeemail');
		var box = $.ThinkBox(html, {'title' : '修改邮箱','afterHide' : function(){
		},'drag' : true,'unload'	: true,});
		$(".ThinkBox-content #changeEmail").Validform({
			tiptype:function(msg,o,cssctl){
				if(!o.obj.is("form")){
					var objtip=o.obj.siblings(".Validform_checktip");
					cssctl(objtip,o.type);
					objtip.text(msg);
				}else{
					var objtip=o.obj.find(".Validform_checktip");
					cssctl(objtip,o.type);
					objtip.text(msg);
				}
			},
			label:'.label',
			postonce:true,
			ajaxPost:true,
			callback:function(data){
				if(data.status=="y"){
					$.ThinkBox.success('验证邮件已经发送至您的邮箱!');
					box.hide();	
				}else{
					$.ThinkBox.error('修改失败！请重新提交!');
				}
			}
		});
	});
	
	// 修改邮箱绑定
	$('#changeUserEmail').click(function(){
		var html = $('.hiddenUserAction .changeemail').parent().find('.changeemail').html();
		$.ThinkBox(
			html, 
			{
				'title' 	: '修改邮箱',
				'afterHide' : function(){},
				'drag' 		: true
			}
		);
		$(".ThinkBox-content #changeEmail").Validform({
			tiptype:function(msg,o,cssctl){
				if(!o.obj.is("form")){
					var objtip=o.obj.siblings(".Validform_checktip");
					cssctl(objtip,o.type);
					objtip.text(msg);
				}else{
					var objtip=o.obj.find(".Validform_checktip");
					cssctl(objtip,o.type);
					objtip.text(msg);
				}
			},
			label 	 : '.label',
			postonce : true,
			ajaxPost : true,
			callback : function(data){
				if(data.status=="y"){
					$.ThinkBox.success('验证邮箱已经发送至您的邮箱!',{'close':null});
					window.setTimeout(function(){
						$('.ThinkBox-close').click();
					},1200);	
				}else{
					$.ThinkBox.error('修改失败，请重新提交!');
				}
			}
		});
	});


	// 修改密码input验证
	$('#pwd').Validform({
		// def：'',
		tiptype:3,
		label 	 : '.labs',
		postonce : true,
	});
	// 修改联系方式验证
	$('#contact').Validform({
		// def：'',
		datatype:{
			"phone":function(gets,obj,curform,regxp){
				var reg=/^\d{3,4}-\d{7,8}$/;
				if(reg.test(gets)){return true;}	
				return false;
			},
			'zcode':function(gets,obj,curform,regxp){
				var reg=/^[1-9]{1}[0-9]{5}$/;
				if(reg.test(gets)){return true;}	
				return false;
			}
			
		},
		tiptype:3,
		label 	 : '.labs',
		postonce : true,
	});
	
	//私信页设为已读实现
	$('#setRead').click(function(){
		var checked = $('input:checked');
		var ids = new Array();
		checked.each(function(i){
			var id = $(this).val();
			if(id != 'on'){
				ids[ids.length] = id;
			}
		});
		if(ids.length == 0){
			$.ThinkBox.error('您还没有选择私信！');
			return false;
		}
		$.post(
			'/member/setLetterRead',
			{'ids' : ids},
			function(data){
				if(data.status == 1){
					$.ThinkBox.success('设置成功！');
					setTimeout(function(){window.location.reload()},1500);
				}else{
					$.ThinkBox.error('操作失败！');
				}
			},
			'json'
		);
	});
	//全选的实现
	$("#checkAll").click(function(){
		if($(this).attr('checked') == "checked"){
			$(".check-letter").attr("checked", "checked");
		}else{
			$(".check-letter").removeAttr("checked");
		}
	})
	$(".check-letter").click(function(){
		var option = $(".check-letter");
		option.each(function(i){
			if($(this).attr('checked') == undefined){
				$("#checkAll").removeAttr("checked");
				return false;
			}else{
				$("#checkAll").attr("checked", "checked");
			}
		});
	})
	//清空已读提醒
	$('#deleteNotify').click(function(){
		$.get(
			'/member/deleteNotify',
			{},
			function(data){
				if(data.status == 1){
					$.ThinkBox.success(data.info);
					setTimeout(function(){window.location.reload()}, 1500);
				}else{
					$.ThinkBox.error(data.info);
				}
			},
			'json'
		);
	});
});
