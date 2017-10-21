package com.www2.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.www2.model.Article;
import com.www2.util.DButil;

public class PeopleMinServlet1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		DButil.openConnection();
		request.setCharacterEncoding("utf-8");
	    response.setContentType("utf-8");
		 try{
			 //ִ�����
			 String sql1="select * from peoplemin" ;
			 //���������
			 ResultSet rs = DButil.executSql(sql1);
			 //articles��������
			 List<Article> articles = new ArrayList<Article>();
			 //���������������articles
			 while(rs.next()){
				 //�ɽ�article����
				 Article article = new Article();
				 //��rs�������ȡ���ݷ��������
				 article.setMainContent(rs.getString("share"));
				 //�������������
				 System.out.println(rs.getString("share"));
				 articles.add(article);
			 }
			 	request.setAttribute("article", articles);
				request.getRequestDispatcher("share.jsp").forward(request,
						response);
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
	}
