<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="/resources/css/note.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>쪽지 쓰기</title>
</head>
<body>
<div id="pop_wrap" class="pop_write">
	<div class="pop_header">
		<h1> </h1>
	</div>
	<div class="pop_content">
		<div class="note_write">			
			<div class="send_window">
				<div id="recieverArea">
					<span class="tf_tit">
						<span class="recipient">받는사람</span>
					</span>
						<span class="tf_cont">
						<span id="who">${param.toNick }</span>
					</span>
				</div>
				<div class="writing_area">
					<textarea id="writeNote" style="resize:none;" rows="20" cols="55" title="쪽지 내용을 입력해 주세요."></textarea>
				</div>
			</div>
			<div class="btns">				
				<a href="#" class="button" onclick='send()'>보내기</a>
				<a href="#" class="button" onclick="window.close();">취소</a>
			</div>
		</div>
	</div>
</div>

<script>
	function send(){
			var data = new FormData();
			data.append('to','${param.to}');
			data.append('from','${param.from}');
			data.append('cont',$('#writeNote').val());
			console.log(data);
			$.ajax({
				type : "POST",
				url : "/note/sendNote",
				processData : false,
				contentType : false,
				data : data,
				success : function(result) {
					window.close();
				},
				error : function(e) {
					console.log("실패");
					window.alert('메세지를 보내지 못했습니다.\n잠시후에 다시 시도해 주세요');
				}

			});
		}
</script>
</body>
</html>