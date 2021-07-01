package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TextCommand {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		
		//원래는 계산 및 DB처리를 해야한다.
		
		sb.append("1,홍길동,24,서울/");
		sb.append("2,둘리,14,경기도/");
		sb.append("3,도우너,35,강원도/");
		sb.append("4,또치,64,제주도");
		
		return sb.toString();
	}
}
