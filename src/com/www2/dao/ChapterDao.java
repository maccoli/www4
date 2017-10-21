package com.www2.dao;

import java.util.List;

import com.www2.bean.Chapter;
import com.www2.bean.Course;

public interface ChapterDao extends BaseDao<Chapter> {
	/**
	 * 获取一节课程的所有章节
	 * @param course
	 * @return
	 */
	public List<Chapter> queryCourseChapters(Course course);
}
