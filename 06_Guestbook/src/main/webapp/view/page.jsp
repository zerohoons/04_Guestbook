<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	
	String path = getServletContext().getRealPath("/upload");
	
	MultipartRequest mr =
		new MultipartRequest( 				
	request, 						//요청정보
	path, 	 						//저장위치
	100*1024*1024, 					//업로드 용량 100메가
	"utf-8",						//인코딩
	new DefaultFileRenamePolicy()); //파일 이름 중복 처리.
	
	VO vo = DAO.getInstance().getSelectOne(idx);
		
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
		<tr>
		<th>첨부파일</th>
		<c:choose>
			<td>
			<c:when test="${!empty vo.f_name}">
			<img alt ="" src="../upload/${vo.f_name}%>" style = "width: 200px">
			<li> 다운로드 : <a href = "download.jsp?path=upload&f_name${vo.f_name}">${vo.f_name}</a></li>
			</c:when>
			</td>
			<c:otherwise>
			<td>첨부파일 없음</td>
			</c:otherwise>
		</c:choose>
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