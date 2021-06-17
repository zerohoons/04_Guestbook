package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Ans_Write_Command;
import com.ict.model.Ans_Write_OK_Command;
import com.ict.model.Command;
import com.ict.model.Delete_Command;
import com.ict.model.Delete_OK_Command;
import com.ict.model.Down_Command;
import com.ict.model.List_Command;
import com.ict.model.Onelist_Command;
import com.ict.model.Update_Command;
import com.ict.model.Update_Ok_Command;
import com.ict.model.Write_Command;
import com.ict.model.Write_OK_Command;

/**
 * Servlet implementation class Mycon
 */
@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		
		if(cmd.equalsIgnoreCase("list")){
			comm = new List_Command();
		}else if (cmd.equalsIgnoreCase("write")) {
			comm = new Write_Command();
		}else if (cmd.equalsIgnoreCase("write_ok")) {
			comm = new Write_OK_Command();
		}else if (cmd.equalsIgnoreCase("onelist")) {
			comm = new Onelist_Command();
		}else if (cmd.equalsIgnoreCase("delete")) {
			comm = new Delete_Command();
		}else if (cmd.equalsIgnoreCase("update")) {
			comm = new Update_Command();
		}else if (cmd.equalsIgnoreCase("ans_write")) {
			comm = new Ans_Write_Command();
		}else if (cmd.equalsIgnoreCase("delete_ok")) {
			comm = new Delete_OK_Command();
		}else if (cmd.equalsIgnoreCase("ans_write_ok")) {
			comm = new Ans_Write_OK_Command();
		}else if (cmd.equalsIgnoreCase("edit_ok")) {
			comm = new Update_Ok_Command();
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
