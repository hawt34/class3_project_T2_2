<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
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

<link href="${pageContext.request.contextPath}/resources/css/category-bar.css" rel="stylesheet">

</head>
<body>

<div class="categoryBar">
	<div class="col-md-3">
		<div class="row height d-flex justify-content-center align-items-center">
			<div class="col-md-6">
				<div class="form">
					<i class="fa fa-search"></i>
					<input type="text" class="form-control form-input" placeholder="클래스 검색">
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<select class="form-select selectBox w-75 mx-1" aria-label="Default select example">
				<option selected>카테고리</option>
				<option value="1">최신순</option>
				<option value="2">낮은 가격순</option>
				<option value="3">높은 가격순</option>
			</select>
		</div>
		<div class="col-md-2">
			<select class="form-select selectBox w-75 mx-1" aria-label="Default select example">
				<option selected>지역</option>
				<option value="1">최신순</option>
				<option value="2">낮은 가격순</option>
				<option value="3">높은 가격순</option>
			</select>
		</div>
		<div class="col-md-2">
			<select class="form-select selectBox w-75 mx-1"  aria-label="Default select example">
				<option selected>유형</option>
				<option value="1">최신순</option>
				<option value="2">낮은 가격순</option>
				<option value="3">높은 가격순</option>
			</select>
		</div>
		<div class="col-md-2">
			<select class="form-select selectBox w-75 mx-1" aria-label="Default select example">
				<option selected>금액</option>
				<option value="1">최신순</option>
				<option value="2">낮은 가격순</option>
				<option value="3">높은 가격순</option>
			</select>
		</div>
		<div class="col-md-2 btnReset">
			<button class="btn btn-light-sm">초기화</button>
		</div>
	</div>
</div>
</body>
</html>