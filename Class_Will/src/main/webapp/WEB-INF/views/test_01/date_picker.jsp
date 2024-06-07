<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQUERY -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- JQUERY - UI.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- JQUERY - UI.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style type="text/css">
 .ui-widget-header { border: 0px solid #dddddd; background: #fff; } 

 .ui-datepicker-calendar>thead>tr>th { font-size: 14px !important; } 

 .ui-datepicker .ui-datepicker-header { position: relative; padding: 10px 0; } 

 .ui-state-default,
 .ui-widget-content .ui-state-default,
 .ui-widget-header .ui-state-default,
 .ui-button,
 html .ui-button.ui-state-disabled:hover,
 html .ui-button.ui-state-disabled:active { border: 0px solid #c5c5c5; background-color: transparent; font-weight: normal; color: #454545; text-align: center; } 

 .ui-datepicker .ui-datepicker-title { margin: 0 0em; line-height: 16px; text-align: center; font-size: 14px; padding: 0px; font-weight: bold; } 

 .ui-datepicker { display: none; background-color: #fff; border-radius: 4px; margin-top: 10px; margin-left: 0px; margin-right: 0px; padding: 20px; padding-bottom: 10px; width: 300px; box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1); } 

 .ui-widget.ui-widget-content { border: 1px solid #eee; } 

 #datepicker:focus>.ui-datepicker { display: block; } 

 .ui-datepicker-prev,
 .ui-datepicker-next { cursor: pointer; } 

 .ui-datepicker-next { float: right; } 

 .ui-state-disabled { cursor: auto; color: hsla(0, 0%, 80%, 1); } 

 .ui-datepicker-title { text-align: center; padding: 10px; font-weight: 100; font-size: 20px; } 

 .ui-datepicker-calendar { width: 100%; height:90%; } 

 .ui-datepicker-calendar>thead>tr>th { padding: 5px; font-size: 20px; font-weight: 400; } 

 .ui-datepicker-calendar>tbody>tr>td>a { color: #000; font-size: 12px !important; font-weight: bold !important; text-decoration: none;}

 .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover { cursor: auto; background-color: #fff; } 

 .ui-datepicker-calendar>tbody>tr>td { border-radius: 100%; width: 44px; height: 30px; cursor: pointer; padding: 5px; font-weight: 100; text-align: center; font-size: 12px; } 

 .ui-datepicker-calendar>tbody>tr>td:hover { background-color: transparent; opacity: 0.6; } 

 .ui-state-hover,
 .ui-widget-content .ui-state-hover,
 .ui-widget-header .ui-state-hover,
 .ui-state-focus,
 .ui-widget-content .ui-state-focus,
 .ui-widget-header .ui-state-focus,
 .ui-button:hover,
 .ui-button:focus { border: 0px solid #cccccc; background-color: transparent; font-weight: normal; color: #2b2b2b; } 

 .ui-widget-header .ui-icon { background-image: url('${pageContext.request.contextPath}/resources/img/btns.png'); } 

 .ui-icon-circle-triangle-e { background-position: -20px 0px; background-size: 36px; } 

 .ui-icon-circle-triangle-w { background-position: -0px -0px; background-size: 36px; } 

 .ui-datepicker-calendar>tbody>tr>td:first-child a { color: red !important; } 

 .ui-datepicker-calendar>tbody>tr>td:last-child a { color: #0099ff !important; } 

 .ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 

 .ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 

 .ui-state-highlight,
 .ui-widget-content .ui-state-highlight,
 .ui-widget-header .ui-state-highlight { border: 0px; background: #f1f1f1; border-radius: 50%; padding-top: 10px; padding-bottom: 10px; } 

 .inp { padding: 10px 10px; background-color: #f1f1f1; border-radius: 4px; border: 0px; } 

 .inp:focus { outline: none; background-color: #eee; } 
 
.ui-datepicker-inline {
    width: 100%; /* 열의 전체 너비를 차지하도록 설정 */
    font-size: 1.2em; /* 필요에 따라 글꼴 크기 조정 */
}
.ui-datepicker {
    height: 400px; /* 원하는 높이로 설정 */
}

/* 전체 날짜 셀 크기 설정 */
.ui-datepicker-calendar .ui-datepicker-group {
    width: 100%;
}

/* 각 날짜 셀 크기 설정 */
.ui-datepicker-calendar .ui-datepicker-group table {
    width: 100%;
    height: auto;
    table-layout: fixed; /* 고정된 레이아웃 사용 */
}

/* 모든 날짜 셀 설정 */
.ui-datepicker-calendar .ui-datepicker-group table tbody tr td {
    width: 44px;
    height: 44px;
    text-align: center;
    font-size: 14px;
    cursor: pointer;
    border-radius: 50%;
    vertical-align: middle; /* 수직 정렬 */
    padding: 0 !important; /* 패딩 제거 */
}


/* 오늘 날짜 스타일 제거 */
.ui-datepicker-calendar .ui-datepicker-today .ui-state-default {
    background-color: transparent !important;
    color: inherit !important;
    border: none; /* 추가된 테두리 제거 */
    padding: 0 !important; /* 패딩 제거 */
}

/* 오늘 날짜가 선택된 경우의 스타일 */
.ui-datepicker-calendar .ui-datepicker-today {
    background-color: transparent !important;
    border: none !important;
    border-radius: 50%; /* 동그란 모양으로 변경 */
    padding: 0 !important; /* 패딩 제거 */
}
 
/* 선택된 날짜 스타일 */
.ui-datepicker-calendar .ui-datepicker-current-day .ui-state-active {
    background-color: black !important;
    color: white !important;
    border-radius: 50%;
    padding: 0 !important; /* 패딩 제거 */
}

.col-md-4 {
/* 	border: solid 1px black; */
	border-radius: 5px;
	box-shadow: 0px 0px 5px #444;
}


 
</style>
</head>
<body>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-8">
		</div>
		<div class="col-md-4">
			<div id="datepicker" class="datepicker"></div>
			<input type="hidden" value="" name="reservation_date" id="datepicker_val">
			
			<div class="reservation_headcount">
				<input type="button" value="-">
				<input type="text">
				<input type="button" value="+">
			</div>
			
		</div>
	</div>

</div>
<script>
$(function() {
	$("#datepicker").datepicker();
});

$.datepicker.setDefaults({
	  dateFormat: 'yyyy-mm-dd',
	  prevText: '이전 달',
	  nextText: '다음 달',
	  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	  showMonthAfterYear: true,
	  yearSuffix: '년',
	  minDate: 0,
	  showOtherMonths: true,
	  inline: true,
	  onSelect: function(dateText, inst) {
		  console.log(dateText);
		  console.log(inst);
          // 선택된 날짜를 표시하기 위해 이 부분이 필요합니다.
          $('#datepicker .ui-datepicker-current-day .ui-state-active').css({
              'background-color': 'black',
              'color': 'white',
              'border-radius': '50%'
          });

          // 선택된 날짜를 yyyy-MM-dd HH:mm 형식으로 포맷팅
          var selectedDate = new Date(inst.selectedYear, inst.selectedMonth, inst.selectedDay);
          var year = selectedDate.getFullYear();
          var month = ("0" + (selectedDate.getMonth() + 1)).slice(-2);
          var day = ("0" + selectedDate.getDate()).slice(-2);
          var hours = ("0" + selectedDate.getHours()).slice(-2);
          var minutes = ("0" + selectedDate.getMinutes()).slice(-2);

          var formattedDate = year + '-' + month + '-' + day + ' ' + hours + ':' + minutes;
          $('#datepicker_val').val(formattedDate);
      }
	});
</script>

</body>
</html>