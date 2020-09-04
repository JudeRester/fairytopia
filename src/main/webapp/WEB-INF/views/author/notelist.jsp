<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>
<link href="/resources/css/notelist.css" rel="stylesheet" />

<hr />
<div id="gradBgBox">
	<div id="mainContainer">
		<div id="mainContWBar">
			<div class="privateMessages">
				<div id="introduce" style="position: absolute; left: 250px;"></div>
				<div id="threads_main" class="">
					<!--미리보기 구간-->
					<div id="threads_left">
						<c:forEach items="${talkroom }" var="t">
							<div data-lobc="0" id="${t.talk_id }" class="pm_thread" title="Click to open conversation">
							<div class="th_wrap">
								<div class="th_user_thumb">
									<a href="#"> <img src="/fairy/profile/${t.mem_a eq sessionScope.user.mem_id ? t.mem_b: t.mem_a }/profile" onerror="this.src='/resources/img/empty_profile.png'" width="50" height="50" class="thumb">
									</a>
								</div>
								<div class="th_user_info">
									<div class="tui_username">
										<!-- <i class="fa fa-check-circle offline-now tui_check"></i> -->
										<div class="tui_el">
											${t.mem_a eq sessionScope.user.mem_id ? t.mem_b: t.mem_a }
										</div>
									</div>
								</div>
								<a href="/note/notelist?talk_id=${t.talk_id }" class="th_snippet" onclick="return false;"> 
								<!-- <img src="가장 최근 대화자 프로필 사진 위치"	height="30" width="30" class="thumb snippet_thumb"> -->
									${t.snippet }
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
						</c:forEach>
						
					</div>
					<!-- 대화 내용 출력-->
					<div id="threads_right" style="">
						<!-- <div class="pm_date_div" data-date="날짜">
							<hr>
							<div class="pm_date">날짜 </div>
						</div>
						<div class="pm_msg">
							<div class="msg_user_thumb">
								<a href="발화자 아이디"	class="thumb_link"> 
								<img src="발화자 프로필 사진" class="thumb">
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
						</div> -->
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
<script>
$(document).on("click", ".pm_thread", function(e) {
    if ($(e.target).hasClass("fa")) return false;
    if ($(e.target).hasClass("thumb")) return true;
    var id = $(this).attr("id")/* .replace("thread_", "") */; 
    /* if (!htm5_history_supported) {
      window.location.href = window.location.protocol + "//" + window.location.hostname + window.location.pathname + "?talk_id=" + id;
      return false
    } */
    var stateObj = {
      thread_id: id
    };
    history.pushState(stateObj, null, "/note/notelist?talk_id=" + id);
    view_thread(id, true)
  });

view_thread = function(talk_id, reload_messages) {
	  var msg = $("#message"),
	    tl = $("#threads_left"),
	    thread = $("#" + talk_id),
	    tm = $("#threads_main");
	    /* use_browser_cached_draft = typeof last_draft[thread_id] != "undefined"; */
	  if (reload_messages) {
	    $("#threads_main").removeClass("send");
	    msg.val("");
	    $("#send_thread_id").val(talk_id);
	    $("#markitup_msg").empty()
	  }
	  /* window.setTimeout(function() {
	    remove_new_mark()
	  }, 3e3); */
	  /* if (reload_messages && use_browser_cached_draft) {
	    msg.val(last_draft[thread_id]);
	    $("#threads_main").addClass("send")
	  } */
	  tm.addClass("full");
	  tl.find(".pm_thread").removeClass("active");
	  thread.addClass("active");
	  /* if ($(window).height() > 590) {
	    $.scrollTo($("#page"))
	  } */
	  /* scroll_thread_to_middle(thread); */
	  /* update_change_view_link(talk_id); */
	  if (!reload_messages) return false;
	  thread.find(".pm_new_circle").remove();
	  thread.removeClass("new");
	  var ctw = $("#close_thread_wrap");
	  ctw.removeClass("visible");
	  ctw.show();
	  var c = $("#threads_right");
	  var err_div = $('<div style="color:red"></div>'),
	    err_txt = "Error during processing, please reload page and try again.";
	  /* pm_ajax_request_active = 1; */
	   $.ajax({
	    type: "POST",
	    url: "/note/get",
	    data: {
	      thread: talk_id,
	      /* load_draft: use_browser_cached_draft ? 0 : 1 */
	    },
	    dataType: "json"
	  }).done(function(data, textStatus, jqXHR) {
	    c.empty();
	    if (data.body) {
	      c.append(data.body);
	      if (typeof data.lobc != "undefined") {
	        thread.data("lobc", data.lobc)
	      }
	      if (data.draft.length > 0) {
	        msg.val(data.draft);
	        $("#threads_main").addClass("send")
	      }
	     /*  window.setTimeout(function() {
	        c.scrollTo(c.get(0).scrollHeight)
	      }, 200) */
	    } else {
	      if (data.error) {
	        c.append(err_div.html(data.error))
	      } else {
	        c.append(err_div.html(err_txt))
	      }
	    }
	    focus_msg_box()
	  }).fail(function(data, textStatus, jqXHR) {
	    c.empty();
	    c.append(err_div.html(err_txt))
	  })/* .always(function() {
	    pm_ajax_request_active = 0
	  }) */;
	  return false
	};

	
</script>

<%@include file="../hf/footer.jsp"%>