package com.www2.bean;

public class Coursetest {
           private String sjid;//试卷id
           private String question;//试卷问题题目
           private String ansA;//试卷选项A
           private String ansB;//选项B
           private String ansC;//选项C
           private String ansD;//选项D
           private int creans;//正确答案
           
     public Coursetest(){
    	 super();
     }
           
		public Coursetest(String string, String string2, String string3,
			String string4, String string5, String string6, int in1) {
		  super();
		  this.sjid=string;
		  this.question=string2;
		  this.ansA=string3;
		  this.ansB=string4;
		  this.ansC=string5;
		  this.ansD=string6;
		  this.creans=in1;
	}

		@Override
		public String toString() {
			return "Coursrtest [sjid=" + sjid + ", question=" + question
					+ ", ansA=" + ansA + ", ansB=" + ansB + ", ansC=" + ansC
					+ ", ansD=" + ansD + ", creans=" + creans + "]";
		}
		public String getSjid() {
			return sjid;
		}
		public void setSjid(String sjid) {
			this.sjid = sjid;
		}
		public String getQuestion() {
			return question;
		}
		public void setQuestion(String question) {
			this.question = question;
		}
		public String getAnsA() {
			return ansA;
		}
		public void setAnsA(String ansA) {
			this.ansA = ansA;
		}
		public String getAnsB() {
			return ansB;
		}
		public void setAnsB(String ansB) {
			this.ansB = ansB;
		}
		public String getAnsC() {
			return ansC;
		}
		public void setAnsC(String ansC) {
			this.ansC = ansC;
		}
		public String getAnsD() {
			return ansD;
		}
		public void setAnsD(String ansD) {
			this.ansD = ansD;
		}
		public int getCreans() {
			return creans;
		}
		public void setCreans(int creans) {
			this.creans = creans;
		}
 
}
