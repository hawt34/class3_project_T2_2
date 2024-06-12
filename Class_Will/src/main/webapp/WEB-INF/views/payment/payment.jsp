<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
<!-- 부트스트랩 - js,css -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css"> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script> --%>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> -->
<!-- 제이쿼리 -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/payment.css">

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<style>
.margin_use {
	margin-top: 200px;
}
#back_button {
	border: 0;
	background: none;
	background-image: url("${pageContext.request.contextPath}/resources/img/left_arrow.png");
	background-size: cover;
	width:20px;
	height: 20px;
}
.nav-item {
	color: white;
}
.accordion {
	width: 100%;
	margin-top: 15px;
}
</style>
</head>
<body>
<header>
	<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
</header>
	<div class="container margin_use">
		<div class="row">
			<div class="payment_title">
				<input type="button" id="back_button" onclick="history.back()">
				<h5>클래스 결제</h5>
			</div>
		</div>
		<div class="row">
			<div class="offset-md-1 col-md-5">
				<div class="card " >
					<h5 class="card-header">클래스 정보</h5>
					<div class="card-body">
						<div class="card payment_status_box">

							<div class="row ">
								<div class="col text-center">
									<img src="${scs.movie_poster}" id="class_poster" alt="썸네일" >
								</div>
							</div> <!-- row -->
						</div>
						<h5 class="card-title text-success">클래스 이름</h5>
						<p class="card-text">도자기 공방</p>
						<h5 class="card-title text-success">클래스 유형</h5>
						<p class="card-text">원데이</p>
						<h5 class="card-title text-success">클래스 카테고리</h5>
						<p class="card-text">도자기, 공방</p>
						<h5 class="card-title text-success">예약 날짜 / 시간</h5>
						<p class="card-text">2024.06.10 / 14:00~16:00</p>
						<h5 class="card-title text-success">장소</h5>
						<p class="card-text">부산시 남구 대연동</p>
					</div> <!-- card-body 끝 -->
				</div><!-- card -->
				<div class="card">
					<h5 class="card-header ">연락처 정보</h5>
					<div class="card-body">
						<h5 class="card-title text-success">연락처</h5>
						<p class="card-text">010 - 1111 - 2222</p>
						<h5 class="card-title text-success">이메일</h5>
						<p class="card-text">take7267@gmail.com</p>
						<h5 class="card-title text-success">이름(닉네임)</h5>
						<p class="card-text">take7267</p>
					</div>
				</div>
			</div>
			<!-- 결제 -->
			<div class="col-md-5">
				<!-- 취소 및 환불 안내 -->
				<div class="row ">
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button rounded-bottom" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" >
									취소 및 환불 안내
								</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<span>날짜 별 취소 및 환불 정책</span><br>
									<ul>
										<li>클래스 시작 전 취소 : 100% 환불</li>
										<li>클래스 시작 후 취소 : 환불 불가</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 결제 안내 -->
				<div class="row">
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button rounded-bottom" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" >
									결제 안내
								</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<ul>
										<li>
											결제 완료 시 온라인 티켓이 발행되며, 클래스 결제/예약 내역 페이지를 통해 티켓을 확인 하실 수 있습니다. 그리고 등록해주신 연락처로 클래스 정보를 포함한 알림이 발송됩니다.
										</li>
										<li>
											웹 페이지 우측 하단의 문의하기(채널톡) 을 통해 문의 주시면 빠르게 도움 드릴 수 있도록 하겠습니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 결제 정보 -->
				<div class="card">
					<h5 class="card-header">결제 정보</h5>
					<div class="card-body">
						<h6 class="card-title">클래스 수강권 1매</h6>
						<p class="card-text text-end"><span class="font_color">원데이 수강</span></p>
						<p class="card-text text-end"><span class="font_color">40000</span>만원</p>
						<p class="card-text text-end"><span class="font_color">1</span>명</p>
						<p class="card-text text-end">소계:&nbsp; <span class="font_color">4</span>만원</p>
<!-- 					<hr> -->
<!-- 						<h6 class="card-title">쿠폰</h6> -->
<!-- 						<h6 class="card-title text-end">사용가능 쿠폰: <span class="font_color">0</span>개</h6> -->
<!-- 						<div class="col d-flex justify-content-end"> -->
<!-- 							<a href="#" class="btn btn-dark">쿠폰 조회</a> -->
<!-- 						</div> -->
					<hr>
						<h6 class="card-title">WILL-PAY</h6>
						<h6 class="card-title text-end">보유 WILL-PAY &nbsp;<span class="font_color">0</span>원</h6>
						<div class="col d-flex justify-content-end">
							<input type="text" placeholder="크레딧">
							<input type="button" value="전부 사용">
						</div>
					<hr>
						<p class="card-text text-end">총 결제 금액: <span class="font_color">40000</span>만원</p>
						<div class="row">
							<div class="col d-flex justify-content-center">
								<a href="#" class="btn btn-dark w-100">결제하기</a>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
<footer>
	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
</footer>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>