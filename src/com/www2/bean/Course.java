package com.www2.bean;

//课程快：：ONE
public class Course {
	private String id;  //。。。
	private String title;//课程名
	private String pic;//封面
	private int watch;//浏览量
	private String redirect;//课程方向
	private String cclass;//课程分类
	private String ctype;//课程类型
	private int grade;//课程评分or难度
	private String curl;//...
	
	public String getId() {
		return id;
	}
	public Course() {
		super();
	}
	
	
	
	@Override
	public String toString() {
		return "Course [id=" + id + ", title=" + title + ", pic=" + pic
				+ ", watch=" + watch + ", redirect=" + redirect + ", cclass="
				+ cclass + ", ctype=" + ctype + ", grade=" + grade + ", curl="
				+ curl + "]";
	}
	public Course(String id) {
		super();
		this.id = id;
	}
	public Course(String int1, String string, String string2, String string3,
			String string4, int int2, int string5, String string6,String string7) {
		super();
		   this.id=int1;
		   this.title=string;
		   this.redirect=string2;
		   this.cclass=string3;
		   this.ctype=string4;
		   this.watch=int2;
		   this.grade=string5;
		   this.pic=string6;
		   this.curl=string7;
		   
	}
	public Course(Object object, String string, String string2, String string3,
			String string4, String string5, int int1, int int2, String string6,String string7) {
		  super();
		   this.id=string;
		   this.title=string2;
		   this.redirect=string3;
		   this.cclass=string4;
		   this.ctype=string5;
		   this.watch=int1;
		   this.grade=int2;
		   this.pic=string6;		  
		   this.curl=string7;
		   
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getWatch() {
		return watch;
	}
	public void setWatch(int watch) {
		this.watch = watch;
	}
	public String getRedirect() {
		return redirect;
	}
	public void setRedirect(String redirect) {
		this.redirect = redirect;
	}
	public String getCclass() {
		return cclass;
	}
	public void setCclass(String cclass) {
		this.cclass = cclass;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getCurl() {
		return curl;
	}
	public void setCurl(String curl) {
		this.curl = curl;
	}
	
	

}
