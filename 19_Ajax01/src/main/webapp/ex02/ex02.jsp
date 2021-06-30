<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript">
	<%--
	XMLHttpRequset 객체를 이용한다.
	 > 자바 스크립트에서 ajax (비동기)를 할 수 있도록 하는 객체
	 > 버전이 낮은 웹 브라우저에는 존재하지 않을 수 있다.
	 > 그러나, ActiveXObject라는 비슷한 역할을 하는 객체가 존재한다.
	--%>
	//낮은 버전의 브라우저 처리 (XMLHttpRequest가 없는 경우)
	function createRequest() {
		var req;
		try {
			req = new XMLHttpRequest();
			console.log("1");
		} catch (e) {
			try {
				req = new ActiveXobject("Microsoft.XMLHTTP");				
			console.log("2");
			} catch (e) {
				req = new ActiveXobject("Msxml3.XMLHTTP");
			console.log("3");
			}
		}
		
		return req;
	}
	//open
	request.open("GET","data.html",false);
	//send
	request.send();
	//브라우저에 화면 출력
	document.body.innerHTML = request.responseText;
</script>
</html>