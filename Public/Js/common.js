$(function(){
	//全局的form验证
	$('#form').Validform({
		tiptype:function(msg,o,cssctl){
		//msg：提示信息;
		//o:{obj:*,type:*,curform:*}, obj指向的是当前验证的表单元素（或表单对象），type指示提示的状态，值为1、2、3、4， 1：正在检测/提交数据，2：通过验证，3：验证失败，4：提示ignore状态, curform为当前form对象;
		//cssctl:内置的提示信息样式控制函数，该函数需传入两个参数：显示提示信息的对象 和 当前提示的状态（既形参o中的type）;
		if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
			var objtip=o.obj.siblings(".Validform_checktip");
			objtip = $(objtip).get(0) == undefined ? o.obj.parent().next().find('.Validform_checktip') : objtip;
			objtip = $(objtip).get(0) == undefined ? o.obj.parents('td').find('.Validform_checktip') : objtip;
			objtip = $(objtip).get(0) == undefined ? o.obj.parents('td').next().find('.Validform_checktip') : objtip;
			if($(o.obj).attr('datatype') != 'verify'){		
				cssctl(objtip,o.type);
				objtip.text(msg);
			}else{
				if($(o.obj).val().length != 5){			
					cssctl(objtip,o.type);
					objtip.text(msg);
				}else{
					objtip.removeClass('Validform_wrong').text('');
				}
			}
		}
		},
		datatype:{
			'mix':function(gets,obj,curform,regxp){
				var lens = $(obj).attr('data-length');
				var str = $(obj).val();
				var realLength = 0, len = str.length, charCode = -1;
			    for (var i = 0; i < len; i++) {
			        charCode = str.charCodeAt(i);
			        if (charCode >= 0 && charCode <= 128) realLength += 1;
			        else realLength += 2;
			    }
			    
			    if(realLength == 0){
			    	return false;
			    }
			    if(realLength > lens){
			    	return false;
			    }
			    return true;
			},
			'verify':function(gets,obj,curform,regxp){
				var str = $(obj).val();
				if(str.length < 5){
					return false;
				}else{
					return;
				}
			}
		}
    });
	
	//所有头像绑定ajax获取名片
	var ajaxGetCard;
	var timeout;
	$(document).delegate('.avatar,.ThinkBox-wrapper', 'mouseenter', function(event){
		//延迟执行鼠标移除事件
		clearTimeout(timeout);
		var ele = $(this);
		var user_id = ele.attr('user_id');
		if(user_id == undefined){
			return false;
		}
		
		//获取当前元素的位置,计算弹出框位置
		var ele_l = ele.offset().left;
		var ele_t = ele.offset().top;
		var x = ele_l + 56;
		var y = ele_t;
		
		//如果已经加载过了，则直接显示
		var card = ele.find('.card-box');
		if(card.html() != null){
			box = $.ThinkBox(
				card.get(0).outerHTML, 
				{
					'fixed' : false,
					'center' : false,
					'onload' : true,
					'close' : '',
					'dataEle' : '',
					'style' : '',
					'x' : x,
					'y' : y,
					'modal' : false
				}
			);
		}else{
			ajaxGetCard = $.get('/member/getUserCard',
				{
					'uid' : user_id
				},
				function(data){
					if(data.length == 0) return true;
					box = $.ThinkBox(
						data.data, 
						{
							'fixed' : false,
							'onload' : true,
							'center' : false,
							'close' : '',
							'dataEle' : '',
							'style' : '',
							'x' : x,
							'y' : y,
							'modal' : false
						}
					);
					ele.append(data.data);
					ele.find('.card-box').hide();
				},
				'json'
			);
		}
		event.stopPropagation();
	}).delegate('.avatar,.ThinkBox-wrapper', 'mouseleave', function(event){
		var user_id = $(this).attr('user_id');
		if(user_id == undefined && $(this).attr('class')!= 'ThinkBox-wrapper ThinkBox-'){
			return false;
		}
		ajaxGetCard.abort();
		//延迟执行鼠标移除事件
		timeout = setTimeout("$('.ThinkBox-wrapper').remove();", 10);
		event.stopPropagation();
	});
	
})

/**
 * toggleTips 				仿placeholder输入提示
 * @param  {[object]} e   	input元素
 * @param  {[string]} phc 	输入提示文字
 */
function toggleTips(e,phc) {
	var element = $(e);
	var placeholder = "<span class='placeholder-text'></span>";
	var placeholderContent = phc;	

	//创建包裹目标input的元素,并插入提示文字
	element.wrap("<label></label>").after(placeholder);
	element.next(".placeholder-text").text(placeholderContent);

	//设置提示文字的css样式
	element.parent("label").css("position","relative");
	element.next(".placeholder-text").css({
		"position"	: "absolute",
		"left" 		: "5px",
		"top"		: "0",
		"cursor"	: "text",
		"color" 	: "#CCC"
	});

	element.focus(function(){
		var value = $(this).val();
		if(!value) {
			$(this).next(".placeholder-text").hide();				
		}
	}).blur(function(){
		var value = $(this).val();
		if(!value) {
			$(this).next(".placeholder-text").show();				
		}
	});
}
//删除上传的图片
function delete_pic(e){
	var $this = $(e);
	$this.parent().remove();
}
//删除上传的附件
function delete_attachment(e){
	var $this = $(e);
	$this.parent('span').remove();
}