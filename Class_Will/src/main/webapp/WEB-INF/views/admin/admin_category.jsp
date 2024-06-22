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
    <style>
        .add-btn {
            cursor: pointer;
            color: blue;
            margin-left: 10px;
        }
    </style>
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
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

    <!-- 사이드 바 포함 -->
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
					    <h1 class="h3 mb-0 text-gray-800">카테고리 리스트</h1>
					    <div class="input-group" style="width:20%">
					        <input type="text" class="form-control bg-light border-0 small" placeholder="검색"
					            aria-label="Search" aria-describedby="basic-addon2" style="border:1px solid black">
					        <div class="input-group-append">
					            <button class="btn btn-primary" type="button">
					                <i class="fas fa-search fa-sm"></i>
					            </button>
					        </div>
					    </div>
					    <div class="btn-group">
					        <button id="btn-delete" class="btn btn-danger btn-sm">삭제</button> <!-- 삭제 버튼 추가 -->
					        <input type="file" id="file-input" style="display:none;" />
					        <button id="btn-apply" class="btn btn-warning btn-sm">적용</button>
					    </div>
					</div>
				
				    <!-- Content Row -->
				    <div class="row">
				        <div class="col-xl-12 col-lg-12">
				            <div id="grid"></div>
<!-- 				            <div id="pagination"></div> -->
<!-- 				            <button id="add-category" class="btn btn-primary btn-sm mt-3">카테고리 추가</button> -->
				        </div>
				    </div>
				</div>
                
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <!-- Footer 내용 생략 -->

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
	document.addEventListener('DOMContentLoaded', function () {
	    const data = JSON.parse('${jo_list}');
	    console.log(data); // 데이터 구조를 확인하기 위해 콘솔에 출력
	    const itemsPerPage = 10; // 한 페이지당 표시할 항목 수
	    let currentPage = 1; // 현재 페이지 번호
	
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
	
	    // AddButtonRenderer 클래스 정의 (추가 버튼 렌더러)
	    class AddButtonRenderer {
	        constructor(props) {
	            const el = document.createElement('div');
	            el.className = 'add-btn';
	            el.textContent = '+';
	            el.addEventListener('click', () => {
	                const parentRowKey = props.rowKey;
	                const parentRow = props.grid.store.data.rawData.find(row => row.rowKey === parentRowKey);
	                const newRow = {
	                    id: data.length + 1,
	                    largeCategory: parentRow.largeCategory, // 상위 요소의 대분류 값 복사
	                    smallCategory: '',
	                    _children: [],
	                    expanded: false
	                };
	                if (!parentRow._children) {
	                    parentRow._children = [];
	                }
	                parentRow._children.push(newRow);
	                props.grid.appendRow(newRow, { parentRowKey });
	            });
	
	            this.el = el;
	        }
	
	        getElement() {
	            return this.el;
	        }
			
	        render(props) {
	            // 상위 요소에만 버튼 표시
	            console.log(props);
	            if (!props.tree) {
	                this.el.style.display = 'block'; // 최상위 요소에만 버튼 표시
	            } else {
	                this.el.style.display = 'none';  // 최상위 요소가 아닌 경우 버튼 숨기기
	            }
	        }
	    }
	    
	    // ToastUI Grid 생성
	    const grid = new tui.Grid({
	        el: document.getElementById('grid'),
	        data: data.slice(0, itemsPerPage), // 처음에 첫 페이지 데이터만 로드
	        treeColumnOptions: {
	            name: 'largeCategory',
	            useCascadingCheckbox: true,
	            useIcon: true, // 트리 아이콘 사용
	            isTop : true
	        },
	        columns: [
	            {
	                header: '추가',
	                name: 'add',
	                width: 50,
	                renderer: {
	                    type: AddButtonRenderer
	                }
	            },
	            { header: '대분류', name: 'largeCategory', editor: 'text' },
	            { header: '소분류', name: 'smallCategory', editor: 'text' },
	            {
	                header: '숨김',
	                name: 'hidden',
	                renderer: {
	                    type: BootstrapSwitchRenderer
	                }
	            }
	        ],
	        rowHeaders: ['checkbox'],
	        bodyHeight: 800, // 본체 높이 설정
	        height: 600 // 전체 높이 설정
	    });
	    
        $('#btn-apply').on('click', function () {
            const modifiedRows = grid.getModifiedRows();
            const jsonData = JSON.stringify(modifiedRows);

            fetch('insert', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: jsonData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('변경 사항이 성공적으로 적용되었습니다.');
                    location.reload();
                } else {
                    alert('변경 사항 적용 실패: ' + data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('변경 사항 적용 실패: 서버 오류');
            });
        });
        
        // 데이터 삭제 적용
        $('#btn-delete').on('click', function () {
            const checkedRows = grid.getCheckedRows();
            checkedRows.forEach(row => {
                grid.removeRow(row.rowKey);
            });
        });
        
        
	    // 무한 스크롤 로직
	    const gridContainer = document.querySelector('#grid .tui-grid-body-area');
	
	    gridContainer.addEventListener('scroll', () => {
	        // 스크롤이 끝에 도달했을 때 다음 페이지 데이터 로드
	        if (gridContainer.scrollTop + gridContainer.clientHeight >= gridContainer.scrollHeight) {
	            currentPage++;
	            const nextPageData = data.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage);
	            if (nextPageData.length > 0) {
	                grid.appendRows(nextPageData);
	            }
	        }
	    });
	});
</script>
</body>
</html>
