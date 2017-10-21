package com.www2.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.www2.bean.User;
import com.www2.dao.Userdaos;
import com.www2.util.DButil;

public class updatepwServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	   
		String pw=request.getParameter("password");
		String newpw=request.getParameter("newpassword");
		long id = (Long) request.getSession().getAttribute("id");

		User u=new User();
		 DButil.openConnection();
		  try{
		       	String sql="select *from userid where id='"+id+"'";
		       	ResultSet rs=DButil.executSql(sql);
		       	if(rs.first()){
		       	 u.setUserid(id);
		       	 u.setPassword(rs.getString("password"));		       	
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
	          	String oldpw=u.getPassword();
	          	if(!pw.equals(oldpw)){
/*	          		String k="key";
	          		 request.setAttribute("list",k );
	     			//用JSON 传数据给前台。
	     			JSONObject jsonObject = new JSONObject();
	     		    jsonObject.put("list", k);*/
	     			response.getWriter().write("1");
	     			return;			
	          	}
	        	u.setPassword(newpw);
          		Userdaos upp=new Userdaos();
          		 if(pw.equals(oldpw)){
	          		upp.uppw(u, id);
	          	}
		
}
}

