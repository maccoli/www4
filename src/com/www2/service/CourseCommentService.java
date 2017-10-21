package com.www2.service;

import java.util.Calendar;
import java.util.List;

import com.www2.bean.Course;
import com.www2.bean.CourseComment;
import com.www2.dao.CourseCommentDaoImpl;

public class CourseCommentService {
	public List<CourseComment> queryCourseComments(String id){
		List<CourseComment> comments = new CourseCommentDaoImpl().queryCourseComments(new Course(id));
		return comments;
	}
	public void addComment(String content,String course_id,long user_id,float grade){
		CourseComment comment = new CourseComment();
		Calendar calendar = Calendar.getInstance();
		long time = calendar.getTimeInMillis();
		String s = String.format("%1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS", time);
		comment.setTime(s);
		comment.setContent(content);
		comment.setUserID(user_id);
		comment.setCourseId(course_id);
		//获取用户名和头像
		comment.setUsername("xiaoming");
		comment.setHead("4.jpg");
		comment.setGrade(grade);
		comment.setId(String.valueOf(time));
		new CourseCommentDaoImpl().add(comment);
	}
	public static void main(String[] args) {
		System.out.println(new CourseCommentService().queryCourseComments("1"));


	}
}
