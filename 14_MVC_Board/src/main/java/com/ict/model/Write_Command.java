package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Write_Command implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
<<<<<<< HEAD
	
	request.setAttribute("cPage", request.getParameter("cPage"));
	
=======
	// TODO Auto-generated method stub
>>>>>>> branch 'master' of https://github.com/zerohoons/04_Guestbook.git
	return "/view/write.jsp";
}
}
