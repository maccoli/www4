package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class QuitServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	    HttpSession session = request.getSession();
	    session.removeAttribute("id");
	    session.removeAttribute("nickname");
	    session.removeAttribute("headp");
	    request.getRequestDispatcher("/index1.jsp").forward(request, response);  
	}

}
