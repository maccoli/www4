package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Course;
import com.www2.bean.Group;
import com.www2.bean.Search;
import com.www2.bean.Sharearticle;
import com.www2.bean.Useraim;
import com.www2.bean.Video;
import com.www2.util.JdbcUtils;

public class SearchDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//模糊查询
	public List<Search> getArticles(String keyword){
		List<Search> articles=new ArrayList<>();
		String sql="SELECT * FROM video WHERE vname LIKE '%"+keyword+"%'";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			System.out.println("a"+keyword);
			//pst.setString(1,"'%"+keyword+"%'"); 
			System.out.println(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Search sha = new Search(
						rs.getString("vname"));
				System.out.println("bb"+sha);
				articles.add(sha);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return articles;
	}
	//模糊查询；
	public List<Search> getArt(String keyword){
		List<Search> arts=new ArrayList<>();
		String sql="SELECT * FROM coarticle WHERE article LIKE '%"+keyword+"%'";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			//pst.setString(1,"'%"+keyword+"%'"); 
			System.out.println(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Search sha1 = new Search(null,
						rs.getString("article"));
				arts.add(sha1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return arts;
	}
	
	//关键字搜索课程；
	public List<Course> getcourses(String keyword){
		List<Course> cous=new ArrayList<>();
		String sql="SELECT * FROM course WHERE title LIKE '%"+keyword+"%'";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				Course co=new Course(
						rs.getString("id"),
						rs.getString("title"),
						rs.getString("redirect"),
						rs.getString("Cclass"),
						rs.getString("ctype"),
						rs.getInt("watch"),
						rs.getInt("grade"),
						rs.getString("pic"),
						rs.getString("curl"));
				cous.add(co);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return cous;
	}
	//展示所有的课程；
	public List<Course> getAllkc(){
		List<Course> vall=new ArrayList<>();
		String sql="SELECT * FROM course ";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				Course vds=new Course(null,
						rs.getString("id"),
						rs.getString("title"),
						rs.getString("redirect"),
						rs.getString("Cclass"),
						rs.getString("ctype"),
						rs.getInt("watch"),
						rs.getInt("grade"),
						rs.getString("pic"),
						rs.getString("curl"));
				vall.add(vds);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return vall;
	}
	//关键字搜索文章；
		public List<Sharearticle> getcshares(String keyword){
			List<Sharearticle> arts=new ArrayList<>();
			String sql="SELECT * FROM share WHERE articletitle LIKE '%"+keyword+"%'";
			try{
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				while(rs.next()){
					Sharearticle se=new Sharearticle(
							rs.getString("id"),
							rs.getInt("articleid"),
							rs.getString("articletitle"),
							rs.getInt("articleviews"),
							rs.getDate("articletime"),
							rs.getInt("articlelikes"),
							rs.getInt("articlecollected"),
							rs.getString("articlecon"),
							rs.getString("nickname"),
							rs.getString("headp"),
							rs.getString("type"));
					arts.add(se);
				}
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
			return arts;
		}
		
		//显示所有的分享文章
		public List<Sharearticle> getAllfx(){
			List<Sharearticle> sall=new ArrayList<>();
			String sql="SELECT * FROM share ";
			try{
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				while(rs.next()){
					Sharearticle sds=new Sharearticle(null,
							rs.getString("id"),
							rs.getInt("articleid"),
							rs.getString("articletitle"),
							rs.getInt("articleviews"),
							rs.getDate("articletime"),
							rs.getInt("articlelikes"),
							rs.getInt("articlecollected"),
							rs.getString("articlecon"),
							rs.getString("nickname"),
							rs.getString("headp"),
							rs.getString("type"));
					sall.add(sds);
				}
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
			return sall;
		}
		//关键字搜索小组
		public List<Group> gettshares(String keyword){
			List<Group> groups=new ArrayList<>();
			String sql="SELECT * FROM team WHERE groupname LIKE '%"+keyword+"%'";
			try{
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				while(rs.next()){
					Group gr=new Group(
							rs.getLong("groupid"),
							rs.getString("groupname"),
							rs.getString("groupp"),
							rs.getString("grouphonor"));
					groups.add(gr);
				}
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
			return groups;
		}
		
		//显示所有小组
		public List<Group> getAllteam(){
			List<Group> gall=new ArrayList<>();
			String sql="SELECT * FROM team ";
			try{
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				while(rs.next()){
					Group gps=new Group(null,
							rs.getLong("groupid"),
							rs.getString("groupname"),
							rs.getString("groupp"),
							rs.getString("grouphonor"));
					gall.add(gps);
				}
			}catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
			return gall;
		}
}
