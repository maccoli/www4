package com.www2.bean;

public class Collection {
       private long id;//�û�id
       private String articleTitle;//���±���
       private int articleId;//����id
       private String coursetile;//�γ̱���
       private int courseId;//�γ�id
       private String question;//������Ŀ
       private int quetid;//����id
    
       public Collection(){
    	   super();
       }
       
	public Collection(long int1, String string, int string2) {
 	       super();
 	       this.id=int1;
 	       this.articleTitle=string;
 	       this.articleId=string2;
	}

	public Collection(Object object, long long1, String string, int int1) {
		  super();
		  this.id=long1;
		  this.coursetile=string;
		  this.courseId=int1;
	}

	public Collection(Object object, Object object2, long int1, String string,
			int int2) {
		  super();
		  this.id=int1;
		  this.question=string;
		  this.quetid=int2;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	
	public String getCoursetile() {
		return coursetile;
	}

	public void setCoursetile(String coursetile) {
		this.coursetile = coursetile;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getQuetid() {
		return quetid;
	}
	public void setQuetid(int quetid) {
		this.quetid = quetid;
	}
       
}
