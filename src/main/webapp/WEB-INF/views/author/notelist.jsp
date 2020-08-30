<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<hr />
<div id="gradBgBox">
	<div id="mainContainer">
		<div id="mainContWBar">
			<div class="privateMessages">
				<div id="introduce" style="position: absolute; left: 250px;"></div>
				<div id="threads_main" class="">
					<!--미리보기 구간-->
					<div id="threads_left" data-max-msg-id="998580228051857409">
						<div data-lobc="0" id="thread_637596118129405952"
							class="pm_thread" title="Click to open conversation">
							<div class="th_wrap">
								<div class="th_user_thumb">
									<a href="#"> <img
										src="상대방 프로필 사진 위치"
										width="50" height="50" class="thumb">
									</a>
								</div>
								<div class="th_user_info">
									<div class="tui_username">
										<i class="fa fa-check-circle offline-now tui_check"></i>
										<div class="tui_el">
											이름 위치
										</div>
									</div>
								</div>
								<a href="pm.php?thread_id=637596118129405952" class="th_snippet"
									onclick="return false;"> <img
									src="가장 최근 대화자 프로필 사진 위치"
									height="30" width="30" class="thumb snippet_thumb">
									가장 최근 채팅 미리보기 위치 
								</a>
								<div class="th_controls">
									<i class="fa fa-times pm-ctrl"
										onclick="delete_thread(this, 'talk_id', 0)"
										title="Delete conversation"></i> <i class="fa fa-ban pm-ctrl"
										onclick="delete_thread(this, 'talk_id', 1)"
										title="Block user and delete conversation"></i>
								</div>
							</div>
						</div>
					</div>
					<!-- 대화 내용 출력-->
					<div id="threads_right" style="">

						<div class="pm_date_div" data-date="날짜">
							<hr>
							<div class="pm_date">날짜 </div>
						</div>
						<div class="pm_msg" id="msg_661165806437695488">
							<div class="msg_user_thumb">
								<a href="발화자 아이디" title="View ruker13 from South Korea"
									class="thumb_link male"> <img
									src="발화자 프로필 사진"
									class="thumb">
								</a>
							</div>
							<div class="msg_user">
								<a href="#" class="msg_username">발화자 닉네임</a>
							</div>
							<div class="msg_buttons">
								<div class="pm_time">시간</div>

								<i class="fa fa-warning msg_buttons_placeholder"></i> <i
									class="fa fa-times pm-ctrl"
									onclick="delete_message('talk_id');"
									title="Delete message" id="del_msg_btn_661165806437695488"></i>
							</div>
							<div class="msg_body">
								채팅 내용
							</div>
						</div>
						<!-- 채팅 입력창 -->
						<div id="threads_right_bottom">
							<form action="/pm.php" method="post"
								onsubmit="send_msg(); return false;">
								<div>
									<div id="markItUpMessage" class="markItUp">
										<textarea name="message" id="message"
											class="pm_markitup MsgTAClp markItUpEditor"></textarea>
										<div class="markItUpFooter"></div>
									</div>
								</div>
								<div id="markitup_msg"></div>
								<input type="hidden" id="send_thread_id" name="send_thread_id"
									value="talk_id"> <input id="msg_submit"
									type="submit" value="Send"> <input name="csrf_token"
									type="hidden" value="토큰값">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<%@include file="../hf/footer.jsp"%>