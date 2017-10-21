package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Sharearticle;
import com.www2.bean.User;
import com.www2.util.JdbcUtils;

public class ShowotherDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//显示他人的资料；
	public List<User> getMan(long hisid){
		List<User> users=new ArrayList<>();
		String sql="select * from userid where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,hisid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				User us = new User(
						rs.getLong("id"),
						rs.getString("nickname"),
						rs.getString("sex"),
						rs.getString("personsign"),
						rs.getString("personhonor"),
						rs.getString("cotacti"),
						rs.getString("groupid"),
						rs.getString("headp"));
				users.add(us);
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
		return users;
	}
	//他人中心显示分享；
	public List<Sharearticle> getHshare(long hisid){
		List<Sharearticle> hshae=new ArrayList<>();
		String sql="select * from share where id =?";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,hisid); 
			rs = pst.executeQuery();
			while(rs.next()){
				Sharearticle se2=new Sharearticle(
						rs.getLong("id"),
						rs.getInt("articleId"),
						rs.getString("articleTitle"),
						rs.getInt("articleViews"),
						rs.getDate("articleTime"),
						rs.getInt("articleLikes"),
						rs.getInt("articleCollected"),
						rs.getString("articleCon"));
				hshae.add(se2);
			}
		}catch (Exception e) {
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
		return hshae;
	}
}
