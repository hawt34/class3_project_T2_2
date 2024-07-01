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
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<!--     <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5+5hb7ie2koOHD8y5Lx5ujD6nco4k5RfF7UoE6G7" crossorigin="anonymous">
    
<!-- 현재위치 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 카카오 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b60a9d61c7090ce24f1b5bfa7ab26622"></script>

<script type="text/javascript">

// like-class
document.addEventListener("DOMContentLoaded", function() {
    var heartOverlays = document.querySelectorAll(".heart-overlay");
    var originalSrc = "${pageContext.request.contextPath}/resources/images/profile/heart.png";
    var changeSrc = "${pageContext.request.contextPath}/resources/images/profile/heart_full.png";

    heartOverlays.forEach(function(heartOverlay) {
        heartOverlay.addEventListener("click", function() {
            var img = this;
            var member_code = img.getAttribute("data-member-code");
            var class_code = img.getAttribute("data-class-code");
            var isFullHeart = img.src.includes("heart_full.png");

            var heart_status = !isFullHeart;
			
            
			if(member_code == null || member_code == ""){
	            alert("로그인이 필요한 페이지 입니다.");
	            window.location.href = "member-login";
	            return;
			}
			
            if (heart_status) {
                img.src = changeSrc;
 				alert("좋아요 heart_status : " + heart_status + ", member_code : " + member_code + ", class_code : " + class_code);
            } else {
                img.src = originalSrc;
 				alert("좋아요 취소 heart_status : " + heart_status + ", member_code : " + member_code + ", class_code : " + class_code);
            }
            
            // AJAX 요청을 통해 서버로 업데이트 요청 전송
            var data = JSON.stringify({
                heart_status: heart_status,
                member_code: member_code,
                class_code: class_code
            });
            
            updateHeartStatus(data);
        });
    });
    
    function updateHeartStatus(data) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "${pageContext.request.contextPath}/update-heart-status", true);
        xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    console.log("Heart status updated successfully");
                } else {
                    console.error("Error updating heartStatus");
                }
            }
        };
        
        xhr.send(data);
    }
});

// ------------------------------------------------------------------------------------------------------------
//     window.onload = function() {
//         var class_map_x = "${classInfo.class_map_x}";
//         var class_map_y = "${classInfo.class_map_y}";
        
//         var mapContainer = document.getElementById('map'); // 지도를 담을 영역의 DOM 레퍼런스
//         var mapOption = { // 지도를 생성할 때 필요한 기본 옵션
//             center: new kakao.maps.LatLng(parseFloat(class_map_x), parseFloat(class_map_y)), // 지도의 중심좌표
//             level: 4 // 지도의 레벨(확대, 축소 정도)
//         };

//         var map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성 및 객체 리턴
    	
    	
// 		var imageSrc = '${pageContext.request.contextPath}/resources/images/class/map.png', // 마커이미지의 주소입니다    
// 		    imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
// 		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

// 		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
// 		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
// 		    markerPosition = new kakao.maps.LatLng(class_map_x, class_map_y); // 마커가 표시될 위치입니다

// 		// 마커를 생성합니다
// 		var marker = new kakao.maps.Marker({
// 		  position: markerPosition,
// 		  image: markerImage // 마커이미지 설정 
// 		});

// 		// 마커가 지도 위에 표시되도록 설정합니다
// 		marker.setMap(map);  

// 		// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
// // 		var content = '<div class="customoverlay">' +
// // 		    '    <span class="title">${classInfo.class_name}위치' + '</span>' +
// // 		    '</div>';

// 		// 커스텀 오버레이가 표시될 위치입니다 
// 		var position = new kakao.maps.LatLng(class_map_x, class_map_y);  

// 		// 커스텀 오버레이를 생성합니다
// 		var customOverlay = new kakao.maps.CustomOverlay({
// 		    map: map,
// 		    position: position,
// 		    content: content,
// 		    yAnchor: 1 
// 		});
		
//     };
    
 // -----------------------
 
//  window.onload = function() {
//     var class_map_x = "${classInfo.class_map_x}";
//     var class_map_y = "${classInfo.class_map_y}";
    
//     var mapContainer = document.createElement('div');
//     mapContainer.id = 'map';
//     document.body.appendChild(mapContainer);

//     var mapOption = {
//         center: new kakao.maps.LatLng(parseFloat(class_map_x), parseFloat(class_map_y)),
//         level: 4
//     };

//     var map = new kakao.maps.Map(mapContainer, mapOption);

//     var markerPosition = new kakao.maps.LatLng(class_map_x, class_map_y);

//     var marker = new kakao.maps.Marker({
//         position: markerPosition
//     });

//     marker.setMap(map);
    
//     mapContainer.style.position = 'fixed';
//     mapContainer.style.top = '300px';
//     mapContainer.style.right = '20px';
//     mapContainer.style.width = '300px'; // 원하는 크기로 설정
//     mapContainer.style.height = '300px'; // 원하는 크기로 설정
//     mapContainer.style.zIndex = '1000';
// //     mapContainer.style.border = '1px solid #ccc';
// //     mapContainer.style.backgroundColor = '#fff';
// //     mapContainer.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.1)';
// };
</script>

<!-- JavaScript 코드 -->
<script>
// 현재 위치
function getCurrentLocation() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(showYourLocation, showErrorMsg);
	} else {
		alert("Geolocation is not supported by this browser.");
	}
}

function showYourLocation(position) {
    var userLat = position.coords.latitude; // 현재위치 위도
    var userLng = position.coords.longitude; // 현재위치 경도
    
	alert("현재 위치는 : " + userLat + ", " + userLng);
    
	// 카카오 지도에 현재 위치 표시
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
     mapOption = {
        center: new kakao.maps.LatLng(userLat, userLng), // 지도의 중심좌표
        level: 7
    };
	
    var map = new kakao.maps.Map(document.getElementById('mapContainer'), mapOption);
//     var mapOption = {
//         center: new kakao.maps.LatLng(userLat, userLng), // 지도의 중심좌표
//         level: 3
//     };

	var imageSrc = '${pageContext.request.contextPath}/resources/images/class/map.png', // 마커이미지의 주소입니다    
	   imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
// 	   imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	   imageOption = {offset: new kakao.maps.Point(userLat, userLng)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

    var markerPosition = new kakao.maps.LatLng(userLat, userLng);
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });
    marker.setMap(map);
    
    
    // ---------
	
// 마커 이미지 
// 	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
// 	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
//     	markerPosition = new kakao.maps.LatLng(userLat, userLng); // 마커가 표시될 위치입니다
    
// 	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 	// 마커가 표시될 위치입니다 
// 	var markerPosition  = new kakao.maps.LatLng(userLat, userLng); 
 
// 	// 마커를 생성합니다
// 	var marker = new kakao.maps.Marker({
// 		position: markerPosition,
// 		image: markerImage // 마커이미지 설정 
// 	});

// 	// 마커가 지도 위에 표시되도록 설정합니다
// 	marker.setMap(map);  

// 	// 커스텀 오버레이가 표시될 위치입니다 
// 	var position = new kakao.maps.LatLng(userLat, userLng);  

// 	// 커스텀 오버레이를 생성합니다
// 	var customOverlay = new kakao.maps.CustomOverlay({
// 	    map: map,
// 	    position: position,
// 	    content: content,
// 	    yAnchor: 1 
// 	});

} // showYourLocation 끝()

function showErrorMsg(error) {
    alert("위치 정보를 가져오지 못했습니다.");
    console.error(error);
}

</script>
<style>
/*    #map { */
/*        width: 200px; */
/*        height: 600px; */
/*        right : 0px; */
/*        top : 300px; */
/*    } */
   
body {
    position: relative;
    padding-top: 50px; /* 내 위치 버튼과 겹치지 않도록 상단 패딩 설정 */
}
        
#mapContainer {
	position: absolute;
	top: 370px; /* 내 위치 버튼 아래에 표시될 위치 지정 */
	right: 20px; /* 오른쪽 여백 설정 */
	width: 370px; /* 지도 컨테이너의 너비 설정 */
	height: 800px; /* 지도 컨테이너의 높이 설정 */
/*             border: 1px solid #ccc; */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
<script type="text/javascript">
</script>
<style type="text/css">
body {
	color: white;
	background : black;
}
.hashtag {
	width : 123px;
	height : 45px;
	font-size : 0.9em;
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
	<!-- 							<div class="row">  -->
						<div class="col-md-2">
							<label for="class_big_category" class="h6">카테고리</label> 
							<select name="class_big_category" id="class_big_category" class="form-control"  onchange="updateCategory()">
									<option value="bigCategoryAll" id="class_big_category_all">전체</option>
								<c:forEach var="bigCategoryList" items="${bigCategoryList}">
									<option value="${bigCategoryList.common2_code}">${bigCategoryList.code_value}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-md-2">
							<label for="class_small_category" class="h6">상세분류</label> 
							<select name="class_small_category" id="class_small_category" class="form-control"  onchange="updateSmallCategory()">
								<option value="smallCategoryAll" id="class_small_category_all">전체</option>
							</select>
						</div>
	<!-- 							</div> -->
					<!-- 카테고리바 카테고리 끝 -->
					
					<!-- 카테고리바 지역 시작 -->
						<div class="col-md-2">
							<label for="class_local" class="h6">지역</label> 
							<select name="class_local" id="class_local" class="form-control" onchange="updateLocal()">
								<option value="classLocalAll" id="class_local_all">전체</option>
								<c:forEach var="localList" items="${localList}">
									<option value="${localList.common2_code}">${localList.code_value}</option>
								</c:forEach>
							</select>
						</div>
<!-- 					카테고리바 지역 끝 -->
							
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
						</div>
						
						<!-- 셀렉트 초기화 버튼 -->
						<div class="btnResetDiv col-md-1">
<!-- 						<div class="btnReset w-100"> -->
							<button type="button" class="btn btn-outline-light btnReset" onclick="resetCategory()">초기화</button>
<!-- 						</div> -->
						</div>
						<!-- 셀렉트 초기화 버튼 -->
					</div>
					<!-- 셀렉트박스 리스트 끝 -->
					
					<!-- 카테고리 셀렉트 리스트 -->
<!-- 					<div class="row mx-5"> -->
<%-- 						<c:forEach var="smallCategory" items="${smallCategory}" varStatus="status"> --%>
<!-- 						    <div class="mt-3 col-md-2 position-relative chooseDiv"> -->
<%-- 						        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" value="${smallCategory.code_value }"readonly> --%>
<%-- 						        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon"> --%>
<!-- 						    </div> -->
<%-- 						</c:forEach> --%>
<!-- 						<hr> -->
<!-- 					</div> -->
					<!-- 카테고리 셀렉트 리스트 -->
					
					<!-- 카테고리 셀렉트 리스트 -->
					<div class="row mx-5" id="categoryContainer">
						<!-- 선택된 카테고리 값들이 추가됨 -->
					</div>
					<!-- 카테고리 셀렉트 리스트 -->
					
					<!-- 해시태그 리스트 -->
					<div class="row mx-5">
						<hr>
						<div class="col hashtagDiv">
							<div class="form form1 d-flex flex-wrap">
								<c:forEach var="hashtag" items="${hashtagList}">
<!-- 									<button type="button" class="item" data-value="#${hashtag.hash_tag_name}">#${hashtag.hash_tag_name}</button> -->
								<input type="text" class="form-control form-inputs hashtag" data-value="#${hashtag.hash_tag_name}" value="#${hashtag.hash_tag_name}" readonly>
								</c:forEach>
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
	<c:set var="classCount" value="${fn:length(classList)}" />
	<div class="row">
		<div class="col">
			<div class="classCount">
				<p>${classCount}개의 클래스</p>
			</div>
		</div>
		<div class="col box11">
<!-- 			<button type="button" class="btn btn-outline-light btnLocation" onclick="getCurrentLocation()" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">내 주변 검색</button> -->
<!-- 			<button type="button" class="btn btn-outline-light btnLocation" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">내 주변 검색</button> -->
<!--     				<div id="map"></div> -->
					<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=YOUR_CLIENT_ID"></script>
    <button type="button" class="btn btn-outline-light" onclick="getCurrentLocation()">내 위치 지도 보기</button>
    <!-- 지도를 표시할 컨테이너 -->
    <div id="mapContainer"></div>		
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
      <div class="row pb-4 mx-5 mb-4 d-flex flex-wrap" id="classListContainer">
	      <c:forEach var="classList" items="${classList}">
	         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
	            <div class="card shadow-sm border-0 rounded flex-fill mb-4">
	               <div class="card-body p-0 position-relative card-body1 position-relative1">
						<a href="class-detail?class_code=${classList.class_code}">
						<img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg"  class="w-100 card-img-top classPic"></a>
<%-- 						<img src="${pageContext.request.contextPath}/resources/images/profile/heart.png"  id="heartOverlay" class="heart-overlay" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}"> --%>
							<c:choose>
					            <c:when test="${not empty likeClassList}"> <!-- likeClassList 존재 -->

					            
<%-- 					              <c:set var="isLiked" value="false"/> <!-- 삭제 --> --%>
<%-- 						              <c:forEach var="likeClass" items="${likeClassList}"> --%>
<%-- 						                <c:if test="${likeClass.class_code == classList.class_code}"> --%>
<%-- 						                  <c:set var="isLiked" value="true"/> <!-- 추가 --> --%>
<%-- 						                </c:if> --%>
<%-- 						              </c:forEach> --%>
					              
<%-- 					              <c:if test="${isLiked}"> --%>
					                <img src="${pageContext.request.contextPath}/resources/images/profile/heart_full.png" id="heartOverlay" class="heart-overlay" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}">
<%-- 					              </c:if> --%>
					              
<%-- 					              <c:if test="${not isLiked}"> --%>
<%-- 					                <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}"> --%>
<%-- 					              </c:if> --%>
					              
					            </c:when>
					            
					            <c:otherwise> <!-- likeClassList 존재 X -->
					              <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}">
					            </c:otherwise>
				          </c:choose>
	                  <div class="card-bodys d-flex flex-column">
	                     <div class="classCategory col-md-10">
							<button type="button" class="btn btn-outline-secondary btn-sm category btn1">${classList.class_big_category}</button>
	                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${classList.class_small_category}</button>
	                     </div>
	                     <div class="createrName d-flex align-items-center">
	                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
	                        <p class="mb-0 ml-2">${classList.member_nickname}</p>
	                     </div>
	                     <div class="className">
	                        <a href="class-detail"><h6>${classList.class_name}</h6></a>
	                     </div>
	                     <div class="row classInfo">
	                        <div class="col-md-6 add">
	                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">${classList.class_location}</a>
	                        </div>
	                        <div class="col-md-6 price">
	                           <p>${classList.class_price}원</p>
	                        </div>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </div>
	      </c:forEach>
<!-- 		<div id="classListContainer" class="row pb-4 mx-5 mb-4 d-flex flex-wrap"> -->
<!-- <!--     필터링된 클래스 목록이 여기에 동적으로 추가됩니다. --> -->
<!-- 		</div> -->
		<div class="col-3" id="map"></div>
      </div>
<!--       <div clas="row" id="map"> -->
<!-- 		<div id="map"></div> -->
<!--       </div> -->
   </div> <!-- col-md-12 -->
</div> <!-- container -->

<footer>
	<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
</footer>
	
	
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script type="text/javascript">

// 대카테고리에 따른 소카테고리 값
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
                
                // 데이터에 이미 전체 옵션이 포함되어 있으면 추가하지 않음
                if (data.length > 0 && data[0].common3_code !== 'smallCategoryAll') {
                    $("#class_small_category").append(
                        $('<option></option>').val('smallCategoryAll').text('전체')
                    );
                }
                
                $.each(data, function(index, item) {
                    $("#class_small_category").append(
                        $('<option></option>').val(item.common3_code).text(item.code_value)	
                    );
                });
            }
        });		
    });
});
//------------------------------------------------------------------------------------
let selectedCategories = [];
let selectedSmallCategories = [];
let selectedLocals = [];

// 대카테고리값
function updateCategory() {
	
    const selectElement = document.getElementById('class_big_category');
    const selectedValue = selectElement.value;
    const selectedText = selectElement.options[selectElement.selectedIndex].text;

    if (selectedValue === 'bigCategoryAll') {
        selectedCategories = allCategories.map(category => category.common2_code);
        
    } else {
        if (!selectedCategories.includes(selectedValue)) {
        	console.log("updateCategory 추가");
            selectedCategories.push(selectedValue);
        }
    }
    // 추가된 카테고리를 화면에 표시
    addContainer(selectedValue, selectedText);
    
    // 높이
    categoryBarHeight();
    
    selectCategory();
}
//------------------------------------------------------------------------------------

// 소카테고리
function updateSmallCategory() {
    const selectElement = document.getElementById('class_small_category');
    const selectedValue = selectElement.value;
    const selectedText = selectElement.options[selectElement.selectedIndex].text;

    if (selectedText === 'smallCategoryAll') {
        selectedSmallCategories = allSmallCategory.map(small => small.common2_code);
    } else {
        if (!selectedSmallCategories.includes(selectedValue)) {
        	console.log("updateSmallCategory 추가");
            selectedSmallCategories.push(selectedValue);
        }
    }
    // 추가된 소카테고리를 화면에 표시
    addContainer(selectedValue, selectedText);
    
    // 높이
    categoryBarHeight();
    
    selectCategory();
}

//------------------------------------------------------------------------------------
// 지역
function updateLocal() {
    const selectElement = document.getElementById('class_local');
    const selectedValue = selectElement.value;
    const selectedText = selectElement.options[selectElement.selectedIndex].text;

    if (selectedValue === 'classLocalAll') {
        selectedLocals = allLocals.map(local => local.common2_code);
    } else {
        if (!selectedLocals.includes(selectedValue)) {
        	console.log("updateLocal 추가");
            selectedLocals.push(selectedValue);
        }
    }
    // 추가된 지역을 화면에 표시
    addContainer(selectedValue, selectedText);
    
    // 높이
    categoryBarHeight();
    
    selectCategory();
}

//------------------------------------------------------------------------------------
// 셀렉트 값 셀렉트 컨테이너에 추가
function addContainer(value, text) {
    const categoryContainer = document.getElementById('categoryContainer');
    const div = document.createElement('div');

    div.className = 'mt-3 col-md-2 position-relative chooseDiv';

    const input = document.createElement('input');
    input.type = 'text';
    input.className = 'form-control chooseResult';
    input.value = text;
    input.readOnly = true;

    const img = document.createElement('img');
    img.src = '<%= request.getContextPath() %>/resources/images/class/x.png';
    img.className = 'xicon';

    div.appendChild(input);
    div.appendChild(img);
    categoryContainer.appendChild(div);

    // 카테고리를 삭제하는 기능 추가
    img.addEventListener('click', function() {
        categoryContainer.removeChild(div);
        // 배열에서 값 제거
        selectedCategories = selectedCategories.filter(item => item !== value);
        selectedSmallCategories = selectedSmallCategories.filter(item => item !== value);
        selectedLocals = selectedLocals.filter(item => item !== value);
    });
}

//------------------------------------------------------------------------------------
// 초기화 버튼 (셀렉트 컨테이너 값 초기화)
function resetCategory() {
    const categoryContainer = document.getElementById('categoryContainer');
    categoryContainer.innerHTML = ''; 

    selectedCategories = [];
    selectedSmallCategories = [];
    selectedLocals = [];

    categoryBarHeight();
}

//------------------------------------------------------------------------------------
// 카테고리 바 높이
function categoryBarHeight() {
    var categoryBarBox = $(".categoryBarBox");
    var additionalHeight = 20; 
    var newHeight = categoryBarBox.height() + additionalHeight;
    categoryBarBox.css("height", newHeight + "px");
}

//------------------------------------------------------------------------------------
// 카테고리에 따른 필터링
function selectCategory () {
	var obj = {
            bigCategories: selectedCategories,
            smallCategories: selectedSmallCategories,
            locals: selectedLocals
    };
    $.ajax({
        url: "filter-class",
        method: "post",
        contentType: "application/json",
        data: JSON.stringify(obj),
        success: function(response) {
            console.log(response + "1111");
            displayFilteredClasses(response);
            alert("성공"); 
        },
        error: function(xhr, status, error) {
            alert("실패ㅏㅏㅏㅏㅏㅏㅏㅏㅏ"); 
            console.error('AJAX 요청 중 오류 발생: ' + error); 
        }
    });
}

//필터링된 클래스 표시
function displayFilteredClasses(classes) {
    var classListContainer = $("#classListContainer"); // 클래스 목록을 표시할 컨테이너
    classListContainer.empty(); // 기존 클래스 목록 비우기
    // 각 클래스 정보를 반복하여 HTML에 추가
    $.each(classes, function(index, classData) {
        var classHtml = `
            <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
                <div class="card shadow-sm border-0 rounded flex-fill mb-4">
                    <div class="card-body p-0 position-relative card-body1 position-relative1">
                        <a href="class-detail?class_code=${classData.class_code}">
                            <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic">
                        </a>
                        <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay" data-class-code="${classData.class_code}" data-member-code="${classData.member_code}">
                        <div class="card-bodys d-flex flex-column">
                            <div class="classCategory col-md-10">
                                <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${filterClass.class_big_category}</button>
                                <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${classData.class_small_category}</button>
                            </div>
                            <div class="createrName d-flex align-items-center">
                                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                                <p class="mb-0 ml-2">${filterClass.member_nickname}</p>
                            </div>
                            <div class="className">
                                <a href="class-detail"><h6>${filterClass.class_name}</h6></a>
                            </div>
                            <div class="row classInfo">
                                <div class="col-md-6 add">
                                    <a href="" class="btn btn-outline-dark btn-sm disabled btn1">${classData.class_location}</a>
                                </div>
                                <div class="col-md-6 price">
                                    <p>${classData.class_price}원</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        `;

        classListContainer.append(classHtml); // 클래스 정보를 컨테이너에 추가
    });
}
</script>
</body>
</html>
