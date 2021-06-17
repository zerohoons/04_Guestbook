<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 8pt;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
<p> <jsp:include page="top.jsp" /></p>
	<table>
		<caption><h2> :: 장바구니 내용 :: </h2></caption>
		<thead>
			<tr bgcolor="#dedede">
				<th style="width: 15%">제품번호</th>
				<th style="width: 20%">제품명</th>
				<th style="width: 20%">단가</th>
				<th style="width: 20%">수량</th>
				<th style="width: 15%">금액</th>
				<th style="width: 10%">삭제</th>
			</tr>
		</thead>
		<tbody>
			
			<c:choose>
				<c:when test="${empty cartList}">
					<h2>장바구니가 비어있습니다.</h2>	
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${cartList}">
						<tr>
							<td>${k.p_num}</td>
							<td>${k.p_name}</td>
							<td>시중가 : ${k.p_price} &nbsp;&nbsp;
								<font style="color: tomato;">(세일가 : ${k.p_saleprice}</font>
							</td>
							<td>
								<form method="POST">
									<input type="number" name="su" value="${k.quant}">
									<input type="hidden" name="idx" value="${k.idx}">
									<input type="button" value="수정" onclick="edit_cart(this.form)">
								</form>
							</td>
							<td>
								${k.totalPrice}
							</td>
							<td>
								<form method="POST">
									<input type="hidden" name="idx" value="${k.idx}">
									<input type="button" value="삭제" onclick="del_cart(this.form)">
								</form>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
				
		</tbody>
		<tfoot>
			<tr style="text-align: right;">
				<td colspan="6" style="padding-right: 50px;">
					<h2> 총 결재액 : <fmt:formatNumber value="${total}" pattern="#,###" /> 원</h2>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>