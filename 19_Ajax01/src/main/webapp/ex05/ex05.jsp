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
	<button id="btn"> js파일 가져오기</button>
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
		//jQuery에서 JSON 파일 읽기
		$.getJSON("data_05.js",function(data){
			
		/* 	//반복돌리기
			$.each(data, function(k,v){
				table+= "<tr>";	
				table+=	"<td>" + v["name"]+"</td>";
				table+=	"<td>" +v["price"]+"</td>";
				table+=	"</tr>"
			}); */
			
			//k,v를 쓰지 않고 this 활용
			$.each(data, function(){
				table+= "<tr>";	
				table+=	"<td>" + this["name"]+"</td>";
				table+=	"<td>" + this["price"]+"</td>";
				table+=	"</tr>"
			});
			table += "</tbody></table>";
			$("#out").append(table);
		});
	});
});
</script>
</html>