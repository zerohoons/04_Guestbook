package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete_Command implements Command {
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	String cPage = request.getParameter("cPage");
	request.setAttribute("cPage", cPage);
	return "view/delete.jsp";
}
}
