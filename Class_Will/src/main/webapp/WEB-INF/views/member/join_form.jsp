<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스윌 회원가입</title>
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
	
	.join-form {
		width: 500px;
		padding: 20px;
		
	}
	
	fieldset {
		background: #333;
		padding: 20px;
		color: white;
	}
	
	
	.auth-choice {
		display: flex;
		margin: auto;
	}
	
	
</style>

</head>
<body>

	<header>
       	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
	</header>
	
	<article>
		<div class="container join-form">
			<form action="member_join" method="POST">
				<h2>회원가입</h2>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput" >
					<label for="floatingInput">이름</label>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
					<label for="floatingInput">이메일</label>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="floatingPassword" placeholder="Password">
					<label for="floatingPassword">비밀번호</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput" >
					<label for="floatingInput">휴대전화</label>
					<button class="btn btn-outline-secondary" type="button" id="button-addon1">인증번호 전송</button>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
					<label for="floatingInput">인증번호</label>
				</div>
				
				<fieldset>
					<h3>서비스 정책</h3>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">
							전체동의
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">
							만14세 이상입니다.(필수)
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">
							서비스 이용약관 동의 (필수)
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">
							개인정보 수집 및 이용 동의 (필수)
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">
							마케팅 수신 동의 (선택)
						</label>
					</div>
					<div class="auth-choice">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">
								이메일 수신
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">
								문자 수신
							</label>
						</div>
					</div>
				</fieldset>
				<div>
					<input type="submit" id="btnSub" value="가입하기">
				</div>
			</form>
		
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>

</body>
</html>