<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	.class-will-top {
		background: black;
	}
	
	
    
    /*** Navbar Start ***/
	.navbar .navbar-nav .nav-link {
	    padding: 0px 20px;
	    font-size: 18px;
	    transition: .5s;
	}
	
	.navbar {
	    height: 150px;
	    border-bottom: 1px solid rgba(255, 255, 255, .3);
	    background: black;
	}
	
	.navbar .navbar-nav .nav-link:hover,
	.navbar .navbar-nav .nav-link.active,
	.navbar .navbar-nav .nav-link:hover .nav-link.active {
	    color: white;
	    font-weight: bold;
	}
	
	.navbar-nav>a:hover{
	   background: white;
	   border-radius: 5px;
	}
	.navbar-nav>div:hover{
	   background: white;
	   border-radius: 5px;
	}
	
	.navbar .dropdown-toggle::after {
	    border: none;
	    content: "\f107";
	    font-family: "Font Awesome 5 Free";
	    font-weight: 700;
	    vertical-align: middle;
	    margin-left: 8px;
	    color: var(--bs-body);
	}
	
	@media (min-width: 1200px) {
	    .navbar .nav-item .dropdown-menu {
	        display: block;
	        visibility: hidden;
	        top: 100%;
	        transform: rotateX(-75deg);
	        transform-origin: 0% 0%;
	        border: 0;
	        transition: .5s;
	        opacity: 0;
	    }
	    
	}
	@media (max-width: 1200px) {
	  #navbarCollapse{
	   background: lightgray;
	   border-radius: 10px;
	  }
	  
	    
	}
	
	
	.dropdown .dropdown-menu a:hover {
	    background: gray;
	    color: var(--bs-light);
	}
	
	.navbar .nav-item:hover .dropdown-menu {
	    transform: rotateX(0deg);
	    visibility: visible;
	    background: var(--bs-light) !important;
	    border-radius: 10px !important;
	    transition: .5s;
	    opacity: 1;
	}
	
	#searchModal .modal-content {
	    background: rgba(255, 255, 255, .7);
	}
	/*** Navbar End ***/
	
	.collapse-category {
		background: black;
		color: white;
	} 
	
	.collapse-category .collapse-category {
		background: black;
	}
    
    
</style>


<script>
    document.addEventListener('DOMContentLoaded', function () {
        const collapseElements = document.querySelectorAll('[data-bs-toggle="collapse"]');

        let currentOpenCollapse = null;

        const openCollapse = (target) => {
            if (currentOpenCollapse && currentOpenCollapse !== target) {
                currentOpenCollapse.classList.remove('show');
            }
            target.classList.add('show');
            currentOpenCollapse = target;
        };

        const closeCollapse = (target) => {
            target.classList.remove('show');
            if (currentOpenCollapse === target) {
                currentOpenCollapse = null;
            }
        };

        collapseElements.forEach(function (elem) {
            const target = document.querySelector(elem.getAttribute('data-bs-target'));

            elem.addEventListener('mouseenter', () => openCollapse(target));
            elem.addEventListener('mouseleave', () => closeCollapse(target));
            
            elem.addEventListener('click', function (e) {
                e.preventDefault();
                if (target.classList.contains('show')) {
                    closeCollapse(target);
                } else {
                    openCollapse(target);
                }
            });

            target.addEventListener('mouseleave', () => closeCollapse(target));
            target.addEventListener('click', () => closeCollapse(target));
        });
    });
</script>





<!-- 본문 시작 -->
<!-- Navbar start -->
<div class="class-will-top">
	<div class="container-fluid">
	    <div class="container px-0 top-cate">
	        <nav class="navbar navbar-expand-lg bg-body-tertiary">
	            <div class="container-fluid">
	                <div class="row w-100 align-items-center">
	                    <!-- 왼쪽 네비게이션 영역 -->
	                    <div class="col-5 d-none d-lg-flex justify-content-start">
	                        <ul class="navbar-nav">
	                            <li class="nav-item">
	                                <a href="#" class="nav-link" data-bs-toggle="collapse" data-bs-target="#collapse-category" aria-expanded="false" aria-controls="collapse-category">
	                                	<i class="bi bi-list"></i> 카테고리
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link" href="" data-bs-toggle="collapse" data-bs-target="#collapse-zone" aria-expanded="false" aria-controls="collapse-zone">
	                                	지역별
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link" href="event">이벤트</a>
	                            </li>
	                        </ul>
	                    </div>
	
	                    <!-- 가운데 로고 영역 (큰 화면) -->
	                    <div class="col-2 d-none d-lg-flex justify-content-center">
	                        <a class="navbar-brand" href="main">
	                            <img src="${pageContext.request.contextPath}/resources/img/class_will_logo.png" width="200px" alt="Logo" class="d-inline-block align-text-top">
	                        </a>
	                    </div>
	
	                    <!-- 오른쪽 네비게이션 영역 -->
	                    <div class="col-5 d-none d-lg-flex justify-content-end">
	                        <ul class="navbar-nav">
	                            <li class="nav-item">
	                                <a class="nav-link btn" href="creator-main">클래스등록</a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link" data-bs-toggle="modal" data-bs-target="#searchModal" href="#"><i class="bi bi-search"></i></a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link" href="#"><i class="bi bi-envelope"></i></a>
	                            </li>
	                            <li class="nav-item">
	                            	<a class="nav-link" href="member_login">로그인</a>
	<!--                                 <a class="nav-link" href="#"><i class="bi bi-person-circle"></i></a> -->
	                            </li>
	                        </ul>
	                    </div>
	
	                    <!-- 로고와 햄버거 버튼 (작은 화면) -->
	                    <div class="col-8 d-flex d-lg-none justify-content-start">
	                        <a class="navbar-brand" href="main">
	                            <img src="${pageContext.request.contextPath}/resources/img/class_will_logo.png" width="200px" alt="Logo" class="d-inline-block align-text-top">
	                        </a>
	                    </div>
	                    <div class="col-4 d-flex d-lg-none justify-content-end">
	<!--                         <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarNav" aria-controls="navbarNav"> -->
	<!--                             <span class="navbar-toggler-icon"></span> -->
	<!--                         </button> -->
	                         <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#top-offcanvas">
		                        <span class="fa fa-bars text-primary"></span>
		                    </button>
	                    </div>
	                </div>
	            </div>
	
	            <!-- 오프캔버스 -->
	            <div class="offcanvas offcanvas-start" id="top-offcanvas" style="background-color: #333;">
	                <div class="offcanvas-header">
	                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	                </div>
	                <div class="offcanvas-body">
	                    <ul class="navbar-nav">
	                        <li class="nav-item">
	                            <a class="nav-link" href="#">카테고리</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#">이벤트</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="creator-main">클래스등록</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#"><i class="bi bi-search"></i></a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#"><i class="bi bi-envelope"></i></a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#"><i class="bi bi-person-circle"></i></a>
	                        </li>
	                    </ul>
	                </div>
	            </div> <!-- offcanvas -->
	        </nav>
	    </div>
	</div>
	<!-- Navbar End -->
	
	<!-- Modal Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-fullscreen">
	        <div class="modal-content rounded-0">
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <div class="modal-body d-flex align-items-center">
	                <div class="input-group w-75 mx-auto d-flex">
	                    <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
	                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Modal Search End -->
	
	<!-- 분야 카테고리 -->
	<div class="container">
		<div class="collapse collapse-category" id="collapse-category">
			<div class="card card-body collapse-category">
		  		분야별 카테고리 ~~
			</div>
		</div>
	</div>	
	
	<!-- 지역 카테고리 -->
	<div class="container">
		<div class="collapse collapse-category" id="collapse-zone">
			<div class="card card-body collapse-category">
		  		지역별 카테고리~~
			</div>
		</div>
	</div>	
</div>