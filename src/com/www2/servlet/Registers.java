package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.omg.CORBA.PUBLIC_MEMBER;

import com.www2.bean.User;
import com.www2.dao.BaseDaoImpl;
import com.www2.util.DButil;

public class Registers extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
	    String sid=request.getParameter("id");
	    long id=Long.parseLong(sid);
	    String password=request.getParameter("password");
	    String verifyc  = request.getParameter("yanzhengma");
        String svc =(String) request.getSession().getAttribute("sessionverify");  
        User us=new User();
        DButil.openConnection();
        String sql="select id from userid where id="+id+"";
        try{
        	 ResultSet rs=DButil.executSql(sql);
        	 if(rs.next()){
        	 us.setUserid(rs.getLong("id"));
        	 }
        }catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				DButil.closeConnection();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
        if(us.getUserid() == 0){
  	  	  response.getWriter().write("1");
        	  User user=new User();
        	        user.setUserid(id);
        	        user.setPassword(password);
        	        BaseDaoImpl based =new BaseDaoImpl();
        	        if(svc==null){ 
        	        	return;
        	        }
        	        else  if(!svc.equalsIgnoreCase(verifyc)){ 
        	       
        	        session.setAttribute("msg", "ÑéÖ¤Âë´íÎó£¡");  
        	            //request.getRequestDispatcher("/regist2.jsp").forward(request, response);  
        	          return;   
        	        }  
        	        else
        	        { 
        	        based.add(user);
         	       response.getWriter().write("3");
         	       return;
        	        }
        }
        else{
    	  response.getWriter().write("2");
    	  return;
        }
	}	
}


