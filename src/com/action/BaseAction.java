package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;



public class BaseAction extends ActionSupport {
	public HttpSession getSession(){
		HttpSession session = null;
		session=ServletActionContext.getRequest().getSession();
		return session;
	}
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}

}
