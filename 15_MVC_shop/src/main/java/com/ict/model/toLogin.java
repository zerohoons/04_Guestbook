package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import com.ict.db.DAO;
import com.ict.db.UVO;
import com.ict.db.VO;

public class toLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		UVO uvo = new UVO();

		uvo.setId(request.getParameter("id"));
		uvo.setPass(request.getParameter("pass"));
		
		UVO uvo2 = DAO.getLogin(uvo);
		if(uvo2==null) {
			return"view/login.jsp";
		}
		request.getSession().setAttribute("uvo",uvo2);
		request.getSession().setAttribute("login", "ok");
		
		//관리자인지 일반유저인지 검사.
		//관리자의 경우 상품 추가 페이지로 이동.
		if(uvo.getId().equals("non")) {
			request.getSession().setAttribute("admin", "ok");
			return "MyController?cmd=admin";
		}
		
		return "MyController?cmd=list";
	}

}
