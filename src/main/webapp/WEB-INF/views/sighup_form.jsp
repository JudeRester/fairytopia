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
        h3 a {
            color: #ffa900;
        }

        h3 a:hover {
            color: #ffa900;
            text-decoration: none;
        }
    
        .sighupform {
            padding: 80px 400px;
        }
    </style>
</head>
<body>
	<div class="container-fuild">
        <h3 class="text-center"><a href="main.jsp"><strong>FAIRYTOPIA</strong></a></h3>
        <hr />
    </div>
    <div class="container">
        <div class="sighupform">
            <div class="form-group">
                <input type="email" class="form-control input-lg" id="exampleInputEmail" placeholder="이메일">
            </div>
            <div class="form-group">
                <input type="password" class="form-control input-lg" id="exampleInputPassword" placeholder="비밀번호">
            </div>
            <div class="form-group">
                <input type="text" class="form-control input-lg" id="exampleInputName" placeholder="이름">
            </div>
            <div class="form-group">
                <input type="text" class="form-control input-lg" id="exampleInputName2" placeholder="닉네임">
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    작가 관련 서비스 이용
                </label>
            </div>
            <br />
            <button type="button" class="btn btn-warning btn-lg btn-block">회원가입</button>
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