<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<div class="selectDiv col-md-2 categorySelect">
								<div class="dropdown">
									<button class="btn btn-light dropdown-toggle categorySelectBtn w-100" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
										카테고리
									</button>
<!-- 									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="width: 300px;"> -->
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="width: 300px;">
										<div class="d-flex">
											<div class="col">
												<ul class="list-unstyled categoryDrop">
												<li><a class="dropdown-item" href="#" value="전체">전체</a></li>
													<c:forEach var="bigCategoryList" items="${bigCategoryList}" varStatus="status">
<%-- 														<c:if test="${status.index < 8}"> --%>
<%-- 															<li><a class="dropdown-item" id="bigCategory" href="#" onclick="bigCategory()" value="${bigCategoryList.code_value}">${bigCategoryList.code_value}</a></li> --%>
<%-- 															<li><a class="dropdown-item" id="bigCategory" onclick="bigCategory(this)" href="class-list?common2_code=${bigCategoryList.common2_code}" value="${bigCategoryList.common2_code}">${bigCategoryList.code_value}</a></li> --%>
																<li><a class="dropdown-item" onclick="bigCategory(this)" href="javascript:void(0);" data-code="${bigCategoryList.common2_code}">${bigCategoryList.code_value}</a></li>
<%-- 															<li><a class="dropdown-item" href="#" value="${bigCategoryList.code_value}">${bigCategoryList.code_value}</a></li> --%>
<%-- 														</c:if> --%>
													</c:forEach>
												</ul>
											</div>
										<div class="vr-divider"></div>
											<div class="col">
												<ul class="list-unstyled localList">
													<c:forEach var="smallCategoryList" items="${smallCategoryList}" varStatus="status">
														<c:if test="${status.index >= 8}">
															<li><a class="dropdown-item" href="#" onclick="smallCategory()" value="${smallCategoryList.code_value}">${smallCategoryList.code_value}</a></li>
														</c:if>
                       								     <c:if test="${smallCategoryList.common2_code eq common2_code}">
																<li>

																	<div class="form-check">
																	  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
																	  <label class="form-check-label" for="flexCheckDefault">
																		<a class="dropdown-item" href="#" value="${smallCategoryList.code_value eq common2_code}">${smallCategoryList.code_value  eq common2_code}</a>
																	  </label>
																	</div>
																</li>
														</c:if>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 카테고리바 카테고리 끝 -->
							
						    <!-- 카테고리바 지역 시작 -->
							<div class="selectDiv col-md-2">
								<div class="dropdown">
									<button class="btn btn-light dropdown-toggle w-100 categorySelect" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
									지역
									</button>
									<div class="dropdown-menu localDropdown" aria-labelledby="dropdownMenuButton1" style="width: 300px;">
										<div class="d-flex">
											<div class="col">
												<ul class="list-unstyled localList">
												<li><a class="dropdown-item" href="#" value="전체">전체</a></li>
													<c:forEach var="localList" items="${localList}" varStatus="status">
														<c:if test="${status.index < 8}">
															<li><a class="dropdown-item" href="class-list?local_common2_code=${localList.common2_code}" value="${localList.code_value}">${localList.code_value}</a></li>
														</c:if>
													</c:forEach>
												</ul>
											</div>
										<div class="vr-divider"></div>
											<div class="col">
												<ul class="list-unstyled localList">
													<c:forEach var="localList" items="${localList}" varStatus="status">
														<c:if test="${status.index >= 8}">
															<li><a class="dropdown-item" href="class-list?local_common2_code=${localList.common2_code}" value="${localList.code_value}">${localList.code_value}</a></li>
														</c:if>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 카테고리바 지역 끝 -->
							
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
							    <label for="customRange3" class="form-label">금액</label>
							    <input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
<!-- 							<div class="col-md-6"> -->
<!-- 							</div> -->
							</div>
						<div class="btnResetDiv col-md-1">
<!-- 						<div class="btnReset w-100"> -->
							<button type="button" class="btn btn-outline-light btnReset">초기화</button>
<!-- 						</div> -->
						</div>
					</div>
					<!-- 셀렉트박스 리스트 -->
					
					<!-- 카테고리 셀렉스 리스트 -->
					<div class="row mx-5">
						<c:forEach var="smallCategoryList" items="${smallCategoryList}" varStatus="status">
						    <div class="mt-3 col-md-2 position-relative chooseDiv">
						        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" value="${smallCategoryList.code_value }"readonly>
						        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
<%-- 								<li><a class="dropdown-item" href="class-list?local_common2_code=${localList.common2_code}" value="${localList.code_value}">${localList.code_value}</a></li> --%>
						    </div>
						</c:forEach>
						<hr>
					</div>
					<!-- 카테고리 셀렉스 리스트 -->
					
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
	
   <div class="row">
      <div class="col-md-9">
         <div class="classCount">
            <p>54개의 클래스</p>
         </div>
      </div>
      <div class="col-md-3 box1">
<!--          <select class="form-select-sm selectBox" aria-label="Default select example"> -->
         <select class="form-select selectBox1 w-50" aria-label="Default select example">
            <option selected>인기순</option>
            <option value="1">최신순</option>
            <option value="2">낮은 가격순</option>
            <option value="3">높은 가격순</option>
         </select>
      </div>
   </div>
      <!-- 첫번째 줄 -->
      <div class="row pb-4 mx-5 mb-4 d-flex flex-wrap">
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic"></a>
<%--                   <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" class="w-100 card-img-top classPic"> --%>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 진구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 동래구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <!-- Card-->
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- 두번째 줄 -->
      <div class="row pb-4 mx-5 mb-4 d-flex flex-wrap">
                  <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic"></a>
<%--                   <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" class="w-100 card-img-top classPic"> --%>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 진구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 동래구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <!-- Card-->
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- 세번째 -->
      <div class="row pb-4 mx-5 mb-4 d-flex flex-wrap">
                  <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic"></a>
<%--                   <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" class="w-100 card-img-top classPic"> --%>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 진구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 동래구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <!-- Card-->
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 d-flex classCard">
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 해운대구</a>
                        </div>
                        <div class="col-md-6 price">
                           <p>50,000원</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- 세번째 줄 끝 -->
   </div> <!-- col-md-12 -->
</div> <!-- container -->

<footer>
	<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
</footer>
	
	
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script type="text/javascript">

// function bigCategory() {
//     var common2_code = $('#bigCategory').attr('value'); // 속성에서 값을 가져오기
// 	$.ajax({
// 		type : "POST",
// 		url : "class-list",
// 		data : {
//             common2_code : common2_code
// 		},
// 		dataType : "json",
// 		success : function (response) {
// 			if(response == "true"){
// 				alert('class-list성공');
// 				console.log('class-list성공');
// 			} else {
// 				alert('class-list 실패');
// 				console.log('class-list실패');
				
// 			}
// 		},
// 		error : function (xhr, status, error) {
// 			alert('class-list ajax 실패');
// 			console.log('class-list ajax 실패');
// 		}
// 	});
// }

function bigCategory(element) {
    var common2_code = $(element).data('code');
    var code_value = $(element).text();

    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "class-list",
        data: {
            common2_code: common2_code
        },
        dataType: "json",
        success: function(response) {
            if (response === true) {
                alert('class-list 성공');
                console.log("class-list 성공");
                
                // 선택한 값을 카테고리 셀렉트 리스트에 추가
//                 addCategoryToList(code_value);
            } else {
                alert('class-list 실패');
                console.log('class-list 실패');
            }
        },
        error: function(xhr, status, error) {
            alert('class-list ajax 실패');
            console.log('class-list ajax 실패');
        }
    });
}

function addCategoryToList(code_value) {
//     var container = $(".chooseDiv").parent(); // 카테고리 셀렉트 리스트 컨테이너
    var container = $(".row.mx-5"); // 카테고리 셀렉트 리스트 컨테이너

    var newDiv = `
        <div class="mt-3 col-md-2 position-relative chooseDiv">
            <input type="text" class="form-control chooseResult" value="${code_value}" readonly>
            <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
        </div>
    `;
    container.append(newDiv);
}
</script>

<!-- <script type="text/javascript"> -->
<!-- function smallCategory() { -->
<!-- 	$.ajax({ -->
		
<!-- 		type : "POST", -->
<!-- 		url : "class-list", -->
<!-- 		data : { -->
<!--             common2_code : common2_code -->
			
<!-- 		}, -->
<!-- 		dataType : "json", -->
<!-- 		success :function (response) { -->
<!-- 				alert('class-list성공'); -->
<!-- 				console.log('class-list성공'); -->
			
<!-- 		}, -->
<!-- 		error : function (xhr, status, error) { -->
<!-- 			alert('class-list ajax 실패'); -->
<!-- 			console.log('class-list ajax 실패'); -->
			
<!-- 		} -->
		
		
<!-- 	}); -->
<!-- } -->
<!-- </script> -->
</body>
</html>
