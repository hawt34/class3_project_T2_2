<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js" ></script>
<link
	href="${pageContext.request.contextPath}/resources/css/creator/creator-review-form.css" rel="stylesheet">
</head>
<body>
		<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-4">클래스후기</h4>
				<form class="validation-form" novalidate action="admin_event_pro" enctype="multipart/form-data" method="post" onsubmit="return confirm('이벤트를 등록하시겠습니까?');">
					<div>
						<p>작성자 : 김철철</p>
					</div>
					<div class="mb-3">
						<label for="event_title">후기내용</label>
						<textarea rows="10" name="event_subject" id="event_title" class="form-control" cols="50"></textarea> 
					</div>
					<div class="mb-3">
						<label for="event_thumbFile">썸네일</label> 
						<input type="file" name="event_thumbFile" id="event_thumbFile" class="form-control" required />
						<div class="invalid-feedback">이미지를 선택해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="event_imageFile">본문이미지</label> 
						<input type="file" id="event_imageFile" name="event_imageFile" class="form-control" required />
						<div class="invalid-feedback">이미지를 선택해주세요.</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="event_start_date">이벤트 시작일</label> 
							<input type="date" id="event_start_date" name="event_start_date" class="form-control" required>
							<div class="invalid-feedback">이벤트 시작일을 선택해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="event_end_date">이벤트 종료일</label> 
							<input type="date" id="event_end_date" name="event_end_date" class="form-control" required>
							<div class="invalid-feedback">이벤트 종료일을 선택해주세요.</div>
						</div>
					</div>
					
					<hr class="mb-4">
					
					<div class="mb-4" align="center">
						<input type="submit" value="등록하기" class="btn btn-primary btn-lg btn-block">
						<input type="button" value="돌아가기" class="btn btn-primary btn-lg btn-block" onclick="history.back()">
					</div>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; Boogi Movie</p>
		</footer>
	</div>

</body>
</html>