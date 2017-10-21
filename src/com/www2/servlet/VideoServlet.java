package com.www2.servlet;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.www2.bean.Video;
import com.www2.util.DButil;

public class VideoServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
         doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		ServletContext sctx = getServletContext();
	    
	    long uid = (Long) request.getSession().getAttribute("id");
	     String vname=(String) request.getSession().getAttribute("vname");
	    
        DButil.openConnection();
		Video v=new Video();
		try{
	       	String sql="select * from video where vname='"+vname+"'";
	       	ResultSet rs=DButil.executSql(sql);
	       	if(rs.first()){
	     //   v.setVid(vid);
	        v.setVname(vname);
	        v.setVlname(rs.getString("vlname"));
	        v.setVsname(rs.getString("vsname"));
	        v.setVpic(rs.getString("vpic"));
	        v.setVlook(rs.getString("vlook"));
	        v.setVsurl(rs.getString("vsurl"));
	        v.setVlan(rs.getString("vlan"));
	        v.setVpf(rs.getString("vpf"));
	        v.setVtime(rs.getString("vtime"));
	        v.setVson(rs.getString("vson"));
	        v.setUid(uid);
	       	}
	       	request.setAttribute("video", v);
      	request.getRequestDispatcher("....jsp").forward(request, response);
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				DButil.closeConnection();
			}catch(SQLException e){
				e.printStackTrace();
			}
	}
   if("/bofan".equals(action)){
	   System.out.println("aa"+v.getVsname());
	   String vsname=v.getVsname();
	//    String vsname=(String) request.getSession().getAttribute("vsname");
	   DButil.openConnection();
		//	Video v1=new Video();
			try{
		       	String sql="select *from video where vsname='"+vsname+"'";
		       	ResultSet rs=DButil.executSql(sql);
		       	if(rs.first()){
		        v.setVlname(rs.getString("vlname"));
		        v.setVsname(vsname);
		        v.setUid(uid);
		       	}
		       	request.setAttribute("video", v);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					DButil.closeConnection();
				}catch(SQLException e){
					e.printStackTrace();
				}
				String t1 = System.getProperty("user.dir").substring(0,
						System.getProperty("user.dir").length() - 4);
				File video = new File(request.getRealPath("/")+"/work/video/"
					 + v.getVsname());
				BufferedImage sourceImg = ImageIO.read(new FileInputStream(video));
				String prefix = v.getVsname().substring(v.getVsname().lastIndexOf(".")+1);
				request.getRequestDispatcher(("/xxxx.jsp?prefix="+prefix+"&width="
						+ sourceImg.getWidth() + "&height=" + sourceImg.getHeight()
						+ "&daxiao="+ String.format("%.1f", video.length() / 1024.0))).forward(request, response);
		}
   }
   
	}
}
