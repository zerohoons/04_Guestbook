package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XMLCommand02 {
	public String exec(HttpServletRequest requset, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("	<product name=\"이온음료\" price=\"800\" />");
		sb.append("	<product name=\"스포츠음료\" price=\"1000\" />");
		sb.append("	<product name=\"탄산음료\" price=\"9000\" />");
		sb.append("	<product name=\"커피음료\" price=\"1500\" />");
		sb.append("</products>");
		
		
		return sb.toString();
	}
}
