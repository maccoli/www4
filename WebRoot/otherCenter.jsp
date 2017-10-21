<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>***的主页</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' />
	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/amazeui_deng.min.css">
		<link rel="stylesheet" href="css/nav_deng.css">
		<!-- 导航栏css导入结束--> 
		<link rel="stylesheet" href="css/otherCenter.css">
</head>
<body>
	<!-- 1/2、导航栏开始-->
	    <div id="nav">
	        <div id="daohang">
	            <a href="index.jsp">
	                <span class="am-icon-home" style="color:#fff;font-size:30px;"></span>
	            </a>
	        </div>
	        <div id="user" class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="user_saveFileName">
	                
	            </a>
	            <ul class="dropdown-menu  pull-right">
					<li  id="user_nickName">
						
					</li>
					<li><a href="quitServlet">退出</a></li>
				</ul>
	        </div>
	        <div id="searchcorn">
	            <span class="am-icon-search am-icon-sm"></span>
	        </div><a href="course_choose.jsp">
	        <form>
	            <input id="search-input" type="text" value="请输入搜索内容..." onblur="if(this.value=='') value='请输入搜索内容...';" onclick="if(this.value=='请输入搜索内容...')value='';"/>
	        </form></a>
	        <div id="log">
	            <img src="img/logo1.png">
	        </div>
	    </div>
    	<!-- 导航栏结束 -->

	<div id="tx_bar">
		<div class="tx_bg">
			<img src="img/22.jpg" alt="">
		</div>
		<div class="tx_bar" id="oc_tx_bar">
			
		</div>
	</div>
	<div id="white"></div>
	<div id="con_bar">
		<div class="tab_bar">
		<!-- 选项卡 -->
			<div id="tab">
				<div class="tab tab1" title="基本资料"></div>
				<div class="tab tab6" title="ta的荣誉"></div>
				<div class="tab tab3" title="ta的分享"></div>
				<div class="tab tab7" title="ta的小组"></div>
			</div>
			<div id="zhuzi"></div>
		</div>
		<div id="con">
			<!-- 1个人资料 -->
				<div id="gr" class="con"  style="display:block">
					<table class="table" style="width:600px" id="oc_grzx">
						
					</table>
				</div>
			<!-- 2个人荣誉 -->
				<div id="ry" class="con">
					<div class="conbar1 col-md-5">
						<h2>阶段目标</h2>
						<p id="oc_jdmb">无</p>
					</div>
					<div class="conbar2 col-md-7" style="width:400px;height:400px;">
						<h2>任务完成率</h2>
       					<canvas id="myChart1" width="340" height="350" style="background:#fff;float:left;"></canvas>
					</div>
				</div>
			<!-- 3个人分享 -->
				<div id="fx" class="con">
					
				</div>
			
			<!-- 6小组 -->
				<div id="xz" class="con">
					<div id="displayxz2">该用户还没加入任何小组~</div>
					<div class="contianer" id="displayxz" style="display:none">
						<div class="row">
							<div class="col-md-4">
								<div style="margin:70px auto 0px;text-align:center;font-size:20px;"><h1 id="oc_xzname">攻城战队</h1></div>
								<div style="width:60px;height:4px;background:#eee;margin:45px auto;border-radius:5px;"></div>
							</div>
							<div class="col-md-4" style="position:relative">
								<div class="xz_kuang" style="width:145px;height:145px;border:4px solid #eee;background:rgba(0,0,0,0);float:left;position:absolute;left:5px;top:10px;"></div>
								<img src="img/tx/x1.jpg" alt="" style="width:160px;height:160px;float:left;position:absolute;left:30px;top:30px;">
							</div>
							<div class="col-md-4">
								<div class="xz_jianjie" style="text-align:left;">
									<p style="font-weight:bold;font-size:20px;">小组简介</p>
									<p>
										小组成立于<span>2017/3/15</span>。<br>
										小组成员有<span>3</span>名。<br>
										现阶段的目标是<span>参加全国计算机大赛</span>。<br>
										选择做<span>web开发和应用</span>。<br>
										小组当前排名为第<span>12</span>名。<br>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>

		</div>

	</div>


    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
		<!-- 导航栏js导入结束 -->
	<script src="js/chart.js"></script><!-- 1.1js、图形 -->
  	<script src="js/otherCenter.js"></script>


</body>
</html>