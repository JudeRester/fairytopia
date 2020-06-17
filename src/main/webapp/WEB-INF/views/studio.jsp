<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페어리토피아</title>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/owl.carousel.css" rel="stylesheet" />
<link href="resources/css/owl.theme.default.css" rel="stylesheet" />
    
    <style>
    /*헤더*/
        #header {
            padding: 40px 15px;
        }

            #header .navbar-brand {
                color: #ffa900;
            }

        .navbar-brand {
            font-size: 25px;
        }

        .user .btn {
            width: 50px;
            margin-top: 5px;
        }

        .btn-user .glyphicon {
            font-size: 20px;
            color: #ffa900;
        }

        .dropdown-menu .glyphicon {
            margin-right: 20px;
            color: #ffa900;
        }

        /*네비*/
        .navtop {
            padding-left: 45px;
        }

        .navtop a {
            color: #808080;
            text-decoration: none;
        }

            .navtop .glyphicon {
                color: #ffa900;
                margin-right: 10px;
                font-size: 15px;
            }

        .two a {
            margin-left: 40px;
        }

        /*왼 네비*/
        #nav-left {
            padding:170px 50px;
        }

        #nav-left ul li a{
            color: black;
            background-color: white;
            border: 1px solid lightgray;
        }

        #nav-left ul li a:hover{
            background-color: #f3f3f3;
        }

        #right-all {
            padding:100px 200px;
        }

        #right-work {
            padding-left:100px;
        }

         /*작업실*/

        #work h4 button{
            margin-left:70px;
        }
        
        .end{
            padding-top: 20px;
        }


        /*모달*/
        #myModal {
            padding-top: 200px;
        }

        .modal-footer span {
            margin-right: 20px;
            margin-bottom: 20px;
        }

        .modal-footer a {
            text-decoration: none;
        }

        .modal-body {
            padding: 30px;
        }

        .nav li {
            background-color: white;
        }
    </style>
</head>
<body>
        <div class="container">
        <div class="row" id="header">
            <div class="col-lg-4 col-xs-6">
                <a class="navbar-brand" href="writer.jsp">
                    <strong>FAIRYTOPIA</strong>
                </a>
            </div>
            <div class="user col-lg-offset-6 col-lg-2">
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-default btn-user"><span class="glyphicon glyphicon-envelope"></span></button>
                    <button type="button" class="btn btn-default btn-user"><span class="glyphicon glyphicon-bell"></span></button>
                    <button type="button" class="btn btn-default btn-user dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>마이페이지</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-book"></span>내 서재</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <ul class="navtop list-inline list-unstyled">
                <li class="col-lg-1"><a href="writer.jsp"><span class="glyphicon glyphicon-home"></span>테일샵</a></li>
                <li class="two col-lg-2"><a href="#">메이킹스튜디오</a></li>
                <li class="col-lg-2"><a href="#">작가 작품 구하기</a></li>
            </ul>
        </div>
    </div>

    <hr />

    <div class="container-fulid">
        <div class="row">
            <div class="col-sm-12">
                <div role="tabpanel">
                    <div class="row">
                        <div class="col-sm-2" id="nav-left">
                            <ul class="nav nav-pills nav-stacked" role="tablist">
                                <li role="presentation" class="active text-center"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">전체 작업 현황</a></li>
                                <li role="presentation" class="text-center"><a href="#work" aria-controls="work" role="tab" data-toggle="tab">작업실</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-8">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="all">
                                    <div class="list-group" id="right-all">
                                        <a href="#" class="list-group-item text-center">
                                            <h5>전체 <span class="badge">2</span></h5>
                                        </a>
                                        <a href="#" class="list-group-item text-center">
                                            <h5>완료 <span class="badge">1</span></h5>
                                        </a>
                                        <a href="#" class="list-group-item text-center">
                                            <h5>투고 <span class="badge">1</span></h5>
                                        </a>
                                        <a href="#" class="list-group-item text-center">
                                            <h5>취소 <span class="badge">0</span></h5>
                                        </a>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="work">
                                    <div class="list-group" id="right-work">
                                        <h4>진행중인 작업실<button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-warning">작업실 생성</button></h4>
                                       		 작업실섬넬
                                        <h4 class="end">완료된 작업실</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--toppanel-->
            </div>
        </div>
    </div>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title text-center" id="myModalLabel">새 작업실 만들기</h3>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="inputname" class="col-sm-3 control-label">작업실 이름</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="작업실 이름을 기입해 주세요">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext" class="col-sm-3 control-label">작업실 내용</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="작업실 이름을 기입해 주세요">
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
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">전래동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">환상동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">생활동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">학습동화</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">활동그림책</a></li>
                                    </ul>
                                </div>
                            </div>
                            <small>작업실 만든 후 변경 가능</small>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#"><h3 class="text-center"><span class="glyphicon glyphicon-plus"></span>새 작업실 생성</h3></a>
                </div>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>


    <script>
    </script>
</body>
</html>