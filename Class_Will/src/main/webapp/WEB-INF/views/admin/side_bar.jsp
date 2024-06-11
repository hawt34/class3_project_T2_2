<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/b43f956240.js" crossorigin="anonymous"></script>
</head>
<body>
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath }/Admin">
                <div class="sidebar-brand-icon rotate-n-15">
                    <img src="${pageContext.request.contextPath}/resources/img/클래스로고2.png" width="80px">
                </div>
                <div class="sidebar-brand-text mx-3">Class Will</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath }/Admin">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>대쉬보드</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                관리
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fa-solid fa-user"></i>
                    <span>회원 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">회원 관리 :</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Member">회원 리스트</a>
                        <a class="collapse-item" href="cards.html">강사 리스트</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClass"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fa-solid fa-school"></i>
                    <span>클래스 관리</span>
                </a>
                <div id="collapseClass" class="collapse" aria-labelledby="headingClass"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">클래스 관리:</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Class">리스트</a>
                        <a class="collapse-item" href="utilities-border.html">머시기</a>
                        <a class="collapse-item" href="utilities-animation.html">저시기</a>
                        <a class="collapse-item" href="utilities-other.html">쳌</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - 카테고리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCategory"
                    aria-expanded="true" aria-controls="collapseCategory">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <span>카테고리 관리</span>
                </a>
                <div id="collapseCategory" class="collapse" aria-labelledby="headingCategory"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">카테고리 관리:</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Category">리스트</a>
                        <a class="collapse-item" href="utilities-border.html">머시기</a>
                        <a class="collapse-item" href="utilities-animation.html">저시기</a>
                        <a class="collapse-item" href="utilities-other.html">쳌</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - 고객센터 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCsc"
                    aria-expanded="true" aria-controls="collapseCsc">
                   <i class="fa-solid fa-handshake"></i>
                    <span>고객센터 관리</span>
                </a>
                <div id="collapseCsc" class="collapse" aria-labelledby="headingCsc"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">고객센터 관리:</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Csc">전체 리스트</a>
                        <a class="collapse-item" href="utilities-animation.html">공지사항 리스트</a>
                        <a class="collapse-item" href="utilities-other.html">FAQ 리스트</a>
                        <a class="collapse-item" href="utilities-other.html">1:1문의 리스트</a>
                        <a class="collapse-item" href="utilities-other.html">이벤트 리스트</a>
                    </div>
                </div>
            </li>
            
            
            <!-- Nav Item - 결제관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePay"
                    aria-expanded="true" aria-controls="collapsePay">
                 	 <i class="fa-solid fa-coins"></i>
                    <span>결제 관리</span>
                </a>
                <div id="collapsePay" class="collapse" aria-labelledby="headingPay"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">결제 관리:</h6>
                        <a class="collapse-item" href="utilities-animation.html">일반 결제</a>
                        <a class="collapse-item" href="utilities-other.html">크레딧 결제</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - 챗봇관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseChatbot"
                    aria-expanded="true" aria-controls="collapseChatbot">
                   <i class="fa-solid fa-robot"></i>
                    <span>챗봇 관리</span>
                </a>
                <div id="collapseChatbot" class="collapse" aria-labelledby="headingChatbot"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">챗봇 관리:</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Csc">프롬프트 관리</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - 신고관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseComplaint"
                    aria-expanded="true" aria-controls="collapseComplaint">
                   <i class="fa-solid fa-robot"></i>
                    <span>신고 관리</span>
                </a>
                <div id="collapseComplaint" class="collapse" aria-labelledby="headingComplaint"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">신고 관리:</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Csc">클래스 신고</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/Admin/Csc">1대1채팅 신고</a>
                    </div>
                </div>
            </li>

            <hr class="sidebar-divider">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}">
                <i class="fa-solid fa-house"></i>
                <span>메인 페이지</span></a>
            </li>
            <!-- Heading -->
<!--             <div class="sidebar-heading"> -->
<!--                 Addons -->
<!--             </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" -->
<!--                     aria-expanded="true" aria-controls="collapsePages"> -->
<!--                     <i class="fas fa-fw fa-folder"></i> -->
<!--                     <span>Pages</span> -->
<!--                 </a> -->
<!--                 <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar"> -->
<!--                     <div class="bg-white py-2 collapse-inner rounded"> -->
<!--                         <h6 class="collapse-header">Login Screens:</h6> -->
<!--                         <a class="collapse-item" href="login.html">Login</a> -->
<!--                         <a class="collapse-item" href="register.html">Register</a> -->
<!--                         <a class="collapse-item" href="forgot-password.html">Forgot Password</a> -->
<!--                         <div class="collapse-divider"></div> -->
<!--                         <h6 class="collapse-header">Other Pages:</h6> -->
<!--                         <a class="collapse-item" href="404.html">404 Page</a> -->
<!--                         <a class="collapse-item" href="blank.html">Blank Page</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </li> -->

            <!-- Nav Item - Charts -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link" href="charts.html"> -->
<!--                     <i class="fas fa-fw fa-chart-area"></i> -->
<!--                     <span>Charts</span></a> -->
<!--             </li> -->

            <!-- Nav Item - Tables -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link" href="tables.html"> -->
<!--                     <i class="fas fa-fw fa-table"></i> -->
<!--                     <span>Tables</span></a> -->
<!--             </li> -->

            <!-- Divider -->
<!--             <hr class="sidebar-divider d-none d-md-block"> -->

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- 광고 메시지? -->
<!--             <div class="sidebar-card d-none d-lg-flex"> -->
<%--                 <img class="sidebar-card-illustration mb-2" src="${pageContext.request.contextPath}/resources/img/undraw_rocket.svg" alt="..."> --%>
<!--                 <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p> -->
<!--                 <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a> -->
<!--             </div> -->
        </ul>
</body>
</html>