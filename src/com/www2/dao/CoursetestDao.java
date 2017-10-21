package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Coursetest;
import com.www2.util.JdbcUtils;

public class CoursetestDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	//Ã·»° ‘æÌ£ª
	public List<Coursetest> getCour1(String id){
		List<Coursetest> cours1=new ArrayList<>();
		String sql="select * from course_test where paper_id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Coursetest co = new Coursetest(
						rs.getString("paper_id"),
						rs.getString("question"),
						rs.getString("ansA"),
						rs.getString("ansB"),
						rs.getString("ansC"),
						rs.getString("ansD"),
						rs.getInt("cre_ans"));
				cours1.add(co);
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
		return cours1;
	}
}
