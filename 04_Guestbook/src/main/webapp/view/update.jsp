<%@page import="guset.book.VO"%>
<%@page import="guset.book.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	VO vo = DAO.getInstance().getPage(idx);
	pageContext.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	width: 500px;
	padding: 10px;
	margin: 30px auto;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
tbody{
border: 1px solid black;
	border-collapse: collapse;
}
th{
	background-color : skyblue;
	width: 100px;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: left;
}
td{	
	text-align:left;
	border: 1px solid black;
	border-collapse: collapse;
	width: 400px;
}
</style>
<script type="text/javascript">
function update_ok(f){
	if("${vo.pw}"==f.pw.value){
		alert("수정하였습니다.")
		f.action="update_ok.jsp";
		f.submit();
	}else{
		alert("비밀번호 오류");
		f.pw.value="";
		f.pw.focus
	}
}
</script>
</head>
<body>
	<h2 style="text-align: center;"> 방명록: 수정화면 </h2>
	<hr>
	<h4 style="text-align: center;"> [<a href="list.jsp">게시물목록으로</a>]</h4>
	<form action="writen.jsp" method = "post">
		<div>
		<table>
		<tbody>
		<tr>
		<th>작성자</th><td><input type="text" name="name" value="${vo.name }"></td>
		</tr>
		<tr>
		<th>제목</th><td><input type="text" name = "title" value="${vo.title }"></td>
		</tr>
		<tr>
		<th>email</th><td><input type="email" name = "email" value="${vo.email}"></td>
		</tr>
		<tr>
		<th>비밀번호</th><td><input type="password" name = "pw"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
		<td colspan = "2">
		<textarea rows="10" cols="50" name="word">
		${vo.word}		
		</textarea>	
		</td>
		</tr>
		<tr>
		<td colspan="2" style="text-align: center;">
		<input type="button" value ="저장" onclick="update_ok(this.form)" >		
		<input type="button" value ="취소" onclick="list_go()" >		
		<%--DB 수정을 위해서 idx를 보내주자 --%>
		
		</td>
		</tr>
		</table>
		</div>
	</form>
</body>
</html>