package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class OneListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		//조회수 업데이트
		int result = DAO.getHitUp(b_idx);
		
		//내용 가져오기
		BVO bvo = DAO.getOneList(b_idx);
		
		
		//b_idx를 이용하여 관련 댓글 가져오기.
		List<CVO> c_list = DAO.getcList(b_idx);
		request.setAttribute("c_list", c_list);
		
		//수정과 삭제를 위해 session에 저장하자.
		request.getSession().setAttribute("bvo", bvo);
		return "view/onelist.jsp";
	}
}
