package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.BVO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 전체 게시물의 수를 구한다.
		Paging pvo = new Paging();
		int count = DAO.getCount();

		pvo.setTotalRecord(count);
		
		
		//전체 게시물의 수를 활용해서 전체 페이지수를 정하자.
		pvo.setTotalPage(pvo.getTotalRecord()/pvo.getNumPerPage());
		
		//나머지가 존재하면 1페이지를 추가해야한다.
		if((pvo.getTotalRecord()/pvo.getNumPerPage())!=0) {
			pvo.setTotalPage(pvo.getTotalPage()+1);
		}
		
		//현재 페이지 구하기
		//cmd가 list이면 무조건 cPage 파라미터를 넣어야한다.
		String cPage = request.getParameter("cPage");
		pvo.setNowPage(Integer.parseInt(cPage));
		
		//시작번호와 끝번호를 구해서 DB정보를 가져오자.
		pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
		pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
		List<BVO> list = DAO.getList(pvo.getBegin(), pvo.getEnd());
		
		
		
		//시작 블록과 끝 블록 구하기.
		pvo.setBeginBlock((int)(pvo.getNowPage()-1)/pvo.getPagePerBlock()*pvo.getPagePerBlock()+1);
		pvo.setEndBlock(pvo.getBeginBlock()+pvo.getPagePerBlock()-1);
		
		//주의사항 : endBlock이 totalPage보다 클 수 있다.
		if(pvo.getEndBlock()>pvo.getTotalPage()) {
			pvo.setEndBlock(pvo.getTotalPage());
		}
		request.setAttribute("list", list);
		request.setAttribute("pvo", pvo);
		return "/view/list.jsp";
	}
}
