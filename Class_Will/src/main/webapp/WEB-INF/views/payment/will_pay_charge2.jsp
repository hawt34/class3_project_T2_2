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
	padding: 0 10px;
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
	max-height: 500px;
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
.accountInfo {
	width:100%;
	height:50px;
	border: 5px;
	border-radius:5px;
	background: #333333;
	font-size: 24px;
}
.accountInfo button img {
	width:45px;
	hegiht:45px;
}
#buttons-container button{
	display:block;
	width:100%;
	background: black;
}
#buttons-container button:hover{
	background: white;
	color: black !important;
	transition-duration : 0.5s
}
.modal-title {
	color: black;
}
.modal-body {
	color: black;
}
.custom-btn {
	color: white !important;
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
					<c:forEach var="package1" items="${packageInfo }" varStatus="">
						<div class="card border-light mb-3 cutom-card" style="width:180px;">
							<div class="card-header">PLUS PACKAGE</div>
							<div class="card-body">
								<h5 class="card-title">${package1.reward_rate }% 더!</h5>
								<!-- package 가격정보 -->
								<p class="card-text">
									<span class="text_deco" id="text_deco">${package1.reward_fee }원</span><br>
									-> <span class="package_up_price" id="package_up_price">${package1.reward_total }원</span>
								</p>
								<input type="hidden" name="package_price" value="${package1.reward_fee }">
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
			</div>
				<!-- 계좌 연동 시작 -->
			<div class="row h-25">
				<div id="buttons-container" class="row">
				</div>
				<div id="modals-container">
				</div>
			</div>
			<div class="col d-flex justify-content-center btn-container btn_custom">
				<a href="#" class="btn w-100">충전하기</a>
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
        var packageUpPrice = $(this).find('.package_up_price').text();
        // selected_package 입력 필드에 값을 설정
        $('#selected_package').val(packageUpPrice);
        $('#will_pay_charge').val("");
    });
	
});

document.addEventListener("DOMContentLoaded", function() {
	const bankInfo = ${packageInfoJson};
	
    const buttonsContainer = document.getElementById("buttons-container");
    const modalsContainer = document.getElementById("modals-container");
    bankInfo.forEach(info => {
        const button = document.createElement("button");
        button.type = "button ";
        button.className = "btn btn-light text-black m-2 custom-btn";
        button.setAttribute("data-bs-toggle", "modal");
        button.setAttribute("data-bs-target", "#modal-" + info.transfer_agree_dtime);
//         const img = document.createElement("img");
//         img.src = info.imgSrc;
//         button.appendChild(img);
        button.textContent  = "등록된 계좌";
        buttonsContainer.appendChild(button);
		debugger;
        // Create the modal
        const modal = document.createElement("div");
        modal.className = "modal fade";
        modal.id = "modal-" + info.transfer_agree_dtime;
        modal.tabIndex = -1;
        modal.innerHTML = 
            "<div class='modal-dialog'>" 
                + "<div class='modal-content'>"
                    + "<div class='modal-header'>"
                        + "<h1 class='modal-title fs-5'>" + info.bank_name + "</h1>"
                        + "<button type='button' class='btn-close' data-bs-dismiss='modal'></button>"
                    + "</div>"
                    + "<div class='modal-body'>"
                        + "계좌:" + info.account_num_masked
                    + "</div>"
                    + "<div class='modal-footer'>"
                        + "<button type='button' class='btn btn-primary'>계좌 추가</button>"
                    + "</div>"
                + "</div>"
            + "</div>";
        modalsContainer.appendChild(modal);
    });
});
</script>
<script>

function linkAccount() {
	sessionStorage.setItem("redirectUrl", "will_pay_charge");
	// 새 창을 열어 사용자 인증 서비스 요청(금융결제원 오픈뱅킹 API 활용)
	let authWindow = window.open("about:blank", "authWindow", "width=500, height=700" );
	authWindow.location = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
					+ "response_type=code"
					+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
					+ "&redirect_uri=http://localhost:8081/class_will/callback"
					+ "&scope=login inquiry transfer"
					+ "&state=12345678901234567890123456789012"
					+ "&auth_type=0";
}
</script>

</body>
</html>