<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<link href="/resources/css/studio.css" rel="stylesheet" />
<!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="/resources/js/summernote-ko-KR.js"></script>

<script>
$(document).ready(function() {
	  $('#summernote').summernote({
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
	});
</script>


<form action="" method="post">
<select name="category" id="">
	<option value="">----</option>
	<option value="0">작가 구해요</option>
	<option value="1">작품 구해요</option>
</select><label for="">제목</label><input type="text" /><br />
<div id="summernote"></div>
<!-- <input type="submit" value="작성"/> -->
</form>

<button id="test">ㅎㅇ</button>
<script>

	$('#test').click(function(){
		var markupStr = $('#summernote').summernote('code');
		console.log(markupStr);
		});
</script>
<%@include file="../hf/footer.jsp"%>