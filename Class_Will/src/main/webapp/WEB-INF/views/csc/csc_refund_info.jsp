<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스윌 환불규정</title>
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
	
	.refund-info {
		width: 1200px;
		padding: 50px;
	}
	
	.list {
		padding: 15px;
	}
	
	
	

</style>
</head>
<body>
	<header>
       	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
	</header>
	
	<article>
		<div class="container refund-info">
			<h3>환불규정</h3>
			<br>
			<br>
						
			<h4>취소환불규정</h4>
			<br>
			
			<h5>제 24 조 (회사의 환불 정책)</h5>
			<br>
			
			<p>1. 회사의 본 약관상 환불정책 등은 『전자상거래 등에서의 소비자보호에 관한 법률』 및 동법 시행령 등 관련 법령을 준수합니다.</p>
			<p>2. 회원은 환불 또는 변경 요청사항을 서면으로 회사에 전달하여야 하며, 회사는 환불 요청을 접수하고 회원의 요청과 회사의 환불정책을 확인 후, 최대한 신속하게 환불하여 드립니다.</p>
			<p>3. 회원은 다음 각 호의 사항에 따라 유료 콘텐츠 서비스의 환불 또는 변경을 회사에 요청할 수 있습니다. 단, 강의 영상 파일 또는 강의 자료 파일(이후 ‘파일’이라 합니다)을 PC, 스마트폰, 스마트패드, PMP 등 전자기기에서 스트리밍 등의 방식으로 개시하거나 다운로드 하는 등의 행위 (이후 ‘이용’이라 합니다)는 1파일당 1강좌를 이용한 것으로 간주합니다.</p>
			<p>4. 회사의 상품 등에 관한 환불정책은 다음과 같습니다.</p>
			<div class="list">
				<p> 가. 결제 후 </p>
				<p> 나. 결제일로부터 7일 이내 및 3개 미만의 파일을 이용하신 경우 환불을 요청하시면 전액 환불이 가능합니다.</p>
				<p> 다. 결제일로부터 7일 이내 3개 이상의 파일을 이용하신 경우 환불을 요청하시면 실 결제금액의 1/2에 해당하는 금액을 환불해드립니다.</p>
				<p> 라. 결제일로부터 7일 초과 10일 이내 및 3개 미만의 파일을 이용하신 경우 실 결제금액의 1/2에 해당하는 금액을 환불해드립니다.</p>
				<p> 마. 결제일로부터 7일 초과 10일 이내 및 3개 이상의 파일을 이용하신 경우 환불 가능 금액이 없습니다.</p>
				<p> 바. 결제일로부터 10일 초과 시 환불 가능 금액이 없습니다.</p>
				<p> 사. 환불 금액 확인 후 실제 환불이 이루어지기 전 추가적으로 강의 영상 파일 또는 강의 자료 파일을 이용한 상황이 확인되면 환불 가능 금액은 달라질 수 있습니다.</p>
				<p> 마. 결제일로부터 7일 초과 10일 이내 및 3개 이상의 파일을 이용하신 경우 환불 가능 금액이 없습니다.</p>
				<p> 아. 평생 시청 수강권의 경우 수강 일수에 제한이 없으나, 기간 선택 수강권은 구매 시점에 선택하신 기간에 해당하는 일 수만큼 수강이 가능하며, 일시 정지 및 기간 연장이 불가합니다.</p>
				<p> 자. 기간 선택 수강권은 평생 시청 수강권으로 전환이 불가합니다.</p>
				<p> 차. 1:1 코칭권의 경우 결제일로부터 10일까지 전액 환불이 가능하며, 결제일로부터 10일 초과시, 사용 여부에 관계없이 환불 가능 금액이 없습니다.</p>
			</div>
<!-- 			<table class="table"> -->
<!-- 				<tr> -->
<!-- 					<th>결제기준일</th> -->
<!-- 					<th>클래스기준일</th> -->
<!-- 					<th>환불률</th> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
			
			<p>5. 특별강좌는 이벤트성 강좌, 비정규 강좌, 특별기획 강좌 등으로서 이는 별도의 수강 취소, 변경 및 환불정책이 적용될 수 있습니다.</p>
			<p>6. 신용카드 결제, 휴대폰 결제, 가상계좌 이체 등 회원님이 결제한 수단과 동일한 방식으로 환불하는 것을 원칙으로 합니다. 단, 부분 환불 등 환불이 불가능한 경우에 한해 기타 협의된 방식으로 환불하여 드립니다.</p>
			<p>7. 환불 금액은 정가가 아닌 실제 결제 금액을 기준으로 계산됩니다.</p>
			<p>8. 회사의 환불 예외사항은 다음과 같습니다.</p>
			<div class="list">
				<p> 가. 회원이 관계법령 및 본 약관의 규정을 위반하여 회사로부터 강제탈퇴 처리가 되는 경우에는 본 조의 환불정책이 적용되지 않습니다.</p>
				<p> 나. 회사가 회원에게 무료로 지급한 할인쿠폰 등으로 인해 회원이 획득하게 된 금액에 대해서는 환불되지 않습니다.</p>
			</div>	
			<p>9. 본 조 제4항에도 불구하고 회사는 신뢰도 제고나 이벤트를 위해 일시적으로 환불 조건을 완화할 수 있습니다.</p>
			
		</div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
</body>
</html>