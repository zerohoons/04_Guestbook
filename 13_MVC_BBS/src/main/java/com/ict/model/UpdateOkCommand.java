package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpdateOkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			String cPage = request.getParameter("cPage");
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr =
					new MultipartRequest(request, path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			BVO bvo2 = (BVO)request.getSession().getAttribute("bvo");
			
			BVO bvo = new BVO();
			
			bvo.setB_idx(bvo2.getB_idx());
			bvo.setContent(mr.getParameter("content"));
			bvo.setSubject(mr.getParameter("subject"));
			bvo.setPwd(mr.getParameter("pwd"));
			bvo.setWriter(mr.getParameter("writer"));
			//파일처리
			
			String old_file_name = mr.getParameter("old_file_name");
			
			if(mr.getFile("file_name")==null) {
				bvo.setFile_name(old_file_name);
			}else {
				bvo.setFile_name(mr.getFilesystemName("file_name"));				
			}
			
			//DB업데이트 처리
			int result = DAO.getUpdate(bvo);
			if(result>0) {
				String file_name = bvo.getFile_name();
				try {
					if(!bvo.getFile_name().equals(old_file_name)) {
						
					File file = new File(path + "/" + new String(file_name.getBytes("utf-8")));
					if(file.exists()) file.delete();
					}
				} catch (Exception e) {
				}
				return "MyController?cmd=onelist&b_idx="+bvo.getB_idx()+"&cPage="+cPage;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
