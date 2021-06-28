<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addClass, css => 속성적용</title>
<style type="text/css">
	.bg{background: yellow;}
	.fg{color:red;}
	.horizental{
	float: left;
	list-style: none;
	margin: 20px;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<h2>
		<ul id="menu1">
			<li><u>java</u></li>
			<li>html&css</li>
			<li class="jsp"> jsp </li>
			<li id="spring" > spring </li>
		</ul>
		<ul id="menu2">
			<li><u>android</u></li>
			<li>iphone</li>
			<li class="jsp">window</li>
			<li id="linux">linux</li>
			
		</ul>
	</h2>
</body>
<script type="text/javascript">
	$(function() {
		$("li").addClass("bg");
		$(".jsp").addClass("fg");
		$("#spring").addClass("fg");
		
		//removeClass("bg") => 추가된 bg클래스 삭제
		$("ul > li").removeClass("bg").addClass("horizental")
		
		
	})
</script>
</html>