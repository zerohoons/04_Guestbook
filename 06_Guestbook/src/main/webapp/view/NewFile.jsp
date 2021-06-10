<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function parseWeather(){
		loadJSON(function(response))
		{
			var jsonData = JSON.parse(reponse);
			document.getElementById("problem8").innerHTML = jsonData["lat"][0]["temp"][0];
		});
	}
	
	function loadJSON(callback)
	{
		var url = "https://api.openweathermap.org/data/2.5/onecall?lat=33.441792&lon=-94.037689&appid=c7a83f1b9651f1b7e92ec7ee9f558b81";
		var request = new XMLHttpRequest();
		request.overrideMimeType("application/json");
		request.open('GET,url,true');
		
		request.onreadystatechange = function()
		{
			if(request.readyState == 4 && request.status =="200")
				{
				callback(requset.responseText);
				}
		};
		requset.send(null);
	}
	
	window.onload = function()
	{
		parseWeather();
	}
</script>
<body>
<span id ="problem8"></span>
</body>
</html>