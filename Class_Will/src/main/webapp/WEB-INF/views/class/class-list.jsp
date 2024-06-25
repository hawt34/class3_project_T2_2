<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 리스트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class_list.css">
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<%-- <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"> --%>

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Required JavaScript files -->
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<!--     <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5+5hb7ie2koOHD8y5Lx5ujD6nco4k5RfF7UoE6G7" crossorigin="anonymous">
    

<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {
    var heartOverlays = document.querySelectorAll(".heart-overlay");
    var originalSrc = "${pageContext.request.contextPath}/resources/images/profile/heart.png";
    var changeSrc = "${pageContext.request.contextPath}/resources/images/profile/heart_full.png";

    heartOverlays.forEach(function(heartOverlay) {
        heartOverlay.addEventListener("click", function() {
            var img = this;
            img.classList.add("fade");

            setTimeout(function() {
                if (img.src.includes("heart_full.png")) {
                    img.src = originalSrc;
                } else {
                    img.src = changeSrc;
                }
                img.classList.remove("fade");
            }, 300); 
        });
    });
});
</script>
<style type="text/css">
body {
	color: white;
	background : black;
}

.hashtag {
	width : 130px;
	height : 50px;
	font-size : 1.0em;
    cursor: pointer;
    border-radius : 30px !important;
}

.form-controls {
    border-radius : 30px !important;

}

</style>
</head>
<body>

<header>
	<jsp:include page="/WEB-INF/views/inc/top.jsp" />
</header>

<div class="container1">
<!--    <div class="col-md-2"> -->

<!--    </div> -->
   <div class="col-md-12">
	<!-- 카테고리 바 -->   
	<div class="row">
		<div class="categoryBar">
			<div class="row justify-content-center"> <!-- 가운데 정렬 -->
				<div class="categoryBarBox col-md-11">
				
					<!--  키워드 검색창 시작 -->
					<div class="row height d-flex align-items-center mx-5">
						<div class="col-md-3">
							<div class="form form1">
								<i class="fa fa-search"></i>
								<input type="text" class="form-control form-input search-input form-controls" placeholder="클래스 검색">
							</div>
						</div>
					</div>
					<!--  키워드 검색창 끝 -->
					
					<!-- 셀렉트박스 리스트 -->
					<div class="row mx-5 rowCenter">

							<!-- 카테고리바 카테고리 시작 -->
<!-- 							<div class="selectDiv col-md-2 categorySelect"> -->
<!-- 								<div class="dropdown"> -->
<!-- 									<button class="btn btn-light dropdown-toggle categorySelectBtn w-100" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!-- 										카테고리 -->
<!-- 									</button> -->
<!-- 									<div class="dropdown-menu bigCategory" aria-labelledby="dropdownMenuButton1" > -->
<!-- 										<div class="d-flex"> -->
<!-- 											<div class="col"> -->
<!-- 												<ul class="list-unstyled categoryDrop"> -->
<!-- 												<li><a class="dropdown-item" href="#" value="전체">전체</a></li> -->
<%-- 													<c:forEach var="bigCategory" items="${bigCategoryList}" varStatus="status"> --%>
<!-- 														        <li class="bigCategory"> -->
<%-- 														            <a class="dropdown-item" href="javascript:void(0);" data-code="${bigCategory.common2_code}"> --%>
<%-- 														                ${bigCategory.code_value} --%>
<!-- 														            </a> -->
<!-- 														        </li> -->
<%-- 													</c:forEach> --%>
<!-- 												</ul> -->
<!-- 											</div> -->
<!-- 										<div class="vr-divider"></div> -->
<!-- 											<div class="col smallCategory" > -->
<!-- 												<ul class="list-unstyled"> -->
<%-- 													<c:forEach var="smallCategoryList" items="${smallCategoryList}" > --%>
<!-- 												        <li class="smallCategory"> -->
<%-- 												            <a class="dropdown-item" href="class-list" data-code="${smallCategoryList.common2_code}"> --%>
<%-- 												            	${smallCategoryList.code_value} --%>
<!-- 															</a> -->
<!-- 														</li> -->
<%-- 													</c:forEach> --%>
<!-- 												</ul> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<!-- 카테고리바 카테고리 끝 -->
							
							<!-- 카테고리바 카테고리 시작 -->
<!-- 							<div class="row">  -->
								<div class="col-md-2">
									<label for="class_big_category" class="h6">카테고리</label> 
									<select name="class_big_category" id="class_big_category" class="form-control">
											<option value="bigCategoryAll">전체</option>
										<c:forEach var="bigCategoryList" items="${bigCategoryList}">
											<option value="${bigCategoryList.common2_code}">${bigCategoryList.code_value}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md-2">
									<label for="class_small_category" class="h6">상세분류</label> 
									<select name="class_small_category" id="class_small_category" class="form-control">
										<option value="smallCategoryAll">전체</option>
									</select>
								</div>
<!-- 							</div> -->
							<!-- 카테고리바 카테고리 끝 -->
							
							<!-- 카테고리바 지역 시작 -->
								<div class="col-md-2">
									<label for="class_local" class="h6">지역</label> 
									<select name="class_local" id="class_local" class="form-control" required>
										<c:forEach var="localList" items="${localList}">
											<option value="${localList.common2_code}">${localList.code_value}</option>
										</c:forEach>
									</select>
								</div>
<!-- 							카테고리바 지역 끝 -->
							
<!-- 						<div class="selectDiv col-md-2"> -->
<!-- 							<select class="form-select categorySelect w-100" aria-label="Default select example" id="customRange2"> -->
<!-- 								<option selected>금액</option> -->
<!-- 								<option value="1"> -->
<!-- 									<label for="customRange3" class="form-label">Example range</label> -->
<!-- 									<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3"> -->
<!-- 								</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
							<div class="selectDiv col-md-5">
								<div class="row">
									<div class="col">
								    	<label for="customRange3" class="form-label">금액</label>
								    </div>
								    <div class="classPrice col-2">
								    	<span class="badge bg-light text-dark ">금액</span>
								    </div>
							    </div>
							    <input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
							    
<!-- 							<div class="col-md-6"> -->
<!-- 							</div> -->
							</div>
						<div class="btnResetDiv col-md-1">
<!-- 						<div class="btnReset w-100"> -->
							<button type="button" class="btn btn-outline-light btnReset" >초기화</button>
<!-- 						</div> -->
						</div>
					</div>
					<!-- 셀렉트박스 리스트 끝 -->
					
					<!-- 카테고리 셀렉트 리스트 -->
					<div class="row mx-5">
						<c:forEach var="smallCategory" items="${smallCategory}" varStatus="status">
						    <div class="mt-3 col-md-2 position-relative chooseDiv">
						        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" value="${smallCategory.code_value }"readonly>
						        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
<%-- 								<li><a class="dropdown-item" href="class-list?local_common2_code=${localList.common2_code}" value="${localList.code_value}">${localList.code_value}</a></li> --%>
						    </div>
						</c:forEach>
						<hr>
					</div>
					<!-- 카테고리 셀렉트 리스트 -->
					
					<!-- 해시태그 리스트 -->
					<div class="row mx-5">
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 커플" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 반려동물" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 선물" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 데이트" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 단체" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
					</div>
					<!-- 해시태그 리스트 -->
				</div>
			</div>
		</div>
	</div>
	<!-- 카테고리 바 -->
	
	<!-- 클래스 개수 시작 -->
	<c:set var="classCount" value="${fn:length(map)}" />
	<div class="row">
		<div class="col-md-9">
			<div class="classCount">
				<p>${classCount}개의 클래스</p>
			</div>
		</div>
		<div class="col-md-3 box1">
<!--          <select class="form-select-sm selectBox" aria-label="Default select example"> -->
			<select class="form-select selectBox1 w-50" aria-label="Default select example">
				<option selected>인기순</option>
				<option value="1">후기순</option>
				<option value="2">별점순</option>
				<option value="3">낮은 가격순</option>
				<option value="4">높은 가격순</option>
				<option value="5">거리순</option>
			</select>
		</div>
	</div> <!-- row -->
	<!-- 클래스 개수 끝 -->
	
      <!-- 첫번째 줄 -->
      <div class="row pb-4 mx-5 mb-4 d-flex flex-wrap">
	      <c:forEach var="map" items="${map}">
	         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
	            <div class="card shadow-sm border-0 rounded flex-fill mb-4">
	               <div class="card-body p-0 position-relative card-body1 position-relative1">
	                  <a href="class-detail?class_code=${map.class_code}"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic"></a>
	<%--                   <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" class="w-100 card-img-top classPic"> --%>
	                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
	                  <div class="card-bodys d-flex flex-column">
	                     <div class="classCategory col-md-10">
	                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${map.class_big_category}</button>
	                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${map.class_small_category}</button>
	                     </div>
	                     <div class="createrName d-flex align-items-center">
	                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
	                        <p class="mb-0 ml-2">${map.member_nickname}</p>
	                     </div>
	                     <div class="className">
	                        <a href="class-detail"><h6>${map.class_name}</h6></a>
	                     </div>
	                     <div class="row classInfo">
	                        <div class="col-md-6 add">
	                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">${map.class_location}</a>
	                        </div>
	                        <div class="col-md-6 price">
	                           <p>${map.class_price}원</p>
	                        </div>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </div>
	      </c:forEach>
      </div>
   </div> <!-- col-md-12 -->
</div> <!-- container -->

<footer>
	<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
</footer>
	
	
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script type="text/javascript">

$(function() {
	// 카테고리 선택시 상세카테
	$("#class_big_category").change(function() {
		var big_category = $("#class_big_category").val();
		$.ajax({
			url: "small-category",
			method: "get",
			data: { "big_category" : big_category },
			success: function(data) {
				$("#class_small_category").empty();
				$.each(data, function(index, item) {
					$("#class_small_category").append(
						$('<option></option>').val(item.common3_code).text(item.code_value)	
					);
				});
			}
		});		
	});
});
// $(document).ready(function() {
//     // 마우스 오버 이벤트 핸들러 설정
//     $('.bigCategory').mouseenter(function() {
//         $(this).css('width', '300px'); // bigCategory 요소의 넓이를 300px로 설정
//         createSubDropdown($(this)); // 서브 드롭다운 생성 함수 호출

//     });

// //     // 마우스 아웃 이벤트 핸들러 설정
//     $('.bigCategory').mouseleave(function() {
//         $(this).css('width', ''); // bigCategory 요소의 넓이를 초기화
//         $('.subDropdown').remove(); // 서브 드롭다운 제거

//     });

// //     // 클릭 이벤트 핸들러 설정
//     $('.bigCategory a').click(function(e) {
//         e.preventDefault(); // 기본 이벤트 방지

//         var common2_code = $(this).data('code');
//         var code_value = $(this).text();
//         console.log('Clicked common2_code:', common2_code); // 디버깅을 위한 로그 추가

//         // AJAX 요청
//         $.ajax({
//             type: "POST",
//             url: "class-list",
//             data: {
//                 common2_code: common2_code
//             },
//             dataType: "json",
//             success: function(response) {
// //                 if (response === true) { // 예시로 받은 응답 데이터의 형식에 따라 수정
//                 if (response.success === true) { // 예시로 받은 응답 데이터의 형식에 따라 수정

//                     alert('class-list 성공' + common2_code + code_value);
//                     console.log("class-list 성공" + common2_code + code_value);
//                     // 선택한 값을 카테고리 셀렉트 리스트에 추가
//                     // addCategoryToList(code_value);
//                 } else {
//                     alert('class-list 실패');
//                     console.log('class-list 실패');
//                 }
//             },
//             error: function(xhr, status, error) {
//                 alert('class-list ajax 실패');
//                 console.log('Status: ' + status);
//                 console.log('Error: ' + error);
//             }
//         });
//     });
    
//     // 서브 드롭다운을 생성하는 함수
//     function createSubDropdown($bigCategory) {
// //         var common2_code = $bigCategory.find('a').data('code'); // bigCategory의 data-code 가져오기
// //         console.log('Sub dropdown common2_code:', common2_code); // 디버깅을 위한 로그 추가
        
//         var $anchor = $bigCategory.find('a'); // bigCategory의 <a> 요소 찾기
//         var common2_code = $anchor.data('code'); // <a> 요소의 data-code 가져오기
//         console.log('Sub dropdown common2_code:', common2_code); // 디버깅을 위한 로그 추가


//         // AJAX 요청
//         $.ajax({
//             type: "POST",
//             url: "class-list",
//             data: {
//                 common2_code: common2_code
//             },
//             dataType: "json",
//             success: function(response) {
//                 if (response.success === true) {
//                     var smallCategoryList = response.smallCategoryList;
// //                     displaySubDropdown($('.smallCategory'), smallCategoryList); // 서브 드롭다운 표시 함수 호출
// //                     displaySubDropdown($(e.target).closest('.bigCategory'), smallCategoryList); // 서브 드롭다운 표시 함수 호출
// 		               displaySubDropdown($bigCategory, smallCategoryList); // $bigCategory를 인자로 넘겨서 호출

//                     console.log('소 카테고리 불러오기 성공');
//                 } else {
//                     console.log('소 카테고리 불러오기 실패');
//                 }
//             },
//             error: function(xhr, status, error) {
//                 console.log('AJAX 요청 실패');
//                 console.log('Status: ' + status);
//                 console.log('Error: ' + error);
//             }
//         });
//     }

//     // 서브 드롭다운을 화면에 표시하는 함수
//     function displaySubDropdown($bigCategory, smallCategoryList) {
//         // 서브 드롭다운 요소 생성
//         var $subDropdown = $('<div class="dropdown-menu subDropdown" aria-labelledby="dropdownMenuButton2">');
//         var $list = $('<ul class="list-unstyled">');

//         // 소 카테고리 항목 추가
//         $.each(smallCategoryList, function(index, smallCategory) {
//             var $item = $('<li><a class="dropdown-item" href="#">' + smallCategory.code_value + '</a></li>');
//             $list.append($item);
//         console.log('$item :::::::::::', $item.text());
//         });
		
//         // 디버깅을 위한 로그 추가
//         console.log('Generated $list:', $list.text());

// //         // 서브 드롭다운을 $smallCategory 옆에 추가
// //         $smallCategory.find('.smallCategory').html($subDropdown.append($list));

//         // 서브 드롭다운을 $bigCategory 옆에 추가
//         $bigCategory.next('.smallCategory').find('ul').html($list.html());
        

//         // 디버깅을 위한 로그 추가
//         console.log('Sub dropdown $subDropdown:', $subDropdown);
//     }
// });
</script>
</body>
</html>