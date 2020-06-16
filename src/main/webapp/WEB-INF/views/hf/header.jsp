<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>페어리토피아</title>

<link rel="shortcut icon" href="book.ico">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/css/owl.carousel.css" rel="stylesheet" />
<link href="/resources/css/owl.theme.default.css" rel="stylesheet" />
<link href="/resources/css/main.css" rel="stylesheet" />   
<!--<link rel="stylesheet" href="css/bootstrap-theme.min.css">-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/resources/js/owl.carousel.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>

<script>
	$('#login').click(function(){
			
		});
</script>

</head>
<body>

	<div class="container">
		<div class="row" id="header">
			<div class="col-lg-4 col-xs-6">
				<a class="navbar-brand" href="#"> FAIRYTOPIA </a>
			</div>
			<div class="user col-lg-offset-6 col-lg-2">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default btn-user">
						<span class="glyphicon glyphicon-envelope"></span>
					</button>
					<button type="button" class="btn btn-default btn-user">
						<span class="glyphicon glyphicon-bell"></span>
					</button>
					<button type="button"
						class="btn btn-default btn-user dropdown-toggle"
						data-toggle="dropdown">
						<span class="glyphicon glyphicon-user"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<c:choose>
							<c:when test="${empty sessionScope.id }">
								<li><a href="/member/join"><span class="glyphicon glyphicon-pencil"></span>회원가입</a></li>
								<li><a href="#" id="login" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span>로그인</a></li>
							</c:when>
							<c:when test="${!empty sessionScope.id }">
								<li><a href="#"><span class="glyphicon glyphicon-user"></span>마이페이지</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-book"></span>내 서재</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
							</c:when>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<ul class="navtop list-inline list-unstyled">
				<li class="col-lg-1"><a href="fairytopia_writer.html"><span
						class="glyphicon glyphicon-home"></span>테일샵</a></li>
				<li class="two col-lg-2"><a href="studio.html">메이킹스튜디오</a></li>
				<li class="col-lg-2"><a href="#">작가 작품 구하기</a></li>
			</ul>
		</div>
	</div>

	<nav class="navbar navbar-default sticky-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="#">전래동화</a></li>
					<li><a href="#">환상동화</a></li>
					<li><a href="#">생활동화</a></li>
					<li><a href="#">학습동화</a></li>
					<li><a href="#">활동그림책</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="loginTitle">로그인</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <form action="/member/login" method="post">
	      <div class="modal-body">
	        <li><label for="mem_id">아이디</label> <input id="mem_id" name="mem_id" size="20" maxlength="50" autofocus> </li>
			<li><label for="mem_passwd">비밀번호</label> <input id="mem_passwd" name="mem_passwd" type="password" size="20" maxlength="16"></li>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">로그인</button>
	      </div>
	      </form>
	    </div>
	  </div>
	</div>