<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLASS-WILL event</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<!-- Icon Font Stylesheet -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/> -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>


<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Hahmlet:wght@100..900&family=Nanum+Gothic&display=swap');

* {
  font-family: "Nanum Gothic", sans-serif;
  font-weight: 400;
  font-style: normal;
}
main {
	width: 1400px;
	margin: 0 auto;
}

tr td{
 	border: 1px solid lightgray; 
}
.eventTable{
	margin: 0 auto;
	width: 60%;
	text-align: center;
	font-size: 20px;
	margin-top: 40px;
}
tr{
	height: 60px;
}
td > img{
	width: 100%;
}

.margin_use {
	margin-top: 200px;
}

</style>
</head>
<body>
<header>
	<jsp:include page="/WEB-INF/views/inc/header.jsp"></jsp:include>
</header>
<div class="container">
	<div class="row margin_use mx-5">
		<p class="fs-4 text-white"><i class="fa-duotone fa-gift"></i>친구 초대 이벤트</p>	
	</div>
</div>

	<main>
		<table class="eventTable">
			<tr>
				<td style="background:black; color: white;">이벤트</td>
				<td colspan="3">${event.event_subject}</td>
			</tr>
			<tr>
				<td style="background:black; color: white;">등록날짜</td>
				<td><fmt:formatDate value="${event.event_reg_date}" pattern="yyyy-MM-dd"/></td>
				<td style="background:black; color: white;">이벤트기간</td>
				<td><fmt:formatDate value="${event.event_start_date}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${event.event_end_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td colspan="4">
					<c:if test="${not empty event.event_image}">
						<img alt="본문이미지" src="${pageContext.request.contextPath}/resources/upload/${event.event_image}"
							<c:if test="${event.event_type_name eq '할인이벤트'}"> 
								onclick="giveCoupon(${event.coupon_type_num}, ${event.event_num})"
							</c:if>
						>
					</c:if>
				</td>
			</tr>
		</table>

		<div align="center">
			<button type="submit" class="btn btn-outline-primary" id="searchBtn" onclick="goEventMain()">목록으로</button>
		</div>

	</main>

<footer>
	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
</footer>
	
	<script type="text/javascript">
		function giveCoupon(coupon_type_num, event_num) {
			location.href = "giveCoupon?coupon_type_num=" + coupon_type_num + "&event_num=" + event_num;
		}
		
		function goEventMain() {
			location.href="event";
		}
		
		
	</script>


</body>
</html>