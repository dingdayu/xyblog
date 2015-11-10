$(function(){
	//初始化赞的数量
	$.get(
			"/support/getSupport",
			{'model' : $("#su_model_id").val(),
			 'record' : $(".support").children('.cit').attr('record_id')
			},
			function(data){
				$(".c-like > dd").text(data['num']);
				if(data['if_support']){
					$(".support").children('.cit').html("<i></i>已赞");
					$(".support").addClass('sc-disabled');
				}
			},
			'json'
		)
	//点击赞
	$(".support").click(function(){
		var txt = $(this).children('.cit');
		var record = txt.attr('record_id');
		if($.trim(txt.text()).substr(0, 1) == "赞"){
			$.post(
				"/support/update",
				{
					'model_id' : $("#su_model_id").val(),
					'record_id' : record,
					'author_id' : $('input[name=author_id]').val(),
					'title' : $('input[name=title]').val(),
					'app_name' : $('input[name=app_name]').val()
				},
				function(data){
					if(data.status == 1){
						$.ThinkBox.success(data.info);
						txt.html("<i></i>已赞");
						$(".support_num").text(parseInt($(".support_num" ).text()) + 1);
						txt.parent().addClass('sc-disabled');
					}else{
						$.ThinkBox.error(data.info);
					}	
				},
				'json'
			)
		}else{
			return ;
		}	
	});
});