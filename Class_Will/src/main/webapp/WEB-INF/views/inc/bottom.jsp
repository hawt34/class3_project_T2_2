<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
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
    


</style>
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5" style="background-color: #333;">
            <div class="container py-5" style="border-top: 1px solid white ;">
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
										<li class="bottom-menu"><a href="">이용약관</a></li>
										<li class="bottom-menu"><a href="">개인정보처리방침</a></li>
										<li class="bottom-menu"><a href="">환불규정</a></li>
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
<!--                     <div class="row g-4"> -->
<!--                         <div class="col-lg-3"> -->
<!--                             <a href="#"> -->
<!--                                 <h1 class="text-primary mb-0">Fruitables</h1> -->
<!--                                 <p class="text-secondary mb-0">Fresh products</p> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                         <div class="col-lg-6"> -->
<!--                             <div class="position-relative mx-auto"> -->
<!--                                 <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email"> -->
<!--                                 <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0;">Subscribe Now</button> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-3"> -->
<!--                             <div class="d-flex justify-content-end pt-3"> -->
<!--                                 <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a> -->
<!--                                 <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a> -->
<!--                                 <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a> -->
<!--                                 <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="row g-5"> -->
<!--                     <div class="col-lg-3 col-md-6"> -->
<!--                         <div class="footer-item"> -->
<!--                             <h4 class="text-light mb-3">Why People Like us!</h4> -->
<!--                             <p class="mb-4">typesetting, remaining essentially unchanged. It was  -->
<!--                                 popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.</p> -->
<!--                             <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read More</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-6"> -->
<!--                         <div class="d-flex flex-column text-start footer-item"> -->
<!--                             <h4 class="text-light mb-3">Shop Info</h4> -->
<!--                             <a class="btn-link" href="">About Us</a> -->
<!--                             <a class="btn-link" href="">Contact Us</a> -->
<!--                             <a class="btn-link" href="">Privacy Policy</a> -->
<!--                             <a class="btn-link" href="">Terms & Condition</a> -->
<!--                             <a class="btn-link" href="">Return Policy</a> -->
<!--                             <a class="btn-link" href="">FAQs & Help</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-6"> -->
<!--                         <div class="d-flex flex-column text-start footer-item"> -->
<!--                             <h4 class="text-light mb-3">Account</h4> -->
<!--                             <a class="btn-link" href="">My Account</a> -->
<!--                             <a class="btn-link" href="">Shop details</a> -->
<!--                             <a class="btn-link" href="">Shopping Cart</a> -->
<!--                             <a class="btn-link" href="">Wishlist</a> -->
<!--                             <a class="btn-link" href="">Order History</a> -->
<!--                             <a class="btn-link" href="">International Orders</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-6"> -->
<!--                         <div class="footer-item"> -->
<!--                             <h4 class="text-light mb-3">Contact</h4> -->
<!--                             <p>Address: 1429 Netus Rd, NY 48247</p> -->
<!--                             <p>Email: Example@gmail.com</p> -->
<!--                             <p>Phone: +0123 4567 8910</p> -->
<!--                             <p>Payment Accepted</p> -->
<%--                             <img src = "${pageContext.request.contextPath}/resources/img/payment.png" class="img-fluid" alt=""> --%>
<!--                         </div> -->
<!--                     </div> -->
                </div>
            </div>
        </div>
        <!-- Footer End -->