package com.www2.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Course;
import com.www2.bean.Group;
import com.www2.bean.Search;
import com.www2.bean.Sharearticle;
import com.www2.bean.Video;
import com.www2.dao.SearchDao;

public class SearchServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		//模糊查询之多表搜索：(测试)
		if("/searchtest".equals(action)){
		 String keyword=request.getParameter("keyword");
		 SearchDao sear1=new SearchDao();
		    List<Search> articles=sear1.getArticles(keyword);
		    request.setAttribute("articles", articles);
	    
		 SearchDao sear2=new SearchDao();
		 List<Search> arts=sear2.getArt(keyword);
		 request.setAttribute("arts", arts);
		 
		 request.getRequestDispatcher("/searchTest.jsp").forward(request, response);
		}
		//展示所有的课程；
		else if("/showAllkc".equals(action)){
			//显示头像；
			long id=(long) request.getSession().getAttribute("id");
			String nickname=(String) request.getSession().getAttribute("nickname");
			String tx=(String) request.getSession().getAttribute("headp");
			//显示所有课程信息；
			SearchDao searall=new SearchDao();
			List<Course> vall=searall.getAllkc();
			request.setAttribute("list", vall);
			 //用JSON 传数据给前台。
			JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", vall);
			response.getWriter().write(jsonObject.toString());
			return;
		}

		//搜索课程;
		else if("/searchCourse".equals(action)){
			 String keyword=request.getParameter("searchval");
			 SearchDao searc=new SearchDao();
			 List<Course> cous=searc.getcourses(keyword);
			 request.setAttribute("list", cous);
			 //用JSON 传数据给前台。
			 JSONObject jsonObject = new JSONObject();
			 jsonObject.put("list", cous);
			 response.getWriter().write(jsonObject.toString());
			 return;
		}
		//搜索分享文章；
		else if("/searchShare".equals(action)){
			String keyword=request.getParameter("key");
			SearchDao sears=new SearchDao();
			List<Sharearticle> arts=sears.getcshares(keyword);
			 request.setAttribute("list", arts);
			 //用JSON 传数据给前台。
			 JSONObject jsonObject = new JSONObject();
			 jsonObject.put("list", arts);
			 response.getWriter().write(jsonObject.toString());
			 return;
		}
		//展示所有的课程；
		else if("/showAllfx".equals(action)){
		/*	//显示头像；
			long id=(long) request.getSession().getAttribute("id");
			String nickname=(String) request.getSession().getAttribute("nickname");
			String tx=(String) request.getSession().getAttribute("headp");*/
			//显示所有课程信息；
			SearchDao searall=new SearchDao();
			List<Sharearticle> sall=searall.getAllfx();
			request.setAttribute("list",sall);
			 //用JSON 传数据给前台。
			JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", sall);
			response.getWriter().write(jsonObject.toString());
			return;
		}
		
		//搜索小组；
		else if("/searchTeam".equals(action)){
			String keyword=request.getParameter("key");
			SearchDao sears=new SearchDao();
			List<Group> groups=sears.gettshares(keyword);
			 request.setAttribute("list", groups);
			 //用JSON 传数据给前台。
			 JSONObject jsonObject = new JSONObject();
			 jsonObject.put("list", groups);
			 response.getWriter().write(jsonObject.toString());
			 return;
		}
		else if("/showAllteam".equals(action)){
				//显示所有小组信息；
				SearchDao searall=new SearchDao();
				List<Group> gall=searall.getAllteam();
				request.setAttribute("list",gall);
				 //用JSON 传数据给前台。
				JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", gall);
				response.getWriter().write(jsonObject.toString());
				return;
			}
			
	}

}
