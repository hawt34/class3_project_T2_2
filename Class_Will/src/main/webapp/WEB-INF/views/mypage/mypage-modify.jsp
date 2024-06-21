<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="${pageContext.request.contextPath}/resources/css/myPage.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css"
	rel="stylesheet">
<style>
</style>
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/inc/top.jsp" />
	</header>

	<!-- Spinner Start (로딩시 뜨는 동그라미)-->
	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-white" role="status"></div>
	</div>
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">
			마이페이지<i class="bi bi-gear"></i>&nbsp;회원정보수정
		</h1>
	</div>
	<div class="container-fluid fruite">
		<div class="container">

			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/mypage/sideBar.jsp" />

						<div class="col-lg-9 creator-body">
							<div class="creator-main-table col-xl-8 mb-5 ">
								<form class="validation-form" novalidate action="" name="fr"
									method="post" onsubmit="return confirm('회원정보변경을 진행하시겠습니까?');">
									<!-- 	셀렉트박스 -->
									<div class="classReg-basic">
										<div class="col-md-12 text-center h2 mb-5"
											style="margin-top: 20px;">회원정보 수정하기</div>

										<div class="classReg-basic-form">
											<div class="col-md-12 mt-2 my-4">
												<label for="member_name" class="h6">이름</label> 
												<input type="text" class="form-control" id="member_name" name="member_name" value="${member.member_name}" readonly>
											</div>
											<div class="col-md-12 mt-2 my-4">
												<label for="member_email" class="h6">이메일</label> 
												<input type="text" class="form-control" id="member_email" name="member_email" value="${member.member_email}" readonly>
											</div>
											
											<div class="col-md-12 mt-2 my-4">
												<label for="member_nickname" class="h6">닉네임</label> 
												<input type="text" class="form-control" id="member_nickname" name="member_nickname" placeholder="nick-name" required maxlength="30">
											</div>
											<div class="col-md-12 mt-2 my-4">
												<label for="" class="h6">일반회원 전환 / 크리에이터 전환</label> 
												<input type="text" class="form-control" id="" name="" placeholder="" required maxlength="30">
											</div>
											
											<div class="col-md-12 mt-2 my-4">	
												<label for="passwd"  class="h6">새 비밀번호</label> 
												<input type="password" class="form-control" id="member_pwd" name="member_pwd" placeholder="Password" required maxlength="20">
										  	<div id="regex-pwd" class="message">
											</div>
											
											<div class="col-md-12 mt-2 my-4">
												<label for="member_pwd_confirm">새 비밀번호 확인</label> 
											 	<input type="password" class="form-control" id="member_pwd_confirm" name="member_pwd_confirm" required>
											</div>
   												 <div id="pwd-match" class="message"></div>
											
											
											<div class="col-md-12 my-4">
												<label for="postCode" class="h6">주소</label><br>
												<div class="d-flex justify-content-between">
													<div class="col-md-3">
														<input type="text" id="post_code" name="post_code"
															class="form-control my-1" size="6" readonly
															onclick="search_address()" placeholder="우편번호">
													</div>
													<div class="col-md-9">
														<input type="text" id="address1" name="address1"
															class="form-control my-1" placeholder="클릭 시 주소검색"
															size="25" readonly onclick="search_address()">
													</div>
												</div>
												<input type="text" id="address2" name="address2"
													class="form-control" placeholder="상세주소" size="25"
													pattern="^.{2,20}$" maxlength="20">
											</div>
										</div>
									</div>

									<div class="mb-4" align="center">
										<input type="submit" value="제출하기"
											class="btn btn-primary btn-lg btn-block"> <input
											type="button" value="돌아가기"
											class="btn btn-primary btn-lg btn-block"
											onclick="history.back()">
									</div>
									</div>
								</form>
								
							</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 주소검색
		function search_address() {
			new daum.Postcode({ // daum.Postcode 객체 생성
				oncomplete : function(data) {
					console.log(data);
					document.fr.post_code.value = data.zonecode;
					let address = data.address; // 기본주소 변수에 저장
					if (data.buildingName != "") {
						address += " (" + data.buildingName + ")";
					}
					// 기본주소 출력
					document.fr.address1.value = address;
					// 상세주소 입력 항목에 커서 요청
					document.fr.address2.focus();
				}
			}).open();
		}
		
	</script>
	  <script>
	  $(document).ready(function() {
		    // 비밀번호 입력 시 유효성 검사
		    $("#member_pwd").on("input", function() {
		        let inputPwd = $(this).val();
		        
		        let regex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{6,16}$/;

		        if (!regex.test(inputPwd)) {
		            $("#regex-pwd").text("6자리 이상 영문자, 숫자, 특수문자를 입력하세요.");
		            $("#regex-pwd").css("color", "red");
		            $("#member_pwd_confirm").prop("disabled", true); // 비밀번호 유효성 불만족 시 확인란 비활성화
		        } else {
		            $("#regex-pwd").text("");
		            $("#member_pwd_confirm").prop("disabled", false); // 비밀번호 유효성 만족 시 확인란 활성화
		        }
		        $("#pwd-match").text(""); // 비밀번호 변경 시 일치 여부 메시지 초기화
		    });

		    // 새 비밀번호와 새 비밀번호 확인 일치 여부 확인
		    $("#member_pwd_confirm").on("input", function() {
		        let pwd = $("#member_pwd").val();
		        let pwdConfirm = $(this).val();

		        if (pwd !== pwdConfirm) {
		            $("#pwd-match").text("비밀번호가 일치하지 않습니다.");
		            $("#pwd-match").css("color", "red");
		        } else {
		            $("#pwd-match").text("비밀번호가 일치합니다.");
		            $("#pwd-match").css("color", "green");
		        }
		    });

		    // 초기 로드 시 비밀번호 확인란 비활성화
		    $("#member_pwd_confirm").prop("disabled", true);
		});
	</script>
</body>
</html>