<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- summernote reference -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<!-- summer note end -->
<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			minHeight : 370,
			maxHeight : null,
			focut : true,
			lang : 'ko-kr'
		});
	});
</script>
<style>
.edit {
	width: 950px;
	height: 500px;
	border: 1px solid #c9c9c9;
}
</style>
</head>
<body>

	<div class="col-xs-8">
		<div class="edit">
			<textarea name="content" id="summernote"></textarea>
		</div>
	</div>

</body>
</html>