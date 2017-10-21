package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.www2.bean.Chapter;
import com.www2.bean.Course;
import com.www2.util.JdbcUtils;

public class ChapterDaoImpl extends BaseDaoImpl2<Chapter> implements ChapterDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	@Override
	public List<Chapter> queryCourseChapters(Course course) {
		// TODO Auto-generated method stub
		List<Chapter> chapters = new LinkedList<>();
		//ASC 正序排列
		//Desc 反序排列
		String sql = "SELECT * FROM chapter WHERE course_ID = ? ORDER BY Chapter_order ASC";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, course.getId());
			rs = pst.executeQuery();
			while(rs.next()){
				Chapter chapter = new Chapter();
				chapter.setId(rs.getInt("id"));
				chapter.setCourse_id(course.getId());
				chapter.setName(rs.getString("name"));
				chapter.setOrder(rs.getInt("chapter_order"));
				chapters.add(chapter);
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
		return chapters;
	}

}
