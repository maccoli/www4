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

import org.hibernate.mapping.Array;
import org.hibernate.sql.Delete;
import org.json.JSONObject;

import com.www2.bean.Appgroup;
import com.www2.bean.User;
import com.www2.dao.DeleteminDao;
import com.www2.dao.GroupDao;
import com.www2.util.DButil;

public class ApplicantServlet extends HttpServlet {

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
		
		//申请小组；
		if("/addgroup".equals(action)){
			long id=(long) request.getSession().getAttribute("id");
			String applicant=(String) request.getSession().getAttribute("nickname");
			String applh=(String) request.getSession().getAttribute("savedFileName");
			String sgroupid=request.getParameter("group");
			long groupid=Long.parseLong(sgroupid);
			GroupDao gd=new GroupDao();
			gd.addgroup(id,applicant,applh,groupid);
		}
		
		//新建小组：
		if("/xingroup".equals(action)){
			//新建小组，暂设户名为小组内容；
			long id=(long) request.getSession().getAttribute("id");
			String groupname=request.getParameter("groupname");
			GroupDao xgd=new GroupDao();
			xgd.xingroup(groupname,id);
			//给新建用户设置队长属性；
	        GroupDao xgd2=new GroupDao();
	        xgd2.xingroup2(id);
	        
		}
		
		
		//个人中心：
		//判断为队长， 接收他人申请加入小组消息；
		else if("/fagroupid".equals(action)){
			List<Appgroup> appg=new ArrayList<>();
			long id=(long) request.getSession().getAttribute("id");
			User us=new User();
			DButil.openConnection();
			ResultSet rs,rs1;
			String sql="select captain,groupid from userid where id="+id+"";
		    try{  
		    	 rs=DButil.executSql(sql);
		    	 while(rs.next()){
		        us.setCaptain(rs.getString("captain"));
		        us.setGroupid(rs.getString("groupid"));
		    	 }
		       if(us.getCaptain().equals("1")){
		    	   Appgroup ag=new Appgroup();
		    	   String sql1="select * from application where groupid="+us.getGroupid()+"";
		    	   rs1=DButil.executSql(sql1);
		    	   while(rs1.next()){
			    	   ag.setApplicant(rs1.getString("applicant"));
			    	   ag.setApplid(rs1.getInt("applid"));
			    	   ag.setApplh(rs1.getString("applh"));
			    	   ag.setGroupid(rs1.getLong("groupid"));
			    	   appg.add(ag);
		    	   }
		    	   request.setAttribute("list", appg);
		    	   JSONObject jsonObject=new JSONObject();
		    	   jsonObject.put("list", appg);
		    		response.getWriter().write(jsonObject.toString());
					return;			
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
		}
		//同意申请加小组；
		else if("/tyadd".equals(action)){
			//long id=(long) request.getSession().getAttribute("id");
			String sapplid=request.getParameter("applid");
			long applid=Long.parseLong(sapplid);
			String sgroupid=request.getParameter("groupid");
			long groupid=Long.parseLong(sgroupid);
			GroupDao gdt=new GroupDao();
			gdt.upgroup(applid, groupid);
			DeleteminDao delt=new DeleteminDao();
			delt.delappl2(applid, groupid);
		}
		//删除申请小组者；
		else if("/delappl".equals(action)){
			String sapplid=request.getParameter("applid");
			long applid=Long.parseLong(sapplid);
			String sgroupid=request.getParameter("groupid");
			Long groupid=Long.parseLong(sgroupid);
			String table=request.getParameter("table");
			if(table.equals("application")){
				DeleteminDao del1=new DeleteminDao();
				del1.delappl(applid, groupid, table);
			}
		}
		
	}

}
