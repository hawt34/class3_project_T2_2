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
<link href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/creator/creator-cost.css" rel="stylesheet">
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
			<li class="breadcrumb-item"><a href="main">Home</a></li>
			<li class="breadcrumb-item"><a href="main">크리에이터 페이지</a></li>
			<li class="breadcrumb-item active text-white">클래스정산</li>
		</ol>
	</div>
	<!-- Single Page Header End -->

	<div class="container-fluid fruite">
		<div class="container">
			<h1 class="mb-4">Creator Center</h1>
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

						<div class="col-lg-9 creator-body" align="center">
						<!-- 	셀렉트박스 -->
							<div class="col-md-6  mb-5" >
								<div class="col-xl-8">
									<div class="bg-light rounded py-2 mb-4">
										<label for="monthPicker"></label>
    									<input type="month" id="monthPicker" name="monthPicker">
									</div>
									<hr>
								</div>
							</div>
							
							<div class="creator-event mt-5">
							
								<div class="card col-md-8 mt-2 mb-5">
								  <div class="card-body">
								    <p class="card-title h6" align="left">총수익</p>
								    <div class="d-flex justify-content-between card-content">
									    <p class="card-text word-break h4">금액: 42000000 원</p> 
									    <a href="#" class="btn btn-primary">상세보기</a>
								    </div>
									<p class="card-text word-break " align="left">정산기간 : 0월 한달간</p> 
								  </div>
								</div>
								<hr class="col-md-8">
								<h5 class="col-md-8 mt-5" align="left">상세정산</h5>
								<div class="card col-md-8 my-2">
								  <div class="card-body">
								    <div class="d-flex justify-content-start card-content">
									    <p class="card-text">상태&nbsp;:</p>
									    <p class="card-text">&nbsp;지급완료</p>
								    </div>
								    <div class="d-flex justify-content-between card-content">
									    <p class="card-text h6">원데이클래스 수익&nbsp;:</p>
									    <p class="card-text h6">&nbsp;2400000 원</p>
								    </div>
								    <div class="d-flex justify-content-between card-content">
									    <p class="card-text h6">정기클래스 수익&nbsp;:</p>
									    <p class="card-text h6">&nbsp;2300000 원</p>
								    </div>
								    <div class="d-flex justify-content-between card-content">
									    <p class="card-text h6">부가세&nbsp;:</p>
									    <p class="card-text h6">&nbsp;300000 원</p>
								    </div>
								    <div class="d-flex justify-content-between card-content">
									    <p class="card-text h4">합계&nbsp;:</p>
									    <p class="card-text h4">&nbsp;4200000 원</p>
								    </div>
								  </div>
								</div>
							</div>

						
						</div>
					</div>
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
	<script>
	document.addEventListener('DOMContentLoaded', (event) => {
        const monthPicker = document.getElementById('monthPicker');
        const today = new Date();

        // Ensure the date object is correct
        console.log("Today's date object:", today);
        
        // Correctly retrieve year and month
        const year = today.getFullYear();
        console.log('Year:' +  year); // Debugging output
        const month = String(today.getMonth()).padStart(2, '0'); // Ensure month is two digits
        console.log('Month: ' + month); // Debugging output

        // Set default value to current month
        const currentMonth = year + '-' + month;
        
        monthPicker.value = currentMonth;
        monthPicker.max = currentMonth;
    });
	</script>

</body>
</html>