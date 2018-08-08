<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="sidebar-menu">
					<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo"> <h1>SKDJN</h1></span>
					<!--<img id="logo" src="" alt="Logo"/>-->
				  </a>
				</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
							<div class="down">
									  <a href="#"><img src="images/admin.jpg"></a>
									  <a href="#"><span class=" name-caret"><%=session.getAttribute("UserName") %></span></a>
									 <p><%=session.getAttribute("Time") %></p>
									<ul>
									<li><a class="tooltips" href="#"><span>个人信息</span><i class="lnr lnr-user"></i></a></li>
										<li><a class="tooltips" href="changepwd.jsp"><span>修改密码</span><i class="lnr lnr-cog"></i></a></li>
										<li><a class="tooltips" href="user_exit?page=index"><span>退出</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
								<div class="menu">
									<ul id="menu" >


										 <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span>录入数据</span> <span class="fa fa-angle-right" style="float: right"></span></a>
											 <ul id="menu-academico-sub" >

												<li id="menu-academico-boletim" ><a href="importtableA.jsp">A票</a></li>
												<li id="menu-academico-boletim" ><a href="importtableB.jsp">B票</a></li>
                                                <li id="menu-academico-boletim" ><a href="importtableC.jsp">C票</a></li>
											  </ul>
										 </li>
										 <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span>打印汇总数据</span> <span class="fa fa-angle-right" style="float: right"></span></a>
											 <ul id="menu-academico-sub" >

												<li id="menu-academico-boletim" ><a href="vote_summaryTableByType?page=printtable&type=A">汇总A票</a></li>
												<li id="menu-academico-boletim" ><a href="vote_summaryTableByType?page=printtable&type=B">汇总B票</a></li>
                                                <li id="menu-academico-boletim" ><a href="vote_summaryTableByType?page=printtable&type=C">汇总C票</a></li>
                                                <li id="menu-academico-boletim" ><a href="finddept.jsp">按部门统计</a></li>
                                                <li id="menu-academico-boletim" ><a href="vote_summaryTableFinal?page=printfinal">打印总表</a></li>
											  </ul>
										 </li>

								  </ul>
								</div>



							  </div>


							  <div class="clearfix"></div>
							<script>
							var toggle = true;

							$(".sidebar-icon").click(function() {
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }

											toggle = !toggle;
										});
							</script>

