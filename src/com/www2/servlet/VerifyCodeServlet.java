package com.www2.servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.www2.util.VerifyCode;

public class VerifyCodeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");  
	        response.setContentType("text/html;charset=utf-8");  
		VerifyCode vc = new VerifyCode();
		BufferedImage image = vc.getImage(90,30);
		request.getSession().setAttribute("sessionverify", vc.getText());
		VerifyCode.output(image, response.getOutputStream());
	}
}
