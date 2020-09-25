<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<link href="/resources/css/studio.css" rel="stylesheet" />


<div class="container-fulid">
	<div class="row">
		<div class="col-sm-12">
			<div role="tabpanel">
				<div class="row">
					<div class="col-sm-2" id="nav-left">
						<ul class="nav nav-pills nav-stacked" role="tablist">
							<li role="presentation" class="text-center"><a
								href="/coworker/list?board_type=0">작가
									구해요</a></li>
							<li role="presentation" class="text-center"><a href="/coworker/list?board_type=1">작품 구해요</a></li>
						</ul>
					</div>
					<div class="col-sm-8">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="all">
								<div class="list-group" id="right-all">
									<div class="card-body">
										<div class="table-responsive">
											<c:set var="co" value="${coworker }"/>
											<p>${co.title }</p>
											<hr />
											<p>${co.mem_nickname }</p>
											<div>
												${co.cont }
											</div>
										</div>
									</div>
									<!-- <div role="tabpanel" class="tab-pane" id="work">
										<div class="list-group" id="right-work">게시글 위치 2</div>
									</div> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--toppanel-->
			</div>
		</div>


		<%@include file="../hf/footer.jsp"%>