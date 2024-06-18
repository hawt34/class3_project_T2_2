<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
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
					<div class="row height d-flex align-items-center mx-5">
						<div class="col-md-3">
							<div class="form form1">
								<i class="fa fa-search"></i>
								<input type="text" class="form-control form-input search-input" placeholder="클래스 검색">
							</div>
						</div>
					</div>
					
					<!-- 셀렉트박스 리스트 -->
					<div class="row mx-5">
						<div class="selectDiv col-md-2">
							<select class="form-select categorySelect w-100" aria-label="Default select example">
								<option selected>카테고리</option>
								<option value="1">드로잉</option>
								<option value="2">디지털 드로잉</option>
								<option value="3">핸드메이드</option>
								<option value="4">쿠킹 / 베이킹</option>
								<option value="5">플라워 / 가드닝</option>
								<option value="6">뷰티</option>
								<option value="7">스포츠</option>
								<option value="8">요가 / 필라테스</option>
								<option value="9">사진 / 영상</option>
								<option value="10">음악</option>
							</select>
						</div>
						<div class="selectDiv col-md-2">
							<select class="form-select categorySelect w-100" aria-label="Default select example">
								<option selected>지역</option>
								<option value="1">서울</option>
								<option value="2">부산</option>
								<option value="3">인천</option>
							</select>
						</div>
						<div class="selectDiv col-md-2">
							<select class="form-select categorySelect w-100"  aria-label="Default select example">
								<option selected>유형</option>
								<option value="1">원데이</option>
								<option value="2">정기</option>
							</select>
						</div>
						<div class="selectDiv col-md-2">
							<select class="form-select categorySelect w-100" aria-label="Default select example" id="customRange2">
								<option selected>금액</option>
								<option value="1">
								</option>
							</select>
						</div>
						<div class="col-md-2 btnReset w-100">
							<button type="button" class="btn btn-outline-light">초기화</button>
						</div>
					</div>
					<!-- 셀렉트박스 리스트 -->
					
					<!-- 카테고리 셀렉스 리스트 -->
					<div class="row mx-5">
					    <div class="mt-3 col-md-2 position-relative chooseDiv">
					        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" placeholder="카테고리1" readonly>
					        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
					    </div>
					    <div class="mt-3 col-md-2 position-relative chooseDiv">
					        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" placeholder="카테고리2" readonly>
					        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
					    </div>
					    <div class="mt-3 col-md-2 position-relative chooseDiv">
					        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" placeholder="카테고리3" readonly>
					        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
					    </div>
					    <div class="mt-3 col-md-2 position-relative chooseDiv">
					        <input type="text" class="form-control chooseResult" id="exampleFormControlInput1" placeholder="카테고리4" readonly>
					        <img src="${pageContext.request.contextPath}/resources/images/class/x.png" class="xicon">
					    </div>
					    <div class="line col-md-12">
					    	<hr>
					    </div>
					</div>
					<!-- 카테고리 셀렉스 리스트 -->
					
					<!-- 해시태그 리스트 -->
					<div class="row mx-5">
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 커플" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 반려동물" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 선물" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 데이트" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 단체" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
							<div class="form form1">
								<input type="text" class="form-control form-inputs hashtag" placeholder="# 가족" readonly>
							</div>
						</div>
						<div class="col-md-2 hashtagDiv">
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
            <!-- Card-->
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative card-body1 position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 북구</a>
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
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
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 남구</a>
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
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 사상구</a>
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
<!--                   <div class="card-body d-flex flex-column fixed-size"> -->
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
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
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 사상구</a>
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
            <!-- Card-->
            <div class="card shadow-sm border-0 rounded flex-fill card-body1">
               <div class="card-body p-0 position-relative position-relative1">
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
<!--                         <button type="button" class="btn btn-outline-dark btn-sm category category1 btn1">원데이</button> -->
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
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
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 수영구</a>
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
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1 btn1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 진구</a>
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
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <a href="class-detail"><h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6></a>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 진구</a>
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
                  <a href="class-detail"><img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic"></a>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
						<button type="button" class="btn btn-outline-success btn-sm category" >원데이</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm category category1">카테고리</button>
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
                           <a href="" class="btn btn-outline-dark btn-sm disabled btn1">부산 남구</a>
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
<!-- Required JavaScript files -->
<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
</body>
</html>
