<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>按部门打印</title>
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

<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>

<script language="javascript">
function preview(oper) {
            if (oper < 10) {
                bdhtml = window.document.body.innerHTML;
                sprnstr = "<!--startprint" + oper + "-->";
                eprnstr = "<!--endprint" + oper + "-->";
                prnhtml = bdhtml.substring(bdhtml.indexOf(sprnstr) + 18);
                prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
                window.document.body.innerHTML = prnhtml;
                window.print();
                window.document.body.innerHTML = bdhtml;

            } else {
                window.print();
            }
        }
</script>
<!-- //js-->
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->


				<!--outter-wp-->
				<div class="outter-wp">
					<!--sub-heard-part-->
					<div class="sub-heard-part">
						<ol class="breadcrumb m-b-0">
							<li><a href="#">汇总数据</a></li>
							<li class="active">${summaryList.get(0).dept }</li>
						</ol>
					</div>
					<!--//sub-heard-part-->
					<div class="graph-visual tables-main">



						<div class="graph">
							<!--startprint1-->
							<h2 class="inner-tittle two">部门：${summaryList.get(0).dept }</h2>
							<h3 class="inner-tittle two" style="text-align:center;">济南校区机关作风建设民主评议测评汇总表
							</h3>

							<div class="tables">

								<table class="table table-bordered" width="100%">
									<thead>
										<tr>
											<th width="25%" style="text-align:center">测评人</th>
											<th width="11%" style="text-align:center">工作职责方面</th>
											<th width="11%" style="text-align:center">工作程序方面</th>
											<th width="11%" style="text-align:center">政策能力方面</th>
											<th width="11%" style="text-align:center">协调沟通方面</th>
											<th width="11%" style="text-align:center">工作纪律方面</th>
											<th width="11%" style="text-align:center">工作理念方面</th>
											<th width="9%" style="text-align:center">总分</th>

										</tr>
									</thead>
									<tbody style="text-align:center">
										<c:forEach items="${summaryList }" var="att"
											varStatus="varstatus">
											<c:choose>
												<c:when test="${varstatus.count == 1}">
													<tr class="active">
														<th scope="row" style="text-align:center">${att.type }</th>
														<td>${att.gZzz }</td>
														<td>${att.gZcx }</td>
														<td>${att.zCnl }</td>
														<td>${att.xTgt }</td>
														<td>${att.gZjl }</td>
														<td>${att.gZln }</td>
														<td>${att.zf }</td>
													</tr>
												</c:when>
												<c:when test="${varstatus.count == 3}">
													<tr class="success">
														<th scope="row" style="text-align:center">${att.type }</th>
														<td>${att.gZzz }</td>
														<td>${att.gZcx }</td>
														<td>${att.zCnl }</td>
														<td>${att.xTgt }</td>
														<td>${att.gZjl }</td>
														<td>${att.gZln }</td>
														<td>${att.zf }</td>
													</tr>
												</c:when>

												<c:otherwise>
													<tr>
														<th scope="row" style="text-align:center">${att.type }</th>
														<td>${att.gZzz }</td>
														<td>${att.gZcx }</td>
														<td>${att.zCnl }</td>
														<td>${att.xTgt }</td>
														<td>${att.gZjl }</td>
														<td>${att.gZln }</td>
														<td>${att.zf }</td>
													</tr>
												</c:otherwise>
											</c:choose>

										</c:forEach>

									</tbody>
								</table>


							</div>
							<!--endprint1-->
						</div>
						<div class="buttons-ui">


							<a class="btn green" onclick="preview(1)">&nbsp;&nbsp;&nbsp;&nbsp;打&nbsp;&nbsp;印&nbsp;&nbsp;&nbsp;&nbsp;</a>

						</div>

					</div>


					<!--//graph-visual-->
				</div>



				<!--//outer-wp-->
				<!--footer section start-->
				<%@ include file="publicpage/footpage.jsp"%>
				<!--footer section end-->
			</div>
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