<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="col-lg-3">
	<div class="row g-4">
		<div class="col-lg-12">
			<div class="mb-3">
				<div>
					<img
						src="${pageContext.request.contextPath}/resources/img/joon.jpg"
						style="width: 150px; height: 150px">
				</div>

				<input type="button" value="이미지등록" class="btn btn-primary"
					onclick="openUploadModal()">

				<ul class="list-unstyled fruite-categorie">
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-page" class="h5"><i class="fas fa-user fa-1x"></i>&nbsp;
								mypage</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-pre" class="h5"><i class="bi bi-heart"></i>&nbsp;
								나의 취향</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-wish" class="h5"><i
								class="bi bi-emoji-heart-eyes"></i>&nbsp; 관심 클래스</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-credit" class="h5"><i class="bi bi-wallet"></i>&nbsp;
								윌페이</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-class" class="h5"><i class="bi bi-cart-check"></i>&nbsp;
								내가 신청한 클래스</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="my-review" class="h5"><i class="bi bi-pencil-square"></i>&nbsp;
								나의 클래스 후기</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="" class="h5"><i class="bi bi-gear"></i>&nbsp; 회원정보변경</a>
						</div>
					</li>
					<li>
						<div class="d-flex justify-content-between fruite-name">
							<a href="" class="h5"><i class="bi bi-person-x-fill"></i>&nbsp;
								회원탈퇴</a>

						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog"
	aria-labelledby="uploadModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="uploadModalLabel" style="color: black;">이미지 업로드</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" onclick="closeUploadModal()">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="uploadForm" enctype="multipart/form-data">
					<div class="form-group">
						<label for="imageFile">이미지 파일 선택</label> <input type="file"
							class="form-control-file" id="imageFile" name="imageFile">
					</div>
					<button type="submit" class="btn btn-primary">업로드</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script>

	function openUploadModal() {
		$('#uploadModal').modal('show');
	}

	// 모달 닫기 함수
	function closeUploadModal() {
		$('#uploadModal').modal('hide');
	}
	$(document).ready(function() {
		// 이미지 업로드 form submit 처리
		$('#uploadForm').on('submit', function(event) {
			event.preventDefault();

			var formData = new FormData(this);

			$.ajax({
				url : 'upload_image', // 서버측 업로드 경로
				type : 'POST',
				data : formData,
				contentType : false,
				processData : false,
				success : function(response) {
					alert('이미지 업로드 성공!');
					closeUploadModal(); // 성공 시 모달 닫기
				},
				error : function(response) {
					alert('이미지 업로드 실패!');
				}
			});
		});

// 		// 모달이 닫힐 때 form 리셋
// 		$('#uploadModal').on('hidden.bs.modal', function(e) {
// 			$(this).find('form')[0].reset(); // form 초기화
// 		});

	});
</script>
