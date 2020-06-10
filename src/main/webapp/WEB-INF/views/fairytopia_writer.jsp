<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>페어리토피아</title>

    <link rel="shortcut icon" href="book.ico">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/owl.carousel.css" rel="stylesheet" />
    <link href="resources/css/owl.theme.default.css" rel="stylesheet" />
    <!--<link rel="stylesheet" href="css/bootstrap-theme.min.css">-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
	
    <style>

        /*헤더*/
        #header {
            padding: 40px 15px;
        }

        #header .navbar-brand {
            color: lightsalmon;
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
            color: lightsalmon;
        }

        .dropdown-menu .glyphicon {
            margin-right: 20px;
            color: lightsalmon;
        }

        /*네비*/
        .navtop {
            padding-left: 45px;
            padding-bottom: 20px;
        }

        .navtop a {
            color: #808080;
            text-decoration: none;
        }

        .navtop a:hover {
            color: orange;
        }

        .navtop .glyphicon {
            color: lightsalmon;
            margin-right: 10px;
            font-size: 15px;
        }

        .two a {
            margin-left: 40px;
        }

        /*네비바*/
        .nav li {
            margin-right: 65px;
        }

        .navbar-default {
            background-color: white;
            font-size: 15px;
        }

            .navbar-default .navbar-nav li a {
                color: black;
            }

                .navbar-default .navbar-nav li a:hover {
                    color: orange;
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
            color: lightsalmon;
            font-size: 20px;
        }

        #search h4 {
            padding-left: 130px;
            color: #525252;
        }

        /*베스트 셀러 e8cb99  f1c0a7 #f6b07a*/
        #bestbook {
            background-color: lightsalmon;
            padding: 40px 0px;
        }

            #bestbook h4 {
                color: white;
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
            color: white;
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
                    FAIRYTOPIA
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
                        <li><a href="main.html"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <ul class="navtop list-inline list-unstyled">
                <li class="col-lg-1"><a href="fairytopia_writer.html"><span class="glyphicon glyphicon-home"></span>테일샵</a></li>
                <li class="two col-lg-2"><a href="studio.html">메이킹스튜디오</a></li>
                <li class="col-lg-2"><a href="#">작가 작품 구하기</a></li>
            </ul>
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