package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.www2.bean.Group;
import com.www2.util.JdbcUtils;

public class GroupDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public void addgroup(long id,String applicant,String applh,long groupid){
		String sql = "insert application(applicant,applid,applh,groupid) values(?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id);
			pst.setString(2,applicant);
			pst.setString(3,applh);
			pst.setLong(4, groupid);
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
	
	public void upgroup(long applid,long groupid){
		String sql = "update userid set groupid=? where id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
        	pst.setLong(1,groupid);
        	pst.setLong(2, applid);
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
	public void xingroup(String groupname,long id){
		String sql = "insert team(groupname,groupid) values(?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1,groupname);
			pst.setLong(2, id);
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
	public void xingroup2(long id){
		String sql = "update userid set groupid=?,captain=? where id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id);
			pst.setString(2, "1");
			pst.setLong(3, id);
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
}
