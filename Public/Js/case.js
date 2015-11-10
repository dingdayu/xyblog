$(function(){
    //执行瀑布流
    var $container = $('#container');
	$container.imagesLoaded(function(){
	  $container.masonry({
	    itemSelector : '.item',
	    isAnimated: true
	  });
	});

	var loading = $("#loading").data("on", false);
	$(window).scroll(function(){
		if(loading.data("on")) return;
		if($(document).scrollTop() > 
			$(document).height()-$(window).height()-$('.footerxy').height()){
			//加载更多数据
			loading.data("on", true).fadeIn();
			$.get(
				"/Home/Index/getMore", 
				{"id" : $container.find(".item:last").attr("id"),
				 "cate_id" : $('#case_cate_id').val()
				},
				function(data){
					var html = "",item;
					if($.isArray(data)){
						for(i in data){
							item = data[i];
							html += '<div id="' + item.id + '" class="item">';
							html += '<div class="title"><a href="' + item.idUrl + '" target="_blank">' + item.title + '</a></div>';
							if(item.img){
								html += '<a class="img" href="' + item.idUrl + '" target="_blank"><img src="' + item.img + '" alt="' + item.title + '"></a>';
								}
							html += '<div class="intro">' + item.content + '</div>';
							html += '<div class="opt-info"><span><em>' + item.read_count + '</em>浏览</span><span><em>' + item.comment_count + '</em>评论</span></div>';
							html += '<div class="cmt-box">' +
							'<div class="cmt-item"><a class="avatar" href="javascript:;"><img src="'+item.avatar+'" alt="'+item.username+'"></a>' +
								'<div class="comment-hd"><span class="username" href="javascript:;">'+item.username+'</span><br/>'+item.create_time+' 发布</div>' +
							'</div>';
//							if(item.review != null){
//								html += '<div class="cmt-item">' +
//									'<a class="avatar" href="javascript:;"><img src="'+item.review.avatar+'" alt="'+item.review.username+'"></a>' +
//									'<div class="comment-hd">' +
//										'<a class="username" href="javascript:;">'+item.review.username+'</a>'+item.review.content+'</div></div>';
//							}	
							html += '</div></div>';
						}
						var $newElems = $(html).css({ opacity: 0 }).appendTo($container);;
						
						$newElems.imagesLoaded(function(){
							$newElems.animate({ opacity: 1 });
							$container.masonry( 'appended', $newElems, true ); 
				        });
				        loading.data("on", false);
					}
					loading.fadeOut();
				},
				"json"
			);
		}
	});
});

function date(format, timestamp){ 
    var a, jsdate=((timestamp) ? new Date(timestamp*1000) : new Date());
    var pad = function(n, c){
        if((n = n + "").length < c){
            return new Array(++c - n.length).join("0") + n;
        } else {
            return n;
        }
    };
    var f = {
        // Day  Y-m-d H:i:s
        d: function(){return pad(f.j(), 2)},
        j: function(){return jsdate.getDate()},

        // Month
        m: function(){return pad(f.n(), 2)},
        n: function(){return jsdate.getMonth() + 1},

        Y: function(){return jsdate.getFullYear()},

        // Time
        H: function(){return pad(jsdate.getHours(), 2)},
        i: function(){return pad(jsdate.getMinutes(), 2)},
        s: function(){return pad(jsdate.getSeconds(), 2)}

    };

    return format.replace(/[\\]?([a-zA-Z])/g, function(t, s){
        if( t!=s ){
            // escaped
            ret = s;
        } else if( f[s] ){
            // a date function exists
            ret = f[s]();
        } else{
            // nothing special
            ret = s;
        }
        return ret;
    });
}

function parse_content(str) {
    str = str.replace(/(http(s?):\/\/(?:[A-za-z0-9-]+\.)+[A-za-z]{2,4}(?:[\/\?#][\/=\?%\-&~`@[\]\':+!\.#\w]*)?)/ig, 
            '<a href="$1" target="_blank">$1</a>'
        );
    return str.replace(/([^>])[\r\n]+/g, '$1<br>\n');
}
		
//中文字符转换为utf8编码后的长度
function utf8Length(str){
	return Math.ceil(str.replace(/^\s+|\s+$/ig, '').replace(/[^\x00-\xff]/ig, 'xx').length / 2);
}