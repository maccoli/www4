package com.www2.dao;

import java.util.List;

import com.www2.bean.Chapter;
import com.www2.bean.Course;

public interface ChapterDao extends BaseDao<Chapter> {
	/**
	 * ��ȡһ�ڿγ̵������½�
	 * @param course
	 * @return
	 */
	public List<Chapter> queryCourseChapters(Course course);
}
