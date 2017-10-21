package com.www2.dao;

import java.util.List;

import com.www2.bean.Course;
import com.www2.bean.CourseComment;

public interface CourseCommentDao extends BaseDao<CourseComment> {
	/**
	 * 查找一门课程的所有评论
	 * @param course
	 * @return
	 */
	public List<CourseComment> queryCourseComments(Course course);
}
