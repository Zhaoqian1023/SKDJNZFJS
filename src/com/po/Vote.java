package com.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Vote implements Serializable {
	private int vId;
	private int gZzz;
	private int gZcx;
	private int zCnl;
	private int xTgt;
	private int gZjl;
	private int gZln;
	private String type;
	private String time;
	private Department dept;
	private User user;
	private String logsTime;
	
	public Vote() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Vote(int vId, int gZzz, int gZcx, int zCnl, int xTgt, int gZjl,
			int gZln, String type, String time, Department dept, User user,
			String logsTime) {
		super();
		this.vId = vId;
		this.gZzz = gZzz;
		this.gZcx = gZcx;
		this.zCnl = zCnl;
		this.xTgt = xTgt;
		this.gZjl = gZjl;
		this.gZln = gZln;
		this.type = type;
		this.time = time;
		this.dept = dept;
		this.user = user;
		this.logsTime = logsTime;
	}

	public Vote(int gZzz, int gZcx, int zCnl, int xTgt, int gZjl, int gZln,
			String type, String time, Department dept, User user,
			String logsTime) {
		super();
		this.gZzz = gZzz;
		this.gZcx = gZcx;
		this.zCnl = zCnl;
		this.xTgt = xTgt;
		this.gZjl = gZjl;
		this.gZln = gZln;
		this.type = type;
		this.time = time;
		this.dept = dept;
		this.user = user;
		this.logsTime = logsTime;
	}

	public int getvId() {
		return vId;
	}

	public void setvId(int vId) {
		this.vId = vId;
	}

	public int getgZzz() {
		return gZzz;
	}

	public void setgZzz(int gZzz) {
		this.gZzz = gZzz;
	}

	public int getgZcx() {
		return gZcx;
	}

	public void setgZcx(int gZcx) {
		this.gZcx = gZcx;
	}

	public int getzCnl() {
		return zCnl;
	}

	public void setzCnl(int zCnl) {
		this.zCnl = zCnl;
	}

	public int getxTgt() {
		return xTgt;
	}

	public void setxTgt(int xTgt) {
		this.xTgt = xTgt;
	}

	public int getgZjl() {
		return gZjl;
	}

	public void setgZjl(int gZjl) {
		this.gZjl = gZjl;
	}

	public int getgZln() {
		return gZln;
	}

	public void setgZln(int gZln) {
		this.gZln = gZln;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Department getDept() {
		return dept;
	}

	public void setDept(Department dept) {
		this.dept = dept;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getLogsTime() {
		return logsTime;
	}

	public void setLogsTime(String logsTime) {
		this.logsTime = logsTime;
	}
	
	
	

}
