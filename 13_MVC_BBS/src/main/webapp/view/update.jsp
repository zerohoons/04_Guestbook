<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bbs table {
	    width:800px;
	    margin:0 auto;
	    margin-top:20px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#bbs table th {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	#bbs table td {
	    text-align:left;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	.odd {background:silver}
</style>
<script type="text/javascript">
function list_go(f){
	f.action="${pageContext.request.contextPath}/MyController?cmd=list";
	f.submit();
}
function edit_ok(f){
	if("${bvo.pwd}" == f.pwd.value){
		var chk = confirm("수정하시겠습니까?");
		
		if(chk){
			f.action="${pageContext.request.contextPath}/MyController?cmd=edit_ok";
			f.submit();
		}else{
			f.content.focus();
		}

	} else{
		alert("비밀번호가 일치하지 않습니다.");
		f.pwd.value="";
		f.pwd.focus();
		return;
	}
	
}
</script>
</head>
<body>
	<div id="bbs">
	<form method="post" encType="multipart/form-data">
		<table summary="게시판 글쓰기">
			<caption>게시판 글쓰기</caption>
			<tbody>
				<tr>
					<th>제목:</th>
					<td><input type="text" name="subject" size="45" value="${bvo.subject }"></td>
				</tr>
				<tr>
					<th>이름:</th>
					<td><input type="text" name="writer" size="12" value="${bvo.writer }"></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td>
					<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
					<textarea name="content" cols="50" rows="8"></textarea>${bvo.content }</td>
					<script type="text/javascript">
						CKEDITOR.replace('content');
					</script>
				</tr>
				<tr>
					<th>첨부파일:</th>
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
					<th>비밀번호:</th>
					<td><input type="password" name="pwd" size="12"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="edit_ok(this.form)">
						<input type="reset" value="다시">
						<input type="button" value="목록" onclick="list_go(this.form)"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
</body>
</html>
