package com.www2.bean;

import java.util.Calendar;

//��Ƶ���ۣ�
public class CourseComment {
	private String id;
	private long userID;//�û�ID��
	private float grade;//����
	private String time;//����ʱ��
	private String head;//�û�ͷ��
	private String content;//��������
	private String username;//�û���
	private String courseId;//�γ�ID
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
