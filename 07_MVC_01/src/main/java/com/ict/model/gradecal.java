package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class gradecal implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response){
		String result = "view/grades_result.jsp";
		
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int sum = kor+eng+math;
		double avg = (int)((double)(sum/3)*100)/100;
		
		request.setAttribute("name", name);
		request.setAttribute("kor", kor);
		request.setAttribute("eng", eng);
		request.setAttribute("math", math);
		request.setAttribute("sum", sum);
		request.setAttribute("avg", avg);
		return result;
	}
}
