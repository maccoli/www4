package com.www2.bean;

import java.sql.Date;

public class Sharearticle {
      private long id;//用户id
      private String writerId;//作者id
      private String savedFileName;//头像
      private String writerName;//昵称
      
      private int articleId;//文章id
      private String articleTitle;//文章题目
      private int articleViews;//文章浏览量
      private Date articleTime;//文章提交时间
      private int articleLikes;//点赞数
      private int articleCollected;//收藏量
      private String articleCon;//内容
      private String articleType;//文章类别
      
     public Sharearticle(){
    	 super();
     }
	public Sharearticle(int in,String string, Date string2, int string3) {
		super();
		this.articleId=in;
		this.articleTitle=string;
		this.articleTime=string2;
		this.articleLikes=string3;
	}
	public Sharearticle(String long1,int int1,String string,int int2, Date date,int int3,int int4, String string3,
			String string4, String string5) {
         super();
         this.writerId=long1;
         this.articleId=int1;
         this.articleTitle=string;
         this.articleViews=int2;
         this.articleTime=date;
         this.articleLikes=int3;
         this.articleCollected=int4;
         this.articleCon=string3;
         this.writerName=string4;
         this.savedFileName=string5;
	}
	public Sharearticle(String long1,int int3,String string, Date date, int int1, int int2,
			String string2, String string3, String string4) {
		 super();
		 this.writerId=long1;
		 this.articleId=int3;
		 this.articleTitle=string;
		 this.articleTime=date;
		 this.articleViews=int1;
		 this.articleLikes=int2;
		 this.savedFileName=string2;
		 this.writerName=string3;
		 this.articleCon=string4;
	}
	public Sharearticle(long long1, int int1, String string, int int2,
			Date date, int int3, int int4, String string2) {
	     super();
         this.id=long1;
         this.articleId=int1;
         this.articleTitle=string;
         this.articleViews=int2;
         this.articleTime=date;
         this.articleLikes=int3;
         this.articleCollected=int4;
         this.articleCon=string2;
	}

	public Sharearticle(String string, int int1, String string2, int int2,
			Date date, int int3, int int4, String string3, String string4,
			String string5, String string6) {
		super();
		 this.writerId=string;
         this.articleId=int1;
         this.articleTitle=string2;
         this.articleViews=int2;
         this.articleTime=date;
         this.articleLikes=int3;
         this.articleCollected=int4;
         this.articleCon=string3;
         this.writerName=string4;
         this.savedFileName=string5;
         this.articleType=string6;
	}
	public Sharearticle(Object object, String string, int int1, String string2,
			int int2, Date date, int int3, int int4, String string3,
			String string4, String string5, String string6) {
		super();
		 this.writerId=string;
        this.articleId=int1;
        this.articleTitle=string2;
        this.articleViews=int2;
        this.articleTime=date;
        this.articleLikes=int3;
        this.articleCollected=int4;
        this.articleCon=string3;
        this.writerName=string4;
        this.savedFileName=string5;
        this.articleType=string6;
	}
	@Override
	public String toString() {
		return "Sharearticle [id=" + id + ", writerId=" + writerId
				+ ", savedFileName=" + savedFileName + ", writerName="
				+ writerName + ", articleId=" + articleId + ", articleTitle="
				+ articleTitle + ", articleViews=" + articleViews
				+ ", articleTime=" + articleTime + ", articleLikes="
				+ articleLikes + ", articleCollected=" + articleCollected
				+ ", articleCon=" + articleCon + ", articleType=" + articleType
				+ "]";
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getSavedFileName() {
		return savedFileName;
	}
	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public int getArticleViews() {
		return articleViews;
	}
	public void setArticleViews(int articleViews) {
		this.articleViews = articleViews;
	}
	public Date getArticleTime() {
		return articleTime;
	}
	public void setArticleTime(Date articleTime) {
		this.articleTime = articleTime;
	}
	public int getArticleLikes() {
		return articleLikes;
	}
	public void setArticleLikes(int articleLikes) {
		this.articleLikes = articleLikes;
	}
	public int getArticleCollected() {
		return articleCollected;
	}
	public void setArticleCollected(int articleCollected) {
		this.articleCollected = articleCollected;
	}
	public String getArticleCon() {
		return articleCon;
	}
	public void setArticleCon(String articleCon) {
		this.articleCon = articleCon;
	}
	public String getArticleType() {
		return articleType;
	}
	public void setArticleType(String articleType) {
		this.articleType = articleType;
	}
     
      
      
}
