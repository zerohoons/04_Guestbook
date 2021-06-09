<%@page import="guset.book.VO"%>
<%@page import="java.util.List"%>
<%@page import="guset.book.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	List<VO> list = DAO.getInstance().getListup();
	
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 페이지</title>
<style>
table{
	width: 800px;
	padding: 10px;
	margin: 30px auto;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
thead{
	background-color : skyblue;
	border: 1px solid black;
	border-collapse: collapse;
}
th{
	width: 25%;
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<h2 style="text-align: center;"> 방명록 </h2>
	<hr>
	<h4 style="text-align: center; margin-bottom: 10ar"> [<a href="write.jsp">방명록쓰기</a>]</h4>
	<form method = "post">
	<div>
	<table>
	<thead>
	<tr>
	<th>번호</th><th>작성자</th><th>제목</th><th>작성일</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var = "k" items="${list}" varStatus="vs" >
	<tr>
	<th>${vs.count}</th><th>${k.name}</th>
	<th><a href ="page.jsp?idx=${k.idx}" >${k.title}</a></th>
	<th>${k.reg.substring(0,10)}</th>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	</div>
	</form>
</body>
</html>