package com.www2.servlet;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONObject;

import com.www2.bean.Group;
import com.www2.bean.User;
import com.www2.dao.BaseDaoImpl;
import com.www2.util.DButil;


public class GroupServlet extends HttpServlet {

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
		ServletContext sctx = getServletContext();
		
		if("/showgroup".equals(action)){
			  long id = (Long) request.getSession().getAttribute("id");
			    User us=new User();
			  DButil.openConnection();
			  ResultSet rs;
			  String sql="select groupid from userid where id = "+id+"";
			  try{
				    rs=DButil.executSql(sql);
				   while(rs.next()){
                        us.setGroupid(rs.getString("groupid"));
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
			   if(us.getGroupid()==null){
				   response.getWriter().write("0");
				   return;
			   }
			   else {
				//   List<User> users=new ArrayList<>();
				   String sgroupid=us.getGroupid();
				   long groupid = Long.parseLong(sgroupid);
			  // 显示小组基本信息；
					BaseDaoImpl base1=new BaseDaoImpl();
					List<Group> gps=base1.getGroup(groupid);
				    request.setAttribute("list",gps);
				    //用JSON 传数据给前台。
				    JSONObject jsonObject = new JSONObject();
				    jsonObject.put("list", gps);
				//显示小组成员信息；
				    DButil.openConnection();		    
				    User uss=new User();
		            BaseDaoImpl base2=new BaseDaoImpl();
		            List<User> gps2=base2.getGroup2(groupid);
				    request.setAttribute("list2",gps2);
				    jsonObject.put("list2", gps2);
				    response.getWriter().write(jsonObject.toString());
			    HttpSession session = request.getSession();
			    String sgid=us.getGroupid();
			    long gid =Long.parseLong(sgid);
	            session.setAttribute("groupid", gid);
				}
		}
		else if("/showgrouph".equals(action)){
		  //  long id = (Long) request.getSession().getAttribute("id");
		    Long groupid=(long) request.getSession().getAttribute("groupid");
	        DButil.openConnection();
			Group g=new Group();
			try{
		       	String sql="select *from team where groupid='"+groupid+"'";
		       	ResultSet rs=DButil.executSql(sql);
		       	if(rs.first()){
				 g.setGroupp(rs.getString("groupp"));
		       	}
		       	request.setAttribute("group", g);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					DButil.closeConnection();
				}catch(SQLException e){
					e.printStackTrace();
				}
			/*	String t1 = System.getProperty("user.dir").substring(0,
							System.getProperty("user.dir").length() - 4);*/
					File picture = new File(request.getRealPath("/")+"/img/tx/"
						 + g.getGroupp());
					BufferedImage sourceImg = ImageIO.read(new FileInputStream(picture));
					String prefix = g.getGroupp().substring(g.getGroupp().lastIndexOf(".")+1);
					request.getRequestDispatcher(("/newcenter6.jsp?prefix="+prefix+"&width="
							+ sourceImg.getWidth() + "&height=" + sourceImg.getHeight()
							+ "&daxiao="+ String.format("%.1f", picture.length() / 1024.0))).forward(request, response);
		}
	}
		else if("/updategroup".equals(action)){
	//	long id = (Long) request.getSession().getAttribute("id");
			String sgroupid=request.getParameter("groupid");
			long groupid=Long.parseLong(sgroupid);
			String groupaim=request.getParameter("groupaim");
			String groupaims=request.getParameter("groupaims");
			String grouphonor=request.getParameter("grouphonor");
			 Group gp2=new Group();
		     gp2.setGroupaim(groupaim);
			 gp2.setGroupaims(groupaims);
			 gp2.setGrouphonor(grouphonor);
			 BaseDaoImpl based=new BaseDaoImpl();		 
			 based.Groups(gp2, groupid);
		}
       
		else if("/upgrouph".equals(action)){
			long groupid=(long) request.getSession().getAttribute("groupid");
		 //  long id = (Long) request.getSession().getAttribute("id");
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
					String fileName = null;
					String filename=null;
					Date newtime = new Date();
		    	   while(iter.hasNext()){
		    		      FileItem item = (FileItem) iter.next();
		    		      if(item.isFormField()){
		    		    	  String value = item.getString("UTF-8");
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
				 BaseDaoImpl basep=new BaseDaoImpl();		 
				 basep.Groupp(fileName, groupid);
		}
		
	}
}