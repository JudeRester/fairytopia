/**
 * 
 */
$(document).ready(function(){
	$('#nomi').click(function(e) {
		var ta = e.target;
		console.log(ta)
		$('#nomi').find('.selected').removeClass('selected');
		$(ta).addClass("selected");
		if ($('#nomi').hasClass('selected'))
			$('#nomi').removeClass('selected');
	});

	$('#add').click(function() {
		var ta = $('#nomi').find('.selected');
		console.log(ta);
		console.log($(ta).children().val());
		if (ta.length != 0) {
			$('#invite').append("<li>"+$(ta).html()+"</li>");
		}
		
		ta.remove();
	});

	$('#invite').click(function(e) {
		var ta = e.target;
		console.log(ta)
		$('#invite').find('.selected').removeClass('selected');
		$(ta).addClass("selected");
		if ($('#invite').hasClass('selected'))
			$('#invite').removeClass('selected');
	});

	$('#remove').click(function() {
		var ta = $('#invite').find('.selected');
		console.log(ta);
		console.log($(ta).children().val());
		if (ta.length != 0) {
			$('#nomi').append("<li>"+$(ta).html()+"</li>");
		}
		
		ta.remove();
	});

	$('#newAuthor').click(function(){
		$('#nomi').empty();
		$('#invite').empty();
		$.urlParam = function(name){
		    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		    if (results==null){
		       return null;
		    }
		    else{
		       return results[1] || 0;
		    }
		}

		var data ={workplace_id: $.urlParam('workplace_id')};
		$.ajax({
			data : data,
			type : "Post",
			url : "/author/getInvite",
			success : function(data){
					$.each(data, function(key, value){
						str="<li>"+value.mem_nickname+"<input type='hidden' value='"+value.mem_id+"'/></li>"
						$('#nomi').append(str);
						});
				}
			});
		
		});

	function sendInvite(){
		$.urlParam = function(name){
		    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		    if (results==null){
		       return null;
		    }
		    else{
		       return results[1] || 0;
		    }
		}
		
		var data=new Array();
		$.each($('#invite').find('input'), function(key,value){
			var str= new Object();
			str.mem_receive=$(value).val();
			str.workplace_id=$.urlParam('workplace_id');
			data.push(str);
			});
		console.log(data);
		var json = JSON.stringify(data);
		$.ajax({
			
			data:json,
			type:"Post",
			dataType:'json',
			contentType : "application/json; charset=UTF-8",
			url:"/author/sendInvite",
			success : function(data){
				
				}
			});
		
		};
})
	
	