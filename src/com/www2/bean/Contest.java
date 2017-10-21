package com.www2.bean;

import java.sql.Date;

public class Contest {
	  private String item;//大赛标题
	     private String content;//大赛内容
	     private Date time;//大赛发布时间
	     private String coturl;//该大赛URL
	     private int browses;//浏览量
	     
	    public Contest(){
	    	super();
	    }

		public Contest(String string, String string2, Date string3, int int1) {
			super();
			this.item=string;
			 this.content=string2;
			 this.time=string3;
			 this.browses=int1;
		}

		@Override
		public String toString() {
			return "Contest [item=" + item + ", content=" + content + ", time="
					+ time + ", coturl=" + coturl + ", browses=" + browses
					+ "]";
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
		public String getCoturl() {
			return coturl;
		}
		public void setCoturl(String coturl) {
			this.coturl = coturl;
		}

		public int getBrowses() {
			return browses;
		}

		public void setBrowses(int browses) {
			this.browses = browses;
		}
	     
}
