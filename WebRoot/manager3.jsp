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
	#team_list{
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
		width: 24%; 
	}
	.table_head:nth-child(3){
		width: 30%; 
	}
	.table_head:nth-child(4){
		width: 16%; 
	}
	.table_head:nth-child(5){
		width: 15%; 
	}
	.list_table table tbody tr td:nth-child(3) li{
		height: 30px;
		line-height: 30px;
		margin-left: 20px; 
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
		<div id="team_list">
			<div id="table_title">
				<span>所有小组</span> 
			</div>
			<div class="list_table">
				<table>
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">小组名称</td>
							<td class="table_head">小组成员</td>
							<td class="table_head">成立时间</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#001</td>
							<td>攻城战队</td>
							<td><ul>
								<li style="margin-left:0px;"><span class="am-icon-black-tie" style="margin-right:8px; color:red;"></span>阿水12344</li>
								<li>浅伊Erin</li>
								<li>蓝胖子。</li>
								<li>只是当时已惘然</li>
							</ul></td>
							<td>2017-4-20</td>
							<td><div class="viewxq">查看</div></td>
						</tr>
						<tr>
							<td>#002</td>
							<td>那些年的我们</td>
							<td><ul>
								<li style="margin-left:0px;"><span class="am-icon-black-tie" style="margin-right:8px; color:red;"></span>旧城</li>
								<li>惘然</li>
								<li>清风</li>
								<li>小丑</li>
							</ul></td>
							<td>2017-05-04</td>
							<td><div class="viewxq">查看</div></td>
						</tr>
						<tr>
							<td>#003</td>
							<td>Thinking</td>
							<td><ul>
								<li style="margin-left:0px;"><span class="am-icon-black-tie" style="margin-right:8px; color:red;"></span>famulei1</li>
								<li>famulei2</li>
								<li>famulei3</li>
							</ul></td>
							<td>2017-05-04</td>
							<td><div class="viewxq">查看</div></td>
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
	
</div>
 
<script src="js/jquery.js"></script>
<script type="text/javascript">

</script>
</body>
</html>
