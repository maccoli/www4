package com.www2.bean;

import java.util.Calendar;

//视频评论：
public class CourseComment {
	private String id;
	private long userID;//用户ID？
	private float grade;//评分
	private String time;//评价时间
	private String head;//用户头像？
	private String content;//评论内容
	private String username;//用户名
	private String courseId;//课程ID
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	@Override
	public String toString() {
		return "CourseComment [id=" + id + ", userID=" + userID + ", grade="
				+ grade + ", time=" + time + ", head=" + head + ", content="
				+ content + ", username=" + username + ", courseId=" + courseId
				+ "]";
	}

	
}
