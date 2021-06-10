<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getParameter("path");
	String f_name = request.getParameter("f_name");
	
	//실제 위치 구하기.
	String r_path = getServletContext().getRealPath(path);
	
	//다운로드 받을 수 있도록 클라이언트(웹 브라우저)의 문서타입 변경
	response.setContentType("application/x-msdownload");
	
	//정보는 두가지! = 헤더 + 바디
	//헤더 정보에 첨부파일이 존재하는 것으로 변경.
	response.setHeader("Content-Disposition","attachment; filename="+URLEncoder.encode(f_name,"utf-8")); 
	//입력 잘할 것.
	
	//이제부터는 실제 바이트 스트림을 이용해서 다운로드 한다.
	
	File file = new File(r_path+"/"+new String(f_name.getBytes("utf-8")));
	int b;
	FileInputStream fis = null;
	BufferedInputStream bis = null;
	BufferedOutputStream bos = null;
	try{
		fis = new FileInputStream(file);
		bis = new BufferedInputStream(fis);
		
		bos = new BufferedOutputStream(response.getOutputStream()); //브라우저에서 다운받는 것이기 때문에 브라우저값을 넣어주어야함.
		
		while((b = bis.read())!= -1){
			bos.write(b);
			bos.flush();	
		}
		
		out.clear(); //JSP와 Servlet의 충돌방지
		out = pageContext.pushBody();
		
	}catch(Exception e){
		
	}finally{
		
	}try{
		bos.close();
		bis.close();
		fis.close();
	}catch(Exception e){
		
	}
%>