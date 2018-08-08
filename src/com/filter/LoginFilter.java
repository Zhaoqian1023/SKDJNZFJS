package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.po.User;

@SuppressWarnings("serial")
public class LoginFilter extends HttpServlet implements Filter {
	private HttpServletRequest request = null;
	private HttpServletResponse response = null;
	private HttpSession session = null;
	private String uri = null;
	private String contextPath = null;
	private User manager = null;
	private User user = null;
	private String time = null;

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		request = (HttpServletRequest) req;
		response = (HttpServletResponse) resp;
		session = request.getSession();
		uri = request.getServletPath();
		contextPath = request.getContextPath();// 根

		if (uri.equals("")) {
			uri += "/";
		}
		if (!(uri.indexOf("/css/") > -1 || uri.indexOf("/fonts/") > -1
				|| uri.indexOf("/images/") > -1 || uri.indexOf("/maps/") > -1 || uri
				.indexOf("/js/") > -1)) {
			manager = (User) session.getAttribute("Manager");
			user = (User) session.getAttribute("User");
			time = (String) session.getAttribute("Time");
			if (uri.indexOf("/manager/") > -1 && uri.endsWith("register.jsp")) {
				if (manager == null) {// 转入管理员登陆页面
					response.sendRedirect(contextPath
							+ "/manager/login_manager.jsp");
					return;
				}
			}
			if (!(uri.indexOf("/manager/") > -1) && !uri.endsWith("login.action")
					&& !uri.endsWith("index.jsp") && !uri.endsWith("selectdate.jsp")
					&& !uri.endsWith("user_inputTime")) {
				if (user == null) {// 转入管理员登陆页面
					response.sendRedirect(contextPath + "/index.jsp");
					return;
				}else if(time == null){
					response.sendRedirect(contextPath + "/selectdate.jsp");
					return;
				}
			}
		}
		chain.doFilter(req, resp);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
