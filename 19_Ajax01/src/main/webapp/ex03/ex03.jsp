<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	//낮은 버전의 브라우저 처리 (XMLHttpRequest가 없는 경우)
	var request = new XMLHttpRequest();
	request.open("GET","data_03.xml",true);
	request.onreadystatechange = function(){
		if(request.readyState==4){
			if(request.status==200){
				//xml 데이터 받기
				var data = request.responseXML;
				//xml 태그 정보 저장
				var product = data.getElementsByTagName("product");
				
				for (var i = 0; i < product.length; i++) {
					//글자만 추출 : .attributes[0].value
					var name = product[i].attributes[0].value;
					var price = product[i].attributes[1].value;
				
					//화면에 추출
					document.body.innerHTML += "<h2>"+name+"/"+price+"</h2>";
					
				}
			}
		}
	}
	request.send();
	document.body.innerHTML = request.responseText;
</script>

</body>
</html>