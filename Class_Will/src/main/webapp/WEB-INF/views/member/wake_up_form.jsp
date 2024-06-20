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

<!-- 제이쿼리 -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>

<style type="text/css">
	
 	body { 
 		background: black;  
 	} 
	
	article {
		margin: 0 auto;
		padding: 0 auto;
	}
	
	.login-form {
 		width: 900px; 
		padding: 30px;
		margin-top: 50px;
		margin-bottom: 100px;
	}
	
	.login-social {
		margin-top: 100px; 
		padding: 20px 50px;
		
	}
	
	.social{
		margin-bottom: 20px;
	}
	
	.regex {
		font-size: 15px;
		color: white;
	}
	
	h2 {
		color: white;
		margin: 30px;
		text-align: center;
	}
	
	p a {
		font-size: 12px;
	}
	
	.login-form-input {
		margin: 10px;
	}
	
	.regex {
		margin: 0;
		padding: 0;
	}
	
	.btnLogin {
		padding: 0px 11px;
	}
</style>
</head>
<body>
	<header>
       	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
	</header>
	
	<article>
		<div class="container-fluid">
			<div class="container login-form ">
				<div class="row "> 
					<div class="col">
						<h2 align="center">로그인</h2>
						<form action="member-login" method="POST">
							<div class="login-form-input">
								<div class="input-group">
									<span class="input-group-text" id="inputGroup-sizing-default"><i class="bi bi-person-fill"></i></span>
									<input type="text" id="member_email" name="member_email" class="form-control" placeholder="이메일" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
								</div>
								<div class="regex py-2" id="regex-id">올바르지 않은 이메일 형식입니다.</div>
							</div>
							<div class="login-form-input">
								<div class="input-group">
									<span class="input-group-text" id="passwd-icon"><i class="bi bi-lock-fill"></i></span>
		<!-- 							<input type="password" class="form-control" placeholder="비밀번호" > -->
		<!-- 							<span class="input-group-text btn btn-light" id="eye-slash"><a><i class="bi bi-eye-slash"></i></a></span> -->
		<!-- 							<span class="input-group-text" id="eye-slash"><a><i class="bi bi-eye"></i></a></span> -->
									<input type="password" id="member_pwd" name="member_pwd" class="form-control" placeholder="비밀번호">
		                            <span class="input-group-text btn btn-light" id="togglePassword"><a><i class="bi bi-eye-slash" id="toggleIcon"></i></a></span>
								</div>
								<div class="regex py-2" id="regex-passwd">6자 이상 특수문자, 영문, 숫자를 입력해 주세요</div>
							</div>
							
							<div align="right" style="padding-right: 11px;">
								<p><a href="reset-passwd">비밀번호 찾기</a></p>
							</div>
							<div class="d-grid gap-2 py-2 btnLogin">
								<input type="submit" id="btnSub" value="로그인" class="btn btn-outline-light btn-lg">
							</div>
						</form>
						<div align="center" style="color: white;">
							클래스윌이 처음이신가요? <a href="member-join"><u><b>가입하기</b></u></a>
						</div>			
					</div><!-- col -->
					<div class="col login-social">
						<div class="container d-flex flex-column mb-3">
							<input type="button" id="login-google" value="Google로 로그인" class="btn btn-outline-light btn-lg p-2 social">
							<input type="button" id="login-kakao" value="카카오로 로그인" class="btn btn-outline-light btn-lg p-2 social">
							<input type="button" id="login-kakao" value="네이버로 로그인" class="btn btn-outline-light btn-lg p-2 social">
						</div>
					</div> <!-- col -->
				</div>  <!-- row -->
			</div>
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
	
    <!-- JavaScript Libraries -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	
	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
	<script>
        document.getElementById('togglePassword').addEventListener('click', function (e) {
            const passwordInput = document.getElementById('member_passwd');
            const toggleIcon = document.getElementById('toggleIcon');
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleIcon.classList.remove('bi-eye-slash');
                toggleIcon.classList.add('bi-eye');
            } else {
                passwordInput.type = 'password';
                toggleIcon.classList.remove('bi-eye');
                toggleIcon.classList.add('bi-eye-slash');
            }
        });
    </script>
</body>
</html>