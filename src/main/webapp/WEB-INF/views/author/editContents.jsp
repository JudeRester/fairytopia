<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
	
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

        #header {
            margin-top: 50px;
        }

        .page {
            padding-bottom: 10px;
        }

        .page b {
            color: gray;
        }


        .set {
            border: 1px solid #cecece;
            text-align: center;
            margin-left: 50px;
        }

        .set a {
            color: #5c5c5c;
            text-decoration: none;
            font-size: 20px;
        }

        .set a:hover {
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
</style>
</head>
<body>
    <div class="container">
        <div class="row" id="header">
            <div class="col-xs-1">
                    <a href="" class="btn btn-default" role="button">
                        <b>편집내용 저장</b>
                    </a>
            </div>
            <div class="col-xs-2 text-center">
                    <a href="" class="btn btn-default" role="button">
                        <b>투고하기</b>
                    </a>
            </div>

            <div class="col-xs-8 set">
                <a href="" class="btn btn-link" role="button" data-toggle="modal" data-target="#myModal">
                    기본정보 설정
                </a>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-2">
                <div class="page">
                    <a href="" class="btn btn-default" role="button">
                        <b>페이지 추가</b>
                    </a>
                </div>

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
                                    A
                                </a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <!-- 이미지 섬넬 -->

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                    B
                                </a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <!-- 이미지 섬넬 -->

                            </div>
                        </div>
                    </div>
                </div> <!--panel-group-->
            </div>

            <div class="col-xs-9">
                <div class="edit">
                    <textarea name="content" id="summernote"></textarea>
                </div>
            </div>
        </div>

        <hr />

    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4>도서 기본정보 설정</h4>
                </div>

                <form class="form-horizontal" id="cwpForm">
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="inputname" class="col-sm-3 control-label">
                                동화 제목
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="name"
                                       name="name" placeholder="동화 제목을 기입해주세요.">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputtext" class="col-sm-3 control-label">
                                동화 줄거리
                            </label>
                            <div class="col-sm-8">
                                <textarea class="form-control" id="detail"
                                          name="detail" placeholder="동화 줄거리를 기입해주세요."></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputtext" class="col-sm-3 control-label">장르</label>
                            <div class="col-sm-4">
                                <div class="dropdown">
                                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                        장르
                                        <span class="caret"></span>
                                    </button>

                                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">전래동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">환상동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">생활동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">학습동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">활동그림책</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                      </div>
                    </form>

                    <div class="modal-footer">
                        <a href="">
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