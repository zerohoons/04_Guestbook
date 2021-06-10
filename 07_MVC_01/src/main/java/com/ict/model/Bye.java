package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Bye implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response){
		//결과를 보여줄 뷰에 대해서 리턴
		String result= "view/bye_result.jsp";
		
		//일처리 후 결과 저장
		String[] person = {"손흥민","토트넘","1992년생","강원도"};
		request.setAttribute("person", person);
		return result;
	}
}
