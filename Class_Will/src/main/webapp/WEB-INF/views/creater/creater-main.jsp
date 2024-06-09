<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">
<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator-main.css"
	rel="stylesheet">
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/inc/header.jsp" />
	</header>

	<!-- Spinner Start (로딩시 뜨는 동그라미)-->
	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-white" role="status"></div>
	</div>
	<!-- Spinner End -->

	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Creator</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active text-white">크리에이터 페이지</li>
		</ol>
	</div>
	<!-- Single Page Header End -->

	<div class="container-fluid fruite">
		<div class="container">
			<h1 class="mb-4">Creator Service</h1>
			<div class="row g-4">
				<div class="col-lg-12">
<!-- 					<div class="row g-4"> -->
<!-- 						<div class="col-xl-3"> -->
<!-- 							<div -->
<!-- 								class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4"> -->
<!-- 								<label for="fruits">Default Sorting:</label> <select id="fruits" -->
<!-- 									name="fruitlist" class="border-0 form-select-sm bg-light me-3" -->
<!-- 									form="fruitform"> -->
<!-- 									<option value="volvo">Nothing</option> -->
<!-- 									<option value="saab">Popularity</option> -->
<!-- 									<option value="opel">Organic</option> -->
<!-- 									<option value="audi">Fantastic</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="row g-4">
						<div class="col-lg-3">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="mb-3">
										<h4>Categories</h4>
										<ul class="list-unstyled fruite-categorie">
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Home</a>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>클래스</a>
													<span>(5)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>후기관리</a>
													<span>(5)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>클래스분석</a>
													<span>(2)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>클래스정산</a>
													<span>(8)</span>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
<!-- 							<div class="col-lg-12"> -->
<!-- 								<div class="position-relative"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/img/banner-fruits.jpg" --%>
<!-- 										class="img-fluid w-100 rounded" alt=""> -->
<!-- 									<div class="position-absolute" -->
<!-- 										style="top: 50%; right: 10px; transform: translateY(-50%);"> -->
<!-- 										<h3 class="text-secondary fw-bold"> -->
<!-- 											Fresh <br> Fruits <br> Banner -->
<!-- 										</h3> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</div>
						<div class="col-lg-9 creator-body ">
								<div class="col-md-12 text-center">여기를 이제 메인으로 쓸거임</div>
						</div>
					</div>



<!-- 					<div class="col-12"> -->
<!-- 						<div class="pagination d-flex justify-content-center mt-5"> -->
<!-- 							<a href="#" class="rounded">&laquo;</a> <a href="#" -->
<!-- 								class="active rounded">1</a> <a href="#" class="rounded">2</a> <a -->
<!-- 								href="#" class="rounded">3</a> <a href="#" class="rounded">4</a> -->
<!-- 							<a href="#" class="rounded">5</a> <a href="#" class="rounded">6</a> -->
<!-- 							<a href="#" class="rounded">&raquo;</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
					
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->



	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- JavaScript Libraries -->
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