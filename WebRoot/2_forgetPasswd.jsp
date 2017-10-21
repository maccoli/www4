<%@page import="com.www2.bean.Search"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>忘记密码</title>
	<meta charset="UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
	<!-- 1/1、导航栏css导入开始-->
		<!-- <link rel="stylesheet" href="css/amazeui_deng.min.css"> -->
		<!-- <link rel="stylesheet" href="css/nav_deng.css"> -->
	<!-- 导航栏css导入结束-->
	

	<style>
		html{width:100%;height: 100%;}
		body{width:100%;height: 100%;background:url(img/999.png) left top #f5f5f5;padding-top: 100px;}
		#nav{width: 100%;height: 60px;background: black;position: fixed;}
		/*步骤*/
			#tab{height: 150px;width: 100%;margin: 0px auto; text-align: center;padding-top: 25px;}
				.tab_box{height: 100px;width: 760px;margin: 0px auto;color:#999;}
					.tab{width: 100px;height: 100px;line-height:80px;margin:0;
						border:10px solid #999;border-radius: 50%;
						font-size: 60px;font-weight: bold;float:left}
					.tab1{color:#ff7400;border-color:#ff7400; }
					.jiantou{width: 120px;height: 100px;line-height: 100px;margin:0px;float:left;font-size: 35px;color:#999;}
		/*内容*/
			.con{height: 400px;width: 1200px;margin:0px auto;;border-top: 5px solid #ff7400;}
				.beforeBtn{width:15%;height: 100%;float:left;}
				.beforeBtn1{width:15%;height: 100%;float:left;}
				.nextBtn{width:15%;height: 100%;float:left;}
				.nextBtn1{width:15%;height: 100%;float:left;}
					.span_btn{font-size: 50px;text-align: center;;width: 100%;color:#ccc; height: 400px;line-height: 400px;cursor: pointer;}
				.content{width: 70%;height: 100%;position: relative;float:left;}
				.con{display: none;}
				.con1{display: block;}
				.con form{/*background: red;*/width: 500px;margin: 0 auto;position: absolute;top: 50%;left: 50%;-ms-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);-o-transform: translate(-50%,-50%);transform: translate(-50%,-50%); }


		/*#yanzheng{height: 83px;line-height: 39px;}
		#yanzheng span{display: block;width: 100%;height: 14px;line-height: 14px;margin-bottom: 5px;}
		#yanzheng input{width:100px;display:block;float:left;margin-right:5px;}
		#yanzheng img{height:39px;width:65px;display:block;float:left;margin:0 5px;}
		#yanzheng a{width:10px;text-algin:center;display:block;float:left;font-size:2px;font-weight:20;margin-left:0px;color:#666;}*/
	</style>
</head>
<body>
   	<!-- 1/2、导航栏开始-->
	    <div id="nav">
	        <div id="log">
	            <img src="img/logo1.png">
	        </div>
	    </div>
    <!-- 导航栏结束 -->

	<div id="tab">
		<div class="tab_box">
			<span class="tab tab1">1</span><span class="jiantou glyphicon glyphicon-arrow-right"></span>
			<span class="tab tab2">2</span><span class="jiantou glyphicon glyphicon-arrow-right"></span>
			<span class="tab tab3">3</span><span class="jiantou glyphicon glyphicon-arrow-right"></span>
			<span class="tab tab4">4</span>
		</div>
	</div>

	<div id="con">
		<!-- 验证码： -->
			<div class="con con1">
				<div class="beforeBtn1">
					<!-- <span class="span_btn glyphicon glyphicon-menu-left"></span> -->
				</div>
				<div class="content">
					<form class="form-horizontal" role="form">
					  <div class="form-group">
					  	<label class="col-sm-3 control-label">手机号：</label>
					  	<div class="col-sm-9">
					  		<input type="text" class="form-control" required="required" >
					  	</div>
					  </div>
					  <div class="form-group">
					  	<label class="col-sm-3 control-label">验证码：</label>
					  	<div class="col-sm-5">
					  		<input type="text" class="form-control" required="required">
					  	</div>
					  	<div class="col-sm-2">
					  		<img src="img/yzm.png">
					  	</div>
					  	<div class="col-sm-2">
					  		<a href="##">换</a>
					  	</div>
					  </div>
					  <div class="form-group">
					  	<div class="col-sm-offset-3 col-sm-8">
					  		<button type="submit" class="btn btn-success" style="float:right;" id="f1_btn">提交</button>
					  	</div>
					  </div>
					</form>
				</div>
				<div class="nextBtn">
					<span class="span_btn glyphicon glyphicon-menu-right"></span>
				</div>
			</div>
		<!-- 手机验证码 -->
			<div class="con con2">
				<div class="beforeBtn">
					<span class="span_btn glyphicon glyphicon-menu-left"></span>
				</div>
				<div class="content">
					<form class="form-horizontal" role="form">
					  <div class="form-group">
					  	<label class="col-sm-3 control-label">手机号：</label>
					  	<div class="col-sm-9">
					  		<input type="text" class="form-control" required="required" disabled="disabled" value="17836808793">
					  	</div>
					  </div>
					  <div class="form-group">
					  	<label class="col-sm-3 control-label">验证码：</label>
					  	<div class="col-sm-4">
					  		<input type="text" class="form-control" required="required">
					  	</div>
					  	<div class="col-sm-5">
					  		<button class="btn btn-sm" disabled="disabled" style="margin:0 0px;">再次获取验证码(<span id="yz_time">60</span>)</button>
					  	</div>
					  </div>
					  <div class="form-group">
					  	<div class="col-sm-offset-3 col-sm-8">
					  		<button type="submit" class="btn btn-success" style="float:right;">提交</button>
					  	</div>
					  </div>
					</form>
				</div>	
				<div class="nextBtn">
					<span class="span_btn glyphicon glyphicon-menu-right"></span>
				</div>
			</div>	
		<!-- 设置新密码 -->
			<div class="con con3">
				<div class="beforeBtn">
					<span class="span_btn glyphicon glyphicon-menu-left"></span>
				</div>
				<div class="content">
					<form class="form-horizontal" role="form">
					  <div class="form-group">
					  	<label class="col-sm-4 control-label">输入新密码：</label>
					  	<div class="col-sm-8">
					  		<input type="password" class="form-control" required="required">
					  	</div>
					  </div>
					  <div class="form-group">
					  	<label class="col-sm-4 control-label">确认新密码：</label>
					  	<div class="col-sm-8">
					  		<input type="text" class="form-control" required="required">
					  	</div>
					  </div>
					  <div class="form-group">
					  	<div class="col-sm-offset-4 col-sm-8">
					  		<button type="submit" class="btn btn-success" style="float:right;">提交</button>
					  	</div>
					  </div>
					</form>
				</div>	
				<div class="nextBtn">
					<span class="span_btn glyphicon glyphicon-menu-right"></span>
				</div>
			</div>
		<!-- 恭喜成功 -->
			<div class="con con4">
				<div class="beforeBtn1">
					<!-- <span class="span_btn glyphicon glyphicon-menu-left"></span> -->
				</div>
				<div class="content">
					<form><h3>密码重新设置成功！</h3></form>
				</div>	
				<div class="nextBtn1">
					<!-- <span class="span_btn glyphicon glyphicon-menu-right"></span> -->
				</div>
			</div>
	</div>
	<div style="clear: both;"></div>
    <div id="footer">
        <div id="footer_contain">
            <div id="footer_yqlj">
                友情链接：
                <a href="http://blog.csdn.net/">博客</a>
                <a href="http://www.imooc.com/">慕课网</a>
                <a href="http://www.ui.cn/">UI设计</a>
                <a href="http://huaban.com/">花瓣网</a>
                <a href="http://www.bootcss.com/">Bootstrap中文网</a>
                <a href="https://github.com/">GitHub</a>
                
            </div>
        </div>
    </div>

	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
	<!-- 导航栏js导入结束 -->

	<script>
		window.onload =  function(){
			var oCon = document.getElementById("con");
			var oTab = document.getElementById("tab");

			// var oBtn1 = document.getElementById("f1_btn");
			
			var aTab = oTab.getElementsByClassName("tab");
			var aJian = oTab.getElementsByClassName("jiantou");
			var aBtn_b = oCon.getElementsByClassName("beforeBtn");
			var aBtn_n = oCon.getElementsByClassName("nextBtn");
			var aCon = oCon.getElementsByClassName("con");

			for(var j=0;j<aBtn_n.length;j++){
				aBtn_n[j].index=j;
				aBtn_n[j].onclick = function(){

					for(var i=0;i<aCon.length;i++){
						aCon[i].style.display="none";
						aTab[i].style.color="#999";
						aTab[i].style.borderColor="#999";
					}
					aCon[this.index-0+1].style.display="block";

					for(var z=0;z<=this.index+1;z++){
						aTab[z].style.color="#ff7400";
						aTab[z].style.borderColor="#ff7400";
					}
					for(var q=0;q<aJian.length;q++){
						aJian[q].style.color="#999";
						console.log("aaa");
					}

					for(var p=0;p<=this.index;p++){
						aJian[p].style.color="#ff7400";
						console.log("bbb");
					}
				};
			}

			for(var i=0;i<aBtn_b.length;i++){
				aBtn_b[i].index=i;
				aBtn_b[i].onclick = function(){
					for(var j=0;j<aCon.length;j++){
						aCon[j].style.display="none";
						aTab[j].style.color="#999";
						aTab[j].style.borderColor="#999";
					}
					aCon[this.index].style.display="block";
					for(var z=0;z<=this.index;z++){
						aTab[z].style.color="#ff7400";
						aTab[z].style.borderColor="#ff7400";
					}
					for(var q=0;q<aJian.length;q++){
						aJian[q].style.color="#999";
					}
					for(var p=0;p<this.index;p++){
						aJian[p].style.color="#ff7400";
					}
				};
			}
		};
	</script>
</body>
</html>