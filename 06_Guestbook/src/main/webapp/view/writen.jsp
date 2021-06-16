<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
try{	
//실제 저장위치만들기.
	String path = request.getServletContext().getRealPath("/upload");
	MultipartRequest mr
	= new MultipartRequest(
	request,
	path,
	100*1024*1024,
	"utf-8",
	new DefaultFileRenamePolicy()
	);
	VO vo = new VO();
	vo.setName(mr.getParameter("name"));
	vo.setPwd(mr.getParameter("pw"));
	vo.setSubject(mr.getParameter("tilte"));
	vo.setContent(mr.getParameter("word"));
	vo.setEmail(mr.getParameter("email"));
	vo.setF_name(mr.getParameter("f_name"));

	//첨부파일이 있을 때와 없을 때를 구분하자.
	if((mr.getFile("f_name"))!=null){
		vo.setF_name(mr.getFilesystemName("f_name"));		
	}else{
		vo.setF_name(" ");
	}
	
	int result = DAO.getInstance().getInsert(vo);
	
	if(result>0){
		response.sendRedirect("list.jsp");
	}
}catch(Exception e){
	System.out.println(e);
}
%>
