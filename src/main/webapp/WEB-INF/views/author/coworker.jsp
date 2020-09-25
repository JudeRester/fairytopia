<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/stheader.jsp"%>
<link href="/resources/css/coworker.css" rel="stylesheet" />

<hr />
<div class="container-fulid">
	<div role="tabpanel">
		<div class="row">
			<div class="col-xs-2" id="nav-left">
				<ul class="nav nav-pills nav-stacked" role="tablist">
					<li role="presentation" class="text-center"><a
						href="/coworker/list?board_type=0">작가 구해요</a></li>
					<li role="presentation" class="text-center"><a
						href="/coworker/list?board_type=1">작품 구해요</a></li>
				</ul>
			</div>
			<div class="col-xs-8">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="all">
						<div class="list-group" id="right-all">
							<div class="row wr">
								<div class="col-xs-offset-10 col-xs-2">
									<a class="btn btn-default" href="/coworker/write" role="button">글쓰기</a>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover" id="dataTable" width="100%"
										cellspacing="0">
										<thead>
											<th class="title">제목</th>
											<th>작성자</th>
											<th>조회수</th>
											<th>작성일</th>
										</thead>

										<tbody>
											<c:forEach items="${list }" var="board">
												<tr>
													<td class="title"><a
														href="/coworker/get?bno=<c:out value='${board.seq}'/>"><c:out
																value="${board.title }" /></a></td>
													<td class="name">
														<li class="dropdown"><a href="#"
															class="dropdown-toggle" data-toggle="dropdown"
															role="button" aria-expanded="false"> <c:out
																	value="${board.mem_nickname}" />
																<ul class="dropdown-menu" role="menu">
																	<li><a href="#" onclick="noteTo('${board.mem_nickname }','${board.mem_id}')">메시지</a></li>
																	<li class="divider"></li>
																	<li><a href="#">게시글 검색</a></li>
																</ul></li>
													</td>
													<td><c:out value="${board.hits }" /></td>
													<td><fmt:formatDate pattern="yyyy-MM-dd"
															value="${board.wdate }" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>

							<div class="col-xs-offset-8 col-xs-4">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="게시글 검색">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
								<!-- /input-group -->
							</div>

							<div class="col-xs-offset-5 col-xs-6 pag">
								<nav>
									<ul class="pagination">
										<c:if test="${pdto.prev }">
											<li><a href="#" aria-label="Previous"> <span
													aria-hidden="true">&laquo;</span>
											</a></li>
										</c:if>

										<c:forEach var="pnum" begin="${pdto.startPage }"
											end="${pdto.endPage }" step="1">
											<li><a class="${pdto.crt.pageNum==pnum?'active':'' }"
												href="/coworker/list?board_type=${empty pdto.crt.board_type?'0':pdto.crt.board_type }&pageNum=${pnum}">${pnum}</a></li>
										</c:forEach>
										<c:if test="${pdto.next }">
											<li><a href="#" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span>
											</a></li>
										</c:if>

									</ul>
								</nav>
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
<script>
	function noteTo(tn,t){
			console.log(tn+','+t);
			var popup = window.open('/note?toNick='+tn+'&to='+t+'&from=${sessionScope.user.mem_id}','메세지보내기',"width=445px,height=420px",true);
		}
</script>

<%@include file="../hf/footer.jsp"%>