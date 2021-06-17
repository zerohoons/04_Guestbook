package com.ict.model;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Down_Command {

public String exec(HttpServletRequest request, HttpServletResponse response) {
	FileInputStream fis = null;
	BufferedInputStream bis = null;
	BufferedOutputStream bos = null;
	
	try {
		String file_name = request.getParameter("file_name");
		String path = request.getServletContext().getRealPath("/upload");
		
		response.setContentType("application/x-msdownload");
		response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(file_name,"utf-8"));
		
		File file = new File(new String(path.getBytes("utf-8")));
		fis = new FileInputStream(file);
		bis = new BufferedInputStream(fis);
		bos = new BufferedOutputStream(response.getOutputStream());
		
		int b = 0;
		while((b=bis.read())!=-1) {
			bos.write(b);
			
		}
		bos.flush();
		
	} catch (Exception e) {
	}finally {
		try {
			bos.close();
			bis.close();
			fis.close();
		} catch (Exception e2) {
			// TODO: handle exception
		}
	}
	return null;
}
}
