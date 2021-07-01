<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
	div{text-align: center;}
	table{
		width: 600px;
		margin: auto;
	}
	table,th,td{
		border: 1px solid red;
		text-align: center;
		border-collapse: collapse;
	}
	button {
	
	}
	
</style>
</head>
<body>
	<div>
		<button id =btn1>Text 정보 가져오기</button>
		<button id =btn2>XML 태그 정보 가져오기</button>
		<button id =btn3>XML 속성 정보 가져오기</button>
		<button id =btn4>XML 태그/속성 정보 가져오기</button>
		<button id =btn5>JSON 정보 가져오기</button>
	</div>
	<hr>
	<div>
		<table id ="table"></table>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController01",
				methode : "post",
				dataType : "text",
				success : function(data) {
					var table="<thead>";
					table+= "<tr><th>번호</th><th>이름</th><th>나이</th><th>주소</th></tr>";
					table += "</thead><tbody>";
					
					var people = data.split("/");
					for ( var i in people) {
						table += "<tr>";
						table += "</tr>";
						var people_info = people[i].split(",");
						for ( var k in people_info) {
							table +="<td>"+people_info[k]+"</td>";
						}
					}
					table +="</tbody>";
					$("#table").append(table);
				},
				error : function() {
					alert("읽기실패")
				}
			});
		});
		$("#btn2").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController02",
				methode : "post",
				dataType : "xml",
				success : function(data) {
					var table="<thead>";
					table+= "<tr><th>상품명</th><th>가격</th></tr>";
					table += "</thead><tbody>";
					
					$(data).find("product").each(function(){
						table +="<tr>";
						table +="<td>"+$(this).find("name").text()+"</td>";
						table +="<td>"+$(this).find("price").text()+"</td>";
						table +="</tr>";
					})
					
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패")
				}
			});
		});
		$("btn3").click(function(){
			$.ajax({
				url : "/MyController03",
				methode : "post",
				dataType : "xml",
				success : function(data){
					var table = "<thead>";
					table += "<tr><th>상품명</th><th>가격</th></tr>";
					table +="</thead><tbody>";
					$(data).find("product").each(function(){
						table +="<tr>";
						table += "<td>"+$(this).attr("name")+"</td>";
						table += "<td>"+$(this).attr("price")+"</td>";
						table += "</tr>";
					})
					
					table+="</tbody>";
					$("#table").append(table);
				}
			})
		});
		$("#btn4").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController04",
				methode : "post",
				dataType : "xml",
				success : function(data) {
					var table = "<thead>";
					table += "<tr><th>상품명</th><th>가격</th><tr>";
					table += "</thead><tbody>";
					$(data).find("product").each(function(){
						table +="<tr>";
						table +="<td>" + $(this).text()+"</td>";
						table +="<td>" + $(this).attr("price")+"</td>";
						table +="</tr>";
					});
					
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
		$("#btn5").click(function() {
			$("#table").empty();
			$.ajax({
				url : "/MyController05",
				methode : "post",
				dataType : "json",
				success : function(data) {
					var table = "<thead>";
					table += "<tr><th>상품명</th><th>가격</th><tr>";
					table += "</thead><tbody>";
					$.each(data, function(k,v) {
						table += "<tr><td>"+ v["name"]+"</td><td>"+this["price"]+"</td></tr>";
					});
					
					table +="</tbody>";
					$("#table").append(table);
					
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
	});
	</script>
</html>