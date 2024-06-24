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

	<script>
    	
		$(document).ready(function() {
			$("#classSelect").trigger("change");
			
			$('#classSelect').change(function() {
				// ajax로 기존 선택했던 날짜 가져오기
				var classCode = $('#classSelect').val();
				$.ajax({
					url: "getSelectedDates",
					method: "get",
					data: { "classCode" : classCode },
					success: function(data) {
						// JSON 형태로 파싱
						var scheduleData = JSON.parse(JSON.stringify(data));
						// 날짜 배열 생성
						var selectedDates = [];
						scheduleData.forEach(function(item) {
				        	if (item.class_schedule_date) {
				            	selectedDates.push(item.class_schedule_date);
				            }
				        });
						selectedDates = [...new Set(selectedDates)];
						debugger;
						$('#scheduleTableContainer').empty();
						if(selectedDates.length > 0){ // 등록된 일정이 있다면 달력 안보이기
							$('.creator-plan-bottom').addClass('hidden');
							$('#datepicker').addClass('hidden');
							
							var tableHtml = '<div align="right"><button class="deleteAllBtn btn btn-outline-primary mb-2">전체삭제</button></div>';
                                tableHtml += '<table><tr><th>날짜</th><th>회차</th><th>시작 시간</th><th>종료 시간</th><th>참여 가능 인원</th><th>일정삭제</th></tr>';
                            
                            scheduleData.forEach(function(schedule) {
                                tableHtml += '<tr>';
                                tableHtml += '<td>' + schedule.class_schedule_date + '</td>';
                                tableHtml += '<td>' + schedule.class_round + '</td>';
                                tableHtml += '<td>' + schedule.class_st_time + '</td>';
                                tableHtml += '<td>' + schedule.class_ed_time + '</td>';
                                tableHtml += '<td>' + schedule.class_remain_headcount + "/" + schedule.class_total_headcount + '</td>';
                                tableHtml += '<td><button type="button" class="scheduleBtn btn btn-outline-primary" data-class-schedule-code="' + schedule.class_schedule_code + '">삭제</button></td>';
                                tableHtml += '</tr>';
                            });
                            
                            tableHtml += '</table>';
                            
                            // 테이블을 추가할 위치에 HTML 삽입
                            $('#scheduleTableContainer').append(tableHtml);
							
						} else{ // 일정이 등록된게 없으면 보이기
							$('.creator-plan-bottom').removeClass('hidden');
							$('#datepicker').removeClass('hidden');
							$('#scheduleTableContainer').empty();
						}
					}
				});	
			});
			
			// 이벤트 위임을 사용하여 동적으로 생성된 버튼에 이벤트 바인딩
// 			$(document).on('click', '.scheduleBtn', function() {
// 			    var classScheduleCode = $(this).data('class-schedule-code');
// 			    deleteSchedule(classScheduleCode);
// 			});
			
// 			window.deleteSchedule = function(classScheduleCode) {
// 				var classCode = $('#classSelect').val();
// 				if(confirm("일정을 삭제하시겠습니까?")){
// 			      $.ajax({
// 			          url: "deleteSchedule",
// 			          method: "get",
// 			          data: { "classScheduleCode": classScheduleCode },
// 			          success: function(data) {
// 			        	alert(data.answer);
// 			        	// 페이지 로드 시 classSelect 강제 change 이벤트 시행
// 			  			$("#classSelect").trigger("change");
// 			          }
// 			      });
// 				} else{
// 					return;
// 				}
// 			}

// 			$(document).on('click', '.deleteAllBtn', function() {
// 			    deleteAllSchedule();
// 			});
			
// 			window.deleteAllSchedule = function() {
// 				var classCode = $('#classSelect').val();
// 				if(confirm("전체일정을 삭제하시겠습니까?")){
// 			      $.ajax({
// 			          url: "deleteAllSchedule",
// 			          method: "get",
// 			          data: { "classCode": classCode },
// 			          success: function(data) {
// 			        	alert(data.answer);
// 			        	// 페이지 로드 시 classSelect 강제 change 이벤트 시행
// 			  			$("#classSelect").trigger("change");
// 			          }
// 			      });
// 				} else{
// 					return;
// 				}
// 			}

        });
    </script>


</body>
</html>