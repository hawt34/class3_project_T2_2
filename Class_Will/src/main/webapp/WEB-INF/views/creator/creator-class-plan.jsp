<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/creator/creator-class-plan.css" rel="stylesheet">
</head>
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.4/jquery-ui.multidatespicker.min.js"></script>

    <header>
        <jsp:include page="/WEB-INF/views/inc/header.jsp" />
    </header>

    <!-- Spinner Start (로딩시 뜨는 동그라미)-->
    <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
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
            <h1 class="mb-4">Creator Center</h1>
            <div class="row g-4">
                <div class="col-lg-12">
                    <div class="row g-4">
                        <jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

                        <div class="col-lg-9 creator-body">
                            <!-- 	셀렉트박스 -->
                            <div class="col-md-12 d-flex justify-content-center mb-2">
								<div class="col-xl-8">
									<div class="bg-light rounded py-2 d-flex justify-content-center mb-4">
										<select id="fruits"
											name="fruitlist" class="border-0 form-select-sm bg-light me-3 selectClass"
											form="fruitform">
											<option value="volvo">Nothing</option>
											<option value="saab">Populari</option>
											<option value="opel">Organic</option>
											<option value="audi">Fantastic</option>
										</select>
									</div>
									<hr>
								</div>
							</div>
                            
                            <div class="creator-main-table col-xl-12 mb-5">
                            
                                <form id="dateForm" action="/submit" method="POST">
                                
							        <div id="datepicker"></div>
							        <input type="hidden" name="selectedDates" id="selectedDates">
							        
							        <div class="creator-plan-bottom">
							        
								        <div class="creator-plan-time d-flex justify-content-evenly">
   										 <div id="timepicker-container"></div>
								        	<div>
								        		시작시간 : <input type="time">
								        	</div>
								        	<div>
								        		종료시간 : <input type="time">
								        	</div>
								        </div>
								        <div align="center" class="mb-3">
								        	<button type="submit" class="creator-plan-submitBtn">등록하기</button>
								        	<button type="button" class="creator-plan-submitBtn" onclick="history.back()">취소하기</button>
								        </div>
								        
							        </div>
							        
                                </form>
                                
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
    <script>
	    $(function() {
	        // jQuery UI datepicker 한국어 설정
	        $.datepicker.regional['ko'] = {
	            closeText: '닫기',
	            prevText: '이전',
	            nextText: '다음',
	            currentText: '오늘',
	            monthNames: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
	            monthNamesShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
	            dayNames: ['일','월','화','수','목','금','토'],
	            dayNamesShort: ['일','월','화','수','목','금','토'],
	            dayNamesMin: ['일','월','화','수','목','금','토'],
	            weekHeader: '주',
	            dateFormat: 'yy-mm-dd',
	            firstDay: 0,
	            isRTL: false,
	            showMonthAfterYear: true,
	            yearSuffix: '년'
	        };
	        $.datepicker.setDefaults($.datepicker.regional['ko']);
	
	        // 이전에 선택된 날짜 목록 (예시)
	        var today = new Date();
            today.setHours(0, 0, 0, 0); // 시간 부분을 0으로 설정

            $('#datepicker').multiDatesPicker({
                beforeShowDay: function(date) {
                    var dateString = $.datepicker.formatDate('yy-mm-dd', date);
                    if (date <= today) {
                        return [false, 'disabled-date'];
                    }
                    return [true, ''];
                },
                onSelect: function(dateText, inst) {
                	
                	// ui-state-highlight
                	
                    var selectedDates = $('#datepicker').multiDatesPicker('getDates');
                    var $datepicker = $('#datepicker');

                    // 선택된 날짜에 대해 .selected-date 클래스 추가/제거
                    $datepicker.find('.selected-date');
                    selectedDates.forEach(function(date) {
                        var dateObj = $.datepicker.parseDate('yy-mm-dd', date);
                        $datepicker.find('td[data-year="' + dateObj.getFullYear() + '"][data-month="' + dateObj.getMonth() + '"] a').filter(function() {
                            return $(this).text() == dateObj.getDate();
                        }).addClass('selected-date');
                    });

                    var dateIndex = selectedDates.indexOf(dateText);
                    if (dateIndex > -1) {
                    	 var dateObj = $.datepicker.parseDate('yy-mm-dd', dateText);
                         $datepicker.find('td[data-year="' + dateObj.getFullYear() + '"][data-month="' + dateObj.getMonth() + '"] a').filter(function() {
                             return $(this).text() == dateObj.getDate();
                         }).addClass('selected-date');
                    } else {
                        $('#datepicker').multiDatesPicker('removeDates', dateText);
                    }
                }
            });

            // submit 버튼 클릭 시 선택된 날짜를 hidden input에 설정
            $('#dateForm').on('submit', function(e) {
                var selectedDates = $('#datepicker').multiDatesPicker('getDates');
                $('#selectedDates').val(selectedDates.join(','));
                debugger;
            });
        });
    </script>


</body>
</html>