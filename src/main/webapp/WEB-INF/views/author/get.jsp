<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>

<link href="/resources/css/coworker.css" rel="stylesheet" />

<hr/>
<div class="container-fulid">
	<div class="row">
		<div class="col-xs-12">
			<div role="tabpanel">
				<div class="row">
					<div class="col-xs-2" id="nav-left">
						<ul class="nav nav-pills nav-stacked" role="tablist">
							<li role="presentation" class="text-center"><a
								href="/coworker/list?board_type=0">작가
									구해요</a></li>
							<li role="presentation" class="text-center"><a href="/coworker/list?board_type=1">작품 구해요</a></li>
						</ul>
					</div>
					<div class="col-xs-9">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="all">
								<div class="list-group" id="right-all">
									<div class="card-body">
										<div class="table-responsive">
											<c:set var="co" value="${coworker }"/>
											<h2 class="text-center">${co.title }</h2>
											<div class="name">
                                                    <div class="row">
                                                        <div class="col-xs-9">
                                                            <li class="dropdown">
                                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" />

                                                                <div class="nick">
                                                                    <img src="https://via.placeholder.com/150" alt="..." class="img-circle">
                                                                    ${co.mem_nickname }
                                                                </div>
                                                                <ul class="dropdown-menu" role="menu">
                                                                    <li><a href="#">메시지</a></li>
                                                                    <li class="divider"></li>
                                                                    <li><a href="#">게시글 검색</a></li>
                                                                </ul>
                                                            </li>
                                                        </div>

                                                        <div class="col-xs-3">
                                                            <button class="btn btn-default" type="submit">수정</button>
                                                            <button class="btn btn-default" type="submit">삭제</button>
                                                        </div>
                                                    </div>
                                                </div>
											<hr />
											<div class="text">
												<p>${co.cont }</p>
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
				
			</div><!--toppanel-->
		</div> <!-- col -->
	</div> <!-- row -->
</div>

		<%@include file="../hf/footer.jsp"%>