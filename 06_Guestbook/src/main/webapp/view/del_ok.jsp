<%@page import="com.ict.edu.DAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  String idx = request.getParameter("idx");
  int result = DAO.getInstance().getDelete(idx);
  if(result>0){ 
	  //실제 파일도 삭제하기
	  response.sendRedirect("list.jsp");
  }
%>