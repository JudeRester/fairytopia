<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../hf/header.jsp"%>
<style>
.img {
	width : 250px;
	height : 250px;
}
#img1 {
	width : 1000px;
	height : 500px;
}
.img2 {
	width : 100px;
	height : 100px;
}
.img3 {
	width : 150px;
	height : 150px;
}
</style>
<link href="/resources/css/detail.css" rel="stylesheet" />

    <div class="container" id="fairytale">
        <div class="row">
            <div class="col-xs-3">
                <img class="img" src="/resources/img/1.jpg" alt="" />
            </div>
            <div class="col-xs-5">
                <h4><b>금도끼 은도끼</b></h4>
                <h4><b>1500 원</b></h4>
                <p class="text-muted">엄혜숙</p>
                <br />
                <h4><b>도끼를 호수 빠뜨린 나무꾼과 산신령의 이야기</b></h4>
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
                	<img id="img1" src="/resources/img/3.jpg" alt="">
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
		             <img class="img2" "img2" src="/resources/img/4.png" alt="..." class="img-circle">
		        </div>
		        <div class="text col-xs-10">
		             <a href="#">
		             	<h4>아이가 좋아하네요 *^^*</h4>
		             </a>
		             <p>아이가 사달래서 샀는데 여러 번 읽어달라 하고 참 좋아하네요~</p>
		        </div>
        	</div>
        	
        	<div class="row">
        		<div class="col-xs-2">
		             <img class="img2" src="/resources/img/5.png" alt="..." class="img-circle">
		        </div>
		        <div class="text col-xs-10">
		             <a href="#">
		             	<h4>역시 엄혜숙 작가님</h4>
		             </a>
		             <p>샵에 엄작가님 보여서 구매했더니 역시 믿고보게 되네요</p>
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
		           <img class="img3" src="/resources/img/6.jpg" alt="...">
		           <h4>숲 속 피아노</h4>
	           </a>
	        </div>
	
	        <div class="col-xs-3">
	           <a href="#">
	               <img class="img3" src="/resources/img/7.jpg" alt="...">
	               <h4>하품하는 악어</h4>
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
		           <img class="img3" src="/resources/img/2.jpg" alt="...">
		           <h4>토끼의 간</h4>
	           </a>
	        </div>
	
	        <div class="col-xs-3">
	           <a href="#">
	               <img class="img3" src="/resources/img/10.jpg" alt="...">
	               <h4>견우와 직녀</h4>
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