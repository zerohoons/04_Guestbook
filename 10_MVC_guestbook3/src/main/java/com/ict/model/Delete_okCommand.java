package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class Delete_okCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		  String idx = request.getParameter("idx");
		  int result = DAO.getInstance().getDelete(idx);
		  if(result>0){ 
			  // 실제 파일도 삭제 하기 (숙제)
			  
			  return "MyController?cmd=list";
		  }
		return null;
	}
}
