<%@page import="guset.book.VO"%>
<%@page import="guset.book.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	
	VO vo = DAO.getInstance().getPage(idx);
	request.setAttribute("vo", vo);
	//수정과 삭제를 위해, VO를 session에 담아두거나, (필요할때마다) idx와 pw를 파라미터로 넘겨주어야한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 읽기</title>
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
function update_go(f){
	f.action="update.jsp";
	f.submit();
}
function delete_go(f){
	f.action="delete.jsp";
	f.submit();
}

</script>
</head>
<body>
	<h2 style="text-align: center;"> 방명록: 내용화면 </h2>
	<hr>
	<h4 style="text-align: center;"> [<a href="list.jsp">게시물목록으로</a>]</h4>
	<form method = "post">
		<div>
		<table>
		<tbody>
		<tr>
		<th style = "width: 40%">번호</th><td>${vo.idx}</td>
		</tr>
		<tr>
		<th>작성자</th><td>${vo.name}</td>
		</tr>
		<tr>
		<th>제목</th><td>${vo.title}</td>
		</tr>
		<tr>
		<th>email</th><td>${vo.email}</td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
		<td colspan = "2" >
		${vo.word}
		</td>
		</tr>
		<tr>
		<td colspan="2" style="text-align: center;">
		<input type="button" value ="수정" onclick="update_go(this.form)" >		
		<input type="button" value ="삭제" onclick="delete_go(this.form)" >		
		<input type="hidden" name ="idx" value="${vo.idx}" >		
		<input type="hidden" name ="pw" value="${vo.pw}" >		
		</td>
		</tr>
		</table>
		</div>
	</form>
</body>
</html>