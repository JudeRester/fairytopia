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
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">

<!-- summernote reference -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<!-- summer note end -->
<script src="/resources/js/editContents.js"></script>

<style>
.page {
	padding-bottom: 10px;
}

#page-list{
   overflow-y: scroll;
   width: 190px; 
   height: 870px;
}

#page-list {
	-ms-overflow-style: none;
}
#page-list::-webkit-scrollbar{
 	display:none; 
}

.page b {
	color: gray;
}

.set {
	border: 1px solid #cecece;
	text-align: center;
	margin-left: 50px;
}

.set button {
	color: #5c5c5c;
	text-decoration: none;
	font-size: 20px;
}

.set button:hover {
	color: #5c5c5c;
	text-decoration: none;
}

#myModal {
	padding-top: 200px;
}

.modal-body .form-group {
	margin-bottom: 20px;
}

.modal-footer a {
	color: black;
	text-decoration: none;
}

.modal-footer a:hover {
	text-decoration: none;
}
#header{
	margin:30px;
}

.file label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  background-color: #ffa900;
  cursor: pointer;
  border-radius: .25em;
}
input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

</style>
</head>
<body>
	<div class="container" style="margin: 0px;">
		<div class="row" id="header">
			<div class="col-xs-1">
				<button class="btn btn-default" id="save"> <b>편집내용 저장</b></button>
			</div>
			<div class="col-xs-2 text-center">
				<a href="" class="btn btn-default" role="button"> <b>투고하기</b>
				</a>
			</div>

			<div class="col-xs-8 set">
				<button class="btn btn-link" role="button" data-toggle="modal"
					data-target="#myModal"> 기본정보 설정 </button>
			</div>
		</div>

		<hr />

		<div class="row" >
			<div class="col-xs-2">
				<div class="page">
					<a href="#" class="btn btn-default" role="button" id="addPage">
						<input type='hidden' value='0' /> <b>페이지 추가</b>
					</a>
				</div>

				<div id="page-list">페이지가 없습니다</div>
				<!--panel-group-->
			</div>

			<div class="col-xs-9">
				<div class="edit">
					<textarea name="content" id="summernote"></textarea>
				</div>
			</div>
		</div>

		<hr />

	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>도서 기본정보 설정</h4>
				</div>

				<form class="form-horizontal" id="cwpForm">
					<div class="modal-body">
						<div class="form-group">
							<div class="col-xs-offset-4 col-xs-6 file">
									<img id="cover" src="https://via.placeholder.com/152x225" alt="" style="width:152px;height:225px;"/>
								    <label for="coverUpload">표지 업로드</label>
								    <input type="file" id="coverUpload">
							</div>
						</div>

						<div class="form-group">
							<label for="fairytale_name" class="col-sm-3 control-label"> 동화
								제목 </label>
							<div class="col-xs-8">
								<input type="text" class="form-control" id="fairytale_name"
									name="fairytale_name" placeholder="동화 제목을 기입해주세요.">
							</div>
						</div>

						<div class="form-group">
							<label for="fairytale_detail" class="col-sm-3 control-label"> 동화
								줄거리 </label>
							<div class="col-xs-8">
								<textarea class="form-control" id="fairytale_detail"
									name="fairytale_detail" placeholder="동화 줄거리를 기입해주세요."></textarea>
							</div>
						</div>

						<!-- <div class="form-group">
							<label for="inputtext" class="col-sm-3 control-label">장르</label>
							<div class="col-sm-4">
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										장르 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenu">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="# ">전래동화</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">환상동화</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">생활동화</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">학습동화</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">활동그림책</a></li>
									</ul>
								</div>
							</div>
						</div> -->
					</div>
					<div class="form-group">
							<label for="price" class="col-xs-3 control-label"> 가격 </label>
							<div class="col-xs-8">
								<div class="input-group">
							        <div class="input-group-addon">₩</div>
							        <input type="text" class="form-control" id="fairytale_price" name="fairytale_price">
						         </div>
							</div>
						</div>

						<div class="form-group">
							<label for="fai_tag_name" class="col-xs-3 control-label"> 태그 </label>
							<div class="col-xs-8">
								<input type="text" class="form-control" id="fai_tag_name" name="fai_tag_name" placeholder="ex)#감동">
							</div>
						</div>
				</form>

				<div class="modal-footer">
					<a href="#" id="saveInfo">
						<h4 class="text-center">
							<b>저장</b>
						</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>