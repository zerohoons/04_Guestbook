<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	width: 500px;
	border-collapse: collapse;
	text-align: center;
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
div{ width: 600px; margin: 100px auto; text-align: center;}
</style>
<script type="text/javascript">
function list_go(){
	history.go(-1);
}
</script>
</head>
<body>
	<h2 style="text-align: center;"> 방명록: 작성화면 </h2>
	<hr>
	<h4 style="text-align: center;"> [<a href="list.jsp">게시물목록으로</a>]</h4>
	<form action="writen.jsp" method = "post">
		<div>
		<table>
		<tbody>
		<tr>
		<th>번호</th><td><input type="text" name = "update_menu" placeholder="순서에 따라 자동으로 입력됩니다." readonly="readonly"></td>
		</tr>
		<tr>
		<th>작성자</th><td><input type="text" name = "name" required="required"></td>
		</tr>
		<tr>
		<th>제목</th><td><input type="text" name = "title" required="required"></td>
		</tr>
		<tr>
		<th>email</th><td><input type="email" name = "email" required="required"></td>
		</tr>
		<tr>
		<th>비밀번호</th><td><input type="password" name = "pw" required="required"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
		<td colspan = "2">
		<textarea rows="10" cols="50" name="word"></textarea>	
		</td>
		</tr>
		<tr>
		<td colspan="2" style="text-align: center;">
		<input type="submit" name ="저장" >		
		<input type="button" value ="취소" onclick="list_go()" >		
		</td>
		</tr>
		</table>
		</div>
	</form>
</body>
</html>