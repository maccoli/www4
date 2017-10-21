package com.www2.bean;

//课程快：：TWO
public class Chapter {
	@Override
	public String toString() {
		return "Chapter [id=" + id + ", name=" + name + ", order=" + order
				+ ", course_id=" + course_id + "]";
	}
	private int id;  //
	private String name;//章名称
	private int order;//章节顺序
	private String course_id;//课程ID
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public String getCourse_id() {
		return course_id;
	}
	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}
	
}
