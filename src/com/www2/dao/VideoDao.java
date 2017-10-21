package com.www2.dao;

import java.util.List;

import com.www2.bean.Chapter;
import com.www2.bean.Course;
import com.www2.bean.Video;

public interface VideoDao extends BaseDao<Video> {
	/**
	 * ��ȡһ�ſγ̵�����С��
	 * @param course
	 * @return
	 */
	public List<Video> queryCourseVideo(Chapter chapter);
}
