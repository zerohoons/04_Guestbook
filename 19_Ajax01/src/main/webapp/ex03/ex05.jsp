<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	request.open("GET","data_05.js",true);
	request.onreadystatechange = function(){
		if(request.readyState == 4){
			if(request.status ==200){
				var msg ="";
				var date = eval("("+request.responseText+")");
				for (var i = 0; i < data.length; i++) {
					for (var k in data[i]) {						
					msg += data[i][k] + "&nbsp; &nbsp";
					}
					msg += "<br>";
				}
				
				document.body.innerHTML = msg;
				
			}
		}
	}
	request.send();
	
</script>
</html>