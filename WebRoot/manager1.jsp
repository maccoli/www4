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
	#user_list{
		width: 76%;
		margin: 0px 12%;
		/*height: 500px;*/
		/*background-color: red;*/
	}
	#table_title{
		width: 100%;
		height: 60px;
		font-size: 24px;
		font-weight: bold;
		line-height: 50px;
		padding-left: 10px;
	}
	#user_list table{
		border-collapse: collapse;
		border: 1px solid #ddd;
		width: 100%;
	}
	#user_list table td{
		border: 1px solid #ddd;
		height: 50px;
		line-height: 50px;
		padding-left: 15px;
	}
	.table_head:nth-child(1){
		width: 12%; 
	}
	.table_head:nth-child(2){
		width: 20%; 
	}
	.table_head:nth-child(3){
		width: 35%; 
	}
	.table_head:nth-child(4){
		width: 17%; 
	}
	.table_head:nth-child(5){
		width: 16%; 
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
	.userinfor_show{
		width: 76%;
		margin: 20px 12%;
		color: #333;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    border-radius: 5px;
	}
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
	.userinfor{
		width: 92%;
		margin: 30px 4% 0px;
		/*height: 500px;*/
		padding-bottom: 30px;
		/*background: rgba(144,210,177,0.5);*/
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
		<div id="user_list" style="display:block;">
			<div id="table_title">所有用户</div>
			<table>
				<thead>
					<tr>
						<td class="table_head">ID</td>
						<td class="table_head">账号</td>
						<td class="table_head">昵称</td>
						<td class="table_head">注册时间</td>
						<td class="table_head">操作</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>#001</td>
						<td>13568745221</td>
						<td>阿水12344</td>
						<td>2017-4-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#002</td>
						<td>15478452250</td>
						<td>浅伊Erin</td>
						<td>2017-3-22</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#003</td>
						<td>12247586111</td>
						<td>蓝胖子。</td>
						<td>20147-2-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#001</td>
						<td>13568745221</td>
						<td>阿水12344</td>
						<td>2017-4-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#002</td>
						<td>15478452250</td>
						<td>浅伊Erin</td>
						<td>2017-3-22</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#003</td>
						<td>12247586111</td>
						<td>蓝胖子。</td>
						<td>20147-2-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#001</td>
						<td>13568745221</td>
						<td>阿水12344</td>
						<td>2017-4-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#002</td>
						<td>15478452250</td>
						<td>浅伊Erin</td>
						<td>2017-3-22</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
					<tr>
						<td>#003</td>
						<td>12247586111</td>
						<td>蓝胖子。</td>
						<td>20147-2-17</td>
						<td><div class="viewxq">查看</div></td>
					</tr>
				</tbody>
			</table>
			<ul class="pagination"><!-- 翻页用了Bootstrap插件 -->
				<li class="disabled"><a href="##">&laquo;</a></li>
				<li class="active"><a href="##">1</a></li>
				<li><a href="##">2</a></li>
				<li><a href="##">3</a></li>
				<li><a href="##">&raquo;</a></li>
			</ul>

		</div>
	<!-- 查看详情 -->
		<div class="userinfor_show" style="display:none;">
			<div class="backbtn">
				<span class="am-icon-arrow-left"></span>
			</div>
			<div class="userinfor">
				<table class="table" style="width:500px;margin:0 auto">
					<tbody>
						<tr>
							<th>头　　像：</th>
							<td>
								<img src="img/tx/t1.jpg" alt="" style="width:80px;height:80px;">
							</td>
						</tr>
						<tr>
							<th>昵　　称：</th>
							<td>阿水12344</td>
						</tr>
						<tr>
							<th>性　　别：</th>
							<td>
								女
							</td>
						</tr>
						<tr>
							<th>手机号码：</th>
							<td>17826808793</td>
						</tr>
						<tr>
							<th>成长分值：</th>
							<td>200</td>
						</tr>
						<tr>
							<th>个性签名：</th>
							<td>我就是我，不一样的烟火</td>
						</tr>
						<tr>
							<th>个人荣誉：</th>
							<td>准备参加全国计算机大赛</td>
						</tr>
						<tr>
							<th>联系方式：</th>
							<td>qq：1292640216</td>
						</tr>
						<tr>
							<th>归属小组：</th>
							<td>攻城小组</td>
						</tr>
					</tbody>
				</table>
				<div style="width:400px;height:400px;margin:10px auto;">
					<canvas id="myChart1" width="400" height="400" style="background:#fff;float:left;"></canvas>
				</div>
				<div class="am-panel-group" id="accordion" style="width:500px;margin:0 auto;">
	                <div class="am-panel am-panel-default">
	                    <div class="am-panel-hd">
	                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-31'}">本周任务</h4>
	                    </div>
	                    <div id="do-not-say-31" class="am-panel-collapse am-collapse">
	                        <div class="am-panel-bd">
	                            <p>
	                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
	                                学习bootstrap的前三章。<br>
	                                完成练习1。<br>
	                                写总结。<br>
	                            </p>
	                            <p>
	                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
	                                复习昨天学习的<br>
	                            </p>
	                        </div>
	                    </div>
	                </div>
	                <div class="am-panel am-panel-default">
	                    <div class="am-panel-hd">
	                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-32'}">今日动态</h4>
	                    </div>
	                    <div id="do-not-say-32" class="am-panel-collapse am-collapse">
	                        <div class="am-panel-bd">
	                            <p>
	                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
	                                学习bootstrap的前三章。<br>
	                                完成练习1。<br>
	                                写总结。<br>
	                            </p>
	                            <p>
	                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
	                                复习昨天学习的<br>
	                            </p>
	                        </div>
	                    </div>
	                </div>
	            </div>
			</div>
		</div>
		<div class="userinfor_show" style="display:none;">
			<div class="backbtn">
				<span class="am-icon-arrow-left"></span>
			</div>
			<div class="userinfor">
				
					<table class="table" style="width:500px;margin:0 auto">
						<tbody>
							<tr>
								<th>头　　像：</th>
								<td>
									<img src="img/tx/t21.jpg" alt="" style="width:80px;height:80px;">
								</td>
							</tr>
							<tr>
								<th>昵　　称：</th>
								<td>浅伊Erin</td>
							</tr>
							<tr>
								<th>性　　别：</th>
								<td>
									女
								</td>
							</tr>
							<tr>
								<th>手机号码：</th>
								<td>17826808793</td>
							</tr>
							<tr>
								<th>成长分值：</th>
								<td>200</td>
							</tr>
							<tr>
								<th>个性签名：</th>
								<td>我就是我，不一样的烟火</td>
							</tr>
							<tr>
								<th>个人荣誉：</th>
								<td>准备参加全国计算机大赛</td>
							</tr>
							<tr>
								<th>联系方式：</th>
								<td>qq：1292640216</td>
							</tr>
							<tr>
								<th>归属小组：</th>
								<td>攻城小组</td>
							</tr>
						</tbody>
					</table>
					<div style="width:400px;height:400px;margin:10px auto;">
						<canvas id="myChart2" width="400" height="400" style="background:#fff;float:left;"></canvas>
					</div>
					<div class="am-panel-group" id="accordion" style="width:500px;margin:0 auto;">
		                <div class="am-panel am-panel-default">
		                    <div class="am-panel-hd">
		                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-31'}">本周任务</h4>
		                    </div>
		                    <div id="do-not-say-31" class="am-panel-collapse am-collapse">
		                        <div class="am-panel-bd">
		                            <p>
		                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
		                                学习bootstrap的前三章。<br>
		                                完成练习1。<br>
		                                写总结。<br>
		                            </p>
		                            <p>
		                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
		                                复习昨天学习的<br>
		                            </p>
		                        </div>
		                    </div>
		                </div>
		                <div class="am-panel am-panel-default">
		                    <div class="am-panel-hd">
		                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-32'}">今日动态</h4>
		                    </div>
		                    <div id="do-not-say-32" class="am-panel-collapse am-collapse">
		                        <div class="am-panel-bd">
		                            <p>
		                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
		                                学习bootstrap的前三章。<br>
		                                完成练习1。<br>
		                                写总结。<br>
		                            </p>
		                            <p>
		                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
		                                复习昨天学习的<br>
		                            </p>
		                        </div>
		                    </div>
		                </div>
		            </div>
			</div>
		</div>
		<div class="userinfor_show" style="display:none;">
			<div class="backbtn">
				<span class="am-icon-arrow-left"></span>
			</div>
			<div class="userinfor">
					<table class="table" style="width:500px;margin:0 auto">
						<tbody>
							<tr>
								<th>头　　像：</th>
								<td>
									<img src="img/tx/t2.jpg" alt="" style="width:80px;height:80px;">
								</td>
							</tr>
							<tr>
								<th>昵　　称：</th>
								<td>蓝胖子。</td>
							</tr>
							<tr>
								<th>性　　别：</th>
								<td>
									男
								</td>
							</tr>
							<tr>
								<th>手机号码：</th>
								<td>17826808793</td>
							</tr>
							<tr>
								<th>成长分值：</th>
								<td>200</td>
							</tr>
							<tr>
								<th>个性签名：</th>
								<td>我就是我，不一样的烟火</td>
							</tr>
							<tr>
								<th>个人荣誉：</th>
								<td>准备参加全国计算机大赛</td>
							</tr>
							<tr>
								<th>联系方式：</th>
								<td>qq：1292640216</td>
							</tr>
							<tr>
								<th>归属小组：</th>
								<td>攻城小组</td>
							</tr>
						</tbody>
					</table>
					<div style="width:400px;height:400px;margin:10px auto;">
						<canvas id="myChart3" width="400" height="400" style="background:#fff;float:left;"></canvas>
					</div>
					<div class="am-panel-group" id="accordion" style="width:500px;margin:0 auto;">
		                <div class="am-panel am-panel-default">
		                    <div class="am-panel-hd">
		                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-31'}">本周任务</h4>
		                    </div>
		                    <div id="do-not-say-31" class="am-panel-collapse am-collapse">
		                        <div class="am-panel-bd">
		                            <p>
		                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
		                                学习bootstrap的前三章。<br>
		                                完成练习1。<br>
		                                写总结。<br>
		                            </p>
		                            <p>
		                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
		                                复习昨天学习的<br>
		                            </p>
		                        </div>
		                    </div>
		                </div>
		                <div class="am-panel am-panel-default">
		                    <div class="am-panel-hd">
		                        <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-32'}">今日动态</h4>
		                    </div>
		                    <div id="do-not-say-32" class="am-panel-collapse am-collapse">
		                        <div class="am-panel-bd">
		                            <p>
		                                <span class="glyphicon glyphicon-ok" style="color:green;">已完成的：</span><br>
		                                学习bootstrap的前三章。<br>
		                                完成练习1。<br>
		                                写总结。<br>
		                            </p>
		                            <p>
		                                <span class="glyphicon glyphicon-remove" style="color:red;">未完成的：</span><br>
		                                复习昨天学习的<br>
		                            </p>
		                        </div>
		                    </div>
		                </div>
		            </div>
			</div>
		</div>
</div>
 
<script src="js/jquery.js"></script>
<script src="js/amazeui.min.js"></script>
<script src="js/chart.js"></script>
<script type="text/javascript">
$(function(){
	$(".backbtn").click(function(){
		$(".userinfor_show").css("display","none");
		$("#user_list").css("display","block");
	});
	
});
window.onload=function (){
// 个人任务图 			// @ajax：
	function chart1(){
		console.log(this.id);
	        var data = {
	       			labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
	       			datasets : [
	               // 灰色的
	               {
	                   fillColor : "rgba(220,220,220,0.5)",
	                   strokeColor : "rgba(220,220,220,1)",
	                   pointColor : "rgba(220,220,220,1)",
	                   pointStrokeColor : "#fff",
	                   data : [90,70,90,100,90,80,95]
	               },
	               // 蓝色的
	               {
	                   fillColor : "rgba(151,187,205,0.5)",
	                   strokeColor : "rgba(151,187,205,1)",
	                   pointColor : "rgba(151,187,205,1)",
	                   pointStrokeColor : "#fff",
	                   data : [65,59,90,81,56,100,0]
	               }
	           ]
	      	};
	      	var ctx1 = document.getElementById("myChart1").getContext("2d");
	      	var myNewChart1 = new Chart(ctx1).Line(data);
	}
	var x1="0",x2="0",x3="0";
	$(".viewxq").click(function(){
		if(x1=="0"){
			chart1();
			x1="1";
		}
		if(x2=="0"){
			chart2();
			x2="1";
		}
		if(x3=="0"){
			chart3();
			x3="1";
		}
	})
	var oDiva=document.getElementById("user_list");
	var aDiva=document.getElementsByClassName("viewxq");
	var aDivb=document.getElementsByClassName("userinfor_show");
	for(var i=0;i<aDivb.length;i++)
      {
        aDiva[i].index=i;
        aDiva[i].onclick=function ()
        {	
        	oDiva.style.display='none';
           	aDivb[this.index].style.display='block';
        };
      }
      function chart2(){
		console.log(this.id);
	        var data = {
	       			labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
	       			datasets : [
	               // 灰色的
	               {
	                   fillColor : "rgba(220,220,220,0.5)",
	                   strokeColor : "rgba(220,220,220,1)",
	                   pointColor : "rgba(220,220,220,1)",
	                   pointStrokeColor : "#fff",
	                   data : [90,70,90,100,90,80,95]
	               },
	               // 蓝色的
	               {
	                   fillColor : "rgba(151,187,205,0.5)",
	                   strokeColor : "rgba(151,187,205,1)",
	                   pointColor : "rgba(151,187,205,1)",
	                   pointStrokeColor : "#fff",
	                   data : [65,59,90,81,56,100,0]
	               }
	           ]
	      	};
	      	var ctx1 = document.getElementById("myChart2").getContext("2d");
	      	var myNewChart2 = new Chart(ctx1).Line(data);
	}
	
	var oDiv1=document.getElementById("user_list");
	var aDiv1=document.getElementsByClassName("viewxq");
	var aDiv2=document.getElementsByClassName("userinfor_show");
	for(var i=0;i<aDiv2.length;i++)
      {
        aDiv1[i].index=i;
        aDiv1[i].onclick=function ()
        {	
        	oDiv1.style.display='none';
           	aDiv2[this.index].style.display='block';
        };
      }function chart1(){
		console.log(this.id);
	        var data = {
	       			labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
	       			datasets : [
	               // 灰色的
	               {
	                   fillColor : "rgba(220,220,220,0.5)",
	                   strokeColor : "rgba(220,220,220,1)",
	                   pointColor : "rgba(220,220,220,1)",
	                   pointStrokeColor : "#fff",
	                   data : [90,70,90,100,90,80,95]
	               },
	               // 蓝色的
	               {
	                   fillColor : "rgba(151,187,205,0.5)",
	                   strokeColor : "rgba(151,187,205,1)",
	                   pointColor : "rgba(151,187,205,1)",
	                   pointStrokeColor : "#fff",
	                   data : [65,59,90,81,56,100,0]
	               }
	           ]
	      	};
	      	var ctx1 = document.getElementById("myChart1").getContext("2d");
	      	var myNewChart1 = new Chart(ctx1).Line(data);
	}
	var oDivc=document.getElementById("user_list");
	var aDivc=document.getElementsByClassName("viewxq");
	var aDivd=document.getElementsByClassName("userinfor_show");
	for(var i=0;i<aDivd.length;i++)
      {
        aDivc[i].index=i;
        aDivc[i].onclick=function ()
        {	
        	oDiv1.style.display='none';
           	aDivd[this.index].style.display='block';
        };
      }function chart3(){
		console.log(this.id);
	        var data = {
	       			labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
	       			datasets : [
	               // 灰色的
	               {
	                   fillColor : "rgba(220,220,220,0.5)",
	                   strokeColor : "rgba(220,220,220,1)",
	                   pointColor : "rgba(220,220,220,1)",
	                   pointStrokeColor : "#fff",
	                   data : [90,70,90,100,90,80,95]
	               },
	               // 蓝色的
	               {
	                   fillColor : "rgba(151,187,205,0.5)",
	                   strokeColor : "rgba(151,187,205,1)",
	                   pointColor : "rgba(151,187,205,1)",
	                   pointStrokeColor : "#fff",
	                   data : [65,59,90,81,56,100,0]
	               }
	           ]
	      	};
	      	var ctx1 = document.getElementById("myChart3").getContext("2d");
	      	var myNewChart = new Chart(ctx1).Line(data);
      }
};

</script>
</body>
</html>
