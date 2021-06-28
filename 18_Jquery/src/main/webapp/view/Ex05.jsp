<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">

	.f_red{color :red;}
	.f_orange{color: orange;}
	.f_silver{color: silver;}
	.f_skyblue{color: skyblue;}
	.f_green{color: green;}
	
</style>
</head>
<body>
	<a href="https://www.naver.com">네이버</a>
	<a href="https://www.daum.net">다 음</a>
	<a href="https://www.google.com">구 글</a>
	<hr>
	<a href="mailto:zerohoons@naver.com">네이버 메일</a>
	<a href="mailto:zerohoons@daum.net">다음 메일</a>
	<a href="mailto:zerohoons@gmail.com">구글 메일</a>
</body>
<script type="text/javascript">
$(function() {
	//요소[속성] : 해당 속성이 있는 요소 선택
	$("a[href]").addClass("f_silver");

	//요소[속성=값] : 해당 속성의 값이 일치하는 요소 선택
	$("a[href='https://www.naver.com']").removeClass("f_silver").addClass("f_red");
	//요소[속성^=값] : 해당 속성이 값으로 시작하는 요소 선택
	$("a[href^='mailto']").removeClass("f_silver").addClass("f_orange").css("text-decoration","none");
	//요소[속성*=값] : 해당 속성에 값을 포함하는 요소 선택
	$("a[href*='www']").removeClass().addClass("f_skyblue")	
	//요소[속성$=값] : 해당 속성이 값으로 끝나는 요소 선택
	$("a[href$='net']").removeClass("f_silver").addClass("f_green");
})
</script>
</html>