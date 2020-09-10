<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<link href="/resources/css/studio.css" rel="stylesheet" />
<!-- 
<hr /> -->

<div class="container-fulid">
	<div class="row">
		<div class="col-sm-12">
			<div role="tabpanel">
				<div class="row">
					<div class="col-sm-2" id="nav-left">
						<ul class="nav nav-pills nav-stacked" role="tablist">
							<li role="presentation" class="active text-center"><a
								href="#all" aria-controls="all" role="tab" data-toggle="tab">전체
									작업 현황</a></li>
							<li role="presentation" class="text-center"><a href="#work"
								aria-controls="work" role="tab" data-toggle="tab">작업실</a></li>
						</ul>
					</div>
					<div class="col-sm-8">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="all">
								<div class="list-group" id="right-all">
									<a href="#" class="list-group-item text-center">
										<h5>
											전체 <span class="badge">${fn:length(wplist) }</span>
										</h5>
									</a> <a href="#" class="list-group-item text-center">
										<h5>
											완료 <span class="badge">1</span>
										</h5>
									</a> <a href="#" class="list-group-item text-center">
										<h5>
											투고 <span class="badge">1</span>
										</h5>
									</a> <a href="#" class="list-group-item text-center">
										<h5>
											취소 <span class="badge">0</span>
										</h5>
									</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="work">
								<div class="list-group" id="right-work">
									<h4>
										진행중인 작업실
										<button data-toggle="modal" data-target="#studioModal"
											type="button" class="btn btn-warning">작업실 생성</button>
									</h4>
									<!-- 작업실섬넬 -->
									<!-- 여기부터 작업실 리스트 -->
									<div class="workplace">
										<c:forEach items="${wplist }" var="wp">
											<c:choose>
												<c:when test="${wp.workplace_status =='2'.charAt(0) }">
													<div>
														<a
															href="/author/workroom?workplace_id=${wp.workplace_id }">
															<img src="/fairy/workplace/${wp.workplace_id }/${wp.workplace_thumbnail}"
															onerror="this.src='/resources/img/workshop.png'; this.classList.remove('img-circle');"
															alt="" class="img-circle" />
															<p>${wp.workplace_name }</p>
														</a>
														<div class="thu">
														<c:forEach items="${wp.members }" var="m">
															<img src="/fairy/profile/${m.mem_id }/profile" 
															onerror="this.src='/resources/img/empty_profile.png'"
															alt="..." class="img-circle" >
														</c:forEach>
															 
															<!-- <img src="https://via.placeholder.com/150" alt="..." class="img-circle"> -->
														</div>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
									</div>
									<!-- 여기까지 작업실 리스트 -->
									<h4 class="end">완료된 작업실</h4>
									<div>
										<c:forEach items="${wplist }" var="wp">
											<c:choose>
												<c:when test="${wp.workplace_status =='1'.charAt(0) }">
													<div>
														<a
															href="/author/workroom?workplace_id=${wp.workplace_id }">
															<p>
																><br />${wp.workplace_name }</p>
														</a>
														<div class="thu">
															<img src="https://via.placeholder.com/150" alt="..."
																class="img-circle"> <img
																src="https://via.placeholder.com/150" alt="..."
																class="img-circle">
														</div>
													</div>
												</c:when>
											</c:choose>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--toppanel-->
	</div>
</div>


<div class="modal fade" id="studioModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title text-center" id="myModalLabel">새 작업실 만들기</h3>
			</div>
			<form class="form-horizontal" id="cwpForm" name="cwpForm"
				enctype="multipart/form-data" action="/author/createwp"
				method="post">
				<div class="modal-body">
					<!--  <form class="form-horizontal"> -->
					<div class="form-group">
						<label for="inputname" class="col-sm-3 control-label">작업실
							이름</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="workplace_name"
								name="workplace_name" placeholder="작업실 이름을 기입해 주세요">
						</div>
					</div>
					<div class="form-group">
						<label for="inputtext" class="col-sm-3 control-label">작업실
							설명</label>
						<div class="col-sm-8">
							<textarea class="form-control" id="workplace_detail"
								name="workplace_detail" placeholder="작업실에 대한 간략한 설명을 적어주세요"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="upload_thumbnail" class="col-sm-3 control-label">작업실
							썸네일</label> <input type="file" id="upload_thumbnail"
							name="upload_thumbnail" placeholder="파일 선택" />
					</div>
					<input type="hidden" name="mem_id"
						value="${sessionScope.user.mem_id}" />

				</div>
				<div class="modal-footer">
					<a href="javascript:cwpForm.submit();" id="cwpBtn"><h3
							class="text-center">
							<span class="glyphicon glyphicon-plus"></span>새 작업실 생성
						</h3></a>
				</div>
			</form>
		</div>
	</div>
</div>

<%@include file="../hf/footer.jsp"%>