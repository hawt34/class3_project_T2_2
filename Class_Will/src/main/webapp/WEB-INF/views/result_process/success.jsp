<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("${msg}");
	if("${isClose}" == "true"){
		if("${targetURL}" != ""){
			window.opener.location.href="${targetURL}";
		}
		window.close();
	}
	if("${targetURL}" != ""){
		location.href="${targetURL}";
	}
</script>



