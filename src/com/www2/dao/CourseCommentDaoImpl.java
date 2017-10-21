package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.www2.bean.Course;
import com.www2.bean.CourseComment;
import com.www2.util.JdbcUtils;

public class CourseCommentDaoImpl extends BaseDaoImpl2<CourseComment> implements
		CourseCommentDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	@Override
	public List<CourseComment> queryCourseComments(Course course) {
		// TODO Auto-generated method stub
		List<CourseComment> comments = new LinkedList<>();
		String sql = "SELECT * FROM videospl WHERE courseid = ?"; 
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, course.getId());
			rs = pst.executeQuery();
			while(rs.next()){
				CourseComment comment = new CourseComment();
				comment.setUserID(rs.getLong(1));
				comment.setId(rs.getString(2));
				comment.setGrade(rs.getFloat(3));
				comment.setContent(rs.getString(4));
				comment.setTime(rs.getString(5));
				comment.setUsername(rs.getString(6));
				comment.setHead(rs.getString(7));
				comment.setCourseId(rs.getString(8));
				comments.add(comment);
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
		return comments;
	}
	@Override
	public void add(CourseComment t) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO videospl(userid,ID,grade,content,time,username,userhead,courseId) VALUES(?,?,?,?,?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, t.getUserID());
			pst.setString(2, t.getId());
			pst.setFloat(3, t.getGrade());
			pst.setString(4, t.getContent());
			pst.setString(5, t.getTime());
			pst.setString(6, t.getUsername());
			pst.setString(7, t.getHead());
			pst.setString(8, t.getCourseId());
			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
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
