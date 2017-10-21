package com.www2.bean;

import java.util.Arrays;
import java.util.List;


//import java.util.Date;

public class User {

	private long userid ;//�û�ID
	private String password ;//�û�����

	private String savedFileName;//ͷ��洢�ļ�
	private String nickname;//�ǳ�
	private String sex;//�Ա�
	private String personsign;//����ǩ��
	private String personhonor;//��������
	private String cotacti;//��ϵ��ʽ
	private String groupid;//С��ID
    private String captain;//�ӳ����ԣ�
    private int point;//���˻��֣�
    
 /*   private List<String> sMemberName;//��Ա�ǳ���
    private List<String> sMemberSrc;//��Աͷ���飻
    private List<String> sMembercap;//С��ӳ����ԣ�
*/
    
	 private String[] sMemberName=new String[5];
    private String[] sMemberSrc = new String[5];
    
    public User(){
    	super();
    }

	@Override
	public String toString() {
		return "User [id=" + userid + ", password=" + password + ", savedFileName="
				+ savedFileName + ", nickname=" + nickname + ", sex=" + sex
				+ ", personsign=" + personsign + ", personhonor=" + personhonor
				+ ", cotacti=" + cotacti + ", groupid=" + groupid
				+ ", captain=" + captain + ", point=" + point
				+ ", sMemberName=" + Arrays.toString(sMemberName)
				+ ", sMemberSrc=" + Arrays.toString(sMemberSrc) + "]";
	}


	public User(int int1, String nickname, String string2, String string3,
			String string4, String string5, String string6) {

	}

	public User(long long1, String string, String string2, String string3,
			String string4, String string5, String string6, String string7,int string8) {
		   this.userid=long1;
		   this.nickname=string;
		   this.sex=string2;
		   this.personsign=string3;
		   this.personhonor=string4;
		   this.cotacti=string5;
		   this.groupid=string6;
		   this.savedFileName=string7;
		   this.point=string8;
	}

	public User(String string, String string2, String string3) {
		super();
		   this.nickname=string;
		   this.savedFileName=string2;
		   this.captain=string3;
	}

	public User(long long1, String string, String string2, String string3,
			String string4, String string5, String string6, String string7) {
		   this.userid=long1;
		   this.nickname=string;
		   this.sex=string2;
		   this.personsign=string3;
		   this.personhonor=string4;
		   this.cotacti=string5;
		   this.groupid=string6;
		   this.savedFileName=string7;
	}
 
	public User(long long1, String string ,String string2) {
		super();
		this.userid=long1;
		this.nickname=string;
		this.savedFileName=string2;
	}

	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPersonsign() {
		return personsign;
	}
	public void setPersonsign(String personsign) {
		this.personsign = personsign;
	}
	public String getPersonhonor() {
		return personhonor;
	}
	public void setPersonhonor(String personhonor) {
		this.personhonor = personhonor;
	}
	public String getCotacti() {
		return cotacti;
	}
	public void setCotacti(String cotacti) {
		this.cotacti = cotacti;
	}
	public String getGroupid() {
		return groupid;
	}
	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getSavedFileName() {
		return savedFileName;
	}

	public void setSavedFileName(String name) {
		this.savedFileName = name;
	}

	public String getCaptain() {
		return captain;
	}

	public void setCaptain(String captain) {
		this.captain = captain;
	}

	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public String[] getSMemberName() {
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
