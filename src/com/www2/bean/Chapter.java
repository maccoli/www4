package com.www2.bean;

//�γ̿죺��TWO
public class Chapter {
	@Override
	public String toString() {
		return "Chapter [id=" + id + ", name=" + name + ", order=" + order
				+ ", course_id=" + course_id + "]";
	}
	private int id;  //
	private String name;//������
	private int order;//�½�˳��
	private String course_id;//�γ�ID
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
