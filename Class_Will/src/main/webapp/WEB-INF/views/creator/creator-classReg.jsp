<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">
<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<!-- <link -->
<%-- 	href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" --%>
<!-- 	rel="stylesheet"> -->
<!-- <link -->
<%-- 	href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" --%>
<!-- 	rel="stylesheet"> -->


<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-main.css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-classReg.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- summernote -->
<%-- <script src="${pageContext.request.contextPath}/resources/js/summernote-lite.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css"> --%>
<!-- 썸머노트 cdn -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/inc/header.jsp" />
	</header>

	<!-- Spinner Start (로딩시 뜨는 동그라미)-->
	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-white" role="status"></div>
	</div>
	<!-- Spinner End -->

	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Creator</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="main">Home</a></li>
			<li class="breadcrumb-item"><a href="main">크리에이터 페이지</a></li>
			<li class="breadcrumb-item active text-white">클래스</li>
		</ol>
	</div>
	<!-- Single Page Header End -->

	<div class="container-fluid fruite">
		<div class="container">
			<h1 class="mb-4">Creator Center</h1>
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

						<div class="col-lg-9 creator-body" >
							<div class="creator-main-table col-xl-8 mb-5 ">
								<form class="validation-form" novalidate action="admin_movie_reg_pro" name="fr" method="post" onsubmit="return confirm('영화를 등록하시겠습니까?');">
									<!-- 	셀렉트박스 -->
									<div class="col-md-12 mb-2" align="center">
										<div class="col-xl-6">
											<div class="bg-light rounded py-2 mb-4">
												<select id="fruits"
													name="fruitlist" class="border-0 form-select-sm bg-light me-3 selectClass"
													form="fruitform">
													<option value="oneday">원데이클래스</option>
													<option value="long-term">장기클래스</option>
												</select>
											</div>
											<hr>
										</div>
									</div>
									<div class="classReg-basic">
										<div class="h4">클래스 기본정보</div>
										<div class="h6 d-flex justify-content-start mt-4">
											<p>작성상태 :</p>
											<p>&nbsp;작성중</p>
										</div>
										<div class="col-md-12 mt-2 mb-3">
											<label for="class_name">클래스 제목</label> 
											<input type="text" name="class_name" id="class_name" class="form-control" required />
											<div class="invalid-feedback">클래스명을 입력해주세요.</div>
										</div>
										<div class="mb-3">
											<label for="movie_status">카테고리 선택</label> 
											<div id="item-list" class="d-flex">
										    	<button type="button" class="item" data-value="1">도자기</button>
							                    <button type="button" class="item" data-value="2">드로잉</button>
							                    <button type="button" class="item" data-value="3">공예</button>
							                    <button type="button" class="item" data-value="4">IT</button>
							                    <button type="button" class="item" data-value="5">체험</button>
										    </div>
										     <input type="hidden" id="selected-items" name="selectedItems" value="">
											<div class="invalid-feedback">카테고리를 선택해주세요.</div>
										</div>
										<div class="col-md-12 mb-3">
											<label for="movie_name">커버이미지</label> 
											<input type="file" name="movie_name" id="movie_name" class="form-control" required />
											<div class="invalid-feedback">커버이미지 입력해주세요.</div>
										</div>
										<div class="mb-3">
											<label for="class-content">클래스 소개</label> 
											<textarea name="editordata" id="summernote" maxlength="3000" cols="30" rows="5" placeholder="내용을 입력해주세요" class="with-border"></textarea>
											<div class="invalid-feedback">내용을 입력해주세요.</div>
										</div>
										<div class="col-md-12 mt-2 mb-3">
											<label for="postCode">주소</label><br>
											<div class="d-flex justify-content-between">
												<div class="col-md-3">
										    		<input type="text" id="post_code" name="member_post_code" class="form-control my-1" size="6" readonly onclick="search_address()" placeholder="우편번호">
												</div>
												<div class="col-md-9">
													<input type="text" id="address1" name="member_address1" class="form-control my-1" placeholder="클릭 시 주소검색" size="25" readonly onclick="search_address()">
												</div>
											</div>
											<input type="text" id="address2" name="member_address2" class="form-control" placeholder="상세주소" size="25" pattern="^.{2,20}$" maxlength="20">
										</div>
									</div>
									
									<hr class="mb-4">
									
									<div class="mb-4" align="center">
										<input type="submit" value="제출하기" class="btn btn-primary btn-lg btn-block" >
										<input type="reset" value="저장하기" class="btn btn-primary btn-lg btn-block" >
										<input type="button" value="돌아가기" class="btn btn-primary btn-lg btn-block" onclick="history.back()">
									</div>
								</form>
							</div>
						</div>
					</div>



					<!-- 					<div class="col-12"> -->
					<!-- 						<div class="pagination d-flax justify-content-center mt-5"> -->
					<!-- 							<a href="#" class="rounded">&laquo;</a> <a href="#" -->
					<!-- 								class="active rounded">1</a> <a href="#" class="rounded">2</a> <a -->
					<!-- 								href="#" class="rounded">3</a> <a href="#" class="rounded">4</a> -->
					<!-- 							<a href="#" class="rounded">5</a> <a href="#" class="rounded">6</a> -->
					<!-- 							<a href="#" class="rounded">&raquo;</a> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->



	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
	<script type="text/javascript">	
	document.addEventListener('DOMContentLoaded', () => {
	    const items = document.querySelectorAll('.item');
	    const form = document.querySelector('.validation-form');
	    const selectedItemsInput = document.getElementById('selected-items');

	    items.forEach(item => {
	        item.addEventListener('click', () => {
	            item.classList.toggle('selected');
	            updateSelectedItems();
	        });
	    });

	    form.addEventListener('submit', (event) => {
	        updateSelectedItems();
	    });

	    function updateSelectedItems() {
	        const selectedItems = Array.from(items)
	            .filter(item => item.classList.contains('selected'))
	            .map(item => item.getAttribute('data-value'));

	        selectedItemsInput.value = selectedItems.join(',');
	    }
	    
	});
	
	
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대3000자까지 쓸 수 있습니다'	,//placeholder 설정
		  toolbar: [
				    // [groupName, [list of button]]
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['color', ['color']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']]
				  ],
				fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
				fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	          
	});
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	    function search_address() {
	        new daum.Postcode({ // daum.Postcode 객체 생성
	        	// 주소검색 창에서 주소 검색 후 검색된 주소를 사용자가 클릭하면
	        	// oncomplete 이벤트에 의해 해당 이벤트 뒤의 익명함수가 실행(호출됨)
	        	// => 사용자가 호출하는 것이 아니라 API 가 함수를 호출하게 됨(callback(콜백) 함수)
	            oncomplete: function(data) {
	                // 클릭(선택)된 주소에 대한 정보(객체)가 익명함수 파라미터 data 에 전달됨
	                // => data.xxx 형식으로 각 주소 정보에 접근 가능
	                console.log(data);
	                // 1) 우편번호(= 국가기초구역번호 = zonecode 속성값) 가져와서 
	                //    우편번호 입력란(postCode)에 출력
	                document.fr.post_code.value = data.zonecode;
	        		// 2) 기본주소(address 속성값) 가져와서 기본주소 항목(address1)에 출력
// 	        		document.fr.address1.value = data.address; // 기본주소
// 	        		document.fr.address1.value = data.roadAddress; // 도로명주소
	        		// 만약, 해당 주소에 대한 건물명(buildingName 속성값)이 존재할 경우(널스트링 아닐 때)
	        		// 기본주소 뒤에 건물명을 결합하여 출력
	        		// ex) 기본주소 : 부산 부산진구 동천로 109
	        		//     건물명 : 삼한골든게이트
	        		//     => 부산 부산진구 동천로 109 (삼한골든게이트)
	        		let address = data.address; // 기본주소 변수에 저장
	        		// 건물명이 존재할 경우(buildingName 속성값이 널스트링이 아닐 경우)
	        		// 기본주소 뒤에 건물명 결합
	        		if(data.buildingName != "") {
	        			address += " (" + data.buildingName + ")";
	        		}
	        		// 기본주소 출력
	        		document.fr.address1.value = address;
	        		// 상세주소 입력 항목에 커서 요청
	        		document.fr.address2.focus();
	            }
	        }).open();
	    }
	</script>


</body>
</html>