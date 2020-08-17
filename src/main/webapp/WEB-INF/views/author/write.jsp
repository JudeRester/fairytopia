<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<link href="/resources/css/write.css" rel="stylesheet" />
<!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="/resources/js/summernote-ko-KR.js"></script>

<script>
	$(document)
			.ready(
					function() {
						var path = "1";

						$('#summernote').summernote({
							minHeight : 370,
							maxHeight : null,
							focus : true,
							lang : 'ko-KR',
							callbacks : {
								onImageUpload : function(files) {
									snImageUpload(files[0], this);
								}
							}
						});

						function snImageUpload(file, editor) {
							data = new FormData();
							data.append("file", file);
							data.append("path", path);
							$.ajax({
								data : data,
								type : "POST",
								url : "summernoteImageUpload",
								contentType : false,
								processData : false,
								success : function(data) {
									$(editor).summernote('insertImage',
											data.url);
									path = data.path;
								}
							})
						}
						$('#test')
								.click(
										function() {
											var title = wform.title.value;
											var dto = $('#wform').serialize();
											var markupStr = $('#summernote')
													.summernote('code');
											dto = dto
													+ '&cont='
													+ markupStr
													+ '&mem_id='
													+ '${sessionScope.user.mem_id }'
													+ '&uploadedfile=' + path;
											console.log(dto);
											if (title.trim() == '') {
												alert("제목을 입력해주세요");
												return false;
											}
											$
													.ajax({
														url : '/coworker/write',
														type : 'post',
														data : dto,
														success : function(data) {
															window.location
																	.replace('/coworker/list?board_type='
																			+ wform.board_type.value);
															console.log('성공');
														},
														error : function() {
															console.log("실패");
														}
													});
										});
					});
</script>

<hr />
	<form id="wform">
		<div class="drop">
			<select name="board_type" id="">
				<option value="0">작가 구해요</option>
				<option value="1">작품 구해요</option>
			</select>
		</div>

		<div class="row">
			<div class="col-xs-5 title">
				<input type="text" class="form-control" placeholder="제목" name="title">
			</div>
		</div>

		<div id="summernote"></div>
		<!-- <input type="submit" value="작성"/> -->

		<button class="btn btn-default" type="submit" id="test">등록</button>
	</form>
	<script>

	</script>
<%@include file="../hf/footer.jsp"%>