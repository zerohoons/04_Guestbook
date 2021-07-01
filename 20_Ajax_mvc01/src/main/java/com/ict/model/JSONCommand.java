package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JSONCommand {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("[{\"name\" : \"콜라\", \"price\" : \"750\"},");
		sb.append("{\"name\" : \"사이다\", \"price\" : \"850\"},");
		sb.append("{\"name\" : \"환타\", \"price\" : \"750\"},");
		sb.append("{\"name\" : \"맥콜\", \"price\" : \"950\"}]");
		return sb.toString();
	}
}
