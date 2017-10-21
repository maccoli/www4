package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Coursetest;
import com.www2.dao.CoursetestDao;

public class CoursetestServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id=request.getParameter("parameter");
		CoursetestDao cosd=new CoursetestDao();
		List<Coursetest> cour1=cosd.getCour1(id);
		request.setAttribute("list", cour1);
		//用JSON 传数据给前台。
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("list", cour1);
		response.getWriter().write(jsonObject.toString());
		return;
	}

}
