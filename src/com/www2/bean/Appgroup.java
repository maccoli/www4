package com.www2.bean;

public class Appgroup {
    private String applicant;//申请者名称
    private long applid;//申请者id;
    private String applh;//申请者头像；
    private long groupid;//需要申请小组id;
    
    
    public Appgroup(){
    	super();
    }

	@Override
	public String toString() {
		return "Appgroup [applicant=" + applicant + ", applid=" + applid
				+ ", applh=" + applh + ", groupid=" + groupid + "]";
	}

	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}


	public long getApplid() {
		return applid;
	}


	public void setApplid(long applid) {
		this.applid = applid;
	}


	public String getApplh() {
		return applh;
	}


	public void setApplh(String applh) {
		this.applh = applh;
	}


	public long getGroupid() {
		return groupid;
	}


	public void setGroupid(long groupid) {
		this.groupid = groupid;
	}
    
}
