<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1> 결과 보기 </h1>
	<div id="out"></div>
</body>
<script type="text/javascript">
$(function(){
	$("#out").empty();
	$.ajax({
		url:"/MyMember",
		method : "post",
		dataType : "json",
		success : function(data) {
				var profile = "";
				var nickname ="";
			$.each(data, function() {
				profile = this["profile"];
				$.each(profile, function() {
				nickname = this["nickname"];
				});
			});
			
			$("#out").append(nickname+"님 환영합니다.");
		},
		error: function() {
			alert("읽기 실패");
		}
	});
});
</script>
</html>