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
</style>
    <head>
        <meta charset="utf-8">
        <title>고객센터</title>
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
<div class="container">
	<div class="row">
		<div class="col-12 main">
			<h3>공지사항</h3>
			<hr>
			<div>
				<p><span>[부기무비]</span> asdadfsf </p>
				<p><span>문의 지점</span> | 444 &nbsp;&nbsp;&nbsp; <span>작성일</span> | asdfasdf
			</div>
			<hr>
			<div>
				adsfvasdvasdvasdvasdvasdvasdvasdvasdvasdvasdv	
			</div>
			<hr>
			<!-- 이전, 다음 페이징 -->
			<div>
				
				<span class="csc_paging"><a id="prevLink1" href="csc_notice_detail?notice_num=${notice.prev }" >&laquo;이전</a></span>
				<span class="csc_paging"><a id="nextLink1" href="csc_notice_detail?notice_num=${notice.next }" >다음&raquo;</a></span>
			</div>	
			<!-- 목록 버튼 -->
			<div class="csc_detail_button">
				<input type="button" value="목록" onclick="location.href='csc_notice'">
			</div>
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