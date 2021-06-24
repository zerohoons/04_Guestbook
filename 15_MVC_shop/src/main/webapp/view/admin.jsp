<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp"%>
	<div>
		<h2>상품 등록</h2>
		<form method="post" enctype="multipart/form-data"  onsubmit="product_add(this.form)">
			<table>
				<tbody>
					<tr>
						<th class="bg">분류</th>
						<td>
							<input type="radio" name="category" value="com001">컴퓨터
							<input type="radio" name="category" value="ele002">가전제품
							<input type="radio" name="category" value="sp003">스포츠
						</td>
					</tr>
					<tr>
						<th class="bg">제품번호</th>
						<td><input type="text" name="p_num" required></td>
					</tr>
					<tr>
						<th class="bg">제품명</th>
						<td><input type="text" name="p_name" required></td>
					</tr>
					<tr>
						<th class="bg">판매사</th>
						<td><input type="text" name="p_company" required></td>
					</tr>
					<tr>
						<th class="bg">상품가격</th>
						<td><input type="number" name="p_price" required></td>
					</tr>
					<tr>
						<th class="bg">할인가</th>
						<td><input type="number" name="p_saleprice" required></td>
					</tr>
					<tr>
						<th class="bg">상품이미지_S</th>
						<td><input type="file" name="p_image_s" required></td>
					</tr>
					<tr>
						<th class="bg">상품이미지_L</th>
						<td><input type="file" name="p_image_l" required></td>
					</tr>
					<tr>
						<th colspan="2" class="bg">상품상세정보</th>
					</tr>
					<tr>
						<td colspan="2"><textarea rows="10" cols="50" name="p_content" required></textarea></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="submit" value="상품등록"></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>