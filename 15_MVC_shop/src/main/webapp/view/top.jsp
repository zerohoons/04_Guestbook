<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        a:link{text-decoration:none; color:navy}
        a:visited{text-decoration:none; color:navy}
        a:hover{text-decoration:none; color:red}

		body{ text-align: center } 
		hr{
			width: 600px;
			border: 1px;
			color: navy;
		}

		div#header, div#nav{
			width: 600px;
			margin: 10px auto;
			text-align: center;
		}
		div#wrap{ margin: 0 auto; }
    </style>
  </head>
  <body>
  <div id="wrap">
	  <hr noshade/>
	  <div id="header">
		  <span class="title">
			  HANBIT SHOPPING CENTER
		  </span>
	  </div>
	  <hr noshade/>
	  <div id="nav">
		  <a href="/MyController?cmd=list&category=com001">컴퓨터</a> | 
		  <a href="/MyController?cmd=list&category=ele002">가전 제품</a> | 
		  <a href="/MyController?cmd=list&category=sp003">스포츠</a>
	  </div>
	  <hr noshade/>
  </div>
  </body>
</html>