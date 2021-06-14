package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Update_okCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    VO vo = new VO();
	    vo.setIdx(request.getParameter("idx"));
	    vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setEmail(request.getParameter("email"));
		vo.setPwd(request.getParameter("pwd"));
		
		int result = DAO.getInstance().getUpdate(vo);
		if(result>0){ 
			// response.sendRedirect("onelist.jsp?idx="+vo.getIdx());
			return "MyController?cmd=onelist&idx="+vo.getIdx();
		}
		return null;
	}
}
