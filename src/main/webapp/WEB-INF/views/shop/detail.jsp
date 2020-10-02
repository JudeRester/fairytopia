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
    
<div data-spy="scroll" data-target=".navbar-example" class="nav2">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	             <div class="navbar-example">
	                <ul class="nav navbar-nav">
	                    <li class="active"><a href="#preview">미리보기</a></li>
	                    <li><a href="#review">리뷰</a></li >
	                    <li><a href="#book1">작가의 다른 책</a></li>
	                    <li><a href="#book2">관련된 책</a></li>
	                </ul>
	             </div>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
    <div class="container">
        <div class="row" id="preview">
            <div class="col-xs-12">
                <h4>미리보기</h4>
                <div class="box">
                	
                </div>
            </div>
        </div>
        
        <hr />
        
        <div class="row" id="review">
        	<div class="col-xs-12">
        		<h4>리뷰</h4>
        	</div>

        	<div class="row">
        		<div class="col-xs-2">
		             <img src="https://via.placeholder.com/100" alt="..." class="img-circle">
		        </div>
		        <div class="text col-xs-10">
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
		        <div class="text col-xs-10">
		             <a href="#">
		             	<h4>리뷰 제목</h4>
		             </a>
		             <p>리뷰 내용</p>
		        </div>
        	</div>
        	
	        <div class="row">
	             <div class="col-xs-offset-4 col-xs-5">
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
        
        <hr />
        
        <div class="row" id="book1">
            <div class="col-xs-12">
        		<h4>작가의 다른 책</h4>
        	</div>
        	
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
        
        <hr />
        
        <div class="row" id="book2">
            <div class="col-xs-12">
        		<h4>관련된 책</h4>
        	</div>
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


    <script>
        $(".star_rating a").click(function () {
            $(this).parent().children("a").removeClass("on");
            $(this).addClass("on").prevAll("a").addClass("on");
            return false;
        });
    </script>
<%@include file="../hf/footer.jsp"%> 