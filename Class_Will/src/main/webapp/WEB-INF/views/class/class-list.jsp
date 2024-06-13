<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 상세</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class_list.css">
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
<div class="container-xl container">
<header>
    <jsp:include page="../inc/top.jsp" />
</header>
<!-- 	<div class="col-md-2"> -->

<!-- 	</div> -->
	<div class="col-md-12">
<!-- 		<div class="row row-cols-1 row-cols-md-4 g-4"> -->
		<!-- 첫번째 줄 -->
		<div class="row pb-5 mb-4 d-flex flex-wrap">
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
						<img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">UI 디자이너 리제</p>
							</div>
							<div class="className">
								<h5>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 진구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
							</div>
							<div class="className">
								<h5>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 동래구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
							</div>
							<div class="className">
								<h5>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 해운대구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
							</div>
							<div class="className">
								<h5>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 해운대구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 두번째 줄 -->
		<div class="row pb-5 mb-4 d-flex flex-wrap">
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
							</div>
							<div class="className">
								<h5>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 북구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		    <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">UI 디자이너 리제</p>
							</div>
							<div class="className">
								<h5>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 남구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
							</div>
							<div class="className">
								<h5>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 사상구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" alt="" class="w-100 card-img-top classPic">
<!-- 						<div class="card-body d-flex flex-column fixed-size"> -->
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
							</div>
							<div class="className">
								<h5>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 사상구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 세번째 -->
		<div class="row pb-5 mb-4 d-flex flex-wrap">
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
							</div>
							<div class="className">
								<h5>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 수영구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
						<div class="row">
							<div class="classCategory col-md-10">
								<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
							</div>
							<div class="col-md-2">
								<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
							</div>
						</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
							</div>
							<div class="className">
								<h5>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 진구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
		      <!-- Card-->
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
							</div>
							<div class="className">
								<h5>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 진구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex">
				<div class="card shadow-sm border-0 rounded flex-fill">
					<div class="card-body p-0">
					<img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic">
						<div class="card-bodys d-flex flex-column">
							<div class="row">
								<div class="classCategory col-md-10">
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
									<button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
								</div>
								<div class="col-md-2">
									<a href="" class="btn-sm custom"><i class="far fa-heart"></i></a>
								</div>
							</div>
							<div class="createrName d-flex align-items-center">
								<img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
								<p class="mb-0 ml-2">UI 디자이너 리제</p>
							</div>
							<div class="className">
								<h5>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h5>
							</div>
							<div class="row classInfo">
								<div class="col-md-6 add">
									<a href="" class="btn btn-outline-dark btn-sm disabled">부산 남구</a>
								</div>
								<div class="col-md-6 price">
									<p>50,000원</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 세번째 줄 끝 -->
	</div> <!-- col-md-12 -->
</div> <!-- container -->
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>