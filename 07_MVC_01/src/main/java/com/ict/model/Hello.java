package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello implements Command {
	@Override
public String exec(HttpServletRequest request, HttpServletResponse response){
	//결과를 보여줄 뷰에 대해서 리턴
	String result= "view/hello_result.jsp";
	
	//일처리 후 결과 저장.
	request.setAttribute("name", "홍길동");
	request.setAttribute("age", 25);
	request.setAttribute("gender", true);
	return result;
}
}
