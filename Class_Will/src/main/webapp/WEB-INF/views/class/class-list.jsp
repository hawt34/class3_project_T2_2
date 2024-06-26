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
									<select name="class_big_category" id="class_big_category" class="form-control" onchange="updateCategory()">
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
									<select name="class_local" id="class_local" class="form-control" onchange="updateLocal()">
										<option value="classLocalAll">전체</option>
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
					<div class="row mx-5" id="categoryContainer">
<%-- 						<c:forEach var="bigCategoryList" items="${bigCategoryList}" varStatus="status" > --%>
<!-- 						    <div class="mt-3 col-md-2 position-relative chooseDiv"> -->
<%-- 						        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" value="${bigCategoryList.code_value}"readonly> --%>
<%-- 						        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon"> --%>
<%-- 								<li><a class="dropdown-item" href="class-list?local_common2_code=${localList.common2_code}" value="${localList.code_value}">${localList.code_value}</a></li> --%>
<!-- 						    </div> -->
<%-- 						</c:forEach> --%>
					</div>
					<!-- 카테고리 셀렉트 리스트 -->
					
					<!-- 해시태그 리스트 -->
					<div class="row mx-5">
						<hr>
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
// ------------------------------------------------------------------------------------
function updateCategory() {
    const selectElement = document.getElementById('class_big_category');
    const selectedCategoryValue = selectElement.value;
    const selectedCategoryText = selectElement.options[selectElement.selectedIndex].text;
    const categoryContainer = document.getElementById('categoryContainer');

    // '전체'를 선택한 경우 모든 큰 카테고리 값을 추가합니다.
    if (selectedCategoryValue === 'bigCategoryAll') {
        allCategories.forEach(category => {
            const categoryText = category.code_value;
            const categoryValue = category.common2_code;

            // 중복 확인: 이미 존재하는 값인지 확인
            const existingValues = categoryContainer.getElementsByTagName('input');
            let isDuplicate = false;
            for (let i = 0; i < existingValues.length; i++) {
                if (existingValues[i].value === categoryText) {
                    isDuplicate = true;
                    break;
                }
            }
            if (!isDuplicate) {
                addCategoryToContainer(categoryValue, categoryText);
            }
        });
        return;
    }

    // 중복 확인: 이미 존재하는 값인지 확인
    const existingValues = categoryContainer.getElementsByTagName('input');
    for (let i = 0; i < existingValues.length; i++) {
        if (existingValues[i].value === selectedCategoryText) {
            return;  // 이미 존재하는 경우 추가하지 않음
        }
    }

    // 선택한 카테고리 값을 추가합니다.
    addCategoryToContainer(selectedCategoryValue, selectedCategoryText);
}

function updateLocal() {
    const selectElement = document.getElementById('class_local');
    const selectedLocalValue = selectElement.value;
    const selectedLocalText = selectElement.options[selectElement.selectedIndex].text;
    const categoryContainer = document.getElementById('categoryContainer');

    // '전체'를 선택한 경우 모든 지역 값을 추가합니다.
    if (selectedLocalValue === 'classLocalAll') {
        allLocals.forEach(local => {
            const localText = local.code_value;
            const localValue = local.common2_code;

            // 중복 확인: 이미 존재하는 값인지 확인
            const existingValues = categoryContainer.getElementsByTagName('input');
            let isDuplicate = false;
            for (let i = 0; i < existingValues.length; i++) {
                if (existingValues[i].value === localText) {
                    isDuplicate = true;
                    break;
                }
            }
            if (!isDuplicate) {
                addCategoryToContainer(localValue, localText);
            }
        });
        return;
    }

    // 중복 확인: 이미 존재하는 값인지 확인
    const existingValues = categoryContainer.getElementsByTagName('input');
    for (let i = 0; i < existingValues.length; i++) {
        if (existingValues[i].value === selectedLocalText) {
            return;  // 이미 존재하는 경우 추가하지 않음
        }
    }

    // 선택한 지역 값을 추가합니다.
    addCategoryToContainer(selectedLocalValue, selectedLocalText);
}

function addCategoryToContainer(value, text) {
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
}

</script>
</body>
</html>