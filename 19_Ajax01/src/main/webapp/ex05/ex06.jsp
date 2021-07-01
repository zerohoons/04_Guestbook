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
	<button id="btn"> text파일 가져오기</button>
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
		table += "<tr><td>번호</td><td>이름</td><td>나이</td><td>지역</td></tr>";
		table += "</thead>";
		table += "<tbody>";
		//jQuery에서 텍스트 파일 읽기
		$.get("data06.txt", function(data) {
			var people = data.split("/");
			for ( var k in people) {
				table +="<tr>"
				var people_info = people[k].split(",");
				for ( var y in people_info) {
					
					table+= "<td>" + people_info[y];+"</td>"
					
				}
				table +="</tr>"
			}
			table +="</tbody></table>";
			$("#out").append(table);
		});
		
	});
});
</script>
</html>