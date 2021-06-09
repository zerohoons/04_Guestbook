<%@page import="guset.book.DAO"%>
<%@page import="guset.book.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setTitle(request.getParameter("title"));
	vo.setEmail(request.getParameter("email"));
	vo.setWord(request.getParameter("word"));
	
	int result = DAO.getInstance().getUpdate(vo);
	response.sendRedirect("list.jsp");
	
%>