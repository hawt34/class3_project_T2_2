<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <div class="col-md-12  mb-2" align="center">
	<div class="col-md-8">
		<div class="bg-light rounded py-2 d-flex justify-content-center mb-4">
			<select id="classSelect"
				name="classSelect" class="border-0 form-select-sm bg-light me-3 selectClass">
				<c:forEach var="classInfo" items="${classList}">
					<option value="${classInfo.class_code}">${classInfo.class_name}</option>
				</c:forEach>
			</select>
		</div>
		<hr>
	</div>
</div>
