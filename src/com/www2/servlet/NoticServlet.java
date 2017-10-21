package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Contest;
import com.www2.bean.Recruitment;
import com.www2.bean.Simulation;
import com.www2.bean.Sustory;
import com.www2.dao.NoticDao;

public class NoticServlet extends HttpServlet {

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
		//显示学员故事
		if("/sustory".equals(action)){
	  //   long id=(Long)request.getSession().getAttribute("id");
         String ssuid = request.getParameter("parameter");
         int suid=Integer.parseInt(ssuid);
	     NoticDao ntd=new NoticDao();
	     List<Sustory> sust=ntd.getstory(suid);
	     JSONObject jsonObject = new JSONObject();
		 jsonObject.put("list", sust);
		 response.getWriter().write(jsonObject.toString());
		 return;
		}
		//显示大赛通知
		else if("/contest".equals(action)){
		//  long id=(Long)request.getSession().getAttribute("id");
		  String scid = request.getParameter("parameter");
		  int cid=Integer.parseInt(scid);
		     NoticDao ntd=new NoticDao();
		     List<Contest> contt=ntd.getcont(cid);
		     JSONObject jsonObject = new JSONObject();
			 jsonObject.put("list", contt);
			 response.getWriter().write(jsonObject.toString());
			 return; 
		}
		//显示招聘信息：
		else if("/recruitment".equals(action)){
			 // long id=(Long)request.getSession().getAttribute("id");
			  String srid = request.getParameter("parameter");
			  int rid=Integer.parseInt(srid);
			     NoticDao ntd=new NoticDao();
			     List<Recruitment> rect=ntd.getrecit(rid);
			     JSONObject jsonObject = new JSONObject();
				 jsonObject.put("list", rect);
				 response.getWriter().write(jsonObject.toString());
				 return; 
			}
		//显示实训任务：
		else if("/simulaiton".equals(action)){
			//  long id=(Long)request.getSession().getAttribute("id");
			  String ssnid = request.getParameter("parameter");
			  int snid=Integer.parseInt(ssnid);
			     NoticDao ntd=new NoticDao();
			     List<Simulation> simu=ntd.getsimun(snid);
			     JSONObject jsonObject = new JSONObject();
				 jsonObject.put("list", simu);
			     response.getWriter().write(jsonObject.toString());
				 return; 
			}
	}

}
