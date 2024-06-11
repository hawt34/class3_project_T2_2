<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 본문 시작 -->
<!-- Navbar start -->
<div class="container-fluid fixed-top">
    <div class="container px-0 top-cate">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid justify-content-center"> <!-- 중앙 정렬 -->
                <!-- 브랜드 로고 -->
                <a class="navbar-brand" href="main">
                    <img src="${pageContext.request.contextPath}/resources/img/class_will_logo.png" width="200px" alt="Logo" class="d-inline-block align-text-top">
                </a>
            </div>
        </nav>
        
        <!-- 네비바 -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid justify-content-between"> <!-- 양쪽 정렬 -->
                <div class="collapse navbar-collapse" id="navbarNavLarge">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="bi bi-list"></i>카테고리</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">BEST</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">내 주변 클래스</a>
                        </li>
                    </ul>
                </div> <!-- collapse -->
                
                <div class="collapse navbar-collapse" id="navbarNavLarge">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">클래스등록</a>
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
                </div> <!-- collapse -->
            </div>
            
            	
            
            	
                
                
                
                
                <!--  오프캔버스  -->
                <div class="offcanvas offcanvas-start" id="navbarNav" style="background-color: #333;">
                    <div class="offcanvas-header">
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#">클래스등록</a>
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
                </div><!-- offcanvas -->
                
                
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
