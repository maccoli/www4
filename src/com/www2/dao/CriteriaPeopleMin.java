package com.www2.dao;

public class CriteriaPeopleMin {

	private String headp;
	
	private String nickname;
	
	private String sex;
	private String iphone;
	private String pers;
	private String perh;
	private String cotacti;
	private String groupid;
	

	public String getHeadp() {
		if(headp == null)
			headp = "%%";
		else
			headp = "%" + headp + "%";
		return headp;
	}

	public void setHeadp(String headp) {
		this.headp = headp;
	}

	public String getNickname() {
		if( nickname == null)
			nickname = "%%";
		else
			nickname = "%" + nickname + "%";
		return nickname;
	}

	public void setNickame(String nickname) {
		this.nickname = nickname;
	}

	public String getSex() {
		if(sex == null)
			sex = "%%";
		else
			sex = "%" + sex + "%";
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getIphone() {
		if(iphone == null)
			iphone = "%%";
		else
			iphone = "%" + iphone + "%";
		return iphone;
	}

	public void setIphone(String iphone) {
		this.iphone = iphone;
	}
	public String getPers() {
		if(pers == null)
			pers = "%%";
		else
			pers = "%" + pers + "%";
		return pers;
	}

	public void setPers(String pers) {
		this.pers = pers;
	}
	public String getPerh() {
		if(perh == null)
			perh = "%%";
		else
			perh = "%" + perh + "%";
		return perh;
	}

	public void setPerh(String perh) {
		this.perh = perh;
	}
	public String getCotacti() {
		if(cotacti == null)
			cotacti = "%%";
		else
			cotacti = "%" + cotacti + "%";
		return cotacti;
	}

	public void setCotatic(String cotacti) {
		this.cotacti = cotacti;
	}
	public String getGroupid() {
		if(groupid == null)
			groupid = "%%";
		else
			groupid = "%" + groupid + "%";
		return groupid;
	}

	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}

	
	public CriteriaPeopleMin(String headp, String nickname, String sex,String iphone,String pers,String perh,String cotacti,String groupid) {
		super();
		this.headp = headp;
		this.nickname = nickname;
		this.sex = sex;
		this.iphone = iphone;
		this.pers = pers;
		this.perh = perh;
		this.cotacti = cotacti;
		
	}
}
