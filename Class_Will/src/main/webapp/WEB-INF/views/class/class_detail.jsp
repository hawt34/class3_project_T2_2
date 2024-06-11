<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class.css">
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body>
<header>
	<jsp:include page="/WEB-INF/views/inc/header.jsp" />
</header>
<div class="container">
	<div class="row box1">
<!-- 		<div class="col-md-2"> -->
		
<!-- 		</div> col-md-2 사이드바 -->
		<div class="col-md-12">
		
			<!-- 캐러셀 시작 -->
			<div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				</div>
				<!-- 캐러셀 하단 페이지 바 -->
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active rounded">
						<img src="${pageContext.request.contextPath}/resources/img/fruite-item-1.jpg" class="img-fluid bg-secondary rounded" alt="First slide">
					</div>
					<div class="carousel-item rounded">
						<img src="${pageContext.request.contextPath}/resources/img/fruite-item-2.jpg" class="img-fluid rounded" alt="Second slide">
					</div>
				</div>
				<!-- 캐러셀 이미지 --> 
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
			
		</div> <!-- col-md-12 -->
	</div> <!-- row -->
</div> <!-- container -->
</body>
</html>