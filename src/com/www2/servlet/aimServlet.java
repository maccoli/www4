package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.mchange.v2.c3p0.impl.NewPooledConnection;
import com.mchange.v2.naming.JavaBeanObjectFactory;
import com.www2.bean.Useraim;
import com.www2.dao.BaseDaoImpl;
import com.www2.dao.CollectionDao;
import com.www2.dao.DeleteminDao;
import com.www2.util.JdbcUtils;

public class aimServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request,  HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		// 提交今日目标；
	if("/aimadd".equals(action)){
	    String aim=request.getParameter("aim");	    
	   long id = (Long) request.getSession().getAttribute("id");
	    Useraim uaim=new Useraim();
	    uaim.setAim(aim);
	   
		Connection con = null;
		PreparedStatement pst = null;
		String sql = "insert into todayaim(aim,stime,id)"
				+ " values(?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setString(1, aim);
    	    SimpleDateFormat stm=new SimpleDateFormat("yyyy-MM-dd");
            pst.setObject(2,new java.util.Date());
            pst.setLong(3, id);
			pst.executeUpdate();
            con.close();
			pst.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}	
	} 
	// 提交本周目标
	else if("/waimadd".equals(action)){
	    String waim=request.getParameter("con");
	    String ds= request.getParameter("wtime");
	    DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
	    
	  Date date=null;
	  date = Date.valueOf(ds);
	   long id = (Long) request.getSession().getAttribute("id");
	    Useraim wuaim=new Useraim();
	    wuaim.setAim(waim);
		Connection con = null;
		PreparedStatement pst = null;
		String sql = "insert into weekaim(waim,wtime,stime,id)"
				+ " values(?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setString(1, waim);
            pst.setDate(2, date);
        //    pst.setObject(2,new java.sql.Date(date.getTime()) );
            //提交的时间字符型转化为Date型；
     	    SimpleDateFormat stm=new SimpleDateFormat("yyyy-MM-dd");
            pst.setObject(3, new java.util.Date());
            pst.setLong(4, id);
			pst.executeUpdate();
            con.close();
			pst.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	else if("/upfinish".equals(action)){
	long id = (Long) request.getSession().getAttribute("id");
	//	long id=111;
		String table=request.getParameter("table");
		String aim=request.getParameter("aim");
		String fia=request.getParameter("finish");
		//修改今日目标状态
		if(table.equals("todayaim")){
		//前台传过来是一个字符串的形式，所以对“” 去掉。
		if(aim.indexOf("\"")==0) aim = aim.substring(1,aim.length());   //去掉第一个 "
	 	if(aim.lastIndexOf("\"")==(aim.length()-1)) aim = aim.substring(0,aim.length()-1);  //去掉最后一个 "
	 	
	 	if(fia.indexOf("\"")==0) fia = fia.substring(1,fia.length());   //去掉第一个 "
	 	if(fia.lastIndexOf("\"")==(fia.length()-1)) fia = fia.substring(0,fia.length()-1);  //去掉最后一个 " 
	    //对字符串李“,”剔除；
	 	String[] aims=aim.split(",");
	 	String[] fias=fia.split(",");
	 	for(int i=0;i<fias.length;i++){
	 		System.out.println(fias[i]);
	 	}
	 	for(int i=0;i<aims.length;i++){
	 		System.out.println(aims[i]);
	 	}
	  //HashMap<k,p>  k是字，p是值。
       HashMap<String, String> values=new HashMap<>();
       for(int i=0;i<fias.length;i++){
    	   values.put(aims[i], fias[i]);
       }
       System.out.println(values.toString());
		    BaseDaoImpl base5=new BaseDaoImpl();
		    base5.fupdate(values,id,table);

		}
		//修改本周目标状态；
		else if(table.equals("weekaim")){
			String waim=request.getParameter("waim");
			String wfia=request.getParameter("wfinish");
			//前台传过来是一个字符串的形式，所以对“” 去掉。
			if(waim.indexOf("\"")==0) waim = waim.substring(1,waim.length());  
		 	if(waim.lastIndexOf("\"")==(waim.length()-1)) waim = waim.substring(0,waim.length()-1);  
		 	
		 	if(wfia.indexOf("\"")==0) wfia = wfia.substring(1,wfia.length());  
		 	if(wfia.lastIndexOf("\"")==(wfia.length()-1)) wfia = wfia.substring(0,wfia.length()-1); 

			String[] waims=waim.split(",");
			String[] wfias=wfia.split(",");
		    HashMap<String, String> values=new HashMap<>();
		    for(int i=0;i<wfias.length;i++){
		    	values.put(waims[i], wfias[i]);
		    }
		     System.out.println(values.toString());
		     BaseDaoImpl base5=new BaseDaoImpl();
		     base5.fupdate2(values,id,table);
		}
	}	
	/*
	else if("/upfinish".equals(action)){
		String size  =request.getParameter("size");
		int size1 = Integer.valueOf(size);
		List<String> stimes = new LinkedList<>();
		for (int i = 1; i <=size1; i++) {
			String info  = request.getParameter(String.valueOf(i));
			stimes.add(info);
			// 进行分解；例如：1$abc;  1="substring(0,info.lastIndexOf("$"));"
			String fia=info.substring(0,info.lastIndexOf("$"));
		    Useraim fi=new Useraim();
		    fi.setFinish(fia);
		    BaseDaoImpl base5=new BaseDaoImpl();
		    例如：abc=substring(info.lastIndexOf("$")+1);
            String stimes1 = info.substring(info.lastIndexOf("$")+1);
	     SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			java.util.Date stime = sdf.parse(stimes1);
		    base5.fupdate(fi,stime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	    
		}
		request.getRequestDispatcher("newcenter.jsp").forward(request,
				response);
	}*/
	// 显示今日目标
		else if("/showaim".equals(action)){
		    long id = (Long) request.getSession().getAttribute("id");
		    BaseDaoImpl base3=new BaseDaoImpl();
		    List<Useraim> useraims=base3.getAim(id);
		    request.setAttribute("list", useraims);
		    //用JSON 传数据给前台。
		    JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", useraims);
		   response.getWriter().write(jsonObject.toString());
		    return;
		}
	// 显示本周目标；
		else if("/showwaim".equals(action)){
			long id = (Long) request.getSession().getAttribute("id");
		//	long id=111;
			BaseDaoImpl base4=new BaseDaoImpl();
			List<Useraim> wuseraims=base4.getwAim(id);
		    request.setAttribute("list", wuseraims);
			//用JSON 传数据给前台。
			JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list",  wuseraims);
			response.getWriter().write(jsonObject.toString());
			return;			
		}
	
	else if("/delTr".equals(action)){
		long id = (Long) request.getSession().getAttribute("id");
	//	long id=111;
        //删除今日目标；
		String table=request.getParameter("table");
		String bn=request.getParameter("con");
	//	String bn = new String(request.getParameter("con").getBytes("iso-8859-1"), "utf-8");
		if(table.equals("todayaim")){
        DeleteminDao delt=new DeleteminDao();
        delt.deltodayaim(bn, table,id);
		}
        //删除本周目标；
		else if(table.equals("weekaim")){
        String wn=request.getParameter("con");
        DeleteminDao delt2=new DeleteminDao();
        delt2.delweekaim(wn, table, id);
		}
       
		//删除收藏文章
		else if(table.equals("coarticle")){
			 String sarticle=request.getParameter("con");
		//	 int artId=Integer.parseInt(sarticleId);
			CollectionDao cold=new CollectionDao();
			cold.delarticle(id,sarticle,table);
		}
		//删除收藏课程
		else if(table.equals("cocourse")){
			 String scourse=request.getParameter("con");
			// int courseId=Integer.parseInt(scourseId);
			CollectionDao cold=new CollectionDao();
			cold.delcourse(id,scourse,table);
		}
		//删除收藏问题
		else if(table.equals("coquestion")){
			 String sque=request.getParameter("con");
			// int queId=Integer.parseInt(squeId);
			CollectionDao cold=new CollectionDao();
			cold.delquestion(id,sque,table);
		}
	}
}
}
	

