<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>提示信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->

<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head>
<body>
	<!--/404-->
	<div class="error_page error">
		<!--/error-top-->
		
		<div class="error-top error">
			<br>
			<br><br>
			<h1 id="h1.-bootstrap-heading">未查询到该结果&nbsp;&nbsp;v_v<a class="anchorjs-link" href="#h1.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h1>
			<br><br>
			<div class="error-btn">
				<a class="read fourth" href="importtableA.jsp" style=""><font size="6">&nbsp;&nbsp;返回主页&nbsp;&nbsp;</font></a>
			</div>
		</div>

		<!--//error-top-->
	</div>
	<!--footer section start-->
	<div class="footer error">
		<p>Copyright &copy; 2017.山东科技大学济南校区版权所有.</p>
	</div>
	<!--footer section end-->
	<!--/404-->
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>