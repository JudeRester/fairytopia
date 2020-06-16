<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./hf/header.jsp"%>



    <div class="container">
        <div class="row" id="search">
            <div class="col-lg-offset-3 col-lg-9">
                <form class="navbar-form" role="search">
                    <div class="input-group ">
                        <input type="text" class="form-control input-lg" placeholder="도서검색">
                        <span class="input-group-btn">
                            <button class="btn btn-default input-lg" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                    </div><!-- /input-group -->
                </form>
                <h4><strong>찾고 싶은 도서를 입력해보세요.</strong></h4>
            </div>
        </div>
    </div>

    <div class="container-fuild">
        <div class="row" id="bestbook">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4>
                            <strong>베스트셀러</strong>
                        </h4>
                    </div>
                    <div class="col-lg-offset-2 col-lg-8">
                        <div class="owl-carousel owl-theme" id="bookimg">
                            <div class="card">
                                <img src="img/bestbook_again.jpeg" class="card-img-top" />
                                <div class="card-body">
                                    <h5 class="card-title"><strong>우리는 언제나 다시만나</strong></h5>
                                </div>
                            </div>
                            <div class="card">
                                <img src="img/bestbook_children.jpg" class="card-img-top" />
                                <div class="card-body">
                                    <h5 class="card-title"><strong>칠판에 딱 붙은 아이들</strong></h5>
                                </div>
                            </div>
                            <div class="card">
                                <img src="img/bestbook_mangtae.jpg" class="card-img-top" />
                                <div class="card-body">
                                    <h5 class="card-title"><strong>망태 할아버지가 온다</strong></h5>
                                </div>
                            </div>
                            <div class="card">
                                <img src="img/bestbook_noadult.jpg" class="card-img-top" />
                                <div class="card-body">
                                    <h5 class="card-title"><strong>어른들은 절대로 안 그래?</strong></h5>
                                </div>
                            </div>
                            <div class="card">
                                <img src="img/bestbook_piano.jpg" class="card-img-top" />
                                <div class="card-body">
                                    <h5 class="card-title"><strong>숲속 피아노</strong></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" id="newbook">
        <div class="row">
            <div class="col-lg-12">
                <h4>
                    오늘의 신간
                </h4>
            </div>
            <div class="col-lg-offset-2 col-lg-8">
                <div class="owl-carousel owl-theme" id="bookimg">
                    <div class="card">
                        <img src="img/bestbook_again.jpeg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><strong>우리는 언제나 다시만나</strong></h5>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/bestbook_children.jpg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><strong>칠판에 딱 붙은 아이들</strong></h5>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/bestbook_mangtae.jpg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><strong>망태 할아버지가 온다</strong></h5>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/bestbook_noadult.jpg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><strong>어른들은 절대로 안 그래?</strong></h5>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/bestbook_piano.jpg" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title"><strong>숲속 피아노</strong></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $('.owl-carousel').owlCarousel({
            margin: 20,
            nav: true,
            loop: true,
            dots: false,
            responsive: {
                0: {
                    items: 2,
                },
                600: {
                    items: 4,
                }
            }
        })
    </script>
<%@include file="./hf/footer.jsp"%>