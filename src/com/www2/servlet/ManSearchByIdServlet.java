package com.www2.servlet;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
//import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONObject;

import com.www2.bean.Group;
import com.www2.bean.User;
import com.www2.dao.BaseDaoImpl;
import com.www2.util.DButil;


public class ManSearchByIdServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doPost(request,response);
		response.setContentType("text/html");
	}

	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		ServletContext sctx = getServletContext();
		if("/manshow".equals(action)){	
		   long id = (Long) request.getSession().getAttribute("id");
		//	long id=111;
			BaseDaoImpl base1=new BaseDaoImpl();
			List<User> users=base1.getMan(id);
		    request.setAttribute("list",users );
		    //用JSON 传数据给前台。
		    JSONObject jsonObject = new JSONObject();
		    jsonObject.put("list", users);
		    response.getWriter().write(jsonObject.toString());
		    return;
		}
		if("/headshow".equals(action)){
		        long id = (Long) request.getSession().getAttribute("id");
					  DButil.openConnection();
						User u = new User();
						try{
					       	String sql="select *from userid where id='"+id+"'";
					       	ResultSet rs=DButil.executSql(sql);
					       	if(rs.first()){
					       	 u.setUserid(id);
					       /*	 u.setNickname(rs.getString("nickname"));
							 u.setSex(rs.getString("sex"));
							 u.setPersonsign(rs.getString("personsign"));
							 u.setPersonhonor(rs.getString("personhonor"));
							 u.setCotacti(rs.getString("cotacti"));
							 u.setGroupid(rs.getString("groupid"));*/
							 u.setSavedFileName(rs.getString("headp"));
					       	}
					       	request.setAttribute("user", u);
						}catch(SQLException e){
							e.printStackTrace();
						}finally{
							try{
								DButil.closeConnection();
							}catch(SQLException e){
								e.printStackTrace();
							}
	//	根据数数据库的图片名进行加载图片： ps:u.getSavedFileName()为从数据库加载的图片名称；
                    String t1 = System.getProperty("user.dir").substring(0,
					System.getProperty("user.dir").length() - 4);
					File picture = new File(request.getRealPath("/")+"/img/tx/"
						 + u.getSavedFileName());
					BufferedImage sourceImg = ImageIO.read(new FileInputStream(picture));
					String prefix = u.getSavedFileName().substring(u.getSavedFileName().lastIndexOf(".")+1);
					request.getRequestDispatcher(("/newcenter6.jsp?prefix="+prefix+"&width="
							+ sourceImg.getWidth() + "&height=" + sourceImg.getHeight()
							+ "&daxiao="+ String.format("%.1f", picture.length() / 1024.0))).forward(request, response);
		}
		}
	
		else if("/manupdate".equals(action)){
		long id = (Long) request.getSession().getAttribute("id");
//			long id=111;
			String nickname=request.getParameter("nickname");
			String sex=request.getParameter("sex");
			String personsign=request.getParameter("personsign");
			String personhonor=request.getParameter("personhonor");
			String cotacti=request.getParameter("cotacti");
			String groupid=request.getParameter("groupid");
			 User manmg= new User();
		     manmg.setNickname(nickname);
			 manmg.setSex(sex);
			 manmg.setPersonsign(personsign);
			 manmg.setPersonhonor(personhonor);
			 manmg.setCotacti(cotacti);
			 manmg.setGroupid(groupid);
			 BaseDaoImpl base1=new BaseDaoImpl();		 
			 base1.Pcenter(manmg, id);
		//	 request.getRequestDispatcher("newcenter5.jsp").forward(request, response);
		}

	else if("/uphead".equals(action)){
		long id = (Long) request.getSession().getAttribute("id");
    	 DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			List items = null;
			try {
				items = upload.parseRequest(request);
			} catch (FileUploadException e) {
				e.printStackTrace();
			} // 解析request请求
			Iterator iter = items.iterator();
			String filenametest=null;
			String prefix=null;
		/*	String nickname=request.getParameter("nickname");
			String sex=request.getParameter("sex");
			String personsign=request.getParameter("personsign");
			String personhonor=request.getParameter("personhonor");
			String cotacti=request.getParameter("cotacti");
			String groupid=request.getParameter("groupid");*/
			String fileName = null;
			String filename=null;
			Date newtime = new Date();
    	   while(iter.hasNext()){
    		      FileItem item = (FileItem) iter.next();
    		      
    		      if(item.isFormField()){
    		    	  String value = item.getString("UTF-8");
    		/*    	  if(item.getFieldName().equals("nickname")){
    		    		  nickname=value;
    		    	  }else if(item.getFieldName().equals("sex")){
    		    		  sex=value;
    		    	  }else if(item.getFieldName().equals("personhonor")){
    		    		 personhonor=value;
    		    	  }else if(item.getFieldName().equals("cotacti")){
    		    		  cotacti=value;
    		    	  }else if(item.getFieldName().equals("groupid")){
    		    		  groupid=value;
    		    	  }  
    		    	  else{
    		    		  personsign=value;
    		    	  }*/
    		      }else{
  					String fieldName = item.getFieldName(); // 文件域中name属性的值
  					filename = item.getName(); // 文件的全路径，绝对路径名加文件名
  					prefix = filename.substring(filename.lastIndexOf(".") + 1);
  					filenametest = String.valueOf(newtime.getTime());		//根据时间生成文件名称
  					File saveFile = new File(
  							sctx.getRealPath("/img/tx/")
  									+"/"+ filenametest + "." + prefix);// 定义一个file指向一个具体的文件
  					try {
  						if (fieldName.equals("file")) {
  							item.write(saveFile);// 把上传的内容写到一个文件中
  							fileName = filenametest + "." + prefix;
  						}
  					} catch (Exception e) {
  						System.out.println("文件为空");
  					}
    		      }
    	   }
		User manmg= new User();
		/* manmg.setNickname(nickname);
		 manmg.setSex(sex);
		 manmg.setPersonsign(personsign);
		 manmg.setPersonhonor(personhonor);
		 manmg.setCotacti(cotacti);
		 manmg.setGroupid(groupid);*/
		 manmg.setSavedFileName(fileName);
		 BaseDaoImpl base1=new BaseDaoImpl();		 
		 base1.Pcenter1(manmg, id);
		 request.getRequestDispatcher("newcenter6.jsp").forward(request, response);
		}
		}
	}

