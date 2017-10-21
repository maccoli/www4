package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.User;
import com.www2.util.JdbcUtils;

public class AttentionDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//添加关注
	public void addattent(Long id,Long attentid){
		String sql = "insert into attention(id,attentid)"
				+ " values(?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setLong(2, attentid);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	//取消关注
	public void cancleattent(Long id,Long attentid){
		String sql="delete from attention where id=? and attentid";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			pst.setLong(2, attentid);
			pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				pst.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		    JdbcUtils.releaseConnection(con);    
		}
	}
	
	//显示关注人
	public List<User> getAttent(Long id){
		List<User> aus=new ArrayList<>();
		String sql="select nickname,id,headp from userid where id in (select attentid from attention where id=?)";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, id);
			rs = pst.executeQuery();
			
			while(rs.next()){
				User au= new User(
						rs.getLong("id"),
						rs.getString("nickname"),
						rs.getString("headp"));
				aus.add(au);
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
		return aus;
	}
	}

