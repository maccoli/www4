package com.www2.bean;

import java.sql.Date;

public class Videopl {
	//提问
     private int videoid; //视频ID
     private String twcon;//提问内容
     private int twconid;//提问内容ID
     private Date twtime;//提问的时间
     private Long twzheId;//当前用户提问者Id
     private String tnickname;//昵称
     private String theadp;//头像
     
   //回复
     private String replycon;//回复内容；
     private int replyconid;//回复内容Id；
     private Date replytime;//回复时间；
     private long replyid;//回复者Id；
     private String rnickname;//回复者昵称
     private String rheadp;//回复内容
     
     public Videopl(){
    	 super();
     }

	public Videopl(String string, int int1, long long1, String string2,
			String string3, Date date) {
		 super();
		 this.twcon=string;
		 this.twconid=int1;
		 this.twzheId=long1;
		 this.tnickname=string2;
		 this.theadp=string3;
		 this.twtime=date;
	}

	public Videopl(String string, long long1, String string2, String string3,
			Date date) {
		 super();
		 this.twcon=string;
		 this.twzheId=long1;
		 this.tnickname=string2;
		 this.theadp=string3;
		 this.twtime=date;
	}

	public Videopl(Object object, String string, int int1, long long1,
			String string2, String string3, Date date) {
		super();
		this.replycon=string;
		this.replyconid=int1;
		this.replyid=long1;
		this.rnickname=string2;
		this.rheadp=string3;
		this.replytime=date;
	}

	public Videopl(String string, int int1) {
		super();
		this.replycon=string;
		this.twconid=int1;
	}

	public Videopl(String string, int int1, Date date, int int2) {
		super();
		this.twcon=string;
		this.twconid=int1;
		this.twtime=date;
		this.videoid=int2;
	}

	@Override
	public String toString() {
		return "Videopl [videoid=" + videoid + ", twcon=" + twcon
				+ ", twconid=" + twconid + ", twtime=" + twtime + ", twzheId="
				+ twzheId + ", tnickname=" + tnickname + ", theadp=" + theadp
				+ ", replycon=" + replycon + ", replyconid=" + replyconid
				+ ", replytime=" + replytime + ", replyid=" + replyid
				+ ", rnickname=" + rnickname + ", rheadp=" + rheadp + "]";
	}
	public int getVideoid() {
		return videoid;
	}
	public void setVideoid(int videoid) {
		this.videoid = videoid;
	}
	public String getTwcon() {
		return twcon;
	}
	public void setTwcon(String twcon) {
		this.twcon = twcon;
	}
	public int getTwconid() {
		return twconid;
	}
	public void setTwconid(int twconid) {
		this.twconid = twconid;
	}
	public Date getTwtime() {
		return twtime;
	}
	public void setTwtime(Date twtime) {
		this.twtime = twtime;
	}
	public Long getTwzheId() {
		return twzheId;
	}
	public void setTwzheId(Long twzheId) {
		this.twzheId = twzheId;
	}
	public String getTnickname() {
		return tnickname;
	}
	public void setTnickname(String tnickname) {
		this.tnickname = tnickname;
	}
	public String getTheadp() {
		return theadp;
	}
	public void setTheadp(String theadp) {
		this.theadp = theadp;
	}
	public String getReplycon() {
		return replycon;
	}
	public void setReplycon(String replycon) {
		this.replycon = replycon;
	}
	public int getReplyconid() {
		return replyconid;
	}
	public void setReplyconid(int replyconid) {
		this.replyconid = replyconid;
	}
	public Date getReplytime() {
		return replytime;
	}
	public void setReplytime(Date replytime) {
		this.replytime = replytime;
	}
	public long getReplyid() {
		return replyid;
	}
	public void setReplyid(long replyid) {
		this.replyid = replyid;
	}
	public String getRnickname() {
		return rnickname;
	}
	public void setRnickname(String rnickname) {
		this.rnickname = rnickname;
	}
	public String getRheadp() {
		return rheadp;
	}
	public void setRheadp(String rheadp) {
		this.rheadp = rheadp;
	}
     
}
