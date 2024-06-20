<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>나의 클래스 후기</title>
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
<link rel="stylesheet"
	href="https://uicdn.toast.com/tui.grid/latest/tui-grid.css" />
<script
	src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"></script>
<script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>
<style>
body {
	
}

/* table { */
/* 	border-collapse: collapse; */
/* 	box-shadow: 4px 4px 10px 0 rgba(0, 0, 0, 0.1); */
/* 	background-color: white; */
/* 	width: 100%; */
/* 	border-radius: 10px; */
/* 	font-size: 15px; */
/* } */

table {
	border-collapse: collapse;
	box-shadow: 4px 4px 10px 0 rgba(0, 0, 0, 0.1);
	background-color: white;
	width: 100%;
	border-radius: 10px;
	font-size: 15px;
	table-layout: fixed; /* 테이블 레이아웃 고정 */
	word-wrap: break-word; /* 단어를 셀 내에서 줄바꿈 */
}


/* 테이블 행 */
th, td {
	padding: 15px 8px;
	border-bottom: 1px solid #ddd;
	color: black;
}

th {
	background-color: #eee;
	color: black;
}

td>a {
	display: -webkit-box;
	word-wrap: break-word;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
	overflow: hidden;
	text-overflow: ellipsis;
}

/* 테이블 올렸을 때 */
tbody tr:hover {
	background-color: white;
	opacity: 0.9;
	cursor: pointer;
}

/* 테이블 비율 */
th:nth-child(1), td:nth-child(1) {
	padding-left: 20px;
}

th:nth-child(2), td:nth-child(2) {
	width: 130px;
	text-align: center;
}
@media (max-width: 768px) {
	.table-responsive {
		overflow-x: auto; /* 가로 스크롤 가능하도록 설정 */
	}
	.table {
		min-width: 600px; /* 테이블 최소 너비 설정 */
	}
}
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
	<!-- Spinner End -->

	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">
			마이페이지<i class="bi bi-pencil-square"></i>나의 클래스 후기
		</h1>
	</div>

	<div class="container-fluid fruite">
		<div class="container">
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/mypage/sideBar.jsp" />

						<div class="col-lg-9 creator-body">
							<div class="creator-event mt-5">
								<div class="col-md-12 text-center h2 mb-5">항상 고마운
									${member.member_nickname}님</div>
								<!-- 								여기부터 토스트 ui -->
								<div class="table-responsive">
									<h2>후기를 적을 수 있는 클래스가 ? 개 있습니다.</h2>
									<p>클래스 정보</p>
									<table class="table table-hover">
										<thead>
											<tr>
												<th>클래스 이름</th>
												<th>결제 상태</th>
												<th>교육 일정</th>
												<th>수료 여부</th>
												<th>등록하기</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>2</td>
												<td>3</td>
												<td>4</td>
												<td>
													<button class="btn btn-primary" onclick="resistReview()">등록하기</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="table-responsive">
									<h2>클래스 후기</h2>
									<p>클래스 정보</p>
									<table class="table table-hover">
										<thead>
											<tr>
												<th>클래스 이름</th>
												<th>리뷰 제목</th>
												<th>리뷰 별점</th>
												
												<th>작성 날짜</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="review" items="${memberReviews}"
												varStatus="loop">
												<tr>
													<td>${review.class_name}</td>
													<td><a href="javascript:void(0);"
														onclick="showReviewModal('${review.class_review_content}')"
														style="color: black;">${review.class_review_subject}</a></td>
													<td class="stars"><script>
							                         // JavaScript로 별점을 동적으로 생성하는 코드
							                           const starCount = ${review.class_review_rating}; // 별점 점수
							                           const filledStars = '<i class="bi bi-star-fill text-warning"></i>'.repeat(starCount);
							                           const emptyStars = '<i class="bi bi-star text-warning"></i>'.repeat(5 - starCount);
							                           document.write(filledStars + emptyStars);
							                       </script></td>
													
													<td>${review.class_review_date}</td>
													<td>
														<button class="btn btn-primary" onclick="location.href='edit-review-page?review_code=${review.class_review_code}'">수정</button>
													</td>
													<td>
														<button class="btn btn-danger"
															onclick="deleteReview(${review.class_review_code})">삭제</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="reviewModal" tabindex="-1"
		aria-labelledby="reviewModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="reviewModalLabel" style="color: black;">리뷰
						내용</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close" style="color: black;"></button>
				</div>
				<div class="modal-body">
					<p id="reviewContent" style="color: black;"></p>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>
	   function showReviewModal(reviewContent) {
           $('#reviewContent').text(reviewContent); // 리뷰 내용을 모달의 텍스트로 설정
           $('#reviewModal').modal('show'); // 모달 창 열기
       }
	</script>

</body>
</html>