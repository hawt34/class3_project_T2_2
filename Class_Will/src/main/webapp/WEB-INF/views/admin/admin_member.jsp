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
    <!-- Toast UI Pagination CSS -->
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css">
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
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">Alerts Center</h6>
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

                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">Message Center</h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_1.svg" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_2.svg" alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile_3.svg" alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle" src="${pageContext.request.contextPath}/resources/img/undraw_profile.svg">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">회원관리 리스트</h1>
                        <div class="btn-group">
                            <button id="btn-download" class="btn btn-success btn-sm" onclick="downloadExcel('MEMBER', '전체 회원 리스트', false)">엑셀 다운로드</button>
                            <button id="btn-upload" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#excelUploadModal">데이터 업로드</button>
                            <input type="file" id="file-input" style="display:none;" />
                            <button id="btn-apply" class="btn btn-warning btn-sm" onclick="applyChanges()">적용</button>
                        </div>
                    </div>
                    <div>
                        <button class="category-btn" data-category="member" onclick="location.href='admin-member?type=member'">회원</button>
                        <button class="category-btn" data-category="teacher" onclick="location.href='admin-member?type=teacher'">강사</button>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div id="grid"></div>
                            <div id="pagination"></div>
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
    <!-- Toast UI Pagination Script -->
    <script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const data = ${jo_list};

            const pagination = new tui.Pagination(document.getElementById('pagination'), {
                totalItems: data.length,
                itemsPerPage: 10,
                visiblePages: 5,
                centerAlign: true
            });

            class ButtonRenderer {
                constructor(props) {
                    const el = document.createElement('button');
                    el.className = 'btn btn-primary btn-sm';
                    el.innerText = '상세보기';
                    el.addEventListener('click', () => {
                        const rowKey = props.grid.getIndexOfRow(props.rowKey);
                        const rowData = props.grid.getRow(rowKey);
                        const memberCode = rowData.member_code;
                        window.open("admin-member-detail?member_code=" + memberCode, "회원 상세보기", "height=600px, width=800px");
                    });
                    this.el = el;
                }
                getElement() {
                    return this.el;
                }
                render(props) {
                    this.el.dataset.rowKey = props.rowKey;
                    this.el.dataset.columnName = props.columnName;
                    this.el.value = props.value;
                }
            }

            const grid = new tui.Grid({
                el: document.getElementById('grid'),
                data: data,
                columns: [
                    { header: '이메일(아이디)', name: 'member_email', editor: 'text' },
                    { header: '이름', name: 'member_name', editor: 'text' },
                    { header: '닉네임', name: 'member_nickname', editor: 'text' },
                    { header: '가입일', name: 'member_reg_date', editor: 'text' },
                    { header: '회원상태', name: 'member_status', editor: 'text' },
                    {
                        header: 'Action',
                        name: 'action',
                        renderer: {
                            type: ButtonRenderer
                        }
                    }
                ],
                rowHeaders: ['rowNum'],
                pageOptions: {
                    useClient: true,
                    perPage: 10
                },
                bodyHeight: 400
            });

            pagination.on('beforeMove', function (event) {
                const currentPage = event.page;
                const startRow = (currentPage - 1) * 10;
                const endRow = startRow + 10;
                grid.resetData(data.slice(startRow, endRow));
            });

            grid.resetData(data.slice(0, 10));

            // 엑셀 업로드 폼의 submit 이벤트 처리
            document.getElementById('excelUploadForm').addEventListener('submit', function (event) {
                event.preventDefault();

                const formData = new FormData(this);
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'uploadData', true);

                xhr.onload = function () {
                    if (xhr.status === 200) {
                        alert('파일 업로드 성공');
                        location.reload();
                    } else {
                        alert('파일 업로드 실패: ' + xhr.responseText);
                    }
                };

                xhr.send(formData);
            });

            // 적용 버튼 클릭 이벤트 처리
            document.getElementById('btn-apply').addEventListener('click', function () {
                applyChanges();
            });

            function applyChanges() {
                const modifiedData = grid.getModifiedRows();
                
                fetch('applyChanges', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=UTF-8'
                    },
                    body: JSON.stringify(modifiedData)
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
            }
        });

        function downloadExcel(tableName, title, currentPageOnly) {
            const url = "downloadExcel?tableName=" + tableName + "&title=" + title + "&currentPageOnly=" + currentPageOnly;
            window.location.href = url;
        }

        function excelFormDownload(tableName, title) {
            window.location.href = "excelFormDownload?tableName=" + tableName + "&title=" + title;
        }
    </script>
    
    <!-- 엑셀 업로드 모달 창 -->
    <div class="modal fade" id="excelUploadModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">데이터 업로드</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="excelUploadForm" enctype="multipart/form-data" action="${pageContext.request.contextPath}/uploadData" method="post">
                        ★양식을 다운로드 후 양식에 맞춰 올려주세요 
                        <button type="button" class="btn btn-success" onclick="excelFormDownload('MEMBER', '양식 엑셀파일')">양식 다운로드</button>
                        <div class="mb-3">
                            <input class="form-control" type="file" id="formFile" name="file" accept=".xlsx,.xls">
                        </div>
                        <span>.xlsx  .xls 파일만 업로드 가능합니다</span>
                        <br>
                        <input type="hidden" name="tableName" value="MEMBER">
                        <button type="submit" class="btn btn-primary">업로드</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
