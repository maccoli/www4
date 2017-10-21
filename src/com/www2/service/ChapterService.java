package com.www2.service;

import java.util.LinkedList;
import java.util.List;

import com.www2.bean.Chapter;
import com.www2.bean.Course;
import com.www2.dao.ChapterDaoImpl;

public class ChapterService {
	public List<Chapter> queryCourseChapter(Course course){
		List<Chapter> chapters = new LinkedList<>();
		chapters = new ChapterDaoImpl().queryCourseChapters(course);
		return chapters;
	}
	public static void main(String[] args) {
		System.out.println(new ChapterService().queryCourseChapter(new Course("1")));
	}
}
