package com.www2.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.BiJi;
import com.www2.util.JdbcUtils;

public class ShipinpfbijiDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public void addbiji(int spid,String bijicon,long userId,String nickname,String headp){
		String sql = "insert into biji(spid,bijicon,id,nickname,headp,bijitime)"
				+ " values(?,?,?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, spid);
			pst.setString(2, bijicon);
			pst.setLong(3, userId);
			pst.setString(4,nickname);
			pst.setString(5,headp);
			pst.setObject(6, new java.util.Date());
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
	public List<BiJi> getbiji(int spid){
		List<BiJi> bijis=new ArrayList<>();
		String sql="select * from biji where spid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1,spid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				BiJi bi = new BiJi(
						rs.getString("bijicon"),
						rs.getString("nickname"),
						rs.getString("headp"),
						rs.getDate("bijitime"));
				bijis.add(bi);
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
		return bijis;
	}
}
