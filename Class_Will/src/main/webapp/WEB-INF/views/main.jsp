<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스윌</title>


<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!--  Bootstrap  -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!--  클래스 리스트 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/class_list.css">


	
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Hahmlet:wght@100..900&family=Nanum+Gothic&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
    
 	body { 
 		background: black;  
/*  		font-family: "Nanum Gothic", sans-serif;  */
 		font-family: "Noto Sans KR", sans-serif;
 	} 
 	
 	article {
/*  		height: auto; */
 		
 	}
 	
	.vesitable .owl-stage {
	    margin: 50px 0;
	    position: relative;
	}
	
	.vesitable .owl-nav .owl-prev {
	    position: absolute;
	    top: -8px;
	    right: 0;
	    color: var(--bs-primary);
	    padding: 5px 25px;
	    border: 1px solid var(--bs-secondary);
	    border-radius: 20px;
	    transition: 0.5s;
	}
	
	.vesitable .owl-nav .owl-next {
	    position: absolute;
	    top: -8px;
	    right: 88px;
	    color: var(--bs-primary);
	    padding: 5px 25px;
	    border: 1px solid var(--bs-secondary);
	    border-radius: 20px;
	    transition: 0.5s;
	}
	

</style>
</head>
<body>
	<header>
       	<jsp:include page="/WEB-INF/views/inc/top.jsp"/>
	</header>
	
	<article>
		<div class="main-event">
			<div class="container-fluid">
				<div class="container align-items-center">
					<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-inner ">
							<div class="carousel-item active ">
								<img src="${pageContext.request.contextPath}/resources/images/event/main-event1.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="${pageContext.request.contextPath}/resources/images/event/main-event2.jpg"  class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="${pageContext.request.contextPath}/resources/images/event/main-event3.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div> <!-- main-event -->
		
		
	<div class="container-fluid	">
		<div class="container">
		<h2 style="margin-top: 20px;">오늘의 TOP10</h2>
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
				</div> <!-- row -->
			</div><!-- container -->
			
			<div class="container">
		<h2 style="margin-top: 20px;">신규 오픈 클래스</h2>
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
				</div> <!-- row -->
			</div>
	    </div><!-- container-fluid	 -->     
	    <div class="main-top10">
	      	<!-- Vesitable Shop Start-->
	        <div class="container-fluid vesitable py-5">
	            <div class="container py-5">
	                <h1 class="mb-0">오늘의 TOP10</h1>
	                <div class="owl-carousel vegetable-carousel justify-content-center">
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Parsely</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-1.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Parsely</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-3.png" class="img-fluid w-100 rounded-top bg-light" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Banana</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-4.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Bell Papper</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-5.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Potatoes</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Parsely</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-5.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Potatoes</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="border border-primary rounded position-relative vesitable-item">
	                        <div class="vesitable-img">
	                            <img src="${pageContext.request.contextPath}/resources/img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
	                        </div>
	                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
	                        <div class="p-4 rounded-bottom">
	                            <h4>Parsely</h4>
	                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
	                            <div class="d-flex justify-content-between flex-lg-wrap">
	                                <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
	                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Vesitable Shop End -->
        </div>
	</article>

	<footer>
      	<jsp:include page="/WEB-INF/views/inc/bottom.jsp"/>
	</footer>
	
    <!-- JavaScript Libraries -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	
	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
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
</body>
</html>