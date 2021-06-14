package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Delete_okCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		  VO vo = (VO)request.getSession().getAttribute("vo");
		  int result = DAO.getDelete(vo);
		  if(result>0){ 
			  // 실제 파일도 삭제 하기 (숙제)
			  String path = request.getServletContext().getRealPath("/upload");
			  String f_name = vo.getF_name();
			  try {
				  File file = new File(path+"/"+new String(f_name.getBytes("utf-8")));
				  if(file.exists()) {
					  file.delete();
				  }
			  }catch(Exception e){
			  }
			  return "MyController?cmd=list";
		  }
		return null;
	}
}
