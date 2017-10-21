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
			 //执行语句
			 String sql1="select * from peoplemin" ;
			 //结果集接收
			 ResultSet rs = DButil.executSql(sql1);
			 //articles接收数据
			 List<Article> articles = new ArrayList<Article>();
			 //遍历结果集并放入articles
			 while(rs.next()){
				 //仙剑article对象
				 Article article = new Article();
				 //从rs结果集中取数据放入对象中
				 article.setMainContent(rs.getString("share"));
				 //对象进入对象表中
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
