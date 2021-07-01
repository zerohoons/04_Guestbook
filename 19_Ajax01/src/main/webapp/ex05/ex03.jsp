<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
table{
width: 600px;
}
table,th,td{
border: 1px solid red;
text-align: center;
}
</style>
</head>
<body>
	<button id="btn">html파일 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
<script type="text/javascript">
$(function() {
 	$("#btn").click(function() {
		$("#out").empty();
		var table = "<table>";
		table += "<thead>";
		table += "<tr><td>종류</td><td>가격</td></tr>";
		table += "</thead>";
		table += "<tbody>";
		$.get("data_03.xml",function(msg){
			$(msg).find("product").each(function() {
				// 자바스크립트의 속성 추출 : attributes[index].value
				// jQuery의 속성 추출 : attr("속성명");
				var name = $(this).attr("name");
				var price = $(this).attr("price");
				table += "<tr>";
				table +="<td>"+name + "</td><td>"+price+"</td>";
				table += "</tr>";
			});
			table += "</tbody>";
			table += "</table>";
			$("#out").append(table);
		});
	});
});
</script>
</html>