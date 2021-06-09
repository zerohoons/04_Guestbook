<%@page import="guset.book.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	
	int res = DAO.getInstance().getDelete(idx);
	
	if(res>0){
		  response.sendRedirect("list.jsp");
	}
%>