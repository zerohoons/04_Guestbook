<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	*{
	margin:0;
	padding: 0;
	}
	h2{
	text-align: center;
	}
	#banner_map{
	width: 900px;
	padding: 20px;
	margin: 0px auto;
	border: 1px solid gray;
	}
	#frame{width: 900px;
	overflow: hidden;
	position: relative;
	margin: 10px auto;}
	#banner{width: 500000000px;}
	#footer{
	text-align: center;}
	img{
	border:none;
	vertical-align: top;}
	li img{
	width: 300px;
	}
	ul li{
	list-style: none;
	float:left;
	
	}
}
</style>
</head>
<body>
	<h2>롤링 슬라이드 배너 만들기.</h2>
	<br>
	<br>
	<br>
	<div id="banner_map">
		<div id="frame">
			<ul id="banner">
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113621306.jpg"></a></li>
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113621468.jpg"></a></li>
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113621598.jpg"></a></li>
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113621715.jpg"></a></li>
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113621817.jpg"></a></li>
				<li><a href="#"><img alt="" src="../images/KakaoTalk_20210630_113654430.png"></a></li>
			</ul>
		</div>
		<p id="footer">
				<a href="#" id="prev"><img alt="" src="../images/KakaoTalk_20210630_113654520.png"></a>
				&nbsp;
				&nbsp;
				&nbsp;
				&nbsp;
				<a href="#" id="prev"><img alt="" src="../images/KakaoTalk_20210630_113705409.png"></a>
		</p>
	</div>
</body>
<script type="text/javascript">
$(function() {
	var list = $("#banner");
	var show_num=3;
	var num=0;
	var total = $("li").length;
	var li_width =$("li:first").width();
	
	var c_Obj = $("li:lt("+show_num+")").clone();
	list.append(c_Obj);
	
	setInterval(()=>{
		if(num == total){
			num = 0;
			list.css("margin-left",num);
		}
		num++;
		list.stop().animate({marginLeft: -li_width*num+"px"});
		return false;
	},1000)
},3000);

$("#prev").on("click",function(){
	if(num==0){
		num=total;
		list.css("margin-left", -li_width*num+"px");
	}
	num--;
	list.stop().animate({marginLeft: -li_width*num+"px"},1000);
	return false
});

$("#next").on("click",function(){
	if(num==0){
		num=total;
		list.css("margin-right", +li_width*num+"px");
	}
	num--;
	list.stop().animate({marginRight: +li_width*num+"px"},1000);
	return false;
});
</script>
</html>