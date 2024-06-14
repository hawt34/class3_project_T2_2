<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js "></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
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
</style>
</head>
<body>
	<div>
        <label for="datePicker">날짜 선택</label>
        <div id="datePicker" class="form-control"></div>
    </div>


<script>
document.addEventListener('DOMContentLoaded', function() {
	var today = new Date();
    var yesterday = new Date(today);
    yesterday.setDate(today.getDate() - 1);
	
    var defaultDates = ["2024-06-15", "2024-06-20"];
	
	flatpickr("#datePicker", {
		mode: "multiple", // 다중 선택 모드
		dateFormat: "Y-m-d",
		inline: true,
		locale: "ko", // 한글 설정
		enable: defaultDates,
        defaultDate: defaultDates,
		onChange: function(selectedDates, dateStr, instance) {
			console.log(selectedDates); // 선택된 날짜 배열
		}
	});
});
</script>
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
<%-- <script src="${pageContext.request.contextPath}/resources/js/main.js"></script> --%>
</body>
</html>