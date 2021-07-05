<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var lat = 0;
	var lng = 0;
	navigator.geolocation.getCurrentPosition(function(position) {
		lat = position.coords.latitude;
		lng = position.coords.longitude;
	});
	
	document.getElementById("lat").innerHTML= lat;
	document.getElementById("lng").innerHTML= lng;
	
</script>
</head>
<body>
	위도 : <span id = "lat"></span>, 경도 : <span id="lng"></span>
	
	<div id="map" style="width:750px;height:350px;"></div>

	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=578644472dba29cfb496eb79f4cec696"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
		        level: 2, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 

	</script>
</body>
</html>