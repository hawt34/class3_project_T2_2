<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/csc_notice.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<style>
	th[colspan="4"] {
		text-align: center;
		font-size: 1.2em;
	}
	
	body{
		color: white;
	}
</style>
    <head>
        <meta charset="utf-8">
        <title>자주묻는질문</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

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
    </head>

    <body>
        <!-- header Start -->
		<header>
        	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
		</header>
		<!-- header End -->
		
		<!-- Spinner Start (로딩시 뜨는 동그라미)-->
	        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
	            <div class="spinner-grow text-white" role="status"></div>
	        </div>
        <!-- Spinner End -->
<div class="container main">
	<div class="row">
		<!-- content 영역 - FAQ -->
		<div class="col-md-12">
			<div class="row">
				<div id="csc_mainTitle">
					<h1>FAQ</h1>
				</div>
			    <div class="category-buttons">
			        <button type="button" class="btn btn-primary" onclick="location.href='Csc'">공지사항</button>
			        <button type="button" class="btn btn-secondary" onclick="location.href='Csc'">FAQ</button>
			    </div>
			<hr>
			</div>
			<!-- 검색창 -->
			<div class="row">
				<div class="csc_faq_search">
					<div class="inner">
						<form action="javascript:void(0);" method="get" name="search_faq" id="faqSearch">
							<label for="csc_faq_search">빠른검색</label>
							<input type="text" id="csc_faq_search" name="faqSearchKeyword" placeholder="검색어 입력">
							<input type="submit" value="검색">
						</form>
					</div>
				</div>
			</div>
			<!-- 검색창 끝 -->
			<!-- 구분 카테고리 시작 -->
			<div class="row mt-3">
				<div class="csc_faq_sel">
					<select id="faq_category" name="faq_category" class="form-select form-select-sm w-25">
						<option value="">전체</option>
						<option value="예매/결제" data-category="예매/결제">예매/결제</option>
						<option value="영화관이용" data-category="영화관이용">영화관이용</option>
						<option value="쿠폰" data-category="쿠폰">쿠폰</option>
						<option value="스토어" data-category="스토어">스토어</option>
						<option value="홈페이지/모바일" data-category="홈페이지/모바일">홈페이지/모바일</option>
					</select>
				</div>
			</div>
			<hr>
			<!-- 자주묻는 질문 게시판 -->
			<div class="csc_accordion" >
<%-- 				<c:choose> --%>
<%-- 					<c:when test="${empty faqList }"> --%>
<!-- 						<div align="center">faq 게시물이 없습니다</div> -->
<%-- 					</c:when> --%>
<%-- 					<c:otherwise> --%>
<%-- 						<c:forEach var="faq" items="${faqList }" varStatus="status"> --%>
<%-- 							<input type="checkbox" id="answer${status.index + 1 }"> --%>
<%-- 							<label for="answer${status.index + 1}"><span class="faq_category">[${faq.faq_category}]</span> ${faq.faq_subject }<em></em></label> --%>
<!-- 							<div> -->
<!-- 								<span><em></em>ANSWER</span><br> -->
<%-- 								<p>${faq.faq_content }</p>  --%>
<!-- 							</div> -->
<%-- 						</c:forEach> --%>
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>
			</div>
			<hr>
		</div>
	</div>
</div>
        
        <footer>
        	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
		</footer>

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    </body>

</html>