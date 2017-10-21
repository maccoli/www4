package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Collection;
import com.www2.bean.User;
import com.www2.util.JdbcUtils;

public class CollectionDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//收藏文章；
	public void addarticle(long id,int articleId,String articleTitle){
		String sql = "insert into coarticle(id,artid,article)"
				+ " values(?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setInt(2,articleId);
			pst.setString(3, articleTitle);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	//收藏课程
	public void addcourse(long id,String course,int courseId){
		String sql = "insert into cocourse(id,courseid,course)"
				+ " values(?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setInt(2, courseId);
			pst.setString(3, course);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	//收藏问题
	public void addquestion(long id,String twcon,int twconid){
		String sql = "insert into coquestion(id,queid,question)"
				+ " values(?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setInt(2, twconid);
			pst.setString(3, twcon);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	public List<Collection> getshowarticle(long id){
		List<Collection> coln=new ArrayList<>();
		String sql = "select * from coarticle where id = ?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Collection coll=new Collection(rs.getLong("id"),
						rs.getString("article"),
						rs.getInt("artid"));
				coln.add(coll);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return coln;
}
	public List<Collection> getshowcourse(long id){
		List<Collection> coln=new ArrayList<>();
		String sql = "select * from cocourse where id = ?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Collection coll=new Collection(null,rs.getLong("id"),
						rs.getString("course"),
						rs.getInt("courseID"));
				coln.add(coll);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return coln;
	}
	public List<Collection> getshowquet(long id){
		List<Collection> coln=new ArrayList<>();
		String sql = "select * from coquestion where id = ?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id); 
			rs = pst.executeQuery();
			while(rs.next()) {
				Collection coll=new Collection(null,null,rs.getLong("id"),
						rs.getString("question"),
						rs.getInt("queid"));
				coln.add(coll);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return coln;
	}
	public void delarticle(Long id,String sarticle,String table) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM "+table+" WHERE id = ? AND article=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id);
			pst.setString(2, sarticle);
			pst.execute();
		} catch (Exception e) {
		}
	}
	public void delcourse(Long id,String scourse,String table) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM "+table+" WHERE id = ? AND course=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setString(2,scourse);
			pst.execute();
		} catch (Exception e) {
		}
	}
	public void delquestion(Long id,String sque,String table) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM "+table+" WHERE id = ? AND question=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setString(2, sque);
			pst.execute();
		} catch (Exception e) {
		}
	}

}
