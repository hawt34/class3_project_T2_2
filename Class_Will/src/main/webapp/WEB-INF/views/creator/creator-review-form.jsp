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
<style>
.star-rating {
	display: inline-block;
}

.star-rating span {
	font-size: 1.5rem;
	cursor: pointer;
	color: #ccc;
}

.star-rating .selected {
	color: #ffc107;
</style>
</head>
<body>
		<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-4">클래스후기</h4>
					<div>
						<p>🔸참여클래스 : ${review.class_name}</p>
						<p>🔸작성자 : ${review.member_nickname}</p>
						<p>🔸작성일 : ${review.class_review_date} ${review.class_review_time}</p>
					</div>
					<div class="form-group mb-3">
						<label for="rating">🔸별점</label>
						<div id="star-rating" class="star-rating">
							<span data-value="1">&#9733;</span> <span data-value="2">&#9733;</span>
							<span data-value="3">&#9733;</span> <span data-value="4">&#9733;</span>
							<span data-value="5">&#9733;</span>
						</div>
						<input type="hidden" id="rating" name="class_review_rating"
							value="${review.class_review_rating}" required>
					</div>
					<div class="mb-3">
						<label for="review-subject">제목</label>
						<input type="text" value="${review.class_review_subject}" name="review-subject" id="review-subject" class="form-control" disabled> 
					</div>
					<div class="mb-3">
						<label for=review-content>내용</label>
						<textarea rows="10" name="review-content" id="review-content" class="form-control" cols="50" disabled>${review.class_review_content}
						</textarea> 
					</div>
					<hr class="mb-4">
					
					<div class="mb-4 creator-review-form-btn" align="center">
						<input type="button" value="답글쓰기" onclick="writeReply()" class="btn btn-primary btn-lg btn-block writeReview">
						<input type="button" value="돌아가기" class="btn btn-primary btn-lg btn-block" onclick="window.close()">
					</div>
					
					<div class="creator-reply-form">
					
					</div>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; WillClass</p>
		</footer>
	</div>
	
	<script type="text/javascript">
	
		function writeReply() {
			$(".creator-reply-form").append("<div class='mb-3'>"
					+ "<label for='creator-review-replyPro'>후기답글</label>"
					+ "<textarea rows='10' name='reviewReply' id='creator-review-replyPro' class='form-control' cols='50'></textarea>"
					+ "</div>"
					+ "<hr class='mb-4'>"
					+ "<div class='mb-4 creator-review-form-btn' align='center'>"
					+ "<input type='button' value='등록하기' class='btn btn-primary btn-lg btn-block' onclick='reviewSubmit()'>"
					+ "</div>"
			);
			$(".writeReview").hide();
		}
		
		function reviewSubmit() {
			var reviewCode = ${review.class_review_code};
			var reviewStatus = ${review.review_reply_status};
			event.preventDefault(); // 폼 제출을 막음
			if(confirm("답글을 등록하시겠습니까?")){
				$.ajax({
						url: "insertReviewReply",
						method: "get",
						data: { "reviewReply" : reviewReply,
								"reviewCode" : reviewCode,
								"reviewStatus" : reviewStatus
						},
						success: function(data) {
					}
				});	
				window.close();
			}
		}
		
		$(function() {
			if(${review.review_reply_status eq 'Y'}){
				$(".creator-reply-form").append("<div class='mb-3'>"
						+ "<label for='creator-review-replyPro'>후기답글</label>"
						+ "<textarea rows='10' name='creator-review-replyPro' id='creator-review-replyPro' class='form-control' cols='50'></textarea>"
						+ "</div>"
						+ "<hr class='mb-4'>"
						+ "<div class='mb-4 creator-review-form-btn' align='center'>"
						+ "<input type='button' value='답글수정' class='btn btn-primary btn-lg btn-block' onclick='reviewSubmit()'>"
						+ "<input type='button' value='답글삭제' class='btn btn-primary btn-lg btn-block' onclick='reviewDelete()'>"
						+ "</div>"
				);
				$(".writeReview").hide();
				$('#creator-review-replyPro').val('${reply.class_reply_content}');
			}
		});
		
		// 별점 불러오기
		document.addEventListener('DOMContentLoaded', function () {
	        const stars = document.querySelectorAll('#star-rating span');
	        const ratingInput = document.getElementById('rating');

	        function updateStars(rating) {
	            stars.forEach((star, index) => {
	                star.classList.toggle('selected', index < rating);
	            });
	        }

	        // 초기 별점 설정
	        updateStars(parseInt(ratingInput.value));
	    });
	
	
	</script>

</body>
</html>