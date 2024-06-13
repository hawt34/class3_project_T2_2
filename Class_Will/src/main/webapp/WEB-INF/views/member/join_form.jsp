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
		padding: 30px;
		
	}
	
	fieldset {
		background: #333;
		padding: 20px;
		color: white;
	}
	
	
	.auth-choice {
		display: flex;
	}
	
	.auth-detail {
		border-style: none;
		
	}
	
	ul {
		list-style: none;
	}
	
	.modal-content {
		background: #333;
		width: 600px;
	}
	
	.modal-body {
		background: #4d4d4d;
	}
	
	table {
		margin: 20px;
		padding: 15px;
		
	}
	th, td, li {
		color: white;
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
					<input type="text" class="form-control" id="name" name="name" placeholder="name">
					<label for="name">이름</label>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
					<label for="email">이메일</label>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="passwd" name="passwd" placeholder="Password">
					<label for="passwd">비밀번호</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="010-1234-5678">
					<label for="phone_number">휴대전화</label>
					<button class="btn btn-outline-secondary" type="button" id="phone-auth-btn">인증번호 전송</button>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="phone_auth_number" name="phone_auth_number" placeholder="123456">
					<label for="phone_auth_number">인증번호</label>
				</div>
				
				<fieldset>
					<h3>서비스 정책</h3>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="allCheck" name="allCheck">
						<label class="form-check-label" for="allCheck">
							전체동의
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="ageAgree" name="ageAgree">
						<label class="form-check-label" for="ageAgree">
							만14세 이상입니다.(필수)
						</label>
						
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="serviceAgree" name="serviceAgree">
						<label class="form-check-label" for="serviceAgree">
							서비스 이용약관 동의 (필수)
						</label>
						<button type="button" class="auth-detail" data-bs-toggle="modal" data-bs-target="#serviceAgreeInfo">내용보기</button>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="personerAgree" name="personerAgree">
						<label class="form-check-label" for="personerAgree">
							개인정보 수집 및 이용 동의 (필수)
						</label>
						<button type="button" class="auth-detail" data-bs-toggle="modal" data-bs-target="#personerAgreeInfo">내용보기</button>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="marketing" name="marketing">
						<label class="form-check-label" for="marketing">
							마케팅 수신 동의 (선택)
						</label>
						<button type="button" class="auth-detail" data-bs-toggle="modal" data-bs-target="#marketingImfo">내용보기</button>
					</div>
					<div class="auth-choice">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="emailAgree" name="emailAgree">
							<label class="form-check-label" for="emailAgree">
								이메일 수신
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="messegeAgree" name="messegeAgree">
							<label class="form-check-label" for="messegeAgree">
								문자 수신
							</label>
						</div>
					</div>
				</fieldset>
				<div>
					<input type="submit" id="btnSub" value="가입하기">
				</div>
			</form>
			
			<!-- 서비스 이용약관 동의 -->
			<div class="modal" id="serviceAgreeInfo" tabindex="-1" aria-labelledby="serviceAgreeInfoLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
						  <h1 class="modal-title fs-5" id="serviceAgreeInfoLabel">서비스 이용약관</h1>
						  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							
						
						
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
			
			<!-- 개인정보 수집 및 이용 동의 -->
			<div class="modal" id="personerAgreeInfo" tabindex="-1" aria-labelledby="personerAgreeInfoLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
						  <h1 class="modal-title fs-5" id="personerAgreeInfoLabel">개인정보 수집 및 이용동의</h1>
						  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<table class="tabel" border="1">
								<tr>
									<th>수집시기</th>
									<th>수집 및 이용 목적</th>
									<th>이용 및 보유기간</th>
								</tr>
								<tr>
									<td>[필수] 이름, 이메일, 휴대전화번호, 비밀번호	</td>
									<td>회원가입 및 서비스 이용</td>
									<td>회원 탈퇴 후 30일까지</td>
								</tr>
							</table>
							<ul>
								<li>※고객님께서는 [필수] 개인정보 수집 및 이용동의에 거부할 수 있습니다.</li>
								<li>단, 거부할 경우 회원가입이 불가능합니다.</li>
							</ul>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
			
			<!-- 마케팅 수신 동의 내용 -->
			<div class="modal" id="marketingImfo" tabindex="-1" aria-labelledby="marketingImfoLabel" aria-hidden="true" >
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
						  <h1 class="modal-title fs-5" id="marketingImfoLabel">서비스 이용약관</h1>
						  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<table class="tabel" border="1">
								<tr>
									<th>목적</th>
									<th>항목</th>
									<th>보유기간</th>
								</tr>
								<tr>
									<td>Coloso가 제공하는 이용자 맞춤형 서비스 및 상품 추천, 각종 경품 행사, 이벤트 등의 광고성 정보를 전자우편이나 서신우편, 문자(SMS 또는 카카오 알림톡), 푸시, 전화 등을 통해 이용자에게 제공합니다.</td>
									<td>이름, 이메일주소, 휴대전화번호, 마케팅 수신 동의 여부</td>
									<td><u>회원 탈퇴 후 30일 또는 동의 철회시까지</u></td>
								</tr>
							</table>
							<ul>
								<li>※고객님께서는 [필수] 개인정보 수집 및 이용동의에 거부할 수 있습니다.</li>
								<li>단, 거부할 경우 회원가입이 불가능합니다.</li>
							</ul>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
		
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
	
	
</body>
</html>