<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스윌 로그인</title>


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

<!-- 부트스트랩 CSS, JS -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
	
 	body { 
 		background: black;  
 	} 
	
	article {
		margin: 0 auto;
		padding: 0 auto;
		height: 3000px;
	}
	
	.login-form {
		width: 500px;
		padding: 30px;
	}
	
	#btnSub {
		background-color: white;
	}
	
	.regex {
		font-size: 12px;
		color: white;
	}
	
	

</style>
</head>
<body>
	<header>
       	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
	</header>
	
	<article>
		<div class="container login-form">
			<h2>로그인</h2>
			<form action="member-login" method="POST">
				<div class="input-group mb-3">
				  <span class="input-group-text" id="id"><i class="bi bi-person-fill"></i></span>
				  <input type="text" class="form-control" placeholder="이메일">
				</div>
				<div></div>
				<div class="input-group mb-3">
				  <span class="input-group-text" id="passwd"><i class="bi bi-lock-fill"></i></span>
				  <input type="text" class="form-control" placeholder="비밀번호" >
				  <span class="input-group-text" id="eye-slash"><i class="bi bi-eye-slash"></i></span>
<!-- 				  <span class="input-group-text" id="eye-slash"><i class="bi bi-eye"></i></span> -->
				</div>
				<div class="regex">특수문자, 영문, 숫자 조합 8자 이상으로 입력해주세요</div>
				<div>
					<input type="submit" id="btnSub" value="로그인">
				</div>
			</form>
			<p><a href="reset-passwd">비밀번호 찾기</a></p>
			클래스윌이 처음이신가요? <a href="member-join"><b>가입하기</b></a>
		
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
	
	<script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>