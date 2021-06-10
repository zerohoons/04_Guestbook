package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hi implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response){
		//결과를 보여줄 뷰에 대해서 리턴
		String result= "view/hi_result.jsp";
		
		//일처리 후 결과 저장.
		request.setAttribute("country", "대한민국");
		request.setAttribute("city", "서울");
		return result;
	}
}
