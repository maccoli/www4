package com.www2.bean;

import java.sql.Date;

public class Simulation {
	  private String item;//实训标题
	     private String content;//实训内容
	     private Date time;//实训发布时间
	     private int browses;//浏览量
	     
	    public Simulation(){
	    	super();
	    }

		public Simulation(String string, String string2, Date string3, int int1) {
			super();
			this.item=string;
			 this.content=string2;
			 this.time=string3;
			 this.browses=int1;
		}

		@Override
		public String toString() {
			return "Contest [item=" + item + ", content=" + content + ", time="
					+ time + ", browses=" + browses
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

		public int getBrowses() {
			return browses;
		}

		public void setBrowses(int browses) {
			this.browses = browses;
		}
		
}
