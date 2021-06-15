<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="guset.book.DAO"%>
<%@page import="guset.book.VO"%>
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
	BVO vo = new BVO();
	vo.setName(mr.getParameter("name"));
	vo.setPw(mr.getParameter("pw"));
	vo.setTitle(mr.getParameter("tilte"));
	vo.setWord(mr.getParameter("word"));
	vo.setEmail(mr.getParameter("email"));
	vo.setF_name(mr.getParameter("f_name"));

	//첨부파일이 있을 때와 없을 때를 구분하자.
	if((mr.getFile("f_name"))!=null){
		vo.setF_name(mr.getFilesystemName("f_name"));		
	}else{
		vo.setF_name(" ");
	}
	
	int result = DAO.getInstance().getWord(vo);
	
	if(result>0){
		response.sendRedirect("list.jsp");
	}
}catch(Exception e){
	System.out.println(e);
}
%>
