package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.www2.bean.User;
import com.www2.util.DButil;

public class daohang extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		long id=(long) request.getSession().getAttribute("id");
		User user=new User();
		DButil.openConnection();
		String sql="select nickname,headp from userid where id="+id+"";
		try{
			ResultSet rs=DButil.executSql(sql);
			if(rs.next()){
			//user.setUserid(rs.getLong("id"));
			user.setNickname(rs.getString("nickname"));
			user.setSavedFileName(rs.getString("headp"));
			}
		//	long id2=user.getUserid();
			String nickname=user.getNickname();
			String headp=user.getSavedFileName();
			  HttpSession session = request.getSession();
			//    session.setAttribute("userid", id2);
	            session.setAttribute("nickname", nickname);
	            session.setAttribute("savedFileName", headp);
	        List<User> us=new ArrayList<>();
	        us.add(user);
	        request.setAttribute("list",us);
		    //用JSON 传数据给前台。
		    JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", us);
		    response.getWriter().write(jsonObject.toString());
		    return;
	        
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				DButil.closeConnection();
			}catch(SQLException e){
				e.printStackTrace();
			}
		} 
	}

}
