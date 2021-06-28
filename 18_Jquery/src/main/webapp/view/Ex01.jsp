<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	//실행 순서 : head > body > jQuery
	// jQuery 실행 문법
	// 방법 1)
	/* $(document).ready(function(){
		-내용의 기본은 자바스크립트, CSS의 선택자가 기본
		-action()은 자바스크립트의 function과 같은 동작의 의미.
		$("선택자").action();
		
	});   */
	/* 방법 2)
		$(function(){
			내용은 위와 동일.
		});
	*/
	$(function(){
		// hide() => 숨기는 액션
		
		// 태그 선택자 지정
		/* $("p").hide(); */
		
		// id 선택자
		/*$("#p1").hide(); */
		
		// 클래스 선택자
		/*$(".p1").hide(); */
		
		// p태그의 첫번째 요소 선택자
		/*$("p:first").hide(); */
		
		// p태그의 마지막 요소 선택자.
		/*$("p:laset").hide()  */
		
		// 첫번째 ul의 첫번째 li요소
		// $("ul li:first").hide();
		
		// 모든 ul 중에서 첫번째 li 요소들
		$("ul li:first-child").hide();
	});
</script>
</head>
<body>
	<h2> jQuery Syntax</h2>
	<p id="p1">> ICT 인재 개발원 </p>
	<p class="p2"> 1강의장 </p>
	<p class="p2"> 응용 SW 엔지니어링 </p>
	<p> java </p>
	<p> jsp </p>
	<p> spring </p>
	
	<ul>
		<li> coffee </li>
		<li> milk </li>
		<li> tea </li>
		<li> water </li>
	</ul>
		<ul>
		<li> coffee </li>
		<li> milk </li>
		<li> tea </li>
		<li> water </li>
	</ul>
		<ul>
		<li> coffee </li>
		<li> milk </li>
		<li> tea </li>
		<li> water </li>
	</ul>
</body>
</html>