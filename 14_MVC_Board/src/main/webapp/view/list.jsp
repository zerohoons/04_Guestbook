<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #F6F6F6;
}

th {
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}
h2{text-align: center;}
table{
 width: 800;
 margin: 10px, auto;
 
}
</style>
<script type="text/javascript">
function write_go() {
	location.href="${pageContext.request.contextPath}/MyController?cmd=write"
}
</script>
</head>
<body>
	<h2>BBS 리스트</h2>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list}">
					<tr>
						<td colspan="5"><h2> 입력된 글이 없습니다.</h2> </td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list }" varStatus="vs">
						<tr>
							<td>${pvo.totalRecord - ((pvo.nowPage-1)*pvo.numPerPage + vs.index)}</td>
							<td><a href = "${pageContext.request.contextPath}/MyController?cmd=onelist&idx=${k.idx}&cPage=${pvo.nowPage}">${k.title}</a></td>
							<td>${k.writer}</td>
							<td>${k.regdate.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
		<tfoot>
			<tr>
					<!-- 이전 --> 
				<td>
					<c:choose>
						<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
							<span style="color: gray; border: 1px solid gray; margin: 10px">이전으로</span>
						</c:when>
						<c:otherwise>
							<span
								style="color: tomato; border: 1px solid tomato; margin: 10px">이전으로</span>
						</c:otherwise>
					</c:choose> <!-- 페이지번호 --> 
				</td>
				<td colspan="2">	
					<c:forEach begin="${pvo.beginBlock}" end="${pvo.endBlock}" step="1" var="k">
						<c:choose>
							<c:when test="${k==pvo.nowPage}">
									<span style="background-color: tomato; padding: 10px;">${k}</span></c:when>
								<c:otherwise>
									<span style="color: tomato; padding: 10px;"><a>${k}</a></span>
								</c:otherwise>
						</c:choose>
					</c:forEach> <!-- 다음 --> 
				</td>
				<td>
					<c:choose>
						<c:when test="${pvo.endBlock >= pvo.totalBlock }">
							<span style="color: gray; border: 1px solid gray; margin: 10px">다음으로</span>
						</c:when>
						<c:otherwise>
							<span
								style="color: tomato; border: 1px solid tomato; margin: 10px">다음으로</span>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<button onclick="write_go()">글쓰기</button>
				</td>
			</tr>
	</table>
</body>
</html>