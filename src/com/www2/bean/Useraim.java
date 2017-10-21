package com.www2.bean;

import java.sql.Date;


public class Useraim {	
	private long id;//用户ID
	private String aim;//本周目标
	private String finish;//今日完成状态
	
	private Date stime;//发布时间
    
	private String waim;//本周目标
	private java.sql.Date wtime;// 预计本周完成时间
	private String wfinish;// 本周完成状态
	private Date ctime;// 本周最后操作时间
    
    public String getWaim() {
		return waim;
	}

	public void setWaim(String waim) {
		this.waim = waim;
	}

	public java.sql.Date getWtime() {
		return wtime;
	}

	public void setWtime(java.sql.Date wtime) {
		this.wtime = wtime;
	}

	public String getWfinish() {
		return wfinish;
	}

	public void setWfinish(String wfinish) {
		this.wfinish = wfinish;
	}

	public Date getCtime() {
		return ctime;
	}

	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}

    public Useraim() {
		super();
	}

public Useraim(long id, String finish) {
		super();
		this.id = id;
		this.finish = finish;
	}
@Override
public String toString() {
	return "Useraim [id=" + id + ", aim=" + aim + ", finish=" + finish+ ", waim=" + waim+ ", wfinish=" + wfinish
			+ ", stime=" + stime + ", wtime=" + wtime + ", ctime=" + ctime
			+ "]";
}

		public Useraim(long long1, String string, String string2) {
			super();
			this.id=long1;
			this.aim=string;
			this.finish=string2;
	// TODO Auto-generated constructor stub
}
		public Useraim(long long1, String string, String string2, String string3) {
			// TODO Auto-generated constructor stub
		}
		public Useraim(String string, String string2,Date string3) {
			super();
			this.aim=string;
			this.finish=string2;
			this.stime=string3;
		}

		public Useraim(String string1, String string2, Date string3,Date string4,Date string5) {
			super();
			this.waim=string1;
			this.wfinish=string2;
			this.wtime=string3;
			this.stime=string4;
			this.ctime=string5;
		}


		public Useraim(String string, String string2, Date date,
				java.sql.Date date2) {
			super();
			this.waim=string;
			this.wfinish=string2;
			this.wtime=date2;
			this.stime=date;
		}

		public Useraim(Object object, String string, String string2, Date date) {
			super();
			this.aim=string;
			this.finish=string2;
			this.stime=date;
		}

		/*public Useraim(int id, String aim, String finish) {
		// TODO Auto-generated constructor stub
	}*/
	    public String getFinish() {
		return finish;
	}
	public void setFinish(String finish) {
		this.finish = finish;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
    public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAim() {
		return aim;
	}
	public void setAim(String aim) {
		this.aim = aim;
	}

}
