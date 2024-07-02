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

// ------ like-class ------ 
document.addEventListener("DOMContentLoaded", function() {
    var heartImges = document.querySelectorAll(".heartImg");
    var originalSrc = "${pageContext.request.contextPath}/resources/images/profile/heart.png"; // 라이크 클래스 추가 안했을 시 
    var changeSrc = "${pageContext.request.contextPath}/resources/images/profile/heart_full.png"; // 라이크 클래스 추가 했을 시 

    heartImges.forEach(function(heartOverlay) {
        heartOverlay.addEventListener("click", function() {
            var img = this;
            var member_code = img.getAttribute("data-member-code");
            var class_code = img.getAttribute("data-class-code");
            var isFullHeart = img.src.includes("heart_full.png");

            var heart_status = !isFullHeart;
			
			// 로그인 해야만 이용 가능
			if(member_code == null || member_code == ""){ 
	            alert("로그인이 필요한 페이지 입니다.");
	            window.location.href = "member-login";
	            return;
			}
			
            if (heart_status) { // heart_status가 true일 때 (like-class 추가 시)
                img.src = changeSrc;
 				alert("관심 클래스에 추가되었습니다.");
            } else { // heart_status가 false일 때 (like-class 삭제 시)
                img.src = originalSrc;
 				alert("관심 클래스에서 삭제되었습니다.");
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

</script>

<!-- JavaScript 코드 -->
<script>
// ------ 현재 위치 ------ 
// 현재 위치와 클래스 위치를 표시하는 함수
function showLocations(position) {
    var userLat = position.coords.latitude; // 현재위치 위도
    var userLng = position.coords.longitude; // 현재위치 경도
    
    alert("현재 위치는 : " + userLat + ", " + userLng);
    
    // 카카오 지도에 현재 위치 표시
    var mapContainer = document.getElementById('mapContainer'); // 지도를 표시할 div
    var mapOption = {
        center: new kakao.maps.LatLng(userLat, userLng), // 지도의 중심좌표
        level: 7
    };
    
    var map = new kakao.maps.Map(mapContainer, mapOption);
    
    // 현재 위치 마커 생성
    var currentMarkerImage = '${pageContext.request.contextPath}/resources/images/class/map.png'; // 현재 위치 마커 이미지 주소
    var currentMarkerSize = new kakao.maps.Size(50, 50); // 현재 위치 마커 이미지 크기
    var currentMarkerImage = new kakao.maps.MarkerImage(currentMarkerImage, currentMarkerSize);
    
    var currentMarkerPosition = new kakao.maps.LatLng(userLat, userLng);
    var currentMarker = new kakao.maps.Marker({
        position: currentMarkerPosition,
        image: currentMarkerImage // 현재 위치 마커 이미지 설정
    });
    currentMarker.setMap(map);
    
    // 현재 위치 커스텀 오버레이 생성
    var currentPosition = new kakao.maps.LatLng(userLat, userLng);
    var currentContent = '<div style="padding:20px; color:red; font-weight: bold;">내 위치</div>'; // 현재 위치 커스텀 오버레이 내용
    var currentCustomOverlay = new kakao.maps.CustomOverlay({
        map: map,
        position: currentPosition,
        content: currentContent,
        xAnchor: 0.5, // 수평 방향에서 중앙에 위치
        yAnchor: 0.4 // 수직 방향에서 아래쪽에 위치
    });
	let classList = JSON.parse('${classList}');
// 	let classList = ${classList};
	console.log("classList : " +'${classList}');
	
// 	let classListString = '[{"class_map_x": "35.0986158", "class_map_y": "129.0287567"}, {"class_map_x": "35.12345", "class_map_y": "129.67890"}]';
// 	let classList = JSON.parse(classListString);
    // 클래스 위치들 (예시 데이터)
//     var classLocations = [];
    var classLocations = [];
    
	for (var i = 0; i < classList.length; i++) {
	    var classes = classList[i];
	    classLocations.push({
	    	title: 'classwill ' + classes.class_name,
	        latlng: new kakao.maps.LatLng(classes.class_map_x, classes.class_map_y)
	    });
	    console.log("title : " + classes.class_name);
	    console.log("latlng : " + classes.class_map_x, classes.class_map_y);
	}
	
    // 클래스 위치 마커와 커스텀 오버레이 생성
    classLocations.forEach(function(location) {
        var markerImage = '${pageContext.request.contextPath}/resources/images/class/map2.png'; // 클래스 위치 마커 이미지 주소
        var markerSize = new kakao.maps.Size(50, 50); // 클래스 위치 마커 이미지 크기
        var markerImage = new kakao.maps.MarkerImage(markerImage, markerSize);
        
        var markerPosition = new kakao.maps.LatLng(location.class_map_x, location.class_map_y);
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            image: markerImage // 클래스 위치 마커 이미지 설정
        });
        marker.setMap(map);
        
        var content = '<div style="padding:10px; color:blue; font-weight: bold;">' + location.name + '</div>'; // 클래스 위치 커스텀 오버레이 내용
        var customOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: markerPosition,
            content: content,
			xAnchor: 0.5, // 수평 방향에서 중앙에 위치
			yAnchor: 0.4 // 수직 방향에서 아래쪽에 위치
        });
    });
}

// 현재 위치를 가져오는 함수
function getCurrentLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showLocations, showErrorMsg);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

// 위치 가져오기 실패 시 에러 메시지 출력 함수
function showErrorMsg(error) {
    alert("위치 정보를 가져오지 못했습니다.");
    console.error(error);
}
// ---------------------------

// $(function() {
//  var userLat = position.coords.latitude; // 현재위치 위도
//  var userLng = position.coords.longitude; // 현재위치 경도
 
// 	alert("현재 위치는 : " + userLat + ", " + userLng);
 
//     var mapContainer = document.getElementById('map'); // 지도를 표시할 div
//     var mapOption = {
//         center: new kakao.maps.LatLng(userLat, userLng), // 부산 중심 좌표
//         level: 9 // 지도의 확대 레벨
//     };
    
//     var map = new kakao.maps.Map(mapContainer, mapOption);

//     // 클래스 위치를 포함할 배열
//     var positions = [];

//     // 서버에서 가져온 클래스 위치 데이터
//     var classList = JSON.parse('${classList}');
// //     var classList = ${classList};
// 	console.log("classList : " + classList);
	
//     for (var i = 0; i < classList.length; i++) {
//         var classes = classList[i];
//         positions.push({
//             title: 'classWill ' + classes.class_name,
//             latlng: new kakao.maps.LatLng(classes.class_map_x, classes.class_map_y)
//         });
//         console.log("title : " + classes.class_name);
//         console.log("latlng : " + classes.class_map_x, classes.class_map_y);
//     }

//     // 마커 이미지의 이미지 주소입니다
//     var imageSrc = "${pageContext.request.contextPath}/resources/images/class/map.png"; 
    
//     for (var i = 0; i < positions.length; i++) {
//         var imageSize = new kakao.maps.Size(52, 69); 
//         var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
        
//         // 마커를 생성합니다
//         var marker = new kakao.maps.Marker({
//             map: map,
//             position: positions[i].latlng,
//             title: positions[i].title,
//             image: markerImage
//         });
//     }
// });

// function getCurrentLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(showYourLocation, showErrorMsg);
//     } else {
//         alert("Geolocation is not supported by this browser.");
//     }
// }

// function showYourLocation(position) {
//     var userLat = position.coords.latitude; // 현재위치 위도
//     var userLng = position.coords.longitude; // 현재위치 경도

//     // 카카오 지도에 현재 위치 표시
//     var mapContainer = document.getElementById('map');
//     var mapOption = {
//         center: new kakao.maps.LatLng(userLat, userLng), // 지도의 중심좌표를 현재 위치로 설정
//         level: 9 // 지도의 확대 레벨
//     };
    
//     var map = new kakao.maps.Map(mapContainer, mapOption);

//     // 현재 위치 마커 생성
//     var marker = new kakao.maps.Marker({
//         position: new kakao.maps.LatLng(userLat, userLng),
//         map: map
//     });
// }


// function showErrorMsg(error) {
//     alert("위치 정보를 가져오지 못했습니다.");
//     console.error(error);
// }

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
							
<!-- 						<div class="selectDiv col-md-4"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col"> -->
<!-- 							    	<label for="customRange3" class="form-label">금액</label> -->
<!-- 							    </div> -->
<!-- 							    <div class="classPrice col-2"> -->
<!-- 							    	<span class="badge bg-light text-dark ">금액</span> -->
<!-- 							    </div> -->
<!-- 						    </div> -->
<!-- 						    <input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3"> -->
<!-- 						</div> -->
						
						<!-- 셀렉트 검색 버튼 -->
						<div class="btnSearchDiv col-md-1">
<!-- 							<div class="btnSearch w-100"> -->
								<button type="button" class="btn btn-outline-light btnSearch" onclick="searchCategory()">검색</button>
<!-- 							</div> -->
						</div>
						<!-- 셀렉트 검색 버튼 -->
						
						<!-- 셀렉트 초기화 버튼 -->
						<div class="btnResetDiv col-md-1">
<!-- 							<div class="btnReset w-100"> -->
								<button type="button" class="btn btn-outline-light btnReset" onclick="resetCategory()">초기화</button>
<!-- 							</div> -->
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
									<input type="text" class="form-control form-inputs hashtag" data-value="#${hashtag.hash_tag_name}" value="#${hashtag.hash_tag_name}" onclick="hashtagSelect('${hashtag.hash_tag_name}')" readonly>
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
						
						<!-- 라이크 클래스 하트 이미지 변경-->
						<c:choose>
							<c:when test="${not empty likeClassCode}"> <!-- likeClassList 존재 -->
								<c:set var="isLiked" value="false"/> <!-- 삭제 -->
								<c:forEach var="likeClassCode" items="${likeClassCode}">
									<c:if test="${likeClassCode.class_code == classList.class_code}">
										<c:set var="isLiked" value="true"/> <!-- 추가 -->
									</c:if>
								</c:forEach>
								<c:if test="${isLiked}">
									<img src="${pageContext.request.contextPath}/resources/images/profile/heart_full.png" id="heartOverlay" class="heartImg" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}">
								</c:if>
								<c:if test="${not isLiked}">
									<img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heartImg" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}">
								</c:if>
							</c:when>
							<c:otherwise> <!-- likeClassList 존재 X -->
								<img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heartImg" data-class-code="${classList.class_code}" data-member-code="${classList.member_code}">
							</c:otherwise>
						</c:choose>
						<!-- 라이크 클래스 하트 이미지 변경 -->
						
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
<!-- <!--     필터링된 클래스 목록이 여기에 동적으로 추가됩니다. --> 
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
    addContainer(selectedValue, selectedText);
    
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
    addContainer(selectedValue, selectedText);
    
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
    addContainer(selectedValue, selectedText);
    
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
// 검색 버튼 (카테고리 셀렉트)
function searchCategory() {
    var big_category = $("#class_big_category").val();
	var small_category = $("#class_small_category").val();
	var local = $("#class_local").val();
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
// 해시태그 셀렉트 
function hashtagSelect(tagCode) {
    $.ajax({
        url: 'class-list',
        type: 'GET',
        data: {
            hashtag: tagCode
        },
        success: function(response) {
            // 요청 성공 시 처리할 코드
            console.log('AJAX 요청 성공');
//             alert('AJAX 요청 성공');
            updateClassList(response); // response를 이용한 데이터 처리 함수 호출
        },
        error: function(xhr, status, error) {
            // 요청 실패 시 처리할 코드
            console.error('AJAX 요청 실패:', error);
//             alert('AJAX 요청 실패');
        }
    });
}


function updateClassList(classList) {
    var classListContainer = $("#classListContainer"); // 클래스 목록을 표시할 컨테이너
    classListContainer.empty(); // 기존 클래스 목록 비우기

    $.each(classList, function(index, classItem) {
        var classCard = `
            <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
                <div class="card shadow-sm border-0 rounded flex-fill mb-4">
                    <div class="card-body p-0 position-relative card-body1 position-relative1">
                        <a href="class-detail?class_code=${classItem.class_code}">
                            <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic">
                        </a>
                        <!-- 하트 이미지 -->
                        <img src="${pageContext.request.contextPath}/resources/images/profile/${classItem.isLiked ? 'heart_full.png' : 'heart.png'}" id="heartOverlay" class="heartImg" data-class-code="${classItem.class_code}" data-member-code="${classItem.member_code}">
                        <!-- 하트 이미지 -->
                        <div class="card-bodys d-flex flex-column">
                            <div class="classCategory col-md-10">
                                <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${classItem.class_big_category}</button>
                                <button type="button" class="btn btn-outline-secondary btn-sm category btn1">${classItem.class_small_category}</button>
                            </div>
                            <div class="createrName d-flex align-items-center">
                                <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                                <p class="mb-0 ml-2">${classItem.member_nickname}</p>
                            </div>
                            <div class="className">
                                <a href="class-detail"><h6>${classItem.class_name}</h6></a>
                            </div>
                            <div class="row classInfo">
                                <div class="col-md-6 add">
                                    <a href="" class="btn btn-outline-dark btn-sm disabled btn1">${classItem.class_location}</a>
                                </div>
                                <div class="col-md-6 price">
                                    <p>${classItem.class_price}원</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        `;
        classListContainer.append(classCard); // 클래스 카드를 컨테이너에 추가
    });
}
//------------------------------------------------------------------------------------
// 카테고리 바 높이
// function categoryBarHeight() {
//     var categoryBarBox = $(".categoryBarBox");
//     var additionalHeight = 20; 
//     var newHeight = categoryBarBox.height() + additionalHeight;
//     categoryBarBox.css("height", newHeight + "px");
// }

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
                        <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heartImg" data-class-code="${classData.class_code}" data-member-code="${classData.member_code}">
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
