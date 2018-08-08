<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>C票信息录入</title>
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
<script src="js/check.js"></script>
<script type="text/javascript">
	
	function checkAction(){
		if(checkDW()&&checkXZ()&&checkJJ()&&checkGH()&&
				checkTW()&&checkJK()&&checkXS()&&checkCW()&&
				checkZC()&&checkHZ()&&checkAQ()&&checkLT()&&
				checkHQ()&&checkTS()&&checkRL()){
			var form = document.getElementById("formName");
			form.action="vote_inputVote";
			form.submit();
			return true;
		}else{
			return false;
		}
	}
	/* function checkAction(){
		if(checkDW()&&checkXZ()){
			var form = document.getElementById("formName");
			form.action="vote_inputVote";
			form.submit();
			return true;
		}else{
			return false;
		}
	} */
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
											<li><a href="#">录入数据</a></li>
											<li class="active">C票</li>
										</ol>
									   </div>
								  <!--//sub-heard-part-->
									<div class="graph-visual tables-main">



													<h3 class="inner-tittle two" style="text-align:center;" >济南校区机关作风建设民主评议测评表（C&nbsp;票） </h3>
														  <div class="graph">
															<div class="tables">
															<form  name="formName" id="formName" action="" method="post">
																<table class="table" id="mm" onkeydown="keyDown(event)" width="100%" >
                                                                <thead >
                                                                	<tr >
                                                                    	<th width="25%"  style="text-align:center;padding: 15px !important; ">机关部门<input type="text" name="type" value="C" hidden="hidden"></th>
                                                                        <th width="12.5%" style="text-align:center">工作职责方面</br>（1-20分）</th>
                                                                        <th width="12.5%" style="text-align:center">工作程序方面</br>（1-20分）</th>
                                                                        <th width="12.5%" style="text-align:center">政策能力方面</br>（1-15分）</th>
                                                                        <th width="12.5%" style="text-align:center">协调沟通方面</br>（1-15分）</th>
                                                                        <th width="12.5%" style="text-align:center">工作纪律方面</br>（1-15分）</th>
                                                                        <th width="12.5%" style="text-align:center">工作理念方面</br>（1-15分）</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody style="text-align:center;padding: 15px !important; ">
                                                                	<tr class="active">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important; ">党委工作部</th>
                                                                        <td><input type="text" name="dw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="dw" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="dw" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="dw" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="dw" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="dw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">行政办公室</th>
                                                                        <td><input type="text" name="xz"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xz"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xz"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xz" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xz"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xz" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="success">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">纪监审办公室</th>
                                                                        <td><input type="text" name="jj"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jj" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jj" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jj"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jj" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jj"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">工会</th>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="gh"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="info">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">团委</th>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="tw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">教科部</th>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="jk"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="warning">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">学生工作处</th>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="xs"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>

                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">财务部</th>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="cw"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="success">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">资产部</th>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="zc"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">合作办学办公室</th>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hz"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="info">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">安全保卫部</th>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="aq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">离退休工作办公室</th>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="lt"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="warning">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">后勤管理处</th>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="hq"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr>
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">图书馆</th>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="ts"   style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                    <tr class="info">
                                                                    	<th scope="row" style="text-align:center;padding: 15px !important;">人力资源部</th>
                                                                        <td><input type="text" name="rl"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="rl"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-20]" max="20" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="rl"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="rl" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="rl"  style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"  value=""  placeholder="？" required="required"></td>
                                                                        <td><input type="text" name="rl" style="padding: 5px !important;text-align:center;width:60px;border:0;background:transparent;" pattern="[0-15]" max="15" min="0" maxlength="2" autocomplete="off"   value=""  placeholder="？" required="required"></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            </form>
															</div>

													</div>
                                                    <div class="buttons-ui">
																<a class="btn red" href="importtableC.jsp">&nbsp;&nbsp;重&nbsp;置&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<a class="btn green" onclick="checkAction();">&nbsp;&nbsp;提&nbsp;交&nbsp;&nbsp;</a>
													  </div>

										</div>


										<!--//graph-visual-->
									</div>



									<!--//outer-wp-->
									 <!--footer section start-->
										<%@ include file="publicpage/footpage.jsp" %>
									<!--footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<%@ include file="publicpage/leftpage.jsp" %>
				</div>
<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <script src="js/changeKey.js"></script>
</body>
</html>