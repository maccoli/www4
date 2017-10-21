package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.User;
import com.www2.dao.AttentionDao;

public class AttentionServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		
		//添加关注
		if("/addatten".equals(action)){
			Long id=(Long) request.getSession().getAttribute("id");
			String sattentid=request.getParameter("parameter");
			Long attentid=Long.parseLong(sattentid);
			AttentionDao att=new AttentionDao();
			att.addattent(id, attentid);
		}
		
		//删除关注
		else if("/cancle".equals(action)){
			Long id=(Long) request.getSession().getAttribute("id");
			String sattentid=request.getParameter("attentid");
			Long attentid=Long.parseLong(sattentid);
			AttentionDao catt=new AttentionDao();
			catt.cancleattent(id, attentid);
		}
		
		//显示关注人
		else if("/showatten".equals(action)){
			Long id=(Long)request.getSession().getAttribute("id");
			AttentionDao att1=new AttentionDao();
			List<User> aus=att1.getAttent(id);
			request.setAttribute("list", aus);
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("list", aus);
			response.getWriter().write(jsonObject.toString());
			return;
		}
	}

}
