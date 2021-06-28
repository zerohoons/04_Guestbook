<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	.red{
		background: red;
	}
	.yellow{
		background: yellow;
	}
	.text_red{
		color:red;
	}
	.text_bold{
		font-weight: bold;
	}
</style>
</head>
<body>
	<div style="background: yellow", onclick="go1()">
		안녕하세요. 자바스크립트입니다.
	</div>
	<div class="red", onclick="go2()">
		안녕하세요. 자바스크립트입니다.
	</div>
	<hr>
	<div id="box1">
		안녕하세요. jquery입니다.
	</div>
	<div id="box2">
		안녕하세요. jquery입니다.
	</div>
</body>
<script>
	function go1(){
		alert("Hello");
	}
	function go2(){
		alert("Hello");
	}
	
	$(function() {
		document.getElementById("box1").style.background="skyblue";
		document.getElementById("box1").onclick=function(){
			alert("안녕하세요.")
		}
		
	});
	
	
	//addClass() 미리 만들어진 스타일을 호출해서 사용한다.
	$("#box2").click(function(){
		alert("하이염");
		$("#box2").addClass("text_red text_bold yellow");
	});
	
	// css 적용하기
	$("#box2").css("background", "green");
	
</script>
</html>