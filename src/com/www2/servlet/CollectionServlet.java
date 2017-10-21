package com.www2.servlet;

import java.io.IOException;
//import java.io.PrintWriter;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Collection;
import com.www2.dao.CollectionDao;
import com.www2.util.DButil;

public class CollectionServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		DButil.openConnection();
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		
		//收藏文章；
		if("/addarticle".equals(action)){
	    long id = (Long) request.getSession().getAttribute("id");
			 String sarticleId=request.getParameter("articleId");
			 int articleId=Integer.parseInt(sarticleId);
			 String articleTile=request.getParameter("articleTitle");
	//		 String url1= request.getRequestURL().toString();
			 CollectionDao cold=new CollectionDao();
			 cold.addarticle(id,articleId,articleTile);
		}
		
		//收藏课程；
		if("/addcourse".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
			 String course=request.getParameter("coursename");
			 String scourseId=request.getParameter("courseid");
			 int courseId=Integer.parseInt(scourseId);
			 CollectionDao cold=new CollectionDao();
			 cold.addcourse(id, course,courseId);
		}
		//收藏问题；
		if("/addquestion".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
			 String twcon=request.getParameter("twcon");
			 String stwconid=request.getParameter("twconid");
			 System.out.println("sa"+stwconid);
			 int twconid=Integer.parseInt(stwconid);
			 CollectionDao cold=new CollectionDao();
			 cold.addquestion(id, twcon,twconid);
		}
		
   // 个人中心显示收藏文章
		if("/showarticle".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
			CollectionDao cold=new CollectionDao();
			List<Collection> coln=cold.getshowarticle(id);
		    request.setAttribute("list",coln);
             JSONObject jsonObject=new JSONObject();
			    jsonObject.put("list", coln);
			    response.getWriter().write(jsonObject.toString());	
		}
		
		   // 个人中心显示收藏课程
		if("/showcourse".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
			CollectionDao cold=new CollectionDao();
			List<Collection> coln=cold.getshowcourse(id);
		    request.setAttribute("list",coln);
             JSONObject jsonObject=new JSONObject();
			    jsonObject.put("list", coln);
			    response.getWriter().write(jsonObject.toString());	
		}
		
		   // 个人中心显示收藏问题
		if("/showquestion".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
			CollectionDao cold=new CollectionDao();
			List<Collection> coln=cold.getshowquet(id);
		    request.setAttribute("list",coln);
             JSONObject jsonObject=new JSONObject();
			    jsonObject.put("list", coln);
			    response.getWriter().write(jsonObject.toString());	
		}

		}
	}


