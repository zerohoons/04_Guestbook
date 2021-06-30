<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<button id="btn">html파일 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
<script type="text/javascript">
$(function() {
	// get요청을 사용하여 서버에서 데이터를 로드한다.
	// jQuery.get( url [, data ] [, success ] [, dataType ] )
	$("#btn").click(function() {
		$("#out").empty(); // 초기화
		$.get("data_01.html", function(data) {
			// 가지고온 정보 
			$("#out").append(data);
		});
	});
});
</script>
</html>