<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/amazeui.min.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<style type="text/css">
ul,li,html,body{
  margin: 0;
  padding: 0;
  font-family: '微软雅黑';
}
a{
  text-decoration: none;
}
a:hover{ 
    text-decoration:none;
}
li{
  list-style: none;
}
.clear{
    clear:both;
}
.clear:after{
    content: "";
    clear:both;
    height:0;
    display:block;
}
body {
    background:url(img/mcbg.png);
}
/*导航*/
	#nav{
		height: 40px;
		width: 100%;
		background: rgba(0,1,0,1);
	}
	#nav img{
		width: 30px;
		height: 30px;
		display:block;
		margin: 0px auto;
		padding-top: 5px;
	}

#main{
	width: 1200px;
	/*height: 700px;*/
	/*background: #fff;*/
	margin: 0 auto;
}
/*四个选项处*/
	#cho_btn{
		width: 100%;
		height: 260px;
		/*background: red;*/
	}
	.cho_opt{
		width: 22%;
		height: 200px;
		float: left;
		margin: 20px 1.5% 40px;
		border-radius: 5px;
	}
	.cho_opt1{
		color: #a94442;
    	background-color: #f2dede;
    	border-color: #ebccd1;
	}
	.cho_opt2{
	    color: #3c763d;
	    background-color: #dff0d8;
	    border-color: #d6e9c6;
	}
	.cho_opt3{
		color: #8a6d3b;
	    background-color: #fcf8e3;
	    border-color: #faebcc;
	}
	.cho_opt4{
		color: #31708f;
	    background-color: #d9edf7;
	    border-color: #bce8f1;
	}
	.cho_opt1 span{
		display:block;
		font-size: 80px;
		margin: 38px 100px 5px;
	}
	.cho_opt2 span{
		display:block;
		font-size: 80px;
		margin: 38px 94px 5px;
	}
	.cho_opt3 span{
		display:block;
		font-size: 80px;
		margin: 38px 89px 5px;
	}
	.cho_opt4 span{
		display:block;
		font-size: 80px;
		margin: 38px 98px 5px;
	}
	.describ{
		width: 100%;
		text-align: center;
		font-size: 20px;
	}

/*list*/
	#course_list{
		width: 76%;
		margin: 0px 12%;
	}
	#table_title{
	    width: 100%;
	    height: 60px;
	    line-height: 60px;
	    padding-left: 10px;
	}
	#table_title span{
		font-size: 24px;
		font-weight: bold;
	}
	.coursetypecho{
	    width: 50%;
	    height: 30px;
	    float: right;
	    margin: 19px 36% 0px 0px;
	}
	.coursetypecho li{
	    width: 13%;
	    height: 26px;
	    line-height: 26px;
	    float: left;
	    color: #f8f8f8;
	    text-align: center;
	    border-radius: 5px;
	    margin: 0px 10px;
	    background-color: #93b5c6;
	    cursor: pointer;
	}
	.list_table{
		width: 100%;
	}
	.list_table table{
		border-collapse: collapse;
		border: 1px solid #ddd;
		width: 100%;
	}
	.list_table table td{
		border: 1px solid #ddd;
		height: 50px;
		line-height: 50px;
		padding-left: 15px;
	}
	.table_head:nth-child(1){
		width: 15%; 
	}
	.table_head:nth-child(2){
		width: 35%; 
	}
	.table_head:nth-child(3){
		width: 15%; 
	}
	.table_head:nth-child(4){
		width: 15%; 
	}
	.table_head:nth-child(5){
		width: 20%; 
	}
	.viewxq{
		width: 60px;
		height: 25px;
		background-color: #5cb85c;
		border-radius: 3px;
		font-size: 13px;
		text-align: center;
		line-height: 25px;
		color: #fff;
		cursor: pointer;
	}

/*详细信息查看*/
	.courseinfor_show{
		width: 76%;
		margin: 20px 12%;
	}
	.courseinfor_show1,.courseinfor_show2,.courseinfor_show3{
		width: 100%;
		color: #333;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    border-radius: 5px;
	}
	.courseinfor_show2,.courseinfor_show3{
		height: 350px;
		overflow-y: auto; 
		margin-top: 20px;
	}

/*题目第一块*/
	.backbtn{
		height: 40px;
		width: 100%;
		/*line-height: 50px;*/
		font-size: 26px;
		color: #000;
		padding: 7px 20px;
		cursor: pointer;
		background-color: #f5f5f5;
	}
	.courseinfor{
		width: 92%;
		margin: 30px 4% 0px;
		height: 500px;
		background: rgba(144,210,177,0.5);
	}
	.courseinfor_show1_til,.courseinfor_show2_til,.courseinfor_show3_til{
		height: 40px;
		line-height: 40px;
		width: 100%;
		background-color: #f5f5f5;
		color: #000;
		font-size: 18px;
		font-weight: bold;
		padding: 0px 20px;
	}
		.con_til{
			height: 40px;
		    line-height: 40px;
		    /* float: left; */
		    font-weight: bold;
		    font-size: 22px;
		    margin: 25px 0px 0px 30px;
		}
			.con_til span{
				display: block;
			    float: left;
			    height: 30px;
			    width: 30px;
			    font-size: 14px;
			    line-height: 30px;
			    background: red;
			    color: #fff;
			    font-weight: normal;
			    border-radius: 3px;
			    text-align: center;
			    margin-top: 5px;
			    margin-right: 10px;
			}
		.con_xg{
			height: 40px;
			line-height: 40px;
			font-size: 16px;
			margin: 10px 70px;
		}
		.con_xg li{
			float: left;
			margin-right: 25px;
		}

/*第二块目录*/
	.courseinfor_show2_con{
		width: 95%;
		margin-left: 2.5%;
		
	}
	.courseinfor_show2_con ul li{
		height: 30px;
		line-height: 30px;
		font-size: 14px;
		margin-left: 30px;

	}
		
/*第三块评价*/
	.courseinfor_show3_con{
		width: 95%;
		margin-left: 2.5%;
	}
	.courseinfor_show3_con table td{
		line-height: 30px;
		padding: 10px 0px;
		font-size: 16px;
	}
	.courseinfor_show3_con table thead td:nth-child(1){
		width: 24%;
	}
	.courseinfor_show3_con table td:nth-child(1) span{
		float: right;
	}
	.courseinfor_show3_con table tr td:nth-child(2){
		width: 5%;
		text-align: center;
	}



</style>
</head>
 
<body>
<!-- 导航含回到主页的按钮 -->
	<div id="nav">
		<a href="quitServlet"><img src="img/logo1.png"></a>
	</div>
<div id="main">
	<!-- 四个选项处 -->
		<div id="cho_btn">
			<a href="manager1.jsp"><div class="cho_opt cho_opt1">
				<span class="am-icon-user"></span>
				<div class="describ">USERS</div>
			</div></a>
			<a href="manager2.jsp"><div class="cho_opt cho_opt2">
				<span class="am-icon-book"></span>
				<div class="describ">COURSES</div>
			</div></a>
			<a href="manager3.jsp"><div class="cho_opt cho_opt3">
				<span class="am-icon-users"></span>
				<div class="describ">TEAMS</div>
			</div></a>
			<a href="manager4.jsp"><div class="cho_opt cho_opt4">
				<span class="am-icon-file-text"></span>
				<div class="describ">NEWS</div>
			</div></a>
		</div>
	<!-- list -->
		<div id="course_list" style="display:block;">
			<div id="table_title">
				<span>所有课程</span> 
				<ul class="coursetypecho">
					<li style="background:#31708f;">前端</li>
					<li>后台</li>
					<li>移动端</li>
					<li>数据库</li>
				</ul>
			</div>
			<div class="list_table" style="display:block;">
				<table class="cl_qd">
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">课程名称</td>
							<td class="table_head">浏览量</td>
							<td class="table_head">评分</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#1001</td>
							<td>HTML5基础一</td>
							<td>18</td>
							<td>9.5</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1002</td>
							<td>HTML/CSS基础</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1003</td>
							<td>基于Bootstrap的响应式网站开发</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1004</td>
							<td>JavaScript基础</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1005</td>
							<td>进击Node.js基础（一）</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1006</td>
							<td>用字体在网页中画ICON图标</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1007</td>
							<td> Ajax基础（JS）</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1008</td>
							<td>数据库开发教程</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
						<tr>
							<td>#1009</td>
							<td>HTML5离线应用实战演练</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum1">查看</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="list_table" style="display:none;">
				<table class="cl_qd">
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">课程名称</td>
							<td class="table_head">浏览量</td>
							<td class="table_head">评分</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#2001</td>
							<td>C++远征之起航篇</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2002</td>
							<td>Java基础一</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2003</td>
							<td>PHP进阶篇-日期时间函数</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2004</td>
							<td>Java眼中的XML-文件读取</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2005</td>
							<td>Java实现数字签名</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2006</td>
							<td>Python环境搭建</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2007</td>
							<td>Python操作MySQL数据库</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2008</td>
							<td>Python开发简单爬虫</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
						<tr>
							<td>#2009</td>
							<td>C#开发轻松入门</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum2">查看</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="list_table" style="display:none;">
				<table class="cl_qd">
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">课程名称</td>
							<td class="table_head">浏览量</td>
							<td class="table_head">评分</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#3001</td>
							<td>Android基础</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3002</td>
							<td>Android数据库解析应用</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3003</td>
							<td>带你实现别样的Android侧滑菜单</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3004</td>
							<td>Android Apk多渠道打包</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3005</td>
							<td>Android软件安全与逆向分析</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3006</td>
							<td>iOS基础教程之SQLite数据库操作</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
						<tr>
							<td>#3007</td>
							<td>iOS基础教程之文档操作</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum3">查看</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="list_table" style="display:none;">
				<table class="cl_qd">
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">课程名称</td>
							<td class="table_head">浏览量</td>
							<td class="table_head">评分</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#4001</td>
							<td>MySQL基础</td>
							<td>0/td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						<tr>
							<td>#4002</td>
							<td>性能优化之MySQL优化</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						<tr>
							<td>#4003</td>
							<td>Oracle数据开发必备之SQL基础</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						<tr>
							<td>#4004</td>
							<td>Oracle触发器</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						<tr>
							<td>#4005</td>
							<td>Oracle高级查询</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						<tr>
							<td>#4006</td>
							<td>基于Bootstrap的响应式网站开发</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						
						<tr>
							<td>#4007</td>
							<td>数据库开发教程</td>
							<td>0</td>
							<td>8.0</td>
							<td><div class="viewxq vxqnum4">查看</div></td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<ul class="pagination"><!-- 翻页用了Bootstrap插件 -->
				<li class="disabled"><a href="##">&laquo;</a></li>
				<li class="active"><a href="##">1</a></li>
				<li><a href="##">2</a></li>
				<li><a href="##">3</a></li>
				<li><a href="##">&raquo;</a></li>
			</ul>

		</div>
	<!-- 查看详情 -->
		<div id="xdxq">
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>前</span>HTML5基础一</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 18</li>
								<li>评分： 9.5</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：HTML5开发前准备</li>
							<li>第一节：开发前的准备</li>
							<li>第二节：:快捷键</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：HTML5特性简介</li>
							<li>第一节：HTML5简介</li>
							<li>第二节：HTML5集成开发环境搭建</li>
							<li>第三节：HTML5基础详情</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：HTML5元素、属性和格式化</li>
							<li>第一节：HTML5元素简介及使用方法</li>
							<li>第二节：HTML5属性使用方法</li>
							<li>第三节：HTML5格式化及使用</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第四章：HTML5样式、链接和表格</li>
							<li>第一节：HTML5样式的使用</li>
							<li>第二节：HTML5链接属性及使用</li>
							<li>第三节：HTML5表格使用</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
							
								<tr>
									<td><span>浅伊_Erin</span></td>
									<td> : </td>
									<td>非常实用，也很详细，需要在实践中多练习！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>前</span> 222JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>前</span> 333JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="htxq">
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>后</span> 1JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>后</span> 2JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>后</span> 3JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="yddxq">
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>移</span> 1JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>移</span> 2J2avaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>移</span> 3JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="sjkxq">
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>数</span> 1JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>数</span> 2JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="courseinfor_show" style="display:none;">
				<div class="courseinfor_show1" style="height: 180px;">
					<div class="backbtn">
						<span class="am-icon-arrow-left"></span>
					</div>
					<div class="courseinfor_show1_con">
						<div class="con_til"><span>数</span> 3JavaScript入门教程</div>
						<div class="con_xg">
							<ul>
								<li>浏览量： 20</li>
								<li>评分： 8.0</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="courseinfor_show2">
					<div class="courseinfor_show2_til">目录</div>
					<div class="courseinfor_show2_con">
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第一章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第二章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
						<ul>
							<li style="font-size:16px;margin-left: 0px;border-bottom: 1px solid #bfbfbf;height:50px;padding:15px 0px 0px;">第三章：xxxxxxxxx</li>
							<li>第一节：xxxxxxxxxxxxxxxx</li>
							<li>第二节：xxxxxxxxxxxxx</li>
							<li>第三节：xxxxxxxx</li>
						</ul>
					</div>
				</div>

				<div class="courseinfor_show3">
					<div class="courseinfor_show3_til">评价</div>
					<div class="courseinfor_show3_con">
						<table>
							<thead>
								<tr>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
									<td style="height:20px;"></td>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书书对我帮助非常大强烈推荐对我帮助非常大强烈推荐！！！！</td>
								</tr>
								<tr>
									<td><span>蓝胖子。</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>Erin浅伊</span></td>
									<td> : </td>
									<td>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</td>
								</tr>
								<tr>
									<td><span>阿水12344</span></td>
									<td> : </td>
									<td>这本书对我帮助非常大强烈推荐！！！！</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
</div>
 
<script src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
// 返后键
	$(".backbtn").click(function(){
		$(".courseinfor_show").css("display","none");

		$("#course_list").css("display","block");
	});

// 课程筛选
	$(".coursetypecho li").click(function(){
		x=$(this).index();
		$(this).siblings(".coursetypecho li").css("background","#93b5c6");
		$(this).css("background","#31708f");
		$(".list_table").css("display","none");
		$(".list_table").eq(x).css("display","block");
	});
	
});

// 详情查看
	window.onload=function (){
		var oDiv1=document.getElementById("course_list");
		var aXqbtn1=document.getElementsByClassName("vxqnum1");
		var aXqbtn2=document.getElementsByClassName("vxqnum2");
		var aXqbtn3=document.getElementsByClassName("vxqnum3");
		var aXqbtn4=document.getElementsByClassName("vxqnum4"); 

		var oXdxq=document.getElementById("xdxq");
		var aXdxqshow=oXdxq.getElementsByClassName("courseinfor_show");

		var oHtxq=document.getElementById("htxq");
		var aHtxqshow=oHtxq.getElementsByClassName("courseinfor_show");

		var oYddxq=document.getElementById("yddxq");
		var aYddxqshow=oYddxq.getElementsByClassName("courseinfor_show");

		var oSjkxq=document.getElementById("sjkxq");
		var aSjkxqshow=oSjkxq.getElementsByClassName("courseinfor_show");

		for(var i=0;i<aXdxqshow.length;i++)
	      {
	        aXqbtn1[i].index=i;
	        aXqbtn1[i].onclick=function ()
	        {	
	        	oDiv1.style.display='none';
	           	aXdxqshow[this.index].style.display='block';
	        };
	      }
	    
	    for(var i=0;i<aHtxqshow.length;i++)
	      {
	        aXqbtn2[i].index=i;
	        aXqbtn2[i].onclick=function ()
	        {	
	        	oDiv1.style.display='none';
	           	aHtxqshow[this.index].style.display='block';
	        };
	      }
	    
	    for(var i=0;i<aYddxqshow.length;i++)
	      {
	        aXqbtn3[i].index=i;
	        aXqbtn3[i].onclick=function ()
	        {	
	        	oDiv1.style.display='none';
	           	aYddxqshow[this.index].style.display='block';
	        };
	      }
	    
	    for(var i=0;i<aSjkxqshow.length;i++)
	      {
	        aXqbtn4[i].index=i;
	        aXqbtn4[i].onclick=function ()
	        {	
	        	oDiv1.style.display='none';
	           	aSjkxqshow[this.index].style.display='block';
	        };
	      }
	};

</script>
</body>
</html>
