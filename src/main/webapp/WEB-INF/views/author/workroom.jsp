<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../hf/header.jsp"%>

<link href="/resources/css/workroom.css" rel="stylesheet" />


    <div class="container">
        <div class="row">
            <ul class="navtop list-inline list-unstyled">
                <li class="col-sm-2">

                	<a href="studio.html">
                		<h4><span class="glyphicon glyphicon-chevron-left"></span>작업실</h4>
                	</a>
                </li>
                <li class="col-sm-2"><h4>일정: </h4></li>
                <li class="col-sm-2"><h4>완료 페이지: </h4></li>
            </ul>
        </div>
    </div>

    <hr />

    <div class="container-fuild">
        <div class="row">
            <div class="col-xs-offset-1 col-xs-10 content">
                <div role="tabpanel">

                    <!-- Nav tabs -->
                    <ul class="nav nav-justified" role="tablist">
                        <li role="presentation" class="active"><a href="#writer" aria-controls="writer" role="tab" data-toggle="tab">작가</a></li>
                        <li role="presentation"><a href="#calendar" aria-controls="calendar" role="tab" data-toggle="tab">일정</a></li>
                        <li role="presentation"><a href="#file" aria-controls="file" role="tab" data-toggle="tab">파일</a></li>
                        <li role="presentation"><a href="#edit" aria-controls="edit" role="tab" data-toggle="tab">편집</a></li>
                    </ul>

                    <!-- 작가 -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="writer">
                            <div class="row" id="writer-img">
                                <div class="col-xs-offset-1 col-xs-3">

                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>A</h4>
                                    <p>시나리오 작가</p>
                                </div>
                                <div class="col-xs-3">
                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>B</h4>
                                    <p>일러스트 작가</p>

                                </div>
                                <div class="col-xs-3 box">
                                    <a href="" class="btn btn-link" role="button" data-toggle="modal" data-target="#myModal2">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!--일정-->
                        <div role="tabpanel" class="tab-pane fade" id="calendar">
                            <div class="row">
                                <div class="col-xs-4 cal">
                                    <div id="datetimepicker1"></div>
                                    <!--

                                        <div class="form-group">
                                            <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                                                <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" />
                                            </div>
                                        </div>
                                    -->
							</div>
							<div class="col-xs-offset-1 col-xs-6 info">
								<h4 class="text-center">
									일정 <a href="" class="btn btn-link" role="button"
										data-toggle="modal" data-target="#myModal"> <span
										class="glyphicon glyphicon-plus"></span>
									</a>
								</h4>
								<hr />

								<div class="row con">
									<div class="col-xs-6 text-center">
										<p>
											<b>date</b>
										</p>
									</div>
									<div class="col-lg-6 text-center">
										<p>메모</p>
									</div>
								</div>
								<hr />

							</div>
						</div>
					</div>

					<!-- 파일 -->
					<div role="tabpanel" class="tab-pane fade" id="file">
						<div class="row file">
							<div class="col-xs-offset-3 col-xs-6">
								<!-- 페이지 추가 -->
								<div class="page">
									<a href="#" class="btn btn-default" role="button" id="addPage">
										<input type='hidden' value='-1'/>
										<b>페이지 추가</b>
									</a>
								</div>
								<div id="page-list">
									페이지가 없습니다
								</div>
								<!--panel-group-->
								</div>

							</div>
							<!--col-->
						</div>
						<!--row-->
					</div>

					<!--편집-->

				</div>
				<!-- tab-content -->
			</div>
			<!-- tabpane -->
		</div>
		<!-- col -->
	</div>
	<!-- row -->
</div>
<!-- container-fuild -->

<!-- 모달 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title text-center" id="myModalLabel">
					<b>일정</b>
				</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" /> <span
							class="input-group-addon"> <span
							class="glyphicon glyphicon-calendar"></span>
						</span>
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='datetimepicker3'>
						<input type='text' class="form-control" /> <span
							class="input-group-addon"> <span
							class="glyphicon glyphicon-calendar"></span>
						</span>
					</div>
				</div>

				<strong>메모</strong> <input type="text" class="form-control">
			</div>
			<div class="modal-footer">
				<a href="">
					<h4 class="text-center">
						<b>저장</b>
					</h4>
				</a>
			</div>
		</div>
	</div>
</div>

	<!-- 모달 -->

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalLabel"><b>일정</b></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">

                        <div class='input-group date' id='datetimepicker2'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>


                            </span>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class='input-group date' id='datetimepicker3'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>



                            </span>
                        </div>

                    </div>
                    <div class="invite-list right">
                    </div> -->
			</div>
			<div class="modal-footer">
				<button class="btn" id="sendInvite" class="close"
					data-dismiss="modal" aria-label="Close">확인</button>
			</div>
		</div>
	</div>
</div>

<!-- progress Modal -->
<div class="modal fade" id="pleaseWaitDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>업로드 중 페이지를 벗어나시면 업로드가 취소됩니다.</h3>
            </div>
            <div class="modal-body">
                <!-- progress , bar, percent를 표시할 div 생성한다. -->
                <div class="progress">
                    <div class="bar"></div>
                    <div class="percent">0%</div>
                </div>
                <div id="status"></div>
            </div>
        </div>
    </div>
    
    <!--작가 모달-->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    header
                </div>
                <div class="modal-body">
                    body
                </div>
                <div class="modal-footer">
                    footer
                </div>
            </div>
        </div>
    </div>

 <script type="text/javascript">

            $(function () {
                $('#datetimepicker1').datetimepicker({
                    inline: true,
                    sideBySide: true,
                    format: 'L'


                });
            });

        $(function () {
            $('#datetimepicker2').datetimepicker({
                format: 'L'
            });
            $('#datetimepicker3').datetimepicker({
                useCurrent: false,
                format: 'L'
            });
            $("#datetimepicker2").on("dp.change", function (e) {
                $('#datetimepicker3').data("DateTimePicker").minDate(e.date);
            });
            $("#datetimepicker3").on("dp.change", function (e) {
                $('#datetimepicker2').data("DateTimePicker").maxDate(e.date);

            });
        });
    </script>

<%@include file="../hf/footer.jsp"%>