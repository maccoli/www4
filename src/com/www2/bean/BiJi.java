package com.www2.bean;

import java.sql.Date;

public class BiJi {
       private String bijicon;// �ʼ�����
       private long userId; //�û�ID
       private String nickname;//�û��ǳƣ�
       private String headp;// �û�ͷ��
       private int bijid;// �ʼ�id;
       private Date bijitime;//�ύ�ʼ�ʱ��
       private int bijidz;//��������
       
     public BiJi(){
    	 super();
     }
   
     
	public BiJi(String string, String string2, String string3, Date date) {
		 super();
		 this.bijicon=string;
		 this.nickname=string2;
		 this.headp=string3;
		 this.bijitime=date;
	}


	@Override
	public String toString() {
		return "BiJi [bijison=" + bijicon + ", userId=" + userId
				+ ", nickname=" + nickname + ", headp=" + headp + ", bijid="
				+ bijid + ", bijitime=" + bijitime + ", bijidz=" + bijidz + "]";
	}


	public String getBijicon() {
		return bijicon;
	}

	public void setBijicon(String bijicon) {
		this.bijicon = bijicon;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getHeadp() {
		return headp;
	}

	public void setHeadp(String headp) {
		this.headp = headp;
	}

	public int getBijid() {
		return bijid;
	}

	public void setBijid(int bijid) {
		this.bijid = bijid;
	}

	public Date getBijitime() {
		return bijitime;
	}

	public void setBijitime(Date bijitime) {
		this.bijitime = bijitime;
	}

	public int getBijidz() {
		return bijidz;
	}

	public void setBijidz(int bijidz) {
		this.bijidz = bijidz;
	}

}
