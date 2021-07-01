package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.TextCommand;
import com.ict.model.XMLCommand01;

/**
 * Servlet implementation class MyController
 */
@WebServlet("/MyController02")
public class MyController02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyController02() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//해당 문서의 타입마다 setContentType이 달라짐.
		//XML의 경우
		response.setContentType("text/xml; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		XMLCommand01 xml01 = new XMLCommand01();
		String msg = xml01.exec(request, response);
		
		out.print(msg);
	}

}
