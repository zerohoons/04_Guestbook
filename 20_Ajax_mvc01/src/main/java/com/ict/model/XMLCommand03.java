package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XMLCommand03 {
	public String exec(HttpServletRequest requset, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("	<product price=\"1500\">");
		sb.append("		<name>포카리스웨트</name>");
		sb.append("</product>");
		sb.append("	<product price=\"1100\">");
		sb.append("		<name>암바사</name>");
		sb.append("</product>");
		sb.append("	<product price=\"1400\">");
		sb.append("		<name>게토레이</name>");
		sb.append("</product>");
		sb.append("	<product price=\"1200\">");
		sb.append("		<name>밀키스</name>");
		sb.append("</product>");
		sb.append("</products>");
		
		
		return sb.toString();
	}
}
