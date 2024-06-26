<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 페이지</title>

   <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Toast UI Grid CSS -->
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.grid/latest/tui-grid.css">
    
    <!-- Toast UI Grid Script -->
    <script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>
    
    <!-- Toast UI Pagination CSS -->
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css">

    <!-- Toast UI Pagination Script -->
    <script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>
	<!-- admin_utils.js 로드 -->
    <script src="${pageContext.request.contextPath}/resources/js/admin_utils.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
    
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

<%-- <jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/side_bar.jsp"></jsp:include> --%>
<jsp:include page="side_bar.jsp"></jsp:include>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="${pageContext.request.contextPath}/resources/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
                
					<div class="container-fluid">
						<div class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800" id="page-title"></h1>
                            <div class="btn-group">
                            <input type="file" id="file-input" style="display:none;" />
                            <button id="btn-apply" class="btn btn-warning btn-sm">적용</button>
                        </div>
                    </div>
                    <div>
                        <button class="category-btn" data-category="notice" onclick="location.href='admin-csc?type=notice'">공지사항</button>
                        <button class="category-btn" data-category="faq" onclick="location.href='admin-csc?type=faq'">FAQ</button>
                        <button class="category-btn" data-category="event" onclick="location.href='admin-csc?type=event'">이벤트</button>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div id="grid"></div>
                            <button type="button" class="btn btn-secondary" name="registBtn" onclick="javascript:regist('${param.type}')">등록하기</button>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    <!-- Bootstrap core JavaScript-->
   <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Toast UI Grid Script -->
    <script src="https://uicdn.toast.com/tui.grid/latest/tui-grid.js"></script>

    <script>
    	var currentParam = "";
    	var type = "${param.type}";
    	
	    function regist(type){
			window.open("admin-csc-regist?type=" + type, "등록폼", "width=1200,height=1000");	
	    }
	    
        document.addEventListener('DOMContentLoaded', function () {
    	    const itemsPerPage = 10;
    	    let currentPage = 1;
    	    let type = '${param.type}';
    	    const data = ${jo_list};
    	    
    	    
    	    // 페이지 제목 변경
    	    const pageTitle = document.getElementById('page-title');
    	    if (type === 'notice') {
    	        pageTitle.textContent = '공지사항 리스트';
    	    } else if (type === 'faq') {
    	        pageTitle.textContent = 'FAQ 리스트';
    	    } else if (type === 'event') {
    	        pageTitle.textContent = '이벤트 리스트';
    	    } else {
    	        pageTitle.textContent = '고객센터 리스트';
    	    }
    	    
    	    // 버튼 색깔 변경
    	    const buttons = document.querySelectorAll('.category-btn');
    	    buttons.forEach(button => {
    	        if (button.getAttribute('data-category') === type) {
    	            button.classList.add('btn-primary');
    	        } else {
    	            button.classList.remove('btn-primary');
    	        }
    	    });
    	    
    	    
    	    // BootstrapSwitchRenderer 클래스 정의 (스위치 렌더러)
    	    class BootstrapSwitchRenderer {
    	        constructor(props) {
    	            const el = document.createElement('div');
    	            el.className = 'custom-control custom-switch';
    	
    	            const input = document.createElement('input');
    	            input.type = 'checkbox';
    	            input.className = 'custom-control-input';
    	            input.id = 'customSwitch' + props.rowKey;
    	            input.checked = props.value;
    	            input.addEventListener('change', () => {
    	                props.grid.setValue(props.rowKey, props.columnInfo.name, input.checked);
    	            });
    	
    	            const label = document.createElement('label');
    	            label.className = 'custom-control-label';
    	            label.htmlFor = 'customSwitch' + props.rowKey;
    	
    	            el.appendChild(input);
    	            el.appendChild(label);
    	
    	            this.el = el;
    	        }
    	
    	        getElement() {
    	            return this.el;
    	        }
    	
    	        render(props) {
    	            this.el.querySelector('input').checked = props.value;
    	        }
    	    }
            

    	    // 상세보기 버튼
    	    class ActionRenderer {
    	        constructor(props) {
    	            const container = document.createElement('div');
    	            
    	            const viewButton = document.createElement('button');
    	            viewButton.className = 'btn btn-primary btn-sm';
    	            viewButton.innerText = '상세보기';
					
					
    	            // 버튼 클릭 이벤트 추가
    	            viewButton.addEventListener('click', () => {
                        const rowKey = props.grid.getIndexOfRow(props.rowKey);
                        const rowData = props.grid.getRow(rowKey);
                        let code = 0;
                        console.log(rowData);
    	            	if(rowData.notice_code != null){
    	            		code = rowData.notice_code;	
    	            	}else if(rowData.faq_code != null){
    	            		code = rowData.faq_code;
    	            	}
    	                window.open("admin-csc-detail?type=" + type + "&code=" + code, "상세정보", "width=1200px,height=1000px");
    	            });

    	            container.appendChild(viewButton);
    	            
    	            this.el = container;
    	        }
    	        getElement() {
    	            return this.el;
    	        }
    	        render(props) {
    	            this.el.dataset.rowKey = props.rowKey;
    	            this.el.dataset.columnName = props.columnName;
    	            if (type === 'notice') {
    	                this.el.dataset.code = props.value.notice_code; // notice인 경우
    	            } else if(type === 'faq'){
    	                this.el.dataset.code = props.value.faq_code; // 다른 경우
    	            }
    	        }
    	    }

            const grid = new tui.Grid({
                el: document.getElementById('grid'),
                data: data,
                columns: [
//                 	{ header: '글번호', name: 'notice_code' , editor: 'text'},
                	{ header: '글번호', name: type + '_code' , editor: 'text'},
//                     { header: '제목', name: 'notice_subject' , editor: 'text'},
                    { header: '제목', name: type + '_subject' , editor: 'text'},
//                     { header: '카테고리', name: 'notice_category' , editor: 'text'},
                    { header: '카테고리', name: type + '_category' , editor: 'text'},
                    { header: '작성일', name: type + '_reg_date' , editor: 'text'},
                    {
                        header: 'Action',
                        name: 'action',
                        renderer: {
                            type: ActionRenderer
                        }
                    },
                    {
                    	header: '숨김',
    	                name: 'hidden',
    	                renderer: {
    	                    type: BootstrapSwitchRenderer
    	                }
                    }
                ],
    	        pageOptions: {
    	            useClient: true,
    	            perPage: itemsPerPage
    	        },
                bodyHeight: 400
            });
        });
    </script>
</body>
</html>
