package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class DeleteOkCommand implements Command{
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String cPage = request.getParameter("cPage");
		
		// 댓글이 없으면 삭제가 가능하지만, 있으면 삭제가 불가능 하다.
		// 댓글과 게시글의 참조 무결성(외래키로 연결되어있기 때문에)조건에 의해 오류가 발생한다.
		
		BVO bvo = (BVO)request.getSession().getAttribute("bvo");
		int result = DAO.getDelete(bvo);
		if(result >0) {
			String path = request.getServletContext().getRealPath("/upload");
			String file_name = bvo.getFile_name();
			try {
				File file = new File(path + "/" + new String(file_name.getBytes("utf-8")));
				if(file.exists()) file.delete();
			} catch (Exception e) {
			}
			return "MyController?cmd=list&cPage"+cPage;
		}
		
		return null;
		
	}
}
