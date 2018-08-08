<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>注册用户</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<%=basePath %>css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath %>css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="<%=basePath %>css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="<%=basePath %>css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="<%=basePath %>js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
													<h2 class="inner-tittle page">SKDJNOA</h2>
													    <div class="login">
														<h3 class="inner-tittle t-inner">注册用户</h3>
																<form action="user_register" method="post"> 
																		<input type="text" class="text" name="uid" value="用户姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户姓名';}" >
																		<input type="password" name="newPassword1" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
																		<input type="password" name="newPassword2" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
																		<div class="sign-up">
																					<input type="reset" value="重置">
																					<input type="submit" value="注册">
																			
																		</div>
																		<div class="clearfix"></div>
																		
																		<div class="new">
																			<p class="sign">已经注册用户 ? <a href="<%=basePath %>index.jsp">登录</a></p>
																			<div class="clearfix"></div>
																		</div>
																	</form>
														</div>
														
													</div>
													 </div>
												<!--//login-top-->
										  
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
										          <p>Copyright &copy; 2017.山东科技大学济南校区版权所有.</p>
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->
<script src="<%=basePath %>js/jquery.nicescroll.js"></script>
<script src="<%=basePath %>js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="<%=basePath %>js/bootstrap.min.js"></script>
</body>
</html>