<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 상세</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class.css">
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
<!-- 헤더 -->
<div >
<!-- <header> -->
<%--     <jsp:include page="../inc/header.jsp" /> --%>
<!-- </header> -->
</div>
<div class="container-xl container">
    <div class="row col-md-12">
		<!-- 캐러셀 시작 -->
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

    <div class="row">
    	<div class="col-md-9">
<!-- 	        <nav class="navbar navbar-expand-md navbar-dark sticky-sm-top nav1 custom-navbar"> -->
<!-- 	            <div class="container-fluid"> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section1">프로그램 상세</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section2">후기</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section3">커리큘럼</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section4">Q&A</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section5">환불안내</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 	            </div> -->
<!-- 	        </nav> -->
			<nav class="sticky-nav">
				<div class="row">
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section1">프로그램 상세</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section2">후기</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section3">커리큘럼</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section4">Q&A</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section5">환불안내</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section6">1:1 채팅하기</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
	        <!-- nav bar -->
	        <!-- navbar content -->
	        <div class="content">
	            <div id="section1">
	                <p>프로그램 상세</p>
	                <!-- 프로그램 상세 내용 -->
	                111111111111111111111111111111111111111111111111111111111111111111111111111111
					111111111111111111111111111111111111111111111111111111111111111111111111111111
	            </div>
	            <div id="section2">
	                <p>후기</p>
	                <!-- 후기 내용 -->
	                후기
					2222222222222222222222222222222222222222222222222222222222222222222222222222
					2222222222222222222222222222222222222222222222222222222222222222222222222222
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
	                Q&A
					!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	            </div>
	            <div id="section5">
	                <p>환불안내</p>
	                <!-- 환불안내 내용 -->
	                환불안내
					%%%%%%%%%%%%%%55555555555555555555555555555555555555555555555555555555555555
					55555555555555555555555555555555555555555555555555555555555555555555555555555555
	                
	            </div>
	            <div id="section6">
	                <p>1:1 채팅하기</p>
	                <!-- 채팅하기 내용 -->
	                채팅하기
					%%%%%%%%%%%%%%55555555555555555555555555555555555555555555555555555555555555
					55555555555555555555555555555555555555555555555555555555555555555555555555555555
	            </div>
	        </div>
	        <!-- navbar content -->
	    </div> <!-- col-md-9 -->
	    <div class="col-md-3">
	    	<div class="box1">
	    		<h6>RYU Russell 러셀</h6>
	    		<h3>섭스턴스 페인터, 클릭 한 번으로 고퀄리티 3D 완성!</h3>
	    	</div>
	    </div> <!-- 오른쪽 강의 소개  -->
    </div><!-- row box2-->
</div><!-- container -->

<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>
