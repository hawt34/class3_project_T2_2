<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 썸머노트 cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/inc/top.jsp" />
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
			<h1 class="mb-4 text-white">Creator Center</h1>
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<jsp:include page="/WEB-INF/views/creator/sideBar.jsp" />

						<div class="col-lg-9 creator-body" >
							<div class="creator-main-table col-xl-8 mb-5 ">
								<form class="validation-form" novalidate action="creator-classRegPro" name="fr" method="post" onsubmit="return confirm('클래스를 등록하시겠습니까?');">
									<!-- 	셀렉트박스 -->
									<div class="col-md-12 mb-2" align="center">
										<div class="col-xl-6 mb-5">
											<div>
												<h3 class="text-white">클래스등록</h3>
											</div>
											<hr style="color:white;">
										</div>
									</div>
									<div class="classReg-basic">
										<div class="h4">클래스 기본정보</div>
										<div class="h6 d-flex justify-content-start mt-4">
											<p>작성상태 :</p>
											<p>&nbsp;작성중</p>
										</div>
										<div class="classReg-basic-form">
											<div class="col-md-12 mt-2 my-4">
												<label for="class_name" class="h6">클래스 제목</label> 
												<input type="text" name="class_name" id="class_name" class="form-control" required />
												<div class="invalid-feedback">클래스명을 입력해주세요.</div>
											</div>
											<div class="col-md-12 my-4">
												<label for="class_type" class="h6">클래스타입</label> 
												<select name="class_type" id="class_type" class="form-control" required>
													<c:forEach var="class_sort" items="${class_sort_List}">
														<option value="${class_sort.common2_code}">${class_sort.code_value}</option>
													</c:forEach>
												</select>
												<div class="invalid-feedback">카테고리를 입력해주세요.</div>
											</div>
											<div class="col-md-12 my-4">
												<label for="class_show" class="h6">공개여부</label> 
												<select name="class_hide" id="class_show" class="form-control" required>
													<option value="1">공개</option>
													<option value="2">비공개</option>
												</select>
												<div class="invalid-feedback">카테고리를 입력해주세요.</div>
											</div>
											<div class="row"> 
												<div class="col-md-6 my-4">
													<label for="class_big_category" class="h6">카테고리</label> 
													<select name="class_big_category" id="class_big_category" class="form-control" required>
														<c:forEach var="category" items="${categoryList}">
															<option value="${category.common2_code}">${category.code_value}</option>
														</c:forEach>
													</select>
													<div class="invalid-feedback">카테고리를 선택해주세요.</div>
												</div>
												<div class="col-md-6 my-4">
													<label for="class_small_category" class="h6">상세분류</label> 
													<select name="class_small_category" id="class_small_category" class="form-control" required>
														<option value="0">미선택</option>
														<option value="1">도자기</option>
														<option value="2">드로잉</option>
														<option value="3">공예</option>
														<option value="4">IT</option>
														<option value="5">체험</option>
													</select>
													<div class="invalid-feedback">카테고리를 입력해주세요.</div>
												</div>
											</div>
											
											<div class="my-4">
												<label for="class_hashtag" class="h6">해쉬태그 선택</label>
												<div id="item-list" class="d-flex">
											    	<button type="button" class="item" data-value="1">#혼자가능</button>
								                    <button type="button" class="item" data-value="2">#드로잉</button>
								                    <button type="button" class="item" data-value="3">#나도css고수</button>
								                    <button type="button" class="item" data-value="4">#드린이</button>
								                    <button type="button" class="item" data-value="5">#I성향추천</button>
											    </div>
											    <input type="hidden" id="selected-items" name="class_hashtag" value=""> 
											</div>
											<div class="col-md-12 my-4">
												<label for="class_thumnail" class="h6">커버이미지</label> 
												<input type="file" name="class_thumnail" id="class_thumnail" class="form-control" required />
												<div class="invalid-feedback">커버이미지 입력해주세요.</div>
											</div>
											<div class="col-md-12 my-4">
												<label for="class_image" class="h6">본문이미지</label> 
												<input type="file" name="class_image" id="class_image" class="form-control" required />
												<div class="invalid-feedback">본문이미지를 입력해주세요.</div>
											</div>
											<div class="my-4">
												<label for="summernote" class="h6">클래스 소개</label> 
												<textarea name="class_ex" id="summernote" maxlength="3000" cols="30" rows="5" placeholder="내용을 입력해주세요" class="with-border"></textarea>
												<div class="invalid-feedback">내용을 입력해주세요.</div>
											</div>
											<div class="col-md-12 my-4">
												<label for="postCode" class="h6">주소</label><br>
												<div class="d-flex justify-content-between">
													<div class="col-md-3">
											    		<input type="text" id="post_code" name="post_code" class="form-control my-1" size="6" readonly onclick="search_address()" placeholder="우편번호">
													</div>
													<div class="col-md-9">
														<input type="text" id="address1" name="address1" class="form-control my-1" placeholder="클릭 시 주소검색" size="25" readonly onclick="search_address()">
													</div>
												</div>
												<input type="text" id="address2" name="address2" class="form-control" placeholder="상세주소" size="25" pattern="^.{2,20}$" maxlength="20">
											</div>
											<div class="col-md-12 my-4">
												<label for="class_price" class="h6">회당 클래스가격(원)</label> 
												<input type="text" name="class_price" id="class_price" class="form-control my-1" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" required />
												<div class="invalid-feedback">클래스명을 입력해주세요.</div>
											</div>
										</div>
									</div>
									
									<div class="classReg-calc my-3">
										<div class="d-flex justify-content-between">
											<div class="h4">클래스 커리큘럼</div>
											<div class="h6">+ 추가하기</div>
										</div>
										<div class="classReg-calc-form">
											<p class="h6">1차시</p>
											<div class="col-md-12 my-2">
												<label for="class_calc_content" class="h6">커리큘럼 내용</label> 
												<input type="text" name="class_calc_content" class="class_calc_content" class="form-control" required />
<!-- 												<textarea name="editordata" id="summernote" maxlength="3000" cols="30" rows="5" placeholder="내용을 입력해주세요" class="with-border"></textarea> -->
												<div class="invalid-feedback">커리큘럼 내용을 입력해주세요.</div>
											</div>
										</div>
									</div>
									
									<div class="classReg-creator-info my-3">
										<div class="d-flex justify-content-between">
											<div class="h4">크리에이터 정보</div>
										</div>
										<div class="classReg-calc-form">
<!-- 											<div class="col-md-12 my-2"> -->
<!-- 												<p class="h6">크리에이터 닉네임</p> -->
<!-- 												<input type="text" name="class_name" id="class_calc_name" class="form-control" required /> -->
<!-- 												<div class="invalid-feedback">닉네임을 입력해주세요.</div> -->
<!-- 											</div> -->
											<div class="col-md-12 my-2">
												<label for="class_creator_explain" class="h6">크리에이터 소개</label> 
												<input type="text" name="class_creator_explain" class="class_calc_content" class="form-control" required />
												<div class="invalid-feedback">커리큘럼 내용을 입력해주세요.</div>
											</div>
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


	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />
	</footer>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
	<script type="text/javascript">	
	
		$(function() {
			$("#class_big_category").change(function() {
				var big_category = $("#class_big_category").val();
				$.ajax({
					url: "getCategoryDetail",
					method: "get",
					data: { "big_category" : big_category },
					success: function(data) {
						$("#class_small_category").empty();
						$.each(data, function(index, item) {
							$("#class_small_category").append(
								$('<option></option>').val(item.common3_code).text(item.code_value)	
							);
						});
					}
				
				});		
			});
		});
		
		// 썸머노트 설정
		$('#summernote').summernote({
			  height: 300,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
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
		$('.class_calc_content').summernote({
			  height: 100,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대500자까지 쓸 수 있습니다'	,//placeholder 설정
			  toolbar: [
					    // [groupName, [list of button]]
					    ['fontname', ['fontname']],
					    ['fontsize', ['fontsize']],
					    ['style', ['bold', 'italic', 'underline', 'clear']],
					    ['para', ['ul', 'ol']],
					  ],
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		          
		});
		
		// 해쉬태그 다중선택
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
		        debugger;
		    }
		    
		});
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 주소검색
	    function search_address() {
	        new daum.Postcode({ // daum.Postcode 객체 생성
	            oncomplete: function(data) {
	                console.log(data);
	                document.fr.post_code.value = data.zonecode;
	        		let address = data.address; // 기본주소 변수에 저장
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