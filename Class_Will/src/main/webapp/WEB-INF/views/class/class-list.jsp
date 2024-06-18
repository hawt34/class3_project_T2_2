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
</head>
<body>

<header>
	<jsp:include page="/WEB-INF/views/inc/top.jsp" />
</header>
	
<div class="container-xl container1">
<!--    <div class="col-md-2"> -->

<!--    </div> -->
   <div class="col-md-12">
   <div class="row">
       <jsp:include page="category-bar.jsp"></jsp:include>
   </div>
   <div class="row">
      <div class="col-md-9">
         <div class="classCount">
            <p>54개의 클래스</p>
         </div>
      </div>
      <div class="col-md-3 box1">
<!--          <select class="form-select-sm selectBox" aria-label="Default select example"> -->
         <select class="form-select selectBox w-50" aria-label="Default select example">
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" class="w-100 card-img-top classPic">
<%--                   <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" class="w-100 card-img-top classPic"> --%>
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 동래구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 해운대구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 해운대구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 북구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 남구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 사상구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s5.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
<!--                   <div class="card-body d-flex flex-column fixed-size"> -->
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">게임그래픽 전문학원 지지스쿨</p>
                     </div>
                     <div class="className">
                        <h6>툴 기초 완벽 정복, 게임 그래픽 입문 100강사전</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 사상구</a>
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
            <div class="card shadow-sm border-0 rounded flex-fill">
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s11.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">3D캐릭터아티스트 고사리</p>
                     </div>
                     <div class="className">
                        <h6>Substance Painter 입문자도 쉽게 만드는 AAA급 텍스처</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 수영구</a>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s7.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">테크니컬아티스트 홍상범</p>
                     </div>
                     <div class="className">
                        <h6>왕초보에서 이모티콘 마스터로! 클립스튜디오로 만드는 카카오톡 이모티콘</h6>
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
               <div class="card-body p-0 position-relative">
                  <img src="${pageContext.request.contextPath}/resources/images/products/s4.jpg" alt="" class="w-100 card-img-top classPic">
                  <img src="${pageContext.request.contextPath}/resources/images/profile/heart.png" id="heartOverlay" class="heart-overlay">
                  <div class="card-bodys d-flex flex-column">
                     <div class="classCategory col-md-10">
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                        <button type="button" class="btn btn-outline-dark btn-sm category">카테고리</button>
                     </div>
                     <div class="createrName d-flex align-items-center">
                        <img src="${pageContext.request.contextPath}/resources/images/class/pic.png">
                        <p class="mb-0 ml-2">UI 디자이너 리제</p>
                     </div>
                     <div class="className">
                        <h6>디자인과 연출을 모두 잡는 언리얼 게임 UI FX 포트폴리오</h6>
                     </div>
                     <div class="row classInfo">
                        <div class="col-md-6 add">
                           <a href="" class="btn btn-outline-dark btn-sm disabled">부산 남구</a>
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