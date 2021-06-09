<%@page import="guset.book.DAO"%>
<%@page import="guset.book.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	
	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setTitle(request.getParameter("title"));
	vo.setEmail(request.getParameter("email"));
	vo.setPw(request.getParameter("pw"));
	vo.setWord(request.getParameter("word"));
	
	int result = DAO.getInstance().getWord(vo);
	
	if(result>0){
		response.sendRedirect("list.jsp");
	}
%>