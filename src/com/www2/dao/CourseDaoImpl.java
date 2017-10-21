package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.www2.bean.Course;
import com.www2.util.JdbcUtils;

public class CourseDaoImpl extends BaseDaoImpl2<Course> implements CourseDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	@Override
	public Course find(Course t) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM course WHERE id = ?";
		Course course = new Course();
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, t.getId());
			rs = pst.executeQuery();
			if(rs.next()){
				course.setId(t.getId());
				course.setCclass(rs.getString("cclass"));
				course.setCtype(rs.getString("ctype"));
				course.setGrade(rs.getInt("grade"));
				course.setPic(rs.getString("pic"));
				course.setRedirect(rs.getString("redirect"));
				course.setWatch(rs.getInt("watch"));
				course.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return course;
	}
}
