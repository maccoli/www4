package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.www2.util.JdbcUtils;

public class DeleteminDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//ɾ������Ŀ�ꣻ
	public void deltodayaim(String bn,String table,long id){
		// sql����Ӧ����һ���ַ�����
		String sql = "delete from ";
		sql += table;
		sql += " where aim=? AND id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setString(1,bn);
            pst.setLong(2, id);
			pst.executeUpdate();
            con.close();
			pst.close();
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
	//ɾ������Ŀ�ꣻ
	public void delweekaim(String wn,String table,long id){
		// sql����Ӧ����һ���ַ�����
		String sql = "delete from ";
		sql += table;
		sql += " where waim=? AND id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setString(1,wn);
            pst.setLong(2, id);
			pst.executeUpdate();
            con.close();
			pst.close();
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
	
	//ɾ������С���ˣ�
	public void delappl(long applid,long groupid,String table){
		String sql = "delete from ";
		sql += table;
		sql += " where applid=? AND groupid=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setLong(1,applid);
            pst.setLong(2,groupid);
			pst.executeUpdate();
            con.close();
			pst.close();
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
		public void delappl2(long applid,long groupid){
			String sql = "delete from application where applid=? AND groupid=?";
			try {
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
	            pst.setLong(1,applid);
	            pst.setLong(2,groupid);
				pst.executeUpdate();
	            con.close();
				pst.close();
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
