package com.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.po.User;
import com.service.UserService;
import com.util.JsonUtil;
import com.util.MD5Util;


@Controller("userAction")
public class UserAction extends BaseAction {
	@Autowired
	private UserService userService;
	private String passWord;
	private String uid;
	private String time;
	private String number;
	private String page;
	private String oldPassword;
	private String newPassword1;
	private String newPassword2;
	private String role;
	public String login() {
		if(uid == null || passWord == null || "".equals(uid) || "".equals(passWord)){
			JsonUtil.sendError();
			return NONE;
		}
		String upwd = MD5Util.getMD5(passWord);
		//验证
		User us = null;
		us = userService.getUserByUname(uid);
		int tempRole = Integer.parseInt(role);
		if(us == null){
			JsonUtil.sendError();
			return NONE;
		}
		if(us.getRole() != tempRole){
			JsonUtil.sendError();
			return NONE;
		}
		if (us.getuPwd().equals(upwd)) {
			try {
				HttpSession session = super.getSession();
				if(tempRole == 2){
					session.setAttribute("User", us);
					session.setAttribute("UserName", us.getuName());
				}
				if(tempRole == 1){
					session.setAttribute("Manager", us);
				}
			} catch (Exception e) { 
				JsonUtil.sendError();
			}
			JsonUtil.sendSuccess();
		} else {
			JsonUtil.sendError();
		}
		return NONE;
	}
	public String inputTime(){
		if("".equals(number) || "".equals(time) || number == null || time == null){
			page = "error";
			return "Input_Redirect";
		}
		String Time = time+"/"+number;
		this.getSession().setAttribute("Time", Time);
		return "Input_Redirect";
	}
	public String exit(){
		HttpSession session = this.getSession();
		session.removeAttribute("User");
		session.removeAttribute("Time");
		session.removeAttribute("UserName");
		return "Input_Redirect";
	}
	public String changePwd(){
		if("".equals(newPassword1) || "".equals(newPassword2) || "".equals(oldPassword)){
			page = "successnull";
			return "Input_Redirect";
		}
		if(!newPassword1.equals(newPassword2)){
			page = "successnull";
			return "Input_Redirect";
		}
		HttpSession session = this.getSession();
		User user = (User) session.getAttribute("User");
		if(user.getuPwd().equals(MD5Util.getMD5(oldPassword))){
			String tempPwd = MD5Util.getMD5(newPassword1);
			user.setuPwd(tempPwd);
			if(userService.updateUser(user)){
				page = "index";
				this.exit();
			}else{
				page = "successnull";
			}
		}else{
			page = "successnull";
		}
		return "Input_Redirect";
	}
	public String register(){
		if(uid == null || newPassword1 == null || newPassword2 == null){
			page = "error";
			return "Manager_Redirect";
		}
		if(!newPassword1.equals(newPassword2)){
			page = "error";
			return "Manager_Redirect";
		}
		User tempUser = userService.getUserByUname(uid);
		if(tempUser != null){
			page = "successnull";
			return "Manager_Redirect";
		}else{
			User us = new User();
			us.setRole(2);
			us.setuName(uid);
			us.setuPwd(MD5Util.getMD5(newPassword1));
			if(userService.addUser(us)){
				HttpSession session = super.getSession();
				session.removeAttribute("Manager");
				page = "success";
			}else{
				page = "error";
			}
			return "Manager_Redirect";
		}
		
	}
	
	
	
	
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword1() {
		return newPassword1;
	}
	public void setNewPassword1(String newPassword1) {
		this.newPassword1 = newPassword1;
	}
	public String getNewPassword2() {
		return newPassword2;
	}
	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
