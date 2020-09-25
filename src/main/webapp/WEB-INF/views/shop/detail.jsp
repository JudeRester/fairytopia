<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/header.jsp"%>

<link href="/resources/css/detail.css" rel="stylesheet" />

    <div class="container" id="fairytale">
        <div class="row">
            <div class="col-xs-3">
                <img src="https://via.placeholder.com/250" alt="" />
            </div>
            <div class="col-xs-5">
                <h4><b>동화 제목</b></h4>
                <h4><b>가격</b></h4>
                <p class="text-muted">작가이름 / 투고날짜</p>
                <br />
                <h4><b>책소개</b></h4>
            </div>
            <div class="col-xs-4">

                <div class="row">
                    <div class="col-xs-1">

                        <button class="btn btn-warning" type="button">
                            		구매
                        </button>
                        <button class="btn btn-default" type="button">
                        		         찜하기
                        </button>
                    </div>
                </div>
                <p class="star_rating">
                    <a href="#" class="on">★</a>
                    <a href="#" class="on">★</a>
                    <a href="#" class="on">★</a>
                    <a href="#">★</a>
                    <a href="#">★</a>
                </p>
            </div>
        </div>
    </div>

    <div class="container tab">
        <div class="row">
            <div class="col-xs-11">
                <div role="tabpanel">

                    <!-- Nav tabs -->
                    <ul class="nav nav-justified" role="tablist">
                        <li role="presentation" class="active"><a href="#Preview" aria-controls="Preview" role="tab" data-toggle="tab">미리보기</a></li>
                        <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">리뷰</a></li>
                        <li role="presentation"><a href="#ot" aria-controls="ot" role="tab" data-toggle="tab">작가의 다른 책</a></li>
                        <li role="presentation"><a href="#re" aria-controls="rv" role="tab" data-toggle="tab">관련된 책</a></li>
                    </ul>

                    <!--미리보기 -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="Preview">
                            <div class="row">
                           		     뷰
                            </div>
                        </div>

                        <!--리뷰-->
                        <div role="tabpanel" class="tab-pane fade" id="review">
                            <div class="row">
                                <div class="col-xs-2">
                                    <img src="https://via.placeholder.com/100" alt="..." class="img-circle">
                                </div>
                                <div class="col-xs-10">
                                    <a href="#">
                                        <h4>리뷰 제목</h4>
                                    </a>
                                        <p>리뷰 내용</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2">
                                    <img src="https://via.placeholder.com/100" alt="..." class="img-circle">
                                </div>
                                <div class="col-xs-10">
                                    <a href="#">
                                        <h4>리뷰 제목</h4>
                                    </a>
                                    <p>리뷰 내용</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2">
                                    <img src="https://via.placeholder.com/100" alt="..." class="img-circle">
                                </div>
                                <div class="col-xs-10">
                                    <a href="#">
                                        <h4>리뷰 제목</h4>
                                    </a>
                                    <p>리뷰 내용</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-offset-5 col-xs-5">
                                    <nav>
                                        <ul class="pagination">
                                            <li>
                                                <a href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li>
                                                <a href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="ot">
                            <div class="col-xs-3">
                                <a href="#">
                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>책 제목</h4>
                                </a>
                            </div>

                            <div class="col-xs-3">
                                <a href="#">
                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>책 제목</h4>
                                </a>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="re">
                            <div class="col-xs-3">
                                <a href="#">
                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>책 제목</h4>
                                 </a>
                            </div>

                            <div class="col-xs-3">
                                <a href="#">
                                    <img src="https://via.placeholder.com/150" alt="...">
                                    <h4>책 제목</h4>
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(".star_rating a").click(function () {
            $(this).parent().children("a").removeClass("on");
            $(this).addClass("on").prevAll("a").addClass("on");
            return false;
        });
    </script>
<%@include file="../hf/footer.jsp"%> 