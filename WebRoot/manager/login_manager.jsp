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
<title>管理员登录</title>
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
<script type="text/javascript">
function showMessage(n){
	if(n ==0){
    	$("#errorMessage").html("信息输入有误！");
	}
	if(n == 1){
		$("#errorMessage").html("系统异常，请稍后！");
	}
	if(n == 3){
		$("#errorMessage").html("输入信息为空！");
	}
	if(n == 4){
		$("#errorMessage").html("信息包含非法字符！");
	}
	setTimeout("$('#errorMessage').html('')", 3000 );
	$("#loginBtn").attr("value", "登录");
}

</script>
</head>
<body>
								<!--/login-->

									   <div class="error_page">
												<!--/login-top-->

													<div class="error-top">
													<h2 class="inner-tittle page">SKDJNOA</h2>
													    <div class="login">
														<h3 class="inner-tittle t-inner">管理员登录</h3>

																		<input type="text" class="text" id="uname" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}" >
																		<input type="password" id="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
																		<div class="submit"><input type="submit" id="loginBtn" value="登录" ></div>
																		<div class="clearfix"></div>

																		<div class="new">
																			<p id="errorMessage" style="color: red;"></p>
																			<p class="sign">已经注册账户 ? <a href="<%=basePath %>index.jsp">去登录</a></p>
																			<div class="clearfix"></div>
																		</div>
														</div>


													</div>


												<!--//login-top-->
										   </div>

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
   <script type="text/javascript">
	$("#loginBtn").click(
			function() {
				var v1=$("#uname").val();
				var v2=$("#password").val();
				var uid = v1;
				$("#loginBtn").attr("value", "登录中...");
				var passWord = v2;
				var loginInfo = "uid=" + uid + "&passWord=" + passWord+"&role=1";
				if (uid == "" || passWord == "") {
					showMessage(3);
				}else {
					$.ajax({
						type : "post",
						url : "user_login.action",
						data : loginInfo,
						async : false,
						success : function(result) {
							eval("var data=" + result);
							if (data.name == "login"
									&& data.descript == "success") {
								$("#loginBtn").attr("value", "成功");
								window.location.href = "register.jsp";
							} else {
								showMessage(0);
							}
						},
						error : function() {
							showMessage(1);
						},
						beforeSend : function(XMLHttpRequest) {
							$("#loginBtn").attr("value", "登录中...");
						},
						complete : function(XMLHttpRequest, textStatus) {
						}

					});
				}
			});
	</script>
</body>
</html>