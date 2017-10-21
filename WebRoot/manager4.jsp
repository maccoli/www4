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
	#news_list{
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
		padding: 0px 15px;
	}
	.table_head:nth-child(1){
		width: 10%; 
	}
	.table_head:nth-child(2){
		width: 28%; 
		overflow: 
	}
	.table_head:nth-child(3){
		width: 15%; 
	}
	.table_head:nth-child(4){
		width: 16%; 
	}
	.table_head:nth-child(5){
		width: 31%; 
	}
	.viewxq,.editxq,.deletexq{
		width: 60px;
		height: 25px;
		/*background-color: #5cb85c;*/
		border-radius: 3px;
		font-size: 13px;
		text-align: center;
		line-height: 25px;
		margin-right: 5px;
		color: #fff;
		cursor: pointer;
		float: left;
	}
	.editxq{
		background-color: #fd4f27;
	}
	.viewxq{
		background-color: #5cb85c;
	}
	.deletexq{
		background-color: #0589ca;
	}

/*添加新消息*/
	#addnews{
		width: 100%;
		margin: 20px 0px;
		/*height: 500px; */
	}
	.an_title{
		height: 60px;
		line-height: 60px;
		font-size: 24px;
		letter-spacing: 1px;
		font-weight: bold;
		padding-left: 10px;
	}
	.an_con{
		width: 100%;
		border-radius: 5px;
		/*height: 500px;*/
		color: #31708f;
		padding-bottom: 20px;
    	background-color: #d9edf7;
    	border: 1px solid #bce8f1;
	}
	.an_con table{
		width: 100%;
		margin: 10px 0px;
	}
		.an_con_ts{
			height: 60px;
			width: 10%;
			font-size:18px; 
			text-align: right;
			line-height: 60px;
		}
		.an_con_input{
			padding: 13px 10px; 
		}
		.an_con_type{
			height: 60px;
			line-height: 60px;
			width: 80%;
		}
		.an_con_type span{
			font-size: 18px;
			margin: 0px 8px 0px 20px;
			cursor: pointer;
		}
	#addnew_sub{
		margin-left:800px; 
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
		<div id="news_list">
			<div id="table_title">
				<span>所有消息</span> 
			</div>
			<div class="list_table">
				<table>
					<thead>
						<tr>
							<td class="table_head">ID</td>
							<td class="table_head">消息名称</td>
							<td class="table_head">类型</td>
							<td class="table_head">发布时间</td>
							<td class="table_head">操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#001</td>
							<td>微软2017挑战赛</td>
							<td>大赛通知</td>
							<td>2017-04-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#002</td>
							<td>第十五届挑战杯</td>
							<td>大赛通知</td>
							<td>2017-04-19</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#003</td>
							<td>H5前段</td>
							<td>招聘信息</td>
							<td>2017-04-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#004</td>
							<td>python开发工程师</td>
							<td>招聘信息</td>
							<td>2017-04-24</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#005</td>
							<td>2017全国计算机设计大</td>
							<td>大赛通知</td>
							<td>2017-04-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#001</td>
							<td>2017浙江多媒体大赛</td>
							<td>大赛通知</td>
							<td>2017-04-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#002</td>
							<td>贷款超市H5设计</td>
							<td>实训任务</td>
							<td>2017-04-27</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#003</td>
							<td>2017华为创想杯</td>
							<td>大赛通知</td>
							<td>2017-4-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#004</td>
							<td>2017国创报名</td>
							<td>大赛通知</td>
							<td>2017-4-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
						</tr>
						<tr>
							<td>#005</td>
							<td>2017全国计算机设计大在报名通...</td>
							<td>大赛通知</td>
							<td>2017-4-20</td>
							<td><div class="editxq">编辑</div><div class="viewxq">查看</div><div class="deletexq">删除</div></td>
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

			<div id="addnews">
				<div class="an_title">添加新消息</div>
				<div class="an_con">
					<form>
						<table>
							<tr>
								<td class="an_con_ts">标题：</td>
								<td class="an_con_input"><input type="text" id="addnew_til" class="form-control" required="required" placeholder="输入新消息标题..." style="width:60%;" /> </td>
							</tr>
							<tr>
								<td class="an_con_ts">类型：</td>
								<td class="an_con_type"><span class="am-icon-circle-o"></span>招聘信息<span class="am-icon-circle-o"></span>大赛通知<span class="am-icon-circle-o"></span>实训任务<span class="am-icon-circle-o"></span>学员故事<span class="am-icon-circle-o"></span>系统消息</td>
							</tr>
							<tr>
								<td class="an_con_ts">内容：</td>
								<td class="an_con_input"><textarea class="form-control" rows="13" style="width:94%;" placeholder="输入新消息内容..."></textarea></td>
							</tr>
						</table>
						<input type="submit" id="addnew_sub" class="btn btn-primary" value="发布">
					</form>
				</div>
			</div>

		</div>
	
</div>
 
<script src="js/jquery.js"></script>
<script type="text/javascript">

$(function(){
	$(".an_con_type span").click(function(){
		$(this).siblings(".an_con_type span").attr("class","am-icon-circle-o");
		$(this).attr("class","am-icon-dot-circle-o");
	});
});
</script>
</body>
</html>
