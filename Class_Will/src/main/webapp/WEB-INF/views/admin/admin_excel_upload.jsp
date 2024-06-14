<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>양식 다운로드 후 양식에 맞춰 올려주세요.</h2>
    <form method="post" enctype="multipart/form-data" action="/upload">
		<div class="mb-3">
			<label for="formFile" class="form-label"></label>
			<input class="form-control" type="file" id="formFile">
		</div>
        <button type="submit">Upload</button>
    </form>
    <p>${message}</p>
</body>
</html>