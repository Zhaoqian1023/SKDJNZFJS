package com.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {
	private int uId;
	private String uName;
	private String uPwd;
	private int role;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int uId, String uName, String uPwd, int role) {
		super();
		this.uId = uId;
		this.uName = uName;
		this.uPwd = uPwd;
		this.role = role;
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPwd() {
		return uPwd;
	}
	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	

}
