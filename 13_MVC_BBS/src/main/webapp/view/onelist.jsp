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
	
	/* 댓글 */
	.div1{
		width:800px;
		margin:  auto;
	}
</style>
<script type="text/javascript">
function list_go(f){
	f.action="${pageContext.request.contextPath}/MyController?cmd=list";
	f.submit();
}
function update_go(f){
	
	f.action="${pageContext.request.contextPath}/MyController?cmd=update";
	f.submit();
}
function delete_go(f){
	f.action="${pageContext.request.contextPath}/MyController?cmd=delete";
	f.submit();
}
function comm_go(f) {
	f.action="${pageContext.request.contextPath}/MyController?cmd=comm_ins";
	f.submit();
}
function comm_del(f) {
	f.action="${pageContext.request.contextPath}/MyController?cmd=comm_del";
	f.submit();
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
					<td>${bvo.subject }</td>
				</tr>
				<tr>
					<th>이름:</th>
					<td>${bvo.writer }</td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
						<textarea name="content" cols="50" rows="8">${bvo.content}</textarea>
						<script type="text/javascript">
							CKEDITOR.replace('content');
						</script>
					</td>
				</tr>
				<tr>
					<th>첨부팔일:</th>
					<c:choose>
						<c:when test="${!empty bvo.file_name}">
							<td style="text-align: center;">
								<img alt="" src="upload/${bvo.file_name }" style="width: 100px;"><br>
								<a href="view/download.jsp?path=upload&file_name=${bvo.file_name }">${bvo.file_name}</a> 
							</td>
						</c:when>
						<c:otherwise>
							<td><b>첨부파일없음</b></td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="update_go(this.form)">
						<input type="button" value="삭제" onclick="delete_go(this.form)">
						<input type="button" value="목록" onclick="list_go(this.form)"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
	<br><br>
	<hr>
	<!-- 댓글 출력 -->
		<div class="div1">
	<hr>
		<c:if test="${!empty c_list}">
			<c:forEach var="k" items="${c_list}">
			<div style="margin: 10px; 0px;">
				<form method="post">
					<table>
						<tbody>
							<tr>
								<td><textarea rows="4" cols="70" name="content" readonly>${k.content }</textarea></td>
								<td><input style="height: 70px;" type="button" value="댓글 삭제" onclick="comm_del(this.form)"> </td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			</c:forEach>				
		</c:if>
	</div>
	<br>
	<%-- 댓글 입력 --%>
	<div class="div1">
		<form method="post">
			<table>
				<tbody>
					<tr>
						<!-- 댓글 쓴사람과 로그인 아이디가 같으면 삭제,수정 가능하게 만들어야 됨 -->
						<td><textarea rows="4" cols="70" name="content"></textarea></td>
						<td><input style="height: 70px;" type="button" value="댓글" onclick="comm_go(this.form)"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>