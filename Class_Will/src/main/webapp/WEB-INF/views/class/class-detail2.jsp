<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 상세</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class_detail.css">
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Required JavaScript files -->
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<!-- 데이트픽커 - JS, CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js "></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<!-- 타임 픽커 -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.13.18/jquery.timepicker.min.css"> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.13.18/jquery.timepicker.min.js"></script> -->
<style>
    .flatpickr-calendar {
    
        font-size: 24px; /* 기본 글꼴 크기 조정 */
    }
    .flatpickr-calendar .flatpickr-months {
        height: 110px; /* 월 선택 영역 크기 조정 */
    }
    .flatpickr-calendar .flatpickr-days {
        grid-template-rows: repeat(6, 2em); /* 날짜 영역 크기 조정 */
    }
    .flatpickr-months .flatpickr-month {
    	height:45px;
    }
    .minusBtn {
	background: none;
	border: none;
	background-image: url("${pageContext.request.contextPath}/resources/img/headcount_minus.png");
	background-size: cover;
	width: 25px;
	height: 25px;
	}

	.addBtn {
		background: none;
		border: none;
		background-image: url("${pageContext.request.contextPath}/resources/img/headcount_plus.png");
		background-size: cover;
		width: 26px;
		height: 26px;
	}
	.disabled {
		opacity: 0.5;
		cursor: not-allowed;
	}
	.btn-custom {
		color:white;
	}
	.btn-check:checked + .btn-custom {
	    border: 2px solid white; /* 원하는 테두리 색상 */
	    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* 선택 시 테두리 효과 */
	    color: white;
	}
</style>
</head>
<body>
<header>
    <jsp:include page="../inc/top.jsp" />
</header>
<div class="container1">
    <div class="row col-md-12">
		<!-- 캐러셀 시작 -->
		<div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
		    <div class="carousel-indicators">
		        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    </div>
		    <div class="carousel-inner" role="listbox">
		        <div class="carousel-item active rounded">
		            <img src="${pageContext.request.contextPath}/resources/img/fruite-item-1.jpg" class="img-fluid bg-secondary rounded" alt="First slide">
		        </div>
		        <div class="carousel-item rounded">
		            <img src="${pageContext.request.contextPath}/resources/img/fruite-item-2.jpg" class="img-fluid rounded" alt="Second slide">
		        </div>
		    </div>
		    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
		        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Previous</span>
		    </button>
		    <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
		        <span class="carousel-control-next-icon" aria-hidden="true"></span>
		        <span class="visually-hidden">Next</span>
		    </button>
		</div>
		<!-- 캐러셀 끝 -->
    </div> <!-- row -->

    <div class="row">
    	<div class="col-md-9">
<!-- 	        <nav class="navbar navbar-expand-md navbar-dark sticky-sm-top nav1 custom-navbar"> -->
<!-- 	            <div class="container-fluid"> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section1">프로그램 상세</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section2">후기</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section3">커리큘럼</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section4">Q&A</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 				  	<ul class="navbar-nav"> -->
<!-- 					  	<li class="nav-item"> -->
<!-- 					   		<a class="navbar-item" href="#section5">환불안내</a> -->
<!-- 					    </li> -->
<!-- 				    </ul> -->
<!-- 	            </div> -->
<!-- 	        </nav> -->
			<nav class="sticky-nav">
				<div class="row">
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section1">프로그램 상세</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section2">후기</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section3">커리큘럼</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section4">Q&A</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section5">환불안내</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 box2">
						<ul class="nav-container">
							<li class="nav-item">
								<a class="navbar-item" href="#section6">1:1 채팅하기</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
	        <!-- nav bar -->
	        <!-- navbar content -->
	        <div class="content">
	            <div id="section1">
	                <p>프로그램 상세</p>
	                <!-- 프로그램 상세 내용 -->
	                111111111111111111111111111111111111111111111111111111111111111111111111111111
	                					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	            </div>
	            <div id="section2">
	                <p>후기</p>
	                <!-- 후기 내용 -->
	                후기
					2222222222222222222222222222222222222222222222222222222222222222222222222222
										어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	            </div>
	            <div id="section3">
	                <p>커리큘럼</p>
	                <!-- 커리큘럼 내용 -->
	                커리큘럼
					3333333333333333333333333333333333333333333333333333333333333333333333333333333
										어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	            </div>
	            <div id="section4">
	                <p>Q&A</p>
	                <!-- Q&A 내용 -->
	                Q&A
	                444444444444444444444444444444444444444444444444444444444444444444444444444444
	                					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	            </div>
	            <div id="section5">
	                <p>환불안내</p>
	                <!-- 환불안내 내용 -->
	                환불안내
					55555555555555555555555555555555555555555555555555555555555555555555555555555555
										어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	                
	            </div>
	            <div id="section6">
	                <p>1:1 채팅하기</p>
	                <!-- 채팅하기 내용 -->
	                채팅하기
	                6666666666666666666666666666666666666666666666666666666666666666666666666666
	                					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
					어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고어쩌고 저쩌고
	            </div>
	        </div>
	        <!-- navbar content -->
	    </div> <!-- col-md-9 -->
	    <div class="col-md-3">
	    	<form action="payment" method="post">
	    	<div class="box1">
	    		<h6>클래스 선택</h6>
	    		<h3>클래스 선택해보세요~~~</h3>
	    		<div>
			        <div id="datePicker"></div>
			        <!-- 선택된 날짜를 저장할 input -->
			        <input type="hidden" id="selected_date">
			    </div>
			    <!-- 타임 픽커 선택div -->
			    <div class="row">
			    	<p class="fw-bold fs-4 text-center text-white">시간 선택</p>
					<c:choose>
						<c:when test="${class_type eq '0' }">
					    	<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
					    		<c:forEach var="time" items="${class_schedule }" varStatus="status">
									<input type="radio" class="btn-check" name="class_schedule_time" id="vbtn-radio${status.count }" autocomplete="off">
									<label class="btn btn-custom" for="vbtn-radio${status.count }">${time.class_schedule_time }</label>
					    		</c:forEach>
							</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
			    	
			    </div>
			    <!-- 인원 수 체크 -->
				<div class="class_headcount">
					<div class="col d-flex justify-content-end mt-3">
						 <p class="fw-bold text-white">인원 수 선택</p>
					</div>
					<div class="col d-flex justify-content-end mt-1">
						<input class="reserve1 minusBtn" type="button" id="headcount_prev">
						<input class="reserve1 countText" type="text" name="class_headcount" id="class_count" value="1">
						<input class="reserve1 addBtn" type="button" id="headcount_next">
					</div>
				</div>
				
	    		<div class="row"> <!-- 해시태그 시작 -->
		    		<div class="col-md-4">
		    			<b><a href="#">#원데이</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#클래스</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#관련</a></b>
		    		</div>
		    	</div>
	    		<div class="row">
		    		<div class="col-md-4">
		    			<b><a href="#">#키워드</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#크리에이터가</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#지정가능</a></b>
		    		</div>
		    	</div>
	    		<div class="row">
		    		<div class="col-md-4">
		    			<b><a href="#">#키워드</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#크리에이터가</a></b>
		    		</div>
		    		<div class="col-md-4">
		    			<b><a href="#">#지정가능</a></b>
		    		</div>
		    	</div> <!-- 해시태그 끝 -->
		    	
		    	<div class="box3"> <!-- 좋아요, 공유버튼 -->
			    	<div class="row">
				    	<div class="col-md-4 btn mx-auto">
					    	<button type="button" class="btn btn-light w-100">
					    		<img src="${pageContext.request.contextPath}/resources/images/class/heart1.png" style="width : 25px; height : 25px">5214
					    	</button>
					    </div>
				    	<div class="col-md-4 btn mx-auto">
					    	<button type="button" class="btn btn-light w-100">
					    		<img src="${pageContext.request.contextPath}/resources/images/class/share1.png" style="width : 25px; height : 25px">공유하기
					    	</button>
						</div>
				    	<div class="col-md-4 btn mx-auto">
					    	<button type="button" class="btn btn-light w-100">Light</button>
				    	</div>
			    	</div>
			    </div> <!-- 좋아요, 공유버튼 -->
			    <div class="col-md-12">
		    		<button type="submit" class="btn btn-light w-100">신청하기</button>
		    	</div>
	    	</div>
	    	</form>
	    </div> <!-- 오른쪽 강의 소개  -->
    </div><!-- row box2-->
</div><!-- container -->
<script>
$(document).ready(function(){
    $("#timepicker").flatpickr({
        enableTime: true,
        noCalendar: true,
        dateFormat: "h:i K",
        time_24hr: true,
        defaultHour: 11,
        defaultMinute: 0,
        minTime: "10:00",
        maxTime: "18:00",
        minuteIncrement: 30,
        locale: "ko"
    });
});
</script>
<script>
document.addEventListener('DOMContentLoaded', function() {
	    
    // 클래스 타입 '0': 원데이 / '1': 장기
    let classType = "${class_type}";
    let classScheduleArray = ${class_schedule_date};
    console.log(classScheduleArray);
    
    let enableDates = [];
    let defaultDates = [];
    
    if (classType == '0') {
        enableDates = classScheduleArray.map(item => item.class_schedule_date);
    } else {
    	defaultDates = classScheduleArray.map(item => item.class_schedule_date);
    }
    
    let flatpickrOptions = {
        dateFormat: "Y-m-d",
        inline: true,
        locale: "ko" // 한글 설정
    };
    
    if (classType === '1') {
        // 장기 클래스 타입인 경우의 옵션
        flatpickrOptions.mode = "multiple"; // 다중 선택 모드
        flatpickrOptions.enable = classScheduleArray.map(item => item.class_schedule_date);
        flatpickrOptions.defaultDate = defaultDates;
        flatpickrOptions.onChange = function(selectedDates, dateStr, instance) {
            console.log(selectedDates); // 선택된 날짜 배열
            console.log(dateStr); // 선택된 날짜 배열
        };
        flatpickrOptions.onDayCreate = function(dObj, dStr, fp, dayElem) {
            // defaultDates에 포함된 날짜를 클릭할 수 없도록 설정
            const date = dayElem.dateObj;
            const formattedDate = fp.formatDate(date, "Y-m-d");

            if (defaultDates.includes(formattedDate)) {
                dayElem.classList.add("disabled-date");
                dayElem.addEventListener('click', function(e) {
                    e.stopPropagation();
                    e.preventDefault();
                }, { capture: true });
            }
        };
    } else {
        // 원데이 클래스 타입인 경우의 옵션
        flatpickrOptions.mode = "single"; // 단일 선택 모드
        flatpickrOptions.enable = enableDates; // 선택 가능한 날짜 설정
        flatpickrOptions.onChange = function(selectedDates, dateStr, instance) {
            console.log(selectedDates); // 선택된 날짜 배열
            console.log(dateStr); // 선택된 날짜 배열
        };
    }
    
    // flatpickr를 초기화합니다.
    flatpickr("#datePicker", flatpickrOptions);
});
</script>
<script>
// 인원수를 가감하는 스크립트
$(function() {
	let count = $("#class_count");
	let prev = $("#headcount_prev");
	let next = $("#headcount_next");
// 	count.val("1");
	function updateCount() {
		let currentValue = parseInt(count.val());
		if(currentValue <= 1) {
			prev.prop('disabled', true);
			prev.addClass("disabled");
		} else {
			prev.prop('disabled', false);
			prev.removeClass("disabled")
		}
	}
	
	updateCount();
	 
	next.click(function() {
		let currentValue = parseInt(count.val());
		count.val(currentValue + 1);
		updateCount();
	});
	prev.click(function() {
		let currentValue = parseInt(count.val());
		if(currentValue > 1) {
			count.val(currentValue - 1);
		}
		updateCount();
	});
	
});
</script>
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>
