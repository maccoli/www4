package com.www2.servlet;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class uploadServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("utf-8");
	    
	    String filePath = request.getParameter("filePath");
	    String fileName = filePath.substring(filePath.lastIndexOf("/")+1);
	    response.setHeader("Content-disposition", "attachment;filename=fileName");
	      try {
			File f = new File(filePath);
			  FileInputStream in = new FileInputStream(f);
			  OutputStream out = response.getOutputStream();
			  int n=0;
			  byte b[]=new byte[500];
			  while((n=in.read(b))!=-1)
				  out.write(b, 0, n);
			  out.close();
			  in.close();
		} catch (Exception exp) {
		}
	      
	}

}
