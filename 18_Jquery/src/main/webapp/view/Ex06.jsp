<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	.bg{background: skyblue;}
	.tomato{
		background: tomato;
	}
	#box{
		background: orange;
		width:100px;
		height: 100px;
	}
	#box2{
		background: pink;
		width:200px;
		height: 200px;
	}
</style>
</head>
<body>
	<ul>
		<li id="java">JAVA</li>
		<li>WEB
			<ul>
				<li id="jsp">JSP
					<ul>
						<li class="bg">EL</li>				
						<li class="bg">JSTL</li>				
					</ul>
				</li>
				<li id="spring">
				Spring
				</li>
			</ul>
		</li>
		<li>
		Android
		</li>
	</ul>
	<hr>
	<div id="box"> 눌러주세요 </div>
	<div id="box2"> 눌러주세요 </div>
</body>
<script type="text/javascript">
	$(function() {
		//자바스크립트 활용
		document.getElementById("java").style.background="skyblue";
		
		//jQuery
		$("#spring").css("background", "green");
		
		$("#box").click( function() {
			/* $("#box").css("width","200px");
			$("#box").css("height","200px"); */
			$("#box").css("background","gray");
			
			//누적
			$("#box").css("width","+=100px");
			$("#box").css("height","+=100px");
		});
		
		$("#box2").toggle(function() {
			$("#box2").css("width","+=100px").css("height","+=100px");			
		}, function() {
			$("#box2").css("width","-=100px").css("height","-=100px");						
		})
	})
</script>
</html>