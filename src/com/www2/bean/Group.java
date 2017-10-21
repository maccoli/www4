package com.www2.bean;

import java.sql.Array;
import java.util.Arrays;

public class Group {
     private long groupid; //小组ID
     private String groupname;//小组名称；
     private String groupp;//小组头像文件名
     private String groupaim;//小组目标
     private String groupaims;//目标内容
     private String grouphonor;//小组荣誉
     
 	 private String[] sMemberName=new String[5];
     private String[] sMemberSrc = new String[5];
     
     
     public Group(){
    	 super();
     }
	@Override
	public String toString() {
		return "Group [groupid=" + groupid + ", groupname=" + groupname
				+ ", groupp=" + groupp + ", groupaim=" + groupaim
				+ ", groupaims=" + groupaims + ", grouphonor=" + grouphonor
				+ ", MemberName=" + Arrays.toString(sMemberName)
				+ ", MemberSrc=" + Arrays.toString(sMemberSrc) + "]";
	}

	public Group(long int1,String string, String string2, String string3, String string4,String string5) {
		 super();
		 this.groupid=int1;
		 this.groupname=string;
		 this.groupaim=string2;
		 this.groupaims=string3;
		 this.grouphonor=string4;
		 this.groupp=string5;
	}

	public Group(long int1, String string, String string2, String string3) {
		super();
		this.groupid=int1;
		this.groupname=string;
		this.groupp=string2;
		this.grouphonor=string3;
	}
	public Group(Object object, long int1, String string, String string2,
			String string3) {
		super();
		this.groupid=int1;
		this.groupname=string;
		this.groupp=string2;
		this.grouphonor=string3;
	}
	public long getGroupid() {
		return groupid;
	}
	public void setGroupid(long groupid) {
		this.groupid = groupid;
	}
	public String getGroupp() {
		return groupp;
	}
	public void setGroupp(String groupp) {
		this.groupp = groupp;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getGroupaim() {
		return groupaim;
	}

	public void setGroupaim(String groupaim) {
		this.groupaim = groupaim;
	}

	public String getGroupaims() {
		return groupaims;
	}

	public void setGroupaims(String groupaims) {
		this.groupaims = groupaims;
	}

	public String getGrouphonor() {
		return grouphonor;
	}

	public void setGrouphonor(String grouphonor) {
		this.grouphonor = grouphonor;
	}
	public String[] getsMemberName() {
		return sMemberName;
	}
	public void setsMemberName(String[] sMemberName) {
		this.sMemberName = sMemberName;
	}
	public String[] getsMemberSrc() {
		return sMemberSrc;
	}
	public void setsMemberSrc(String[] sMemberSrc) {
		this.sMemberSrc = sMemberSrc;
	}

	
	
}
