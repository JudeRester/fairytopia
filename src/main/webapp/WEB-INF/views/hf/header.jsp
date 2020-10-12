
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
	
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

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
			<div class="col-xs-3">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					FAIRYTOPIA </a>
			</div>

			<div class="col-xs-6">
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
				<c:when test="${empty sessionScope.user.mem_id }">
					<div class="login col-xs-3">
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#loginModal">
							<strong>로그인</strong>
						</button>
					</div>
				</c:when>
				<c:when test="${!empty sessionScope.user.mem_id }">
					<div class="user col-xs-3">
						<div class="btn-group" role="group">
							<c:if test="${sessionScope.user.mem_aut == 1 }">
								<button type="button" class="btn btn-default btn-user">
									<a href="/note/notelist"><span class="glyphicon glyphicon-envelope"></span></a>
								</button>
							</c:if>
							 <div class="dropdown btn-group" role="group">
								<button type="button" class="btn btn-default btn-user dropdown-toggle"
										data-toggle="dropdown">
									<span class="glyphicon glyphicon-bell">
									</span>
									<!-- <span class="badge">4</span>  -->

								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="">ooo님의 쪽지입니다.</a></li>
									<li class="divider"></li>
									<li><a href="">신간알림 ㅣ ooooooo가 출간되었습니다.</a></li>
									<li class="divider"></li>
									<li><a href="">오늘의 신작! 구독하러 가기</a></li>
								</ul>
							 </div>
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
					<li class="col-lg-2"><a href="/coworker">작가 작품 구하기</a></li>
				</ul>
			</div>
		</c:if>


	</div>
	<!-- 네비게이션바 -->
	<%-- <c:set var="url" value="${requestScope['javax.servlet.forward.servlet_path']}"/> --%>
	<c:set var="uri"
		value="${ fn:split(requestScope['javax.servlet.forward.servlet_path'], '/')[0] }" />
	<c:choose>
		<c:when test="${uri eq 'library' }">
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
		</c:when>
		<c:otherwise>
			<nav class="navbar navbar-default sticky-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							<li><a href="/shop?genre=0">전래동화</a></li>
							<li><a href="/shop?genre=1">환상동화</a></li>
							<li><a href="/shop?genre=2">생활동화</a></li>
							<li><a href="/shop?genre=3">학습동화</a></li>
							<li><a href="/shop?genre=4">활동그림책</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</c:otherwise>
	</c:choose>


	<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title text-center" id="myModalLabel">
						<strong>FAIRYTOPIA</strong>
					</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h4 class="text-center">로그인</h4>
					<form id="loginForm">
						<div class="form-group">
							<input id="mem_id" name="mem_id" type="email"
								class="form-control" placeholder="E-mail" autofocus>
						</div>
						<div class="form-group">
							<input id="mem_passwd" name="mem_passwd" type="password"
								class="form-control" placeholder="Password">
						</div>
						<a href="">아이디 찾기 / 비밀번호 재설정</a>
					</form>

					<div class="btngroup">
						<button type="button" id="loginBtn"
							class="btn btn-warning btn-block">로그인</button>
						<a class="btn btn-default btn-block" href="/member/join"
							role="button">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		$('#loginBtn')
				.click(
						function() {
							var dto = $('#loginForm').serialize();
							console.log(dto);
							/* var mem_id = $('#mem_id').val();
							var mem_passwd = $('#mem_passwd').val();
							 */
							$.ajax({
										url : '${pageContext.request.contextPath}/member/login',
										type : 'post',
										data : dto,
										success : function(data) {
											console.log(data);
											if (data == 1) {
												window
														.alert('사용자 정보가 일치하지 않습니다.');
											} else {
												window.location
														.replace('${pageContext.request.contextPath}');
												console.log('성공');
											}
										},
										error : function() {
											console.log("실패");
										}
									});
						});

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
