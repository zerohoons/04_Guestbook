package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Delete_OK_Command implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	String cPage = request.getParameter("cPage");
	String idx =((VO)request.getSession().getAttribute("vo")).getIdx();
	request.setAttribute("cPage", cPage);
	
	int result = DAO.getDelete(idx);
	if(result>0) {
		return "MyController?cmd=list";
	}
	return null;
	}	
}
