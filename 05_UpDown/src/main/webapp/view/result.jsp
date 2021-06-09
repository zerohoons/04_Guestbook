<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	//  <form action="result.jsp" method="post" enctype="multipart/form-data">를 사용할 경우,
		request를 사용할 수 없다. why? Parameter 값이 null이다.
		그렇기 때문에, cos.jar 안에 존재하는 MultipartRequest 클래스를 사용해야한다.
	String name = request.getParameter("name");
	System.out.println(name);
	
	cos.jar 안에 있는 MultipartRequest 클래스의 주요 메소드
	> getParameter(String) : Strign
	> getParameterValues(String) : String[]
	
	String 인자는 input type="file" name ="name"
	> getOriginalFileName(String): 업로드 당시의 파일 이름.
	> getFilesystemName(String)	 : 저장 당시의 파일 이름.
	> getContentType(String)	 : 해당 문서의 종류
	> getFile(String)			 : 업로드된 파일을 FileClass 객체로 변경해서 처리하자.
		- .getName()			 : 파일이름
		- .length()				 : 파일크기를 byte 처리
		- .lastModified()		 : 마지막 수정날짜
	
	1. 실제 파일이 저장 될 위치를 구하자. (톰캣 프로젝트 안에 위치)*/
	String path = getServletContext().getRealPath("/upload");
	
//	2. MultipartRequest 객체 생성
	MultipartRequest mr =
		new MultipartRequest( 				
			request, 						//요청정보
			path, 	 						//저장위치
			100*1024*1024, 					//업로드 용량 100메가
			"utf-8",						//인코딩
			new DefaultFileRenamePolicy()); //파일 이름 중복 처리.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>