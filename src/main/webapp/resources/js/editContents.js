/**
 * 
 */
	$(document).ready(
			function() {
				$.urlParam = function(name) {
					var results = new RegExp('[\?&]' + name + '=([^&#]*)')
							.exec(window.location.href);
					if (results == null) {
						return null;
					} else {
						return results[1] || 0;
					}
				}
			
				getInfo();
				getPages();
				
				$('#summernote').summernote({
					height : 1280 / 3 * 2,
					width : 1280,
					focut : true,
					lang : 'ko-kr',
					callbacks : {
						onImageUpload : function(files) {
							snImageUpload(files[0], this);
						}
					}
				});
				load();
				function snImageUpload(file, editor) {
					data = new FormData();
					data.append("file", file);
					data.append("workplace_id", $.urlParam('workplace_id'));
					data.append("file_page", $.urlParam('page'));
					$.ajax({
						data : data,
						type : "POST",
						url : "/author/summernoteImageUpload",
						contentType : false,
						processData : false,
						success : function(data) {
							$(editor).summernote('insertImage',
									data.url);
							console.log(data.url);
						}
					});
				}
				
				$('#saveInfo').click(function() {
					var dto = $('#cwpForm').serialize();
					dto = dto + '&workplace_id=' + $.urlParam('workplace_id');
					console.log(dto);
					$.ajax({
						url : '/author/updateInfo',
						type : 'post',
						data : dto,
						success : function(data) {
							$('#myModal').modal('toggle');
						},
						error : function() {
							console.log("실패");
						}
					});
				});

				$('#addPage').click(function(){
					key =parseInt($('#addPage').children().val())+1;
					dto = {workplace_id : $.urlParam('workplace_id'),
							pageNum : key};
					$.ajax({
						url : '/author/newPage',
						type : 'post',
						data : dto,
						success : function(data) {
							str = '<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">'
								 +'<!-- 페이지 --><div class="panel panel-default">'
								 +'<div class="panel-heading" role="tab" id="heading'+key+'">'
								 +'<h4 class="panel-title"><!-- 페이지 번호 -->'
								 +'<a data-toggle="collapse" onclick="changePage('+key+')" data-parent="#accordion" href="#collapse'+key+'"'
								 +' aria-expanded="true" aria-controls="collapse'+key+'">'+key+'페이지</a>';
							$('#page-list').append(str);
							$('#addPage').children().val(key)
							$('#no-page').remove();
						},
						error : function() {
							console.log("실패");
						}
					});
					
				});

				$('#save').click(function(){
					var dto = {"workplace_id":$.urlParam('workplace_id'),
							 "file_page":$.urlParam('page')}
					var markupStr = $('#summernote').summernote('code');
					dto.cont=markupStr;
					console.log(dto);

					$.ajax({
						url : '/author/save',
						type : 'post',
						contentType:'application/json',
						dataType: 'json',
						data :  JSON.stringify(dto),
						success : function(){
								window.alert('성공적으로 저장되었습니다.');
							},
						error : function(){
								window.alert('저장에 실패했습니다. 잠시 후 다시 시도해 주세요');
							}
						});
					
					
					});
				
				$('#coverUpload').change(function(){
					console.log('upload cover');
					var data = new FormData();
					data.append("file", $('#coverUpload').prop('files')[0]);
					data.append("workplace_id", $.urlParam('workplace_id'));
					console.log(data);
					
					$.ajax({
						type : "POST",
						enctype : 'multipart/form-data',
						url : "/author/coverUpload",
						processData : false,
						contentType : false,
						data : data,
						success : function(result) {
							$('#cover').attr('src',result.url);
						},
						error : function(e) {
							console.log("실패");
						}

					});
					
				});
				
				$('#genre').change(function(){
					disableG();
					$('#genre').attr("name","genre");
				});
				
				function publish(){
					
				}
				
			});
	
	function disableG(){
		$('#genreTitle').attr("disabled","disabled");
	}
	
	function getInfo() {
		var data = {
			workplace_id : $.urlParam('workplace_id')
		};
		$.ajax({
			data : data,
			type : "post",
			url : "/author/getInfo",
			success : function(data) {
				if ($.isEmptyObject(data)) {
					$('#myModal').modal();
				} else {
					$('#cover').attr('src',data.cover);
					$('#fairytale_name').val(data.fairytale_name);
					$('#fairytale_detail').val(data.fairytale_detail);
					$('#fairytale_price').val(data.fairytale_price);
					if(data.fai_tag_name ==null){
						console.log('null');
					}else{
						$('#fai_tag_name').val(data.fai_tag_name)
						.attr("disabled",true)
						.attr("name","");
					}
					$('#genre').val(data.genre).prop("selected",true);
					disableG();
				}
			}
		});
	}
	function changePage(pageNum){
	    var renewURL = location.href;
	    renewURL = renewURL.replace(/\&page=([0-9]+)/ig,'');
	    renewURL += '&page='+pageNum;
	    history.pushState(null, null, renewURL);
		load();
		}
	
	function getPages() {
		var data = {
			workplace_id : $.urlParam('workplace_id')
		};
		$.ajax({
			data : data,
			type : "post",
			url : "/author/getWorkingPages",
			success : function(data) {
				$('#page-list').empty();
				console.log("start page file list");
				if ($.isEmptyObject(data)) {
					$('#page-list').html(
							'<p id="no-page">페이지가 없습니다.</p>');
				} else {
					$.each(data,function(keys, value) {
						key=keys+1
						console.log(keys);
						str = '<div class="panel-group" id="accordion" role="tablist"	aria-multiselectable="true">'
								+ '<!-- 페이지 --><div class="panel panel-default"><div class="panel-heading" role="tab" id="heading'+key+'">'
								+ '<h4 class="panel-title">'
								+ '<!-- 페이지 번호 --><a data-toggle="collapse" onclick="changePage('+key+')" data-parent="#accordion" href="#collapse'+key+
								+'" aria-expanded="true" aria-controls="collapse'+key+'">'
								+ key
								+ '페이지</a> <label for="page_'+key+'">';
						$('#addPage').children().val(key);
						str = str + '</div></div>';
						$('#page-list').append(str);
					});
				}
				console.log("end page file list");
			}
		});
	};

	function load(){
		dto = {"workplace_id" : $.urlParam('workplace_id'),
				"file_page" : $.urlParam('page')};
		$.ajax({
			data : JSON.stringify(dto),
			type : "post",
			contentType:'application/json',
			dataType: 'json',
			url : "/author/load",
			success : function(data){
				$('.note-editable').html(data.cont);
				}
			});
		}