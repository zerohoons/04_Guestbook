<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello_result.jsp 페이지</h1>
	<h2>
		<li>이름 : ${name}</li>
		<li>나이 : ${age}</li>
		<li>성별 : 
		<c:choose>
			<c:when test="${gender}">
			 남성
			</c:when>
			<c:otherwise>
			 여성
			</c:otherwise>
		</c:choose>
		</li>
	</h2>
</body>
</html>