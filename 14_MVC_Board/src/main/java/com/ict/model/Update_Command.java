package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Update_Command implements Command {
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
<<<<<<< HEAD
	request.setAttribute("cPage", request.getParameter("cPage"));
	
	return "view/update";
=======
	// TODO Auto-generated method stub
	return null;
>>>>>>> branch 'master' of https://github.com/zerohoons/04_Guestbook.git
}
}
