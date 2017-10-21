package com.www2.bean;

import java.sql.Date;

public class Sustory {
	     private long id;  //�û�ID
	     private long bid;//����id
	     private String writername;//�����ǳƣ�
	     private String headp;
	     private String item;//���±���
	     private String content;//��������
	     private Date time;//���·���ʱ��
	     private String susurl;//�ù���URL
	     private int browses;//�����
	     private int likes;//��������
	     
	    public Sustory(){
	    	super();
	    }
		public Sustory(String string, String string2, Date string3, int int1) {
			super();
			 this.item=string;
			 this.content=string2;
			 this.time=string3;
			 this.browses=int1;
		}
		public Sustory(String string, Date date, int int1, String string2,
				int int2, String string3, String string4) {
			super();
			 this.item=string;
			 this.time=date;
			 this.browses=int1;
			 this.content=string2;
			 this.likes=int2;
			 this.headp=string3;
			 this.writername=string4;
		}

		@Override
		public String toString() {
			return "Sustory [id=" + id + ", bid=" + bid + ", writername="
					+ writername + ", headp=" + headp + ", item=" + item
					+ ", content=" + content + ", time=" + time + ", susurl="
					+ susurl + ", browses=" + browses + ", likes=" + likes
					+ "]";
		}
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		public long getBid() {
			return bid;
		}
		public void setBid(long bid) {
			this.bid = bid;
		}
		public String getItem() {
			return item;
		}
		public void setItem(String item) {
			this.item = item;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Date getTime() {
			return time;
		}
		public void setTime(Date time) {
			this.time = time;
		}
		public String getSusurl() {
			return susurl;
		}
		public void setSusurl(String susurl) {
			this.susurl = susurl;
		}
		public int getBrowses() {
			return browses;
		}
		public void setBrowses(int browses) {
			this.browses = browses;
		}
		public String getHeadp() {
			return headp;
		}
		public void setHeadp(String headp) {
			this.headp = headp;
		}
		public int getLikes() {
			return likes;
		}
		public void setLikes(int likes) {
			this.likes = likes;
		}
		public String getWritername() {
			return writername;
		}
		public void setWritername(String writername) {
			this.writername = writername;
		}
	     
	}

