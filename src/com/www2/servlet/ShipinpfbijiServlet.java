package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.BiJi;
import com.www2.dao.ShipinpfbijiDao;

public class ShipinpfbijiServlet extends HttpServlet {

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
	
		//添加笔记；
		if("/addbiji".equals(action)){
		  long userId = (Long) request.getSession().getAttribute("id");
		  String nickname=(String)request.getSession().getAttribute("nickname");
		  String headp=(String)request.getSession().getAttribute("savedFileName");
			String sspid=request.getParameter("videoid");
			int spid=Integer.parseInt(sspid);
			String bijicon=request.getParameter("bijicon");
			ShipinpfbijiDao spdao=new ShipinpfbijiDao();
			spdao.addbiji(spid, bijicon, userId, nickname, headp);
		}
		
		else if("/showbiji".equals(action)){
			String sspid=request.getParameter("videoid");
			int spid=Integer.parseInt(sspid);
			ShipinpfbijiDao spdao=new ShipinpfbijiDao();
			List<BiJi> bijis=spdao.getbiji(spid);
			 request.setAttribute("list",bijis);
			    //用JSON 传数据给前台。 JSON是一种数据格式；
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", bijis);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
	}

}
