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

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- 부트스트랩 CSS, JS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
	
	body {
		background: black; 
	}
	
	article {
		margin: 0 auto;
		padding: 0 auto;
	}
	
	.reset-form {
		width: 500px;
		padding: 30px;
	}
	
	#btnSub {
		background-color: white;
	}
	
	.regex{ 
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
		<div class="container reset-form">
			<form action="reset-passwd" method="POST">
				<h2>비밀번호 찾기</h2>
				<p>가입하신 이메일 주소를 입력해 주세요.</p>
				<p>	이메일 주소로 비밀번호를 재설정할 수 있는 이메일을 보내드립니다.</p>
				<p>	발송된 이메일의 비밀번호 재설정은 10분 간 유효합니다.</p>
				<div class="input-group mb-3">
				  <span class="input-group-text" id="id"><i class="bi bi-person-fill"></i></span>
				  <input type="text" class="form-control"  placeholder="이메일">
				</div>
				<div class="regex">특수문자, 영문, 숫자 조합 8자 이상으로 입력해주세요</div>
				<div>
					<input type="submit" id="btnSub" value="전송하기">
				</div>
			</form>
			<a href="member_login"><b>로그인하기</b></a>
		
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
</body>
</html>