package com.www2.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.Sharearticle;
import com.www2.bean.User;
import com.www2.dao.SharearticleDao;
import com.www2.util.DButil;

public class SharearticleServelt extends HttpServlet {

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
		//�������£�
		if("/warticle".equals(action)){
	      long id = (Long) request.getSession().getAttribute("id");
		//	long id=111;
		   String artitem=request.getParameter("articleTitle");
		   String artcon=request.getParameter("articleCon");
		   String type=request.getParameter("articleType");
		   User us=new User();
		   DButil.openConnection();
		   String sql1="select headp,nickname from userid where id="+id+"";
		   try{
			      ResultSet rs=DButil.executSql(sql1);
			      //if ִֻ��һ�Ρ�  while ѭ��ִ�С�
			      if(rs.next()){
			    	  us.setSavedFileName(rs.getString("headp"));
			    	  us.setNickname(rs.getString("nickname"));
			      }
			   //�ӵ����� ����˵����������ֵ���ַ�����
		     //  SimpleDateFormat stm=new SimpleDateFormat("yyyy-MM-dd");
			      // util.date �� ת���� sql��date�ͣ�
		       Date date=new java.sql.Date(new Date().getTime());
		       
			   String sql2="insert into share(id,articletitle,articlecon,nickname,headp,type,articletime) values("+"'"+id+"'"+","+"'"+artitem+"'"+","+"'"
			   +artcon+"'"+","+"'"+us.getNickname()+"'"+","+"'"+us.getSavedFileName()+"'"+","+"'"+type+"'"+","+"'"+date+"'"+")";
			   boolean bn = DButil.executNoSql(sql2);
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
		//��ʾ���˵ķ���-��������
		else if("/showarticle".equals(action)){
			 long id = (Long) request.getSession().getAttribute("id");
			 SharearticleDao shaDao=new SharearticleDao();
			 List<Sharearticle> ishae=shaDao.getIshare(id);
			 request.setAttribute("list",ishae);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", ishae);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		//��ʾ��ע�˵ķ���̬��
		else if("/showarticles".equals(action)){
			 long id = (Long) request.getSession().getAttribute("id");
			 SharearticleDao ashaDao=new SharearticleDao();
			 List<Sharearticle> hshae=ashaDao.getHshare(id);
			 request.setAttribute("list",hshae);
			    //��JSON �����ݸ�ǰ̨��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", hshae);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		//ɾ���������£�
		else if("qvxiao".equals(action)){
			 long id = (Long) request.getSession().getAttribute("id");
			 String sattent=request.getParameter("attentid");
			 Long attentid=Long.parseLong(sattent);
			 SharearticleDao sd=new SharearticleDao();
			 sd.qAttent(attentid, id);
		}
		//��ʾ���˷�����ϸ��
		else if("/xianshifx".equals(action)){
		//	 long id = (Long) request.getSession().getAttribute("id");
			 String sartid=request.getParameter("parameter");
			 int artid=Integer.parseInt(sartid);
			 SharearticleDao shasDao=new SharearticleDao();
			 List<Sharearticle> shae=shasDao.getshare(artid);
			 request.setAttribute("list", shae);
			 JSONObject jsonObject=new JSONObject();
			 jsonObject.put("list", shae);
			 response.getWriter().write(jsonObject.toString());
			    return;
		}
	}
}
