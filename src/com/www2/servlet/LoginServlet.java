package com.www2.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.www2.dao.Userdaos;


public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doPost(request,response);
		response.setContentType("text/html");
	}
	 public void doPost(HttpServletRequest request, HttpServletResponse response)  
	            throws ServletException, IOException {  
	        request.setCharacterEncoding("utf-8");  
	        response.setContentType("text/html;charset=utf-8");  
	        String sid = request.getParameter("id");  
	       	long id = Long.parseLong(sid);
	        String password = request.getParameter("password");  
	        String verifyc  = request.getParameter("verifycode");
	        String svc =(String) request.getSession().getAttribute("sessionverify");  
	        
	        String psw =new Userdaos().findUsername(sid);  
	        if(!svc.equalsIgnoreCase(verifyc)){  
	        	//request.setAttribute("id", id);
	            request.setAttribute("msg1", "验证码错误！");  
	            request.getRequestDispatcher("/index1.jsp").forward(request, response);  
	            return;  
	        }  
	        if(psw ==null){
	        	request.setAttribute("id", id);  
	            request.setAttribute("msg2", "没有这个用户！");  
	            request.getRequestDispatcher("/index1.jsp").forward(request, response);  
	            return;  
	        }  
	        if(psw!=null&&!psw.equals(password)){  
	        	request.setAttribute("id", id);
	            request.setAttribute("msg3", "密码错误请重新输入！");  
	            request.getRequestDispatcher("/index1.jsp").forward(request, response);  
	            return;  
	        }  
	        if(psw.equals(password)){  
	            request.setAttribute("msg", "用户："+id+",欢迎访问");  
	            if(id==000000){
	            	
	            	 request.getRequestDispatcher("/manager1.jsp").forward(request, response);  
	            }
	            else{
	            request.getRequestDispatcher("/index.jsp").forward(request, response);  
	            HttpSession session = request.getSession();
	            session.setAttribute("id", id);
	            }
	        }  
	    }  
}