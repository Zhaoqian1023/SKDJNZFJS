<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>部门列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap-markdown.min.css" rel='stylesheet'
	type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap-markdown.js"></script>

<!----->

<!--clock init-->
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<div class="outter-wp">
					<!--sub-heard-part-->
					<div class="sub-heard-part">
						<ol class="breadcrumb m-b-0">
							<li><a href="#">汇总数据</a></li>
							<li class="active">按部门汇总</li>
						</ol>
					</div>
					<!--//sub-heard-part-->
					<div class="graph-visual" style="text-align: center;">
					<div class="clearfix"><br><br></div>	
						<!--/ribbon-two-->
						<div class="shapes">
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=党委工作部">党委工作部</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=行政办公室">行政办公室</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=纪监审办公室">纪监审办公室</a>
							</div>
						</div>
						<div class="shapes">
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=工会">工会</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=团委">团委</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=教科部">教科部</a>
							</div>
						</div>
						<div class="shapes">
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=学生工作处">学生工作处</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=财务部">财务部</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=资产部">资产部</a>
							</div>
						</div>
						<div class="shapes">
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=合作办学办公室">合作办学办公室</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=安全保卫部">安全保卫部</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=离退休工作办公室">离退休工作办公室</a>
							</div>
						</div>
						<div class="shapes">
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=后勤管理处">后勤管理处</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=图书馆">图书馆</a>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="diamond">
								<a
									href="vote_summaryTableByDept?page=printtabledepartment&dept=人力资源部">人力资源部</a>
							</div>
						</div>
						<!--//ribbon-two-->

					</div>

				</div>
				<!--//outer-wp-->
			</div>
			<!--footer section start-->
			<%@ include file="publicpage/footpage.jsp"%>
			<!--footer section end-->
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<%@ include file="publicpage/leftpage.jsp"%>
	</div>

	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>