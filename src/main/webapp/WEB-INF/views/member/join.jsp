<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/header.jsp"%>


<div class="container">
	<form action="/member/join" method="post" class="signupform">
		<div class="form-group">
			<input id="mem_id_join" name="mem_id_join"
				class="form-control input-lg" placeholder="이메일">
			<!-- <button id="checkId">ID중복확인</button> -->
		</div>
		<p id="idwarn"></p>
		<div class="form-group">
			<input id="mem_passwd_join" name="mem_passwd_join" type="password"
				placeholder="비밀번호" class="form-control input-lg">
		</div>
		<div class="form-group">
			<input id="repass" name="repass" type="password"
				placeholder="비밀번호재입력" class="form-control input-lg">
		</div>
		<div class="form-group">
			<input id="mem_nickname" name="mem_nickname" type="text"
				class="form-control input-lg" placeholder="닉네임">
		</div>
		<div class="form-group">
			<input id="mem_ph" name="mem_ph" type="tel" placeholder="전화번호"
				class="form-control input-lg">
		</div>
		<div class="checkbox">
			<label for="mem_aut"><input type="checkbox" id="mem_aut" name="mem_aut"
				value='1' /> 작가 관련 서비스 이용</label>
		</div>
		<button type="submit" id="process"
			class="btn btn-warning btn-lg btn-block" disabled="true">회원가입
		</button>
	</form>
</div>

<c:choose>
	<c:when test="${!empty sessionScope.user.mem_id }">
		<script>
			$(document).ready(function() {
				document.location.replace('${pageContext.request.contextPath}/');
			});
		</script>
	</c:when>
</c:choose>
<script>
			$("#mem_id_join").blur(function() {
				console.log("check start");
				var mem_id = $('#mem_id_join').val();
				$.ajax({
					url : '${pageContext.request.contextPath}/member/checkId?mem_id='
							+ mem_id,
					type : 'get',
					success : function(data) {
						console.log(data);
						if (data == 1) {
							$('#idwarn').text(
									'사용중인 아이디 입니다.');
							$('#process').attr(
									"disabled", true);
						} else {
							$('#idwarn').text(
									'사용가능한 아이디 입니다.');
							$('#process').attr(
									"disabled", false);
						}
					},
					error : function() {
						console.log("실패");
					}
				});
			});
			$('#cancle').click(function() {
				document.location.replace(document.referrer)
			});
		</script>
<%@include file="../hf/footer.jsp"%>