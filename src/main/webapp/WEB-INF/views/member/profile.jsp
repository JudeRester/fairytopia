<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/header.jsp"%>


<div class="container">
	<c:set var="p" value="${profile }" />
	<div>
		<div>
			
			<img src="/fairy/profile/${sessionScope.user.mem_id }/profile" onerror="this.src='/resources/img/empty_profile.png'"
			alt="" class="img-circle" id="profilephoto" style="width:100px;height:100px;"/>
		</div>
		<button id="upload">프로필 사진 업로드</button>
		<input type="file" id="file" style="display: none" accept="image/gif, image/jpeg, image/png"/>
	</div>


	<div class="form-group">
		<input id="mem_id" name="mem_id" class="form-control input-lg"
			disabled value="${p.mem_id }">
	</div>
	<div class="form-group">
		<input id="mem_nickname" name="mem_nickname" type="text"
			class="form-control input-lg" placeholder="닉네임" disabled
			value="${p.mem_nickname }">
	</div>
	<div class="form-group">
		<input id="mem_ph" name="mem_ph" type="tel" placeholder="전화번호"
			class="form-control input-lg" disabled value="${p.mem_ph }">
	</div>
</div>

<script>
	$(document).ready(function() {
		var data = new FormData();
		$("#upload").click(function() {
			$('#file').click();
		});

		$("#file").change(function() {
			data.append("file", $('#file').prop('files')[0]);
			data.append("mem_id", '${p.mem_id}');
			console.log(data);

			$.ajax({
				type : "POST",
				enctype : 'multipart/form-data',
				url : "/member/photoupload",
				processData : false,
				contentType : false,
				data : data,
				success : function(result) {
					window.location.replace(document.location.href);
				},
				error : function(e) {
					console.log("실패");
				}

			});

		});
	})
</script>
<%@include file="../hf/footer.jsp"%>