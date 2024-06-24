<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>	
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
							<div class="creator-main-table col-xl-8 mb-5">
								<form action="member-modify" name="fr" method="post">
									
									<!-- 	셀렉트박스 -->
									<div class="classReg-basic">
										<div class="col-md-12 text-center h2 mb-5" style="margin-top: 20px;">회원정보 수정하기</div>

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
												<input type="text" class="form-control" id="member_nickname" name="member_nickname" placeholder="nick-name"  maxlength="30">
											</div>
											<div class="col-md-12 mt-2 my-4">
												<label for="" class="h6">일반회원 전환 / 크리에이터 전환</label> 
												<input type="text" class="form-control" id="" name="" placeholder=""  maxlength="30">
											</div>
											
											<div class="col-md-12 mt-2 my-4">	
												<label for="passwd"  class="h6">새 비밀번호</label> 
												<input type="password" id="member_pwd" class="form-control"  name="member_pwd" placeholder="비밀번호 입력" >
										  		<span id="msg_pwd">123</span>
										  	</div>
										  																			
											<div class="col-md-12 mt-2 my-4">
												<label for="member_pwd_confirm">새 비밀번호 확인</label> 
											 	<input type="password" class="form-control" id="member_pwd2" name="member_pwd2" >
												<span id="msg_pwd2" style="color: red;"></span>
											</div>
											
											
   											<div class="col-md-12 my-4">
												<label for="postCode" class="h6">주소</label><br>
												<div class="d-flex justify-content-between">
													<div class="col-md-3">
														<input type="text" id="post_code" name="member_post_code"
															class="form-control my-1" size="6" readonly
															onclick="search_address()" placeholder="우편번호" value="${member.member_post_code}">
													</div>
													<div class="col-md-9">
														
														<input type="text" id="address1" name="member_address1"  class="form-control my-1" placeholder="클릭 시 주소검색"
															size="25" readonly onclick="search_address()" value="${member.member_address1}">
													</div>
												</div>
												<input type="text" id="address2" name="member_address2" class="form-control" placeholder="상세주소" size="25"
													pattern="^.{2,20}$" maxlength="20" value="${member.member_address2}">
											</div>
											
										</div>
									</div>

									<div class="mb-4" align="center">
										<button type="submit" class="btn btn-primary btn-lg btn-block">제출하기</button> 
										<input type="button" value="돌아가기" class="btn btn-primary btn-lg btn-block" 	onclick="history.back()">
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
	    let riskCount = 0;

	    // 비밀번호 입력값 변경 시
	    $("#member_pwd").on("input", function() {
	        validatePassword();
	        validatePasswordConfirmation();
	        checkFormValidity(); // 폼 유효성 검사 실행
	    });

	    // 비밀번호2 입력값 변경 시
	    $("#member_pwd2").on("input", function() {
	        validatePasswordConfirmation();
	        checkFormValidity(); // 폼 유효성 검사 실행
	    });

	    // 상세주소 입력값 변경 시
	    $("#address2").on("input", function() {
	        validateAddress2();
	        checkFormValidity(); // 폼 유효성 검사 실행
	    });

	    // 폼 유효성 검사 함수
	    function checkFormValidity() {
	        let pwdIsValid = $("#member_pwd").val() === "" || /^.{6,16}$/.test($("#member_pwd").val());
	        let pwd2IsValid = $("#member_pwd2").val() === "" || $("#member_pwd2").val() === $("#member_pwd").val();
	        let isPasswordStrong = $("#member_pwd").val() === "" || validatePasswordStrength() > 1;

	        if (pwdIsValid && pwd2IsValid && isPasswordStrong) {
	            $("button[type='submit']").prop("disabled", false); // submit 버튼 활성화
	        } else {
	            $("button[type='submit']").prop("disabled", true); // submit 버튼 비활성화
	        }
	    }

	    // 비밀번호 강도 검사 함수
	    function validatePasswordStrength() {
	        let pwd = $("#member_pwd").val();
	        let strength = 0;

	        if (pwd !== "") {
	            let lengthRegex = /^.{6,16}$/;
	            let upperRegex = /[A-Z]/;
	            let lowerRegex = /[a-z]/;
	            let digitRegex = /\d/;
	            let specialRegex = /[!@#$%^&*?_]/;

	            if (lengthRegex.test(pwd)) strength++;
	            if (upperRegex.test(pwd)) strength++;
	            if (lowerRegex.test(pwd)) strength++;
	            if (digitRegex.test(pwd)) strength++;
	            if (specialRegex.test(pwd)) strength++;
	        }

	        return strength;
	    }

	    // 비밀번호 확인 함수
	    function validatePasswordConfirmation() {
	        let pwd = $("#member_pwd").val();
	        let pwd2 = $("#member_pwd2").val();

	        if (pwd2 !== pwd) {
	            $("#msg_pwd2").text("비밀번호가 일치하지 않습니다");
	            $("#msg_pwd2").css("color", "red");
	        } else if (pwd2 === "") {
	            $("#msg_pwd2").empty();
	        } else {
	            $("#msg_pwd2").text("비밀번호가 일치합니다");
	            $("#msg_pwd2").css("color", "green");
	        }
	    }

	    // 상세주소 유효성 검사 함수
	    function validateAddress2() {
	        let address2 = $("#address2").val();
	        let regex = /^.{2,20}$/;

	        if (address2 === "") {
	            $("#msg_addr").text("상세주소를 입력하세요");
	            $("#msg_addr").css("color", "red");
	        } else if (!regex.test(address2)) {
	            $("#msg_addr").text("2~20자리의 문자를 입력하세요");
	            $("#msg_addr").css("color", "red");
	        } else {
	            $("#msg_addr").empty();
	        }
	    }

	    // 비밀번호 유효성 검사 함수
	    function validatePassword() {
	        let pwd = $("#member_pwd").val();
	        let msg = "";
	        let color = "";
	        let lengthRegx = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{6,16}$/;

	        if (pwd === "") {
	            msg = "";
	            color = "";
	        } else if (!lengthRegx.test(pwd)) {
	            msg = "영문자, 숫자, 특수문자(!, @, #, $)를 포함한 6~16자리를 입력해주세요";
	            color = "red";
	            riskCount = 0;
	        } else {
	            let engUpperRegex = /[A-Z]/;
	            let engLowerRegex = /[a-z]/;
	            let numRegex = /\d/;
	            let specRegex = /[!@#$%]/;
	            let count = 0;

	            if (engUpperRegex.test(pwd)) count++;
	            if (engLowerRegex.test(pwd)) count++;
	            if (numRegex.test(pwd)) count++;
	            if (specRegex.test(pwd)) count++;

	            switch (count) {
	                case 4:
	                    msg = "안전";
	                    color = "green";
	                    riskCount = 4;
	                    break;
	                case 3:
	                    msg = "보통";
	                    color = "orange";
	                    riskCount = 3;
	                    break;
	                case 2:
	                    msg = "위험";
	                    color = "red";
	                    riskCount = 2;
	                    break;
	                default:
	                    msg = "영문자, 숫자, 특수문자(!, @, #, $)를 포함한 6~16자리를 입력해주세요";
	                    color = "red";
	                    riskCount = 0;
	            }
	        }

	        $("#msg_pwd").text(msg);
	        $("#msg_pwd").css("color", color);
	    }

	    // 초기 폼 유효성 검사
	    checkFormValidity();
	});
</script>
</body>
</html>