<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js">
/* 마우스 이벤트
: click(=on, =bind), dblclick, hover, mouseup, mousedown, mouseover(mouseenter), mouseout(mouseleave)

키보드 이벤트
: keypress, keydown, keyup 

form 이벤트
: blur, change, focus, select, submit */
</script>
<style type="text/css">
</style>
</head>
<body>

	<p><span id="p1">이벤트처리</span></p>
	<p><img alt="" src="../images/pic_bulboff.gif"></p>
</body>
<script type="text/javascript">
	$(function() {
		$("#p1").on("click",function() {
			alert("클릭성공");
		});
/* 		$("#p1").bind("click",function() {
			alert("클릭성공");
		}); */
	})
</script>
</html>