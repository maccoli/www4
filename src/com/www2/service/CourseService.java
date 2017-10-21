package com.www2.service;

import java.util.HashMap;
import java.util.Map;

import com.www2.bean.Course;
import com.www2.dao.CourseDaoImpl;

public class CourseService {
	public Course queryOneCourse(String course_id){
		Course course = new CourseDaoImpl().find(new Course(course_id));
		return course;
	}
	public static void main(String[] args) {
	Course course = new CourseService().queryOneCourse("1");
	System.out.println(course);
	Map<String, String> map = new HashMap<String, String>();
	map.put("1.1", "4:21");
	map.put("1.2", "6:21");
	map.put("1.3", "8:21");
	System.out.println(map.toString());
	}
}
