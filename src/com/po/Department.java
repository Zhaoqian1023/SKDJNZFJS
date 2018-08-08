package com.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Department implements Serializable {
	private int dId;
	private String dName;
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Department(int dId, String dName) {
		super();
		this.dId = dId;
		this.dName = dName;
	}
	public int getdId() {
		return dId;
	}
	public void setdId(int dId) {
		this.dId = dId;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	

}
