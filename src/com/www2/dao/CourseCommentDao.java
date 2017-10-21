package com.www2.dao;

import java.util.List;

import com.www2.bean.Course;
import com.www2.bean.CourseComment;

public interface CourseCommentDao extends BaseDao<CourseComment> {
	/**
	 * ����һ�ſγ̵���������
	 * @param course
	 * @return
	 */
	public List<CourseComment> queryCourseComments(Course course);
}
