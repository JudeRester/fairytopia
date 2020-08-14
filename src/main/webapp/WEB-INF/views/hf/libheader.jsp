<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
 -->

<script src="/resources/js/owl.carousel.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="row" id="header">
			<div class="col-lg-2 col-xs-5">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					FAIRYTOPIA </a>
			</div>
			<div class="col-lg-6 col-xs-4">
				<div class="input-group ">
					<input type="text" class="form-control input-lg" placeholder="도서검색">
					<span class="input-group-btn">
						<button class="btn btn-default input-lg" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
			<c:choose>
				<c:when test="${!empty sessionScope.user.mem_id }">
					<div class="user col-lg-offset-1 col-lg-2">
						<div class="btn-group" role="group">
							<c:if test="${sessionScope.user.mem_aut == 1 }">
								<button type="button" class="btn btn-default btn-user">
									<span class="glyphicon glyphicon-envelope"></span>
								</button>
							</c:if>
							<button type="button" class="btn btn-default btn-user">
								<span class="glyphicon glyphicon-bell"></span>
							</button>
							<button type="button"
								class="btn btn-default btn-user dropdown-toggle"
								data-toggle="dropdown">
								<span class="glyphicon glyphicon-user"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/member/profile"><span class="glyphicon glyphicon-user"></span>마이페이지</a></li>
								<li><a href="/library/mybook"><span
										class="glyphicon glyphicon-book"></span>내 서재</a></li>
								<li><a href="" onclick="logout()"><span
										class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
							</ul>
						</div>
					</div>
				</c:when>
			</c:choose>

		</div>
	</div>
	<div class="container">
		<c:if test="${sessionScope.user.mem_aut == 1 }">
			<div class="row">
				<ul class="navtop list-inline list-unstyled">
					<li class="col-lg-1"><a
						href="${pageContext.request.contextPath}/"> <span
							class="glyphicon glyphicon-home"></span>테일샵
					</a></li>
					<li class="two col-lg-2"><a href="/author/studio">메이킹스튜디오</a></li>
					<li class="col-lg-2"><a href="">작가 작품 구하기</a></li>
				</ul>
			</div>
		</c:if>


	</div>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<h4>
					<strong>내 서재</strong>
				</h4>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="books"><a href="#"><b>모든 책</b></a></li>
					<li><a href="#"><b>선호 작품</b></a></li>
					<li><a href="#"><b>프리 드로우</b></a></li>
					<li><a href="#"><b>녹음한 작품</b></a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<script>
		function logout() {
			$.ajax({
				url : '${pageContext.request.contextPath}/member/logout',
				type : 'get',
				always : function() {
					window.location.replace(document.location.href);
				}
			});
		};
	</script>