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

	<c:redirect url="/MyController">
		<c:param name="cmd" value="list" />
	</c:redirect>

<%-- 
	 <jsp:forward page="/MyController">
	 	<jsp:param value="list" name="cmd"/>
	 </jsp:forward>
 --%>
</body>
</html>