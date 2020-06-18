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
    /*헤더 마이페이지*/
        #header {
            padding: 40px 15px;
        }

        #header .navbar-brand {
            color: #ffa900;
        }

        .navbar-brand {
            font-size: 25px;
        }

        /*
        .login a {
            color: #ffa900;
            font-size: 15px;
            text-decoration: none;
        }

        .login a:hover{
            text-decoration:none;
        }
        */

        .login .btn {
            margin-top: 8px;
            background-color: #ffa900;
            border: 1px solid orange;
            color: white;
        }
        

        /*모달*/
        #myModal {
            padding-top: 150px;
        }

        .modal-header h4 {
            color: #ffa900;
        }

        .modal-body{
            padding: 40px 150px;
        }

        .modal-body .btngroup{
            padding-top: 30px;
           /* border: 1px solid lightgray; */
        }

            .modal-body a {
                text-decoration: none;
                color: #525252;
            }

        /*네비바*/
        .nav li {
            margin-right: 65px;
        }

        .nav li:hover{
            background-color:#ffa900;
        }

        .navbar-default {
            background-color: white;
            font-size: 15px;
        }

        .navbar-default .navbar-nav li a:hover {
            color: white;
        }

        /*도서검색*/
        #search {
            padding: 60px 0;
        }

        .input-group {
            width: 500px;
            padding-left: 20px;
        }

        .input-group-btn .glyphicon {
            color: #ffa900;
            font-size: 20px;
        }

        .input-group-btn button:hover {
            background-color: white;
        }

        #search h4 {
            padding-left: 130px;
            color: #525252;
        }

        /*베스트 셀러 e8cb99  f1c0a7*/
        #bestbook {
            background-color: #f8f8f8;
            padding: 40px 0px;
        }

            #bestbook h4 {
                margin-left: 30px;
            }

        /*오늘의 신간*/
        #newbook {
            padding: 40px 0px;
        }

            #newbook h4 {
                margin-left: 30px;
            }

        /*owl*/
        #bookimg {
            padding-top: 20px;
        }

        .owl-prev {
            left: -50px;
        }

        .owl-next {
            right: -50px;
        }

        .owl-prev, .owl-next {
            position: absolute;
            top: 25%;
        }

            .owl-prev span, .owl-next span {
                font-size: 70px;
                color: #e6e6e6;
            }

        .owl-theme .owl-nav [class*="owl-"]:hover {
            background-color: transparent;
        }

        #bestbook .card-body h5 {
            text-align: center;
        }

        .card img {
            width: auto;
            height: auto;
            max-width: 450px;
            max-height: 220px;
        }

        /*owl2*/
        #newbook .card-body h5 {
            text-align: center;
            color: black;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="row" id="header">
            <div class="col-lg-4 col-xs-6">
                <a class="navbar-brand" href="#">
                    <strong>FAIRYTOPIA</strong>
                </a>
            </div>
            <div class="login col-lg-offset-6 col-lg-2 col-xs-3">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal"><strong>로그인</strong></button>
            </div>
        </div>
    </div>



        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title text-center" id="myModalLabel"><strong>FAIRYTOPIA</strong></h4>
                    </div>
                    <div class="modal-body">
                        <h4 class="text-center">로그인</h4>
                        <div class="form-group">
                            <input type="email" class="form-control" id="exampleInputEmail" placeholder="E-mail">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="exampleInputPassword" placeholder="Password">
                        </div>
                        <a href="#">아이디 찾기 / 비밀번호 재설정</a>
                        <div class="btngroup">
                            <button type="button" class="btn btn-warning btn-block">로그인</button>
                            <a class="btn btn-default btn-block" href="sighup.html" role="button">회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  


        <nav class="navbar navbar-default sticky-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#">전래동화</a></li>
                        <li><a href="#">환상동화</a></li>
                        <li><a href="#">생활동화</a></li>
                        <li><a href="#">학습동화</a></li>
                        <li><a href="#">활동그림책</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container">
            <div class="row" id="search">
                <div class="col-lg-offset-3 col-lg-9">
                    <form class="navbar-form" role="search">
                        <div class="input-group ">
                            <input type="text" class="form-control input-lg" placeholder="도서검색">
                            <span class="input-group-btn">
                                <button class="btn btn-default input-lg" type="button">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                    <h4><strong>찾고 싶은 도서를 입력해보세요.</strong></h4>
                </div>
            </div>
        </div>

        <div class="container-fuild">
            <div class="row" id="bestbook">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4>
                                <strong>베스트셀러</strong>
                            </h4>
                        </div>
                        <div class="col-lg-offset-2 col-lg-8">
                            <div class="owl-carousel owl-theme" id="bookimg">
                                <div class="card">
                                    <img src="img/bestbook_again.jpeg" class="card-img-top" />
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>우리는 언제나 다시만나</strong></h5>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="img/bestbook_children.jpg" class="card-img-top" />
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>칠판에 딱 붙은 아이들</strong></h5>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="img/bestbook_mangtae.jpg" class="card-img-top" />
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>망태 할아버지가 온다</strong></h5>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="img/bestbook_noadult.jpg" class="card-img-top" />
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>어른들은 절대로 안 그래?</strong></h5>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="img/bestbook_piano.jpg" class="card-img-top" />
                                    <div class="card-body">
                                        <h5 class="card-title"><strong>숲속 피아노</strong></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container" id="newbook">
            <div class="row">
                <div class="col-lg-12">
                    <h4>
                        오늘의 신간
                    </h4>
                </div>
                <div class="col-lg-offset-2 col-lg-8">
                    <div class="owl-carousel owl-theme" id="bookimg">
                        <div class="card">
                            <img src="img/bestbook_again.jpeg" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><strong>우리는 언제나 다시만나</strong></h5>
                            </div>
                        </div>
                        <div class="card">
                            <img src="img/bestbook_children.jpg" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><strong>칠판에 딱 붙은 아이들</strong></h5>
                            </div>
                        </div>
                        <div class="card">
                            <img src="img/bestbook_mangtae.jpg" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><strong>망태 할아버지가 온다</strong></h5>
                            </div>
                        </div>
                        <div class="card">
                            <img src="img/bestbook_noadult.jpg" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><strong>어른들은 절대로 안 그래?</strong></h5>
                            </div>
                        </div>
                        <div class="card">
                            <img src="img/bestbook_piano.jpg" class="card-img-top" />
                            <div class="card-body">
                                <h5 class="card-title"><strong>숲속 피아노</strong></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>


    <script>
            $('.owl-carousel').owlCarousel({
                margin: 20,
                nav: true,
                loop: true,
                dots: false,
                responsive: {
                    0: {
                        items: 2,
                    },
                    600: {
                        items: 4,
                    }
                }
            })

    </script>
</body>
</html>