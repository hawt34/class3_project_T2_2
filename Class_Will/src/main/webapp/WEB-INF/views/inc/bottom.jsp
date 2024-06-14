<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

	.class-will-bottom {
		background: black;
		
	}
	
	.bottom-ul {
		list-style: none;
		padding: 0;
	    margin: 0;
	    display: flex;
	    flex-wrap: wrap; 
	}
	
	.bottom-menu {
		font-size: 20px;
		font-weight: bold;
		margin-right: 15px;
	}
	
	.bottom-info {
		margin-right: 15px;
	}
	
	.social-icons {
        display: flex;
        justify-content: center; /* 아이콘을 가운데 정렬 */
        align-items: center;
        padding-top: 20px;
    }

    .social-icons .btn {
        margin-right: 10px; /* 아이콘 간의 간격 조절 */
    }
    
    .back-to-top {
	    position: fixed;
	    right: 30px;
	    bottom: 200px;
	    display: flex;
	    width: 40px;
	    height: 40px;
	    align-items: center;
	    justify-content: center;
	    transition: 0.5s;
	    z-index: 999;
	}
	
	.chatbot {
		position: fixed;
	    right: 50px;
	    bottom: 100px;
	    position: fixed;
	    display: flex;
	    width: 50px;
	    height: 50px;
	    align-items: center;
	    justify-content: center;
	    z-index: 999;
	}
	

	    


</style>
	
	<!-- Back to Top -->
	<a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   
	<!-- chatbot -->
	<a href="#" class="chatbot"><img src="${pageContext.request.contextPath}/resources/img/chatbot-icon2.png" width="120px" alt="chatbot" ></a>   
        
        
    <!-- Footer Start -->
	<div class="class-will-bottom">
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5" style="background-color: #333;">
            <div class="container py-5" style="border-top: 1px solid white;">
                <div class="container text-center">
					<div class="row">
						<div class="col-4 col-sm-9">
							<div class="row">
								<div class="col-4 col-mb-6">
								  <img src="${pageContext.request.contextPath}/resources/img/class_will_logo.png" width="150px" alt="Logo" class="d-inline-block align-text-top">
								</div>
								<div class="col-8 col-mb-6">
									<ul class="bottom-ul">
										<li class="bottom-menu"><a href="">공지사항</a></li>
										<li class="bottom-menu"><a href="">FAQ</a></li>
										<li class="bottom-menu"><a href="use-info">이용약관</a></li>
										<li class="bottom-menu"><a href="privacy-info">개인정보처리방침</a></li>
										<li class="bottom-menu"><a href="refund-info">환불규정</a></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<div class="col-4 col-mb-6 social-icons">
									<div class="d-flex justify-content-end pt-3">
		                                <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a>
		                                <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
		                                <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
		                                <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
		                            </div>
								</div>
								<div class="col-8 col-mb-6">
									<ul class="bottom-ul">
										<li class="bottom-info">(주)클래스윌</li>
										<li class="bottom-info">대표: 김부기</li>
										<li class="bottom-info">사업자등록번호: 000-00-00000 </li>
										<li class="bottom-info">통신판매업신고번호: 0000-부산진구-0000</li>
										<li class="bottom-info">주소: 부산 부산진구 동천로 109 삼한골든게이트 7층</li>
										<li class="bottom-info">051-803-0909</li>
										<li class="bottom-info">이메일: boogimovie@gmail.com</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-4 col-lg-3">
							<h3>고객센터</h3>
							<button class="btn btn-light">문의하기</button>
							<p>*주중 10시~18시/주말 및 공휴일 제외</p>
						</div>
					</div>
                </div>
            </div>
        </div>
	</div>        
   <!-- Footer End -->
    <script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>