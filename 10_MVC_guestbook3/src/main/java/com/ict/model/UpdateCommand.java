package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class UpdateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		/* ssesion에 vo를 넣었기 때문에 아래 과정 생략
		 * String idx = request.getParameter("idx"); VO vo =
		 * DAO.getInstance().getSelectOne(idx); request.setAttribute("vo", vo);
		 */
		return "view/update.jsp";
	}
}
