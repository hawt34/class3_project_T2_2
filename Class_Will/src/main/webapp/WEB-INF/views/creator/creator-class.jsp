<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<!-- 	rel="stylesheet"> -->
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-class.css" rel="stylesheet">
	
 <!-- Custom styles for this template-->
   <link rel="stylesheet" href="https://uicdn.toast.com/tui.grid/latest/tui-grid.css">
    
    <!-- Toast UI Grid Script -->
    <script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>
    
    <!-- Toast UI Pagination CSS -->
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css">

    <!-- Toast UI Pagination Script -->
    <script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/inc/top.jsp" />
	</header>

	<!-- Spinner Start (로딩시 뜨는 동그라미)-->
	<div id="spinner"
		class="show w-100 vh-100 bg-yellow position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-white" role="status"></div>
	</div>
	<!-- Spinner End -->

	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Creator</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="main">Home</a></li>
			<li class="breadcrumb-item"><a href="main">크리에이터 페이지</a></li>
			<li class="breadcrumb-item active text-white">클래스</li>
		</ol>
	</div>
	<!-- Single Page Header End -->

	<div class="container-fluid fruite">
		<div class="container">
			<h1 class="mb-4 text-white">Creator Center</h1>
			<div class="row g-4">
				<div class="col-md-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

						<div class="col-md-9 creator-body">
						<!-- 등록버튼 -->
							<div class="mb-3 col-md-12" align="right">
								<button class="category-btn classReg" value="respond" onclick="location.href='creator-classReg'">클래스등록</button>
								<button class="category-btn classReg" value="respond" onclick="location.href='creator-class-plan'">클래스일정</button>
							</div>
							<!-- 	셀렉트박스 -->
<!-- 							<div class="col-md-12 searchBox" align="center"> -->
<!-- 								<div class="col-xl-12"> -->
<!-- 									<div class="bg-light creator-class-searchBox py-3 px-3"> -->
<!-- 										<div class="creator-class-search"> -->
<!-- 											<form action="#" class="d-flex justify-content-between"> -->
<!-- 												<input type="text" name="searchKeyword" class="col-md-10 rounded" placeholder="클래스 이름을 입력하세요" value=""> -->
<!-- 												<input type="submit" class="btn btn-dark" value="검색"> -->
<!-- 											</form> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							
							<div class="creator-main-table col-md-12 mb-5">
							
							<div class="row">
		                        <div class="col-md-12">
		                            <div id="grid"></div>
		                            <div id="pagination"></div>
		                        </div>
		                    </div>
								<!-- 테이블 -->
<!-- 								<table> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th>제목</th> -->
<!-- 											<th>상태</th> -->
<!-- 											<th>카테고리</th> -->
<!-- 											<th>노출여부</th> -->
<!-- 											<th>생성일</th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody> -->
<!-- 										<tr> -->
<!-- 											<td><a>당신도 할 수 있다! css 클래스당신도 할 수 있다! css 클래스당신도 할 수 있다! css 클래스당신도 할 수 있다! css 클래스당신도 할 수 있다! css 클래스</a></td> -->
<!-- 											<td>제작중</td> -->
<!-- 											<td>개발</td> -->
<!-- 											<td>비공개</td> -->
<!-- 											<td>2024-06-10</td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<td><a>당신도 할 수 있다! css 클래스</a></td> -->
<!-- 											<td>제작중</td> -->
<!-- 											<td>IT</td> -->
<!-- 											<td>비공개</td> -->
<!-- 											<td>2024-06-10</td> -->
<!-- 										</tr> -->
					
<!-- 									</tbody> -->
<!-- 								</table> -->
							</div>
						</div>
					</div>



					<!-- 					<div class="col-12"> -->
					<!-- 						<div class="pagination d-flax justify-content-center mt-5"> -->
					<!-- 							<a href="#" class="rounded">&laquo;</a> <a href="#" -->
					<!-- 								class="active rounded">1</a> <a href="#" class="rounded">2</a> <a -->
					<!-- 								href="#" class="rounded">3</a> <a href="#" class="rounded">4</a> -->
					<!-- 							<a href="#" class="rounded">5</a> <a href="#" class="rounded">6</a> -->
					<!-- 							<a href="#" class="rounded">&raquo;</a> -->
					<!-- 						</div> -->
					<!-- 					</div> -->

				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->



	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!-- Toast UI Grid Script -->
    <script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>
    
	<script type="text/javascript">
	
	 $(document).ready(function () {
	        const data = ${cl_list};
	        	
	 	    const itemsPerPage = 10;
	 	    let currentPage = 1;
	
	         class ButtonRenderer {
	             constructor(props) {
	                 const el = document.createElement('button');
	                 el.className = 'btn btn-primary btn-sm';
	                 el.innerText = '상세보기';
	                 el.addEventListener('click', () => {
	                     const rowKey = props.grid.getIndexOfRow(props.rowKey);
	                     const rowData = props.grid.getRow(rowKey);
	                     const memberCode = rowData.member_code;
// 	                     window.open("admin-member-detail?member_code=" + memberCode, "회원 상세보기", "height=600px, width=800px");
	                     location.href="creator-classModify";
	                 });
	                 this.el = el;
	             }
	             getElement() {
	                 return this.el;
	             }
	             render(props) {
	                 this.el.dataset.rowKey = props.rowKey;
	                 this.el.dataset.columnName = props.columnName;
	                 this.el.value = props.value;
	             }
	         }
	
	         const grid = new tui.Grid({
	             el: document.getElementById('grid'),
	             data: data,
	             columns: [
// 	                 { header: '클래스코드', name: 'class_code', editor: 'text' },
	                 { header: '클래스제목', name: 'class_name', editor: 'text' },
	                 { header: '지원상태', name: 'class_regist_status', editor: 'text' },
	                 { header: '카테고리', name: 'class_big_category', editor: 'text' },
	                 { header: '공개여부', name: 'class_hide', editor: 'text' },
	                 {
	                     header: 'Action',
	                     name: 'action',
	                     renderer: {
	                         type: ButtonRenderer
	                     }
	                 }
	             ],
	             rowHeaders: ['rowNum'],
	             bodyHeight: 418,
	 	        pageOptions: {
	 	            useClient: true,
	 	            perPage: itemsPerPage
	 	        }
	         });
	         
	         $('#btn-apply').on('click', function () {
	             const modifiedRows = grid.getModifiedRows();
	             const jsonData = JSON.stringify(modifiedRows);
	             console.log(jsonData);
	
	             fetch('/insert', {
	                 method: 'POST',
	                 headers: {
	                     'Content-Type': 'application/json'
	                 },
	                 body: jsonData
	             })
	             .then(response => response.json())
	             .then(data => {
	                 if (data.success) {
	                     alert('변경 사항이 성공적으로 적용되었습니다.');
	                     location.reload();
	                 } else {
	                     alert('변경 사항 적용 실패: ' + data.message);
	                 }
	             })
	             .catch(error => {
	                 console.error('Error:', error);
	                 alert('변경 사항 적용 실패: 서버 오류');
	             });
	         });
	     });
	
	</script>
	


</body>
</html>