<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/header.jsp"%>
<form action="/member/join" method="post">
	<ul>
		<li><label for="mem_id_join">아이디</label> <input id="mem_id_join"
			name="mem_id_join" size="20" maxlength="50"> <!-- <button id="checkId">ID중복확인</button> --></li>
		<p id="idwarn"></p>
		<li><label for="mem_passwd_join">비밀번호</label> <input id="mem_passwd_join"
			name="mem_passwd_join" type="password" size="20" placeholder="6~16자 숫자/문자"
			maxlength="16"></li>
		<li><label for="repass">비밀번호 재입력</label> <input id="repass"
			name="repass" type="password" size="20" placeholder="비밀번호재입력"
			maxlength="16"></li>
			<li><label for="mem_nickname">별명</label> <input id="mem_nickname" name="mem_nickname" type="text" size="20" maxlength="16"></li>
		<li><label for="mem_ph">전화번호</label> <input id="mem_ph"
			name="mem_ph" type="tel" size="20" placeholder="전화번호 입력"
			maxlength="20"></li>
		<li><label for="mem_aut">작가회원 선택 여부</label> <input
			type="checkbox" value='1' /></li>
		<li class="label2"><button type="submit" id="process" disabled="true">가입하기</button>
			<button type="reset" id="cancle">취소</button></li>
	</ul>
</form>
<script>
	$("#mem_id_join").blur(function() {
		console.log("check start");
		var mem_id = $('#mem_id_join').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/member/checkId?mem_id='+ mem_id,
			type : 'get',
			success : function(data) {
				console.log(data);
				if (data == 1) {
					$('#idwarn').text('사용중인 아이디 입니다.');
					$('#process').attr("disabled", true);
				} else {
					$('#idwarn').text('사용가능한 아이디 입니다.');
					$('#process').attr("disabled", false);
				}
			},
			error : function() {
				console.log("실패");
			}
		});
	});
	$('#cancle').click(function(){
		document.location.replace(document.referrer)
	});
</script>
<%@include file="../hf/footer.jsp"%>