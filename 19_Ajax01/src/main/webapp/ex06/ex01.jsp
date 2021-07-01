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
		/* $.ajax({
			url, 		//서버주소(정보를 가져올 장소의 주소)
			method,		//전달방식(get/post)
			data,		//서버 주소에 갈때 보내는 정보(파라미터)
			dataType,	//서버에서 가져오는 정보타입(받는 정보타입 : html, xml, json, txt)
			success,	//성공했을 때
			error		//실패했을 때
		}) */

	$("#btn").click(function() {
		$("#out").empty(); // 초기화
		$.ajax({
			url : "data_01.html",
			method : "post",
			dataType : "html",
			success : function(data) {
				$("#out").append(data);
			},
			error : function() {
				alert("읽기실패");
			}
		});
	});
});
	});
</script>
</html>