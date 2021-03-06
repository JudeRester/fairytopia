/**
 * 
 */
 $(document).ready(function(){
		console.log('asdf');
		getFileList();
		loadSchedule();
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

		$('#sendInvite').click(function(){

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
			
			});

		
		$('#addPage').click(function(){
			key =parseInt($('#addPage').children().val())+1;
			str = '<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true"><!-- 페이지 --><div class="panel panel-default"><div class="panel-heading" role="tab" id="heading'+key+'"><h4 class="panel-title"><!-- 페이지 번호 --><a data-toggle="collapse" data-parent="#accordion" href="#collapse'+key+'" aria-expanded="true" aria-controls="collapse'+key+'">'+key+'페이지</a> <label for="page_'+key+'"><span class="glyphicon glyphicon-plus"></span></label> <input type="file" id="page_'+key+'" onchange="pageFileUpload(this)"></h4></div> <div id="collapse'+key+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading'+key+'">';
			$('#page-list').append(str);
			$('#addPage').children().val(key)
			$('#no-page').remove();
		});
		
		$('#edit').click(function(){
			console.log('편집');
			var popup = window.open('/author/editContents?workplace_id='+$.urlParam('workplace_id')+'&page=0','동화 편집',"width=1540px,height=1080px",true);
		})
		
		$('#submitSchedule').click(function(){
			var data=$('#addSchedule').serializeObject();
			data.workplace_id=$.urlParam('workplace_id');
			var json =JSON.stringify(data);
			$.ajax({
				data : json,
				type : 'post',
				dataType : 'json',
				contentType : "application/json; charset=UTF-8",
				url : "/author/addSchedule"
			});
			$("#myModal").modal('toggle');
					console.log(data);
					$('#addSchedule')[0].reset();
					loadSchedule();
		});
		
	});
		
	function pageFileUpload(e){
		var data = new FormData();
		
		var bar = $('.bar');
	    var percent = $('.percent');
	    var status = $('#status');
	    
		data.append("file", $('#'+e.id).prop('files')[0]);
		data.append("file_page", e.id.split('_')[1]);
		data.append("workplace_id",$.urlParam('workplace_id'));
		for (var pair of data.entries()) { console.log(pair[0]+ ', ' + pair[1]); }

		$.ajax({
			xhr: function() {
	            var xhr = new window.XMLHttpRequest();
	            xhr.upload.addEventListener("progress", function(evt) {
	                if (evt.lengthComputable) {
	                    var percentComplete = Math.floor((evt.loaded / evt.total) * 100);

	                    /* Do something with upload progress here */
	                    var percentVal = percentComplete + '%';
	                    bar.width(percentVal);
	                    percent.html(percentVal);

	                }
	            }, false);
	            return xhr;
	        },
			type : "POST",
			enctype : 'multipart/form-data',
			url : "/author/fileupload",
			processData : false,
			contentType : false,
			data : data,
			  beforeSend:function(){
	              // progress Modal 열기
	              $("#pleaseWaitDialog").modal('show');

	              status.empty();
	              var percentVal = '0%';
	              bar.width(percentVal);
	              percent.html(percentVal);

	          },
	          complete:function(){
	              // progress Modal 닫기
	              $("#pleaseWaitDialog").modal('hide');

	          },
			success : function() {
				getFileList();
			},
			error : function(e) {
			}

		});
		
	}
		function loadSchedule(){
			console.log('loadSchedule');
			var data ={workplace_id: $.urlParam('workplace_id')};
			$.ajax({
				data : data,
				type : 'post',
				url : '/author/loadSchedule',
				success : function(result){
					$('#scheduleList').empty();
					if($.isEmptyObject(result)){
						$('#scheduleList').html('<p id="no-schedule">등록된 일정이 없습니다.</p>');
					}else{
						$.each(result, function(key, value){
							var str='<div class="row con">'
							+'<div class="col-xs-6 text-center">'
							+'<p><b>'+value.calendar_start+'</b>-<b>'+value.calendar_end+'</b></p>'
							+'</div>'
							+'<div class="col-xs-6"><p>'+value.calendar_detail+'</p></div>'
							+'</div></div><hr />';
							$('#scheduleList').append(str);
						});
					}
				}
			});
		}

	function getFileList(){
		var data ={workplace_id: $.urlParam('workplace_id')};
		$.ajax({
			data:data,
			type:"post",
			url:"/author/getPage",
			success:function(data){
				$('#page-list').empty();
					console.log("start page file list");
					if($.isEmptyObject(data)){
						$('#page-list').html('<p id="no-page">페이지가 없습니다.</p>');
					}else{
						$.each(data, function(key, value){
							str='<div class="panel-group" id="accordion" role="tablist"	aria-multiselectable="true"><!-- 페이지 --><div class="panel panel-default"><div class="panel-heading" role="tab" id="heading'+key+'"><h4 class="panel-title"><!-- 페이지 번호 --><a data-toggle="collapse" data-parent="#accordion" href="#collapse'+key+'" aria-expanded="true" aria-controls="collapse'+key+'">'+key+'페이지</a> <label for="page_'+key+'"><span class="glyphicon glyphicon-plus"></span></label> <input type="file" id="page_'+key+'" onchange="pageFileUpload(this)"></h4></div> <div id="collapse'+key+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading'+key+'">';
							$('#addPage').children().val(key);
							$.each(value, function(key,value){
								str=str+'<div class="panel-body"><a href="/fairy/workplace/'+value.workplace_id+'/'+value.file_page+'/'+value.file_name+'" download>'+value.file_name+'</div>';
								});
							str=str+'</div></div>';
							$('#page-list').append(str);
							});
					}
				console.log("end page file list");
			}
		}); 
	};


	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	jQuery.fn.serializeObject = function() { 
		var obj = null; 
		try { 
			if(this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) { 
				var arr = this.serializeArray(); 
				if(arr){ 
					obj = {}; 
					jQuery.each(arr, function() { 
						obj[this.name] = this.value; 
					}); 
				} 
			} 
		}catch(e) {
			 alert(e.message); 
		}finally {
		} 
		return obj; 
	 }


