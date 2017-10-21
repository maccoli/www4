package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Sharearticle;
import com.www2.bean.User;
import com.www2.dao.BaseDaoImpl;
import com.www2.dao.SharearticleDao;
import com.www2.dao.ShowotherDao;

public class OtherServlet extends HttpServlet {
      
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
		
		//���˸������Ļ�������
		if("/showother".equals(action)){	
		 //  long hisid = (Long) request.getSession().getAttribute("parameter");
			String shisid=request.getParameter("parameter");
			long hisid=Long.parseLong(shisid);
			ShowotherDao show1=new ShowotherDao();
			List<User> users=show1.getMan(hisid);
		    request.setAttribute("list",users);
		    //��JSON �����ݸ�ǰ̨��
		    JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", users);
		    response.getWriter().write(jsonObject.toString());
		    return;
		}
		//���˸������ķ������ϣ�
		else if("/fshowother".equals(action)){
			String shisid=request.getParameter("parameter");
			long hisid=Long.parseLong(shisid);
			 ShowotherDao ashaDao=new ShowotherDao();
			 List<Sharearticle> hshae=ashaDao.getHshare(hisid);
			 request.setAttribute("list",hshae);
			    //��JSON �����ݸ�ǰ̨��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", hshae);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
	}

}
