<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 상세</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class_detail.css">
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header>
    <jsp:include page="../inc/top.jsp" />
</header>
<div class="container1">
	<!-- 캐러셀 시작 -->
    <div class="row col-md-12">
		<div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
		    <div class="carousel-indicators">
		        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    </div>
		    <div class="carousel-inner" role="listbox">
		        <div class="carousel-item active rounded">
		            <img src="${pageContext.request.contextPath}/resources/img/fruite-item-1.jpg" class="img-fluid bg-secondary rounded" alt="First slide">
		        </div>
		        <div class="carousel-item rounded">
		            <img src="${pageContext.request.contextPath}/resources/img/fruite-item-2.jpg" class="img-fluid rounded" alt="Second slide">
		        </div>
		    </div>
		    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
		        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		    </button>
		    <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
		        <span class="carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		    </button>
		</div>
		<!-- 캐러셀 끝 -->
    </div> <!-- row -->

<!--     <div class="row"> -->
<!--     	<div class="col-md-9"> -->
    		<!-- navbar -->
			<nav class="sticky-nav sticky-nav1 col-md-9">
				<div class="row">
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section1">프로그램 상세</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section2">후기</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section3">커리큘럼</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section4">Q&A</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section5">환불안내</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container nav-container1">
							<li class="nav-item nav-item1">
								<a class="navbar-item navbar-item1" href="#section6">1:1 채팅하기</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
    		<!-- navbar -->
<!--   		</div> -->

	<div class="row">
	        <!-- navbar content -->
	        <div class="content1 col-md-9">
	            <div id="section1">
	                <p>프로그램 상세</p>
	                <!-- 프로그램 상세 내용 -->
	                111111111111111111111111111111111111111111111111111111111111111111111111111111
	                					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					111111111111111111111111111111111111111111111111111111111111111111111111111111
	            </div>
	            <div id="section2">
	                <p>후기</p>
	                <div class="classreview1">
						<div class="classreview2 col-md-9">
                    <div class="row reviewInfo">
			            <div class="col-md-1 userPic">
			                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
			            </div>
			            <div class="col-md-3 userInfoContainer">
			                <div class="userInfoHeader">
			                    <div class="col-md-5 userNickname">
			                        <p>유저닉*임</p>
			                    </div>
			                    <div class="col-md-7 reviewDate">
			                        <p>2024 / 06 / 15</p>
			                    </div> 
			                </div>
			                <div class="reviewStar">
			                    <ul class="list-inline small">
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
			                    </ul>
			                </div> <!-- reviewStar -->
			            </div>
			            <div class="reviewPic">
			                <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg">
			            </div> <!-- reviewPic -->
			        </div>
			        
			        <div class="userReview">
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			        </div> <!-- userReview -->
					<div class="line col-md-12">
						<hr>
					</div>
			    </div>
			    <div class="col-md-9 container2">
			        <div class="row reviewInfo">
			            <div class="col-md-1 userPic">
			                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
			            </div>
			            <div class="col-md-3 userInfoContainer">
			                <div class="userInfoHeader">
			                    <div class="col-md-5 userNickname">
			                        <p>유저닉*임</p>
			                    </div>
			                    <div class="col-md-7 reviewDate">
			                        <p>2024 / 06 / 15</p>
			                    </div> 
			                </div>
			                <div class="reviewStar">
			                    <ul class="list-inline small">
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
			                    </ul>
			                </div> <!-- reviewStar -->
			            </div>
			            <div class="reviewPic">
			                <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg">
			            </div> <!-- reviewPic -->
			        </div>
			        
			        <div class="userReview">
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			        </div> <!-- userReview -->
					<div class="line col-md-12">
						<hr>
					</div>
			    </div>
			    <div class="col-md-9 container2">
			        <div class="row reviewInfo">
			            <div class="col-md-1 userPic">
			                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
			            </div>
			            <div class="col-md-3 userInfoContainer">
			                <div class="userInfoHeader">
			                    <div class="col-md-5 userNickname">
			                        <p>유저닉*임</p>
			                    </div>
			                    <div class="col-md-7 reviewDate">
			                        <p>2024 / 06 / 15</p>
			                    </div> 
			                </div>
			                <div class="reviewStar">
			                    <ul class="list-inline small">
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
			                    </ul>
			                </div> <!-- reviewStar -->
			            </div>
			            <div class="reviewPic">
			                <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg">
			            </div> <!-- reviewPic -->
			        </div>
			        
			        <div class="userReview">
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			        </div> <!-- userReview -->
					<div class="line col-md-12">
						<hr>
					</div>
			    </div>
			    <div class="col-md-9 container2">
			        <div class="row reviewInfo">
			            <div class="col-md-1 userPic">
			                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
			            </div>
			            <div class="col-md-3 userInfoContainer">
			                <div class="userInfoHeader">
			                    <div class="col-md-5 userNickname">
			                        <p>유저닉*임</p>
			                    </div>
			                    <div class="col-md-7 reviewDate">
			                        <p>2024 / 06 / 15</p>
			                    </div> 
			                </div>
			                <div class="reviewStar">
			                    <ul class="list-inline small">
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
			                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
			                    </ul>
			                </div> <!-- reviewStar -->
			            </div>
			            <div class="reviewPic">
			                <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg">
			            </div> <!-- reviewPic -->
			        </div>
			        
			        <div class="userReview">
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			            <p>리뷰가 어쩌고 너무좋아용~~!~!~!~!~!~!~!~!~!~!~~</p>
			        </div> <!-- userReview -->
					<div class="line col-md-12">
						<hr>
					</div>
	                
	            </div>
	            <div id="section3">
	                <p>커리큘럼</p>
	                <!-- 커리큘럼 내용 -->
	                커리큘럼
					3333333333333333333333333333333333333333333333333333333333333333333333333333333
					3333333333333333333333333333333333333333333333333333333333333333333333333333333
	            </div>
	            <div id="section4">
	                <p>Q&A</p>
	                <!-- Q&A 내용 -->
	                <div class="classqa1">
						<div class="classqa2 col-md-9">
							<div class="accordion" id="accordionExample">
							  <div class="accordion-item">
							    <h2 class="accordion-header" id="headingOne">
							      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							        Q. 수업 일정에 관한 질문 
							      </button>
							    </h2>
							    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							      <div class="accordion-body">
							      	<p>&nbsp;</p> A. 일정은 어쩌구 저쩌구
							      </div>
							    </div>
							  </div>
							  <div class="accordion-item">
							    <h2 class="accordion-header" id="headingTwo">
							      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							        Q. 수업 비용에 관한 질문이요  
							      </button>
							    </h2>
							    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
							      <div class="accordion-body">
							      	<p>&nbsp;</p> A. 비용은 어쩌고 저쩌고
							      </div>
							    </div>
							  </div>
							  <div class="accordion-item">
							    <h2 class="accordion-header" id="headingThree">
							      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							      	작성자만 확인 가능한 비밀 질문글입니다.
							      </button>
							    </h2>
							    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
							      <div class="accordion-body">
							      	<p>&nbsp;</p> A.쿵야쿵야
							      </div>
							    </div>
							  </div>
							</div>
						</div> <!-- classqa2 -->
					</div> <!-- classqa1 -->
	            </div>
	            <div id="section5">
	                <p>환불안내</p>
	                <!-- 환불안내 내용 -->
	                환불안내
					55555555555555555555555555555555555555555555555555555555555555555555555555555555
	                
	            </div>
	            <div id="section6">
	                <p>1:1 채팅하기</p>
	                <!-- 채팅하기 내용 -->
	                채팅하기
	                6666666666666666666666666666666666666666666666666666666666666666666666666666
	            </div>
	        </div>
	        <!-- navbar content -->
	    </div> <!-- col-md-9 -->
	    	</div><!-- content -->
	    	
	    				    <!-- 우측 강의 소개 -->
			    <div class="col-md-3">
			    	<div class="box1">
			    		<h6>RYU Russell 러셀</h6>
			    		<h3>섭스턴스 페인터, 클릭 한 번으로 고퀄리티 3D 완성!</h3>
			    		<div class="row"> <!-- 해시태그 시작 -->
				    		<div class="col-md-4">
				    			<b><a href="#">#원데이</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#클래스</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#관련</a></b>
				    		</div>
				    	</div>
			    		<div class="row">
				    		<div class="col-md-4">
				    			<b><a href="#">#키워드</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#크리에이터가</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#지정가능</a></b>
				    		</div>
				    	</div>
			    		<div class="row">
				    		<div class="col-md-4">
				    			<b><a href="#">#키워드</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#크리에이터가</a></b>
				    		</div>
				    		<div class="col-md-4">
				    			<b><a href="#">#지정가능</a></b>
				    		</div>
				    	</div> <!-- 해시태그 끝 -->
		    	
				    	<div class="box3"> <!-- 좋아요, 공유버튼 -->
					    	<div class="row">
						    	<div class="col-md-4 btn mx-auto btn1">
							    	<button type="button" class="btn btn-light w-100 btn1">
							    		<img src="${pageContext.request.contextPath}/resources/images/class/heart1.png" style="width : 25px; height : 25px">5214
							    	</button>
							    </div>
						    	<div class="col-md-4 btn mx-auto btn1">
							    	<button type="button" class="btn btn-light w-100 btn1">
							    		<img src="${pageContext.request.contextPath}/resources/images/class/share1.png" style="width : 25px; height : 25px">공유하기
							    	</button>
								</div>
						    	<div class="col-md-4 btn mx-auto btn1">
							    	<button type="button" class="btn btn-light w-100 btn1">Light</button>
						    	</div>
					    	</div>
					    </div> <!-- 좋아요, 공유버튼 -->
					    <div class="col-md-12">
				    		<button type="button" class="btn btn-light w-100  btn1">신청하기</button>
				    	</div>
			    	</div>
				</div> 
	    		<!-- 오른쪽 강의 소개  -->
   		</div>
	</div>
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>
