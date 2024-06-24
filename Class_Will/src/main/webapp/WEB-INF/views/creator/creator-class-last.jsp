<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Multi Datepicker Example</title>
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

<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-class-plan.css"
	rel="stylesheet">
	
<!-- Toast UI Grid Script -->
<link rel="stylesheet" href="https://uicdn.toast.com/tui.grid/latest/tui-grid.css">
 
<!-- Toast UI Grid Script -->
<script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>

<!-- Toast UI Pagination CSS -->
<link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css">

<!-- Toast UI Pagination Script -->
<script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>

<style>
.delete-btn {
	display: none;
	cursor: pointer;
	color: red;
}

tr:hover .delete-btn {
	display: inline;
}

.hidden {
	display: none;
}

th, td {
	text-align: center;
}
</style>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.4/jquery-ui.multidatespicker.min.js"></script>

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
		<h1 class="text-center text-white display-6">Creator</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="main">Home</a></li>
			<li class="breadcrumb-item"><a href="main">크리에이터 페이지</a></li>
			<li class="breadcrumb-item active text-white">클래스 일정관리</li>
		</ol>
	</div>
	<!-- Single Page Header End -->

	<div class="container-fluid fruite">
		<div class="container">
			<h1 class="mb-4 text-white">Creator Center</h1>
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

						<div class="col-md-9 creator-body">
								<jsp:include page="/WEB-INF/views/creator/classSelect.jsp" />
								<!-- 	셀렉트박스 -->
								<div class="creator-main-table col-xl-12 mb-5">

									<div id="scheduleTableContainer" class="col-md-12">
										<div class="row">
					                        <div class="col-md-12">
					                            <div id="grid"></div>
					                            <div id="pagination"></div>
					                        </div>
					                    </div>
									</div>
									

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

	<!-- JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
	<!-- Toast UI Grid Script -->
    <script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>

	<script>
    	
		$(document).ready(function() {
			$("#classSelect").trigger("change");
			
			$('#classSelect').change(function() {
				// ajax로 기존 선택했던 날짜 가져오기
				var classCode = $('#classSelect').val();
				$.ajax({
					url: "getEndedClass",
					method: "get",
					data: { "classCode" : classCode },
					success: function(result) {
						// JSON 형태로 파싱
						var scheduleData = JSON.parse(JSON.stringify(result));
						// 날짜 배열 생성
						var selectedDates = [];
						scheduleData.forEach(function(item) {
				        	if (item.class_schedule_date) {
				            	selectedDates.push(item.class_schedule_date);
				            }
				        });
						selectedDates = [...new Set(selectedDates)];
						$('#scheduleTableContainer').empty();
						if(selectedDates.length > 0){ // 등록된 일정이 있다면 달력 안보이기
							
							const data = result;
					        	
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
// 					                     location.href="creator-classModify";
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
					                 { header: '클래스제목', name: 'class_name', width: 'auto' },
					                 { header: '지원상태', name: 'code_value' },
					                 { header: '카테고리', name: 'cate', className: 'hide-column' },
					                 { header: '공개여부', name: 'hide', className: 'hide-column' },
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
						
							
//                           $('#scheduleTableContainer').append(tableHtml);
							
						} else{ // 일정이 등록된게 없으면 보이기
							$('#scheduleTableContainer').empty();
						}
					}
				});	
			});
			

        });
    </script>


</body>
</html>