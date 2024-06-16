<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLASS-WILL charge</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js "></script>
<style>
body{
	color:white;
}
.title {
	background: #333333;
	color: white;
	height: 50px;
	display:flex;
	justify-content: center;
	margin
}
.title p {
	margin-top: 5px;
	text-align: center;
	font-weight: bold;
}

.custom-bg {
	background: black;
	height: 100vh;
}
.margin_use {
	margin-top: 20px;
}
.package_group {
	display: flex;
	flex-flow: wrap;
	justify-content: space-between;
}
.cutom-card {
	cursor:pointer;
}
.text_deco {
	text-decoration: line-through;
}
.regist_account input {
	width:100%;
	height:50px;
	border: 5px;
	border-radius:5px;
	background: white;
	font-size: 24px;
}
.account_area {
	width:100%;
	max-height: 300px;
	margin-bottom: 10px;
	position: relative;
}
.btn {
	background: #6600FF;
	color:white;
}
.btn:hover {
	background: #6600FF;
}
.btn-container {
	position: relative;
    top: 180px;
}
</style>
</head>
<body>
<header>
	<div class="title">
		<p style="font-size: 24px">충전하기</p>
	</div>
</header>
<div class="container ">
	<div class="row">
		<div class="col-md-6 offset-md-3 custom-bg">
			<div class="mx-3 margin_use">
				<label for="will_pay_charge" class="form-label">Will-pay 충전하기</label>
				<input type="text" class="form-control w-75" id="will_pay_charge" placeholder="충전할 금액을 입력해주세요.">
			</div>
			<!-- package 종류 -->
			<hr>
			<div class="will_pay_package">
				<div class="mx-3">
					<label class="form-label">package</label>
				</div>
				<!-- package group -->
				<div class="package_group">
					<c:forEach begin="1" end="3" varStatus="status">
						<div class="card border-light mb-3 cutom-card" style="width:180px;">
							<div class="card-header">package${status.count }</div>
							<div class="card-body">
								<h5 class="card-title">33% 더!</h5>
								<!-- package 가격정보 -->
								<p class="card-text">
									<span class="text_deco">100000 will-pay</span><br>
									-> <span id="package_up_price">133000</span>
								</p>
								<input type="hidden" name="package_price" value="${will_pay.pay_price }">
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- 선택된 package 가격 -->
				<div class="mx-3">
					<label for="selected_package" class="form-label">선택된 package</label>
					<input type="text" class="form-control w-50" id="selected_package" readonly>
				</div>
				<hr>
				<!-- 계좌 연동 시작 -->
				<div class="account_area">
					<c:choose>
						<c:when test="${empty sessionScope.token }">
							<p>계좌 등록</p>
							<div class="regist_account">
								<input type="button" value="+">
							</div>
						</c:when>
						<c:otherwise>
							<p>출금 계좌</p>
							<div class="regist">
								<img src="${pageContext.request.contextPath }/resources/img/bankIcon.png">
								<span>산업은행</span>
								<span>104******111</span>
							</div>
						</c:otherwise>
					</c:choose>
				</div><!-- 계좌 연동 끝 -->
				<div class="col d-flex justify-content-center btn-container">
					<a href="#" class="btn w-100">충전하기</a>
				</div>		
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	//금액 입력 이벤트
	$('#will_pay_charge').on('input', function() {
		var value = $(this).val().replace(/[^0-9]/g, ''); // 숫자 이외의 문자 제거
		$('#selected_package').val("");
		if (value) {
		    $(this).val(value + '원');
		} else {
			$(this).val('');
		}
	});
	
	//카드 클릭 이벤트
	
	$('.card').click(function() {
		
        // 클릭된 카드 내의 package_up_price 요소의 텍스트를 가져옴
        var packageUpPrice = $(this).find('#package_up_price').text();
        // selected_package 입력 필드에 값을 설정
        $('#selected_package').val(packageUpPrice + "will-pay");
        $('#will_pay_charge').val("");
    });
});
</script>

</body>
</html>