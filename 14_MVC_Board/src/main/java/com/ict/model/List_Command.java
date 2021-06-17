package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.Paging;
import com.ict.db.VO;

public class List_Command implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	Paging pvo = new Paging();
	
	//1. 전체 게시물의 수
	int total = DAO.getCount();
	pvo.setTotalRecord(total);
	
	//2. 전체 게시물의 수를 가지고 전체 페이지 수를 구하기 : 나눈 나머지가 존재하면 전체 페이지에서 한페이지 추가.
	pvo.setTotalPage(pvo.getTotalRecord()/pvo.getNumPerPage());
	if((pvo.getTotalRecord()%pvo.getNumPerPage())!=0){
		pvo.setTotalPage(pvo.getTotalPage()+1);
	}
	
	//3. 현재페이지 구하기.
	String cPage = request.getParameter("cPage");
	pvo.setNowPage(Integer.parseInt(cPage));
	
	//4. 시작번호 끝번호 구하기
	pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
	pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
	
	// DB처리
	List<VO> list = DAO.getList(pvo.getBegin(),pvo.getEnd());
	
	//5. 시작블록 끝블록 구하기
	pvo.setBeginBlock((int)((pvo.getNowPage()-1)/pvo.getPagePerBlock())*pvo.getPagePerBlock()+1);
	pvo.setEndBlock(pvo.getBeginBlock()+pvo.getPagePerBlock()-1);
	
	//주의) endBlock이 totalPage보다 클 수 있다.
	if (pvo.getEndBlock()>pvo.getTotalPage()) {
		pvo.setEndBlock(pvo.getTotalPage());
	}
		
	//6. request에 저장.
	request.setAttribute("list", list);
	request.setAttribute("pvo", pvo);
	return "/view/list.jsp";
}
}
