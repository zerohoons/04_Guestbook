package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Bye;
import com.ict.model.Command;
import com.ict.model.Hello;
import com.ict.model.Hi;
import com.ict.model.gradecal;

@WebServlet("/Mycontroller")
public class Mycontroller extends HttpServlet{
	private static final long serialVersionUID = 1L;
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String path = null;
		Command comm = null;
		String cmd = request.getParameter("cmd");
		if(cmd.equalsIgnoreCase("hello")) {
			comm = new Hello();
		}else if(cmd.equalsIgnoreCase("hi")) {
			comm = new Hi();
		}else if(cmd.equalsIgnoreCase("bye")) {
			comm = new Bye();
		}else if(cmd.equalsIgnoreCase("cal")) {
			comm = new gradecal();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
