<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>클래스윌 마이페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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
<link
	href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">

	
	
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	color: white;
}

  #wrap {  
  	width: 100%;  
	
  	height: 700px;  
  	margin: 0 auto;  
 	border: 1px solid skyblue;  
  }  

header {
	width: 100%;
	height: 100%;
}

nav {
	width: 1200px;
	height: 30px
}

footer {
	width: 100%;
	height: 100%;
	clear: both; 
}

aside {
	width: 380px;
	float: left; 
	height : 700px;
	border: 2px solid blue;
	height: 700px;
	display: block;
	
}

#aside1 {
	width: 360px;
	height: 530px;
	border: 1px solid white;
}

#aside2 {
	margin-left: 10px;
	margin-top: 10px;
	margin-bottom: 10px; width : 340px;
	height: 500px;
	border: 1px solid white;
	width: 340px;
}

#profileImg {
	width: 80px;
	height: 80px;
}

#profileImg img {
	width: 100%; /* 부모 요소 크기에 맞게 이미지 크기를 조절 */
	height: 100%; /* 부모 요소 크기에 맞게 이미지 크기를 조절 */
	object-fit: cover; /* 이미지가 비율을 유지하며 잘리지 않도록 설정 */
}

#welcome {
	float: right;
	margin-top: -80px;
}

#welcome1 {
	width: 200px;
	height: 40px;
	flex-direction: row;
	border: 1px solid skyblue;
}

#welcome2 {
	width: 200px;
	height: 40px; 
	flex-direction : row;
	border: 1px solid skyblue;
	flex-direction: row;
}

#aside3 {
	width: 340px;
	height: 100px;
	border: 1px solid red;
}

#aside4 {
	width: 340px;
	height: 100px;
	border: 1px solid red;
	margin-top: 20px;
}

#aside5 {
	width: 340px;
	height: 100px;
	border: 1px solid blue;
	margin-top: 20px;
}

#profileButton {
	width: 340px;
	height: 100px;
	border: 1px solid white;
	margin-top: 30px;
	text-align: center;
	font-size: 25px;
}

#category1, #category2, #category3, #category4, #category5, #category6,
	#category7, #category8 {
	display: flex;
	flex-direction: column;
	height: 126px;
	justify-content: space-between;
	padding: 16px;
	width: 336px;
	border: 1px solid yellow;
	margin-bottom: 16px; /* 각 카테고리 요소들 사이의 간격 추가 */
}


section {
	display: grid;  
	grid-auto-rows: 160px; /* 그리드 행의 높이를 160px로 설정 */
/* 	flex-wrap: wrap;  */
  	grid-template-columns: 1fr 1fr; 	
  	border: 1px solid green;
	
	margin-left: 200px;
}

@media (max-width:1200px) {
  section {
    margin-left: 24px;
    grid-template-columns: 1fr;
    
  }
  
 
}


@media (max-width: 780px) {
	
  aside {
    width: 30%; /* 원래대로 복원 */
  }
  section {
    max-width: calc(100% - 30%);
   	width: 100%; /* 1열로 설정 */
    grid-template-columns: 1fr; /* 930px부터는 1열로 설정 */
    clear: both;
  }
}

</style>	
</head>
<body>
	<div id="wrap">
		<header>
<%-- 			<jsp:include page="/WEB-INF/views/inc/header.jsp" /> --%>
		</header>
		<nav><i class="fas fa-user fa-2x"></i>
		프로필
		</nav>
		<aside>
			<div id="aside1">
				
				<div id="aside2">
					<div id="aside3">
						<div id="profileImg">
							<img src="${pageContext.request.contextPath}/resources/img/mypage1.jpg" >
						</div>
						<div id ="welcome">
							<div id="welcome1">
								<h2>안녕하세요</h2>
							</div>
							<div id="welcome2">
								<h2>***님</h2>
							</div>
						</div>
					</div>
					<div id="aside4">
						<div id="email">
							<p>이메일</p>
						</div>
						<hr>
						<div id="email">
							<p>***@naver.com</p>
						</div>					
					</div>
					<div id="aside5">
						<div id="phone">
							<p>전화번호</p>
						</div>
						<hr>
						<div id="phone">
							<p>미인증상태</p>
						</div>					
					</div>
					<div id="profileButton">
						<input type="button" value="프로필수정">
					</div>
				</div>
			</div>
		</aside>
		<section>
			<a class="prefer" href="">
				<div id="category1">
					위시리스트
				</div>
			</a>
				<div id="category2">
					
				</div>
				
				<div id="category3">
					
				</div>
				<div id="category4">
					
				</div>
		
				<div id="category5">
					
				</div>
				<div id="category6">
					
				</div>
				<div id="category7">
					
				</div>
				<div id="category8">
					
				</div>
		</section>
		<footer>
			<jsp:include page="/WEB-INF/views/inc/bottom.jsp" />	
		</footer>
	</div>
	
</body>
</html>