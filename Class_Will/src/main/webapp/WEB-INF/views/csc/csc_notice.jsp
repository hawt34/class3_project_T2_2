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
        <!-- Spinner End -->
		<div class="container">
	<div class="row">
		<!--사이드바 영역  -->
		<!-- content 영역 - 게시판 형식의 공지/뉴스 -->
		<div class="col-12 main">
			<div id="csc_mainTitle">
				<h1>공지사항</h1>
			</div>
			    <div class="category-buttons">
			        <button type="button" class="btn btn-primary" onclick="location.href='Csc'">공지사항</button>
			        <button type="button" class="btn btn-secondary" onclick="location.href='Csc_Faq'">FAQ</button>
			        <button type="button" class="btn btn-success" onclick="location.href='Csc_Oto'">1대1 문의</button>
			    </div>
			<hr>
			<div class="row">
			
				<div class="col-1 mt-3" id ="noticeCount">
					<span id="count"><!--전체 갯수, 각 구분마다 갯수 --></span>
				</div>
				
				<div class="col-11">
					<div class="csc_local" data-theater="">전체</div>
					<div class="csc_local" data-theater="해운대점">해운대점</div>
					<div class="csc_local" data-theater="센텀점">센텀점</div>
					<div class="csc_local" data-theater="서면점">서면점</div>
					<div class="csc_local" data-theater="남포점">남포점</div>
					<div class="csc_local" data-theater="부산대점">부산대점</div>
					<div class="csc_local" data-theater="사직점">사직점</div>
					<div class="csc_local" data-theater="영도점">영도점</div>
					<div class="csc_local" data-theater="덕천점">덕천점</div>
					<div class="csc_local" data-theater="정관점">정관점</div>
					<div class="csc_local" data-theater="사상점">사상점</div>
					
					<div class="csc_search">
						<!--공지 찾는 검색창  -->
						<form method="post" action="javascript:void(0);" id="notice_search">
							<input type="text" placeholder="검색어를 입력해주세요" name="noticeSearchKeyword" id="noticeSearchKeyword"> 
								<i class="bi bi-search searchIcon"></i>
							<div class="csc_searcher">
								<input type="submit" value="검색">
							</div>
						</form>
					</div>
					
				</div>
			</div>
			<hr>
			<!-- 게시판 -->
			<div class="row">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>공지구분</th>
							<th>극장</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody class="noticeTheaterList">
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${empty noticeList }"> --%>
<!-- 								<tr> -->
<!-- 									<th colspan="4">게시물이 없습니다</th> -->
<!-- 								</tr> -->
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								<c:forEach var="notice" items="${noticeList }"> --%>
<!-- 									<tr> -->
<%-- 										<td>${notice.notice_num }</td> --%>
<%-- 										<td>${notice.notice_category}</td> --%>
<%-- 										<td>${notice.theater_name }</td> --%>
<%-- 										<td onclick="location.href='csc_notice_detail?notice_num=${notice.notice_num}'">${notice.notice_subject }</td> --%>
<%-- 										<td>${notice.notice_fdt }</td> --%>
<!-- 									</tr> -->
<%-- 								</c:forEach> --%>
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
					</tbody>
				</table>
			</div>
			<!-- 페이지네이션-페이징 -->
			<hr>
			
			<div class="notice_pageArea">
				<nav aria-label="Page navigation example" >
					<ul class="pagination">
<%-- 						<li class="page-item <c:if test="${pageNum eq 1 }">disabled</c:if>" > --%>
<%-- 							<a class="page-link" href="csc_notice?pageNum=${pageNum - 1}" aria-label="Previous" > --%>
<!-- 							<span aria-hidden="true" >&laquo;</span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 						<c:forEach var="i" begin="${pageList.startPage }" end="${pageList.endPage }"> --%>
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${pageNum eq i }"> --%>
<%-- 									<li class="page-item active"><a class="page-link" >${i}</a></li> --%>
<%-- 								</c:when> --%>
<%-- 								<c:otherwise> --%>
<%-- 									<li class="page-item"><a class="page-link" href="csc_notice?pageNum=${i}">${i}</a></li> --%>
<%-- 								</c:otherwise> --%>
<%-- 							</c:choose> --%>
<%-- 						</c:forEach> --%>
						
<%-- 						<li class="page-item <c:if test="${pageNum eq pageList.maxPage }">disabled</c:if>"> --%>
<%-- 							<a class="page-link" href="csc_notice?pageNum=${pageNum + 1}" aria-label="Next"> --%>
<!-- 							<span aria-hidden="true">&raquo;</span> -->
<!-- 							</a> -->
<!-- 						</li> -->
					</ul>
				</nav>
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