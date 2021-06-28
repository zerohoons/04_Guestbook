<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	.selected{
	color: red;
	}
	.bg{
	background: yellow;
	}
	div{
	background: green;
	}
	.white{
	color: white;
	}
	.red{
	background: red;
}
</style>
</head>
<body>
	<p> Hello </p>
	<p> and </p>
	<p> Good Day </p>
	<hr>
	<div> This div </div>
	<div class="white"> This div </div>
	<div id="box"> This div </div>
	<div id="box2"> This div </div>
	<div id="box3"> This div </div>
</body>
<script type="text/javascript">
$(function() {
	$("p").first().addClass("red white");
	$("p").last().addClass("red white");
	
	/* $("div:nth-of-type(1)").addClass("bg selected");
	$("div:nth-of-type(3)").addClass("bg selected");
	$("div:nth-of-type(5)").addClass("bg selected"); */
/* 	$("div:nth-of-type(2n+1)").addClass("bg selected");
	$("div:nth-of-type(2n)").addClass("white"); */
	
	$("div").addClass(function(index, currentClass) {
		var red;
		if(currentClass == 'white'){
			red = "red";
			/* $("선택자").text("내용") : 선택자에 내용 적용 (setter, 글자만 적용)
			   $("선택자").html("내용") : 선택자에 내용 적용 (setter, 글자/태그 적용)*/
			   $("#box").text("<h2>여기는 DIV입니다.</h2>").addClass("bg");
			   $("#box2").html("<h2>여기는 DIV입니다.</h2>").addClass("bg");
		}
		
		return red;
	})
});
</script>
</html>