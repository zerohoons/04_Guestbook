<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBS 글수정</title>
<style type="text/css">
tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #F6F6F6;
}

th {
	width: 120px;
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}

h2 {
	text-align: center;
}

table {
	width: 800px;
	margin: 10px auto;
}

input {
	padding: 5px
}
</style>
<script type="text/javascript">
	function list_go(f) {
		f.action="${pageContext.request.contextPath}/MyController?cmd=list&cPage=${cPage}";
		f.submit();
	}
	
	function update_ok(f) {
		//비밀번호 체크
			if("${vo.pwd}"==f.pwd.value"){
		f.action="${pageContext.request.contextPath}/MyController?cmd=update_ok";
		f.submit();
		}else{
			alert("비밀번호가 틀림");
			f.pwd.value = "";
			f.pwd.focus();
			return;
		}
	}
	
</script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
</head>
<body>
	<h2> 글쓰기 </h2>
	<form method="post" enctype="multipart/form-data">
		<table width="700">
			<tbody>
				<tr>
					<th>작성자</th>
					<td align="left"><input type="text" name="writer" value="${vo.writer }"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td align="left"><input type="text" name="title" value="${vo.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td align="left">
					<textarea rows="10" cols="60" name="content"> ${vo.content}</textarea>
						<script type="text/javascript">
						CKEDITOR.replace('content');
					</script></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<c:choose>
							<c:when test="${empty bvo.file_name }">
								<input type="file" name="file_name"> 이전 첨부된 파일 없음 
								<input type="hidden" name="old_file_name" value="">  									
							</c:when>
							<c:otherwise>
								<input type="file" name="file_name"> 기존 파일(${bvo.file_name})
								<input type="hidden" name="old_file_name" value = "${bvo.file_name}">
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td align="left"><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2">
				<input type="button" value="입력" onclick="write_ok(this.form)" /> 
				<input type="button" value="목록" onclick="list_go(this.form)" /> 
				<input type="reset" value="취소" />
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>