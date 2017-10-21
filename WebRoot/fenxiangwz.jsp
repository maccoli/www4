<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import = "com.www2.bean.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--
Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
	<meta charset="utf-8">
	<title>新建分享</title>
	<!-- 1）导入ckeditor.js，注意config.js应该在同级目录 -->
	<script src="ckeditor/ckeditor.js"></script>
	<script src="js/sample.js"></script>
	<link rel="stylesheet" href="css/samples.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/amazeui_deng.min.css">
		<link rel="stylesheet" href="css/nav_deng0.css">
		<!-- 导航栏css导入结束--> 
	<style>
		html{width: 100%;height: 100%;}
		body{width: 100%;height: 100%;background:url(img/999.png) left top #f5f5f5;overflow: hidden;/*position: relative;margin:0 auto;*/}
		/*.editor{position: absolute;top: 50%;left: 50%;translate(-50%,-50%);}*/
		#article_title{width:70%;margin: 5px 10px 5px 0px; float: left; }
		#article_type{width:20%;margin: 5px 10px 5px 0px; float: left; }

	</style>
</head>
<body>
    <div id="nav">
        <div id="daohang">
            <a href="index.jsp">
                <span class="am-icon-home" style="color:#fff;font-size:30px;"></span>
            </a>
        </div>
        <div id="user" class="e dropdown">
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
        </div>
        <form><a href="course_choose.jsp">
            <input id="search-input" type="text" value="" placeholder="请输入搜索内容..." />
        </form></a>
        <div id="log" style="margin:-10px auto">
            <img src="img/logo1.png">
        </div>
    </div>

	<div class="editor" style="width:1000px;margin:20px auto;">
		<form action="">
			<input id="article_title" type="text" value="" placeholder="输入标题" class="form-control">
			<select id="article_type" name="article_type" id="" class="form-control">
				<option value="1">请选择文章类型</option>
				<option value="前端">前端</option>
				<option value="后台">后台</option>
				<option value="移动">移动</option>
				<option value="数据库">数据库</option>
			</select>
			<div style="clear:both"></div>
			<textarea name="content"></textarea>
			<script>CKEDITOR.replace('content')</script>
			<button class="btn btn-success" id="editor_submit" type="submit" style="margin-top:10px;float:right;">提交</button>
		</form>
	</div>

<script src="js/jquery.js"></script>
    <!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
		<!-- 导航栏js导入结束 -->
<script>
	initSample();
</script>
<script>
	window.onload=function(){
		var oEditor_con = document.getElementById("editor");
		var oEditor_btn = document.getElementById("editor_submit");
		// alert("aaa"+oEditor_con.innerHTML);
		oEditor_btn.onclick=function(){
			if($("#article_title").val()==""){
				alert("标题不可以为空！");
			}
			else if($("#article_type").val()=="1"){
				alert("文章类型不能为空！");
			}
        	else if(CKEDITOR.instances.content.getData()==""){
				alert("内容不能为空！");
			}
			else{
				
				var json = {};//新建一个json对象
				//文章标题articleTitle，文章类型articleType，文章内容articleCon
				json.articleTitle = $("#article_title").val();
				json.articleType = $("#article_type").val();
				json.articleCon = CKEDITOR.instances.content.getData().replace(/\"/g,"\\\"");
				// alert(json.articleCon);
				console.log(json.articleCon);
				console.log(json.articleTitle+json.articleType+json.articleCon);

				$.ajax({
					url : 'warticle.share',
					type : 'POST',
					data : json,
					success : function(){
						alert("恭喜提交成功！");
						console.log("成功更新数据~");
					},
					error : function(){
						console.log("服务器连接失败，数据更新失败");
					}
				})
			}
			return false;
		};
		var oSize = window.screen.height;
		if(oSize>800){
	    	document.getElementsByTagName("body")[0].style.paddingTop="50px";
		}
	};
</script>
</body>
</html>
