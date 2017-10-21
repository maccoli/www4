<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import = "com.www2.bean.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>***小组的主页</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/history.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 

	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/amazeui_deng.min.css">
		<link rel="stylesheet" href="css/nav_deng.css">
	<!-- 导航栏css导入结束-->

	<style>
		html{width: 100%;height: 100%;}
		body{width: 100%;height: 1060px;background: #d9e6d9;}
		#team_ren{width: 100%;height: 500px;background: #fff;}
			#team_ren .title{width: 100%;height: 140px;padding-left: 100px;text-indent:0px;}
				#team_ren .title h1{line-height: 140px;height: 140px;font-weight: 700;margin-top: 0px;font-size: 36px;}
			.team_ren{width:1060px;height: 360px;margin: 0 auto;}
			/*width=(245+20)*4=265*4=1060px*/
				.ren{width:245px;height: 285px;position: relative; float: left;margin:0 10px;}
					.kuang{width: 235px;height: 200px;position: absolute;}
					.ren_tx{width: 200px;height: 200px;position: absolute;display: none;}
						.ren_tx img{width: 200px;height: 200px;}
					.ren_info{width: 200px;height: 60px;position: absolute;bottom: 0px;display: none;}
						.ren_info h5{font-weight: 700;font-size: 20px;}
						.ren_info h5 a{color: black;}
						.ren_info  h5 span{font-size: 12px;color: #999;}
					.kuang1{left: 0px;border:5px solid #00cc66;}
					.ren_tx1{right: 0px;top:25px;}
					.ren_info1{left: 45px;}

					.kuang2{left: 0px;top:25px;border:5px solid #99ff66;}
					.ren_tx2{right: 0px;}
					.ren_info2{left: 45px;}

					.kuang3{right: 0px;border:5px solid #00cc66;}
					.ren_tx3{left: 0px;top:25px;}

					.kuang4{right: 0px;top: 25px;border:5px solid #99ff66;}
					.ren_tx4{left: 0px;}
		#team_record{width: 100%;height: 540px;}/*时间轴调高1/3*/	
		#close{width: 30px;height: 30px;background: rgba(121,121,121,0.6);border-radius: 50%;position: fixed;top: 70px;right: 10px;padding:0px;outline: none;display: none;}
		#arrow{display: none;}
	</style>  

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
                    <li><a href="##">退出</a></li>
                </ul>
            </div>
            <div id="searchcorn">
                <span class="am-icon-search am-icon-sm"></span>
            </div>
            <form>
                <input id="search-input" type="text" value="" placeholder="请输入搜索内容..."/>
            </form>
            <div id="log">
                <img src="img/logo1.png">
            </div>
        </div>
    <!-- 导航栏结束 -->

	<div id="team_ren">
		<div class="title" id="title">
			<div class="title_bar"><h1>攻城战队</h1></div>
		</div>
		<div class="team_ren" >
			<div class="ren">
				<div class="kuang kuang1 animated slideInUp"></div>
				<div class="ren_tx ren_tx1 "><img src="img/tx/1493937034968.jpg" alt=""></div>
				<div class="ren_info ren_info1 ">
					<h5 style="margin-top:10px;"><a href="otherCenter.jsp?iduser=17826808793">阿水12344&nbsp;<span class="glyphicon glyphicon-user">队长</span></a></h5>
					<!-- <p>前端</p> -->
				</div>
			</div>
			<div class="ren">
				<div class="kuang kuang2 animated slideInUp"></div>
				<div class="ren_tx ren_tx2"><img src="img/tx/1493943455351.jpg" alt=""></div>
				<div class="ren_info ren_info2">
					<h5 style="margin-top:10px;"><a href="otherCenter.jsp?iduser=15011111111">浅伊_Erin</a></h5>
					<!-- <p>前端</p> -->
				</div>
			</div>
			<div class="ren">
				<div class="kuang kuang3 animated slideInUp"></div>
				<div class="ren_tx ren_tx3"><img src="img/tx/1493884051911.jpg" alt=""></div>
				<div class="ren_info ren_info3">
					<h5 style="margin-top:10px;"><a href="otherCenter.jsp?iduser=18911111111">蓝胖子。</a></h5>
					<!-- <p>前端</p> -->
				</div>
			</div>
			<div class="ren">
				<div class="kuang kuang4 animated slideInUp"></div>
				<div class="ren_tx ren_tx4"><img src="img/tx/t4.jpg" alt=""></div>
				<div class="ren_info ren_info4">
					<h5 style="margin-top:10px;"><a href="otherCenter.jsp?iduser=4">asda_超</a></h5>
					<!-- <p>前端</p> -->
				</div>
			</div>
		</div>
	</div>
	<button class="btn" id="close">
		<span class="glyphicon glyphicon-resize-small" title="取消全屏"></span>
	</button>
	<div id="team_record">
		<div id="arrow">
			<ul>
				<li class="arrowup" title="上一条"></li>
				<li class="arrowdown" title="下一条"></li>
			</ul>
		</div>		

		<div id="history">		

			<div class="title">
				<h2>小组成长史</h2>
				<div id="circle">
					<div class="cmsk"></div>
					<div class="circlecontent">
						<div thisyear="2016" class="timeblock">
							<span class="numf"></span>
							<span class="nums"></span>
							<span class="numt"></span>
							<span class="numfo"></span>
							<div class="clear"></div>
						</div>
						<div class="timeyear">YEAR</div>
					</div>
					<a href="#" class="clock"></a>
				</div>
			</div>
			<div id="content">
				<ul class="list">
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2016</span>
									<span class="md">8/8</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">小组成立</a></div>
								<div class="hisct"><strong>阿水12344</strong>创建了名为攻城战队的小组。</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2016</span>
									<span class="md">8/9</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">小组成员加入</a></div>
								<div class="hisct"><strong>浅伊_Erin</strong>，<strong>蓝胖子。</strong>加入小组。</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">1/1</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">阶段目标的制定</a></div>
								<div class="hisct">小组的阶段目标是参加全国计算机大赛。</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">2/2</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">实训1跟踪</a></div>
								<div class="hisct">预计一个月完成“<strong>超市管理系统设计制作</strong>”任务</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">3/2</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">阶段目标跟踪</a></div>
								<div class="hisct">基本静态页面完成</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">3/1</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">实训1跟踪</a></div>
								<div class="hisct">已完成“<strong>超市管理系统设计制作</strong>”任务，并通过大众审核</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">3/30</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">参赛1跟踪</a></div>
								<div class="hisct">申报“<strong>国家级大学生创新创业训练计划</strong>”</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">4/28</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">阶段目标跟踪</a></div>
								<div class="hisct">初稿完成</div>
							</div>
						</div>
					</li>
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">2017</span>
									<span class="md">4/28</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a href="#">阶段目标跟踪</a></div>
								<div class="hisct">初稿完成</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
    <script src="js/jquery.js"></script>
    var $j = jQuery.noConflict( true );
    <script src="js/bootstrap.min.js"></script>
	<!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
	<!-- 导航栏js导入结束 -->
    <script src="js/time/jquery.js"></script>
    <script type="text/javascript" src="js/time/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="js/time/jquery.easing.js"></script>
	<script type="text/javascript" src="js/time/history.js"></script>
    <script>

    	// 原生js加class---开始
	    	function hasClass(obj, cls) {  
			    return obj.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));  
			}  
			function addClass(obj, cls) {  
			    if (!this.hasClass(obj, cls)) obj.className += " " + cls;  
			}  
			function removeClass(obj, cls) {  
			    if (hasClass(obj, cls)) {  
			        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');  
			        obj.className = obj.className.replace(reg, ' ');  
			    }  
			}  
			function toggleClass(obj,cls){  
			    if(hasClass(obj,cls)){  
			        removeClass(obj, cls);  
			    }else{  
			        addClass(obj, cls);  
			    }  
			}  
			function toggleClassTest(){  
			    var obj = document. getElementById('test');  
			    toggleClass(obj,"testClass");  
			}  
		// 原生js加class---结束

    	window.onload = function(){
    	//小组成员展示加上css特效---开始
    		var oTitle = document.getElementById('title');
    		addClass(oTitle,'animated');
    		addClass(oTitle,'bounceInDown');
    		var oTeam = document.getElementById("team_ren");
    		var aTx = oTeam.getElementsByClassName("ren_tx");
    		var aInfo =oTeam.getElementsByClassName("ren_info");
    		setTimeout(function(){
    			for(var i=0;i<aTx.length;i++){
    				aTx[i].style.display="block";
    				addClass(aTx[i],"animated");
    				addClass(aTx[i],"flipInX")
    			}
    		},500);
    		setTimeout(function(){
    			for(var i=0;i<aInfo.length;i++){
    				aInfo[i].style.display="block";
    				addClass(aInfo[i],"animated");
    				addClass(aInfo[i],"fadeIn")
    			}
    		},1000);
    	//小组成员展示加上css特效---结束
    	
    	// 关闭按钮	
    		var oClose = document.getElementById('close');
    		oClose.onclick = function(){
    			document.getElementsByTagName("body")[0].style.overflow="auto";
    		};
    	//响应式时间轴
    		var oSize = window.screen.height;
    		var oHistory = document.getElementById("history");
    		var oTeam_record = document.getElementById("team_record");
    		console.log("当前的osiz的大小："+oSize);
    		$("#content").css("height","575px");
    		if(oSize>735&&oSize<758){
    			oTeam_record.style.height="590px";
    			oHistory.style.marginTop="90px";
				console.log(oTeam_record.style.height);
    		}
    		else if(oSize>758){
    			oTeam_record.style.height="680px";
    			oHistory.style.marginTop="230px";
    			$("#content").css("height","400px");
    			console.log(oTeam_record.style.height);
    		}
		// 1/4、导航栏函数调用执行
			nav_search();
		// 导航栏函数调用执行结束
    	};
    	window.onscroll = function(){
    		var oSize = window.screen.height;
    		var oSize2 = screen.height;
    		console.log("height"+oSize);
    		console.log("height2"+oSize2);
	    	var scrollTop = document.body.scrollTop;
			var oClose = document.getElementById('close');
			var oArrow = document.getElementById('arrow');
			addClass(oArrow,'animated');
			addClass(oClose,'animated');
			console.log(scrollTop);

			if(oSize<735){
	    		if(scrollTop < 498){
		    		if(scrollTop < 360){
		    			oArrow.style.display="none";
		    			oClose.style.display="none";
		    		}   
		    		document.getElementsByTagName("body")[0].style.overflow="auto"; 			
	    			addClass(oArrow,"fadeOut");
	    			removeClass(oArrow,'fadeIn');
	    			addClass(oClose,"fadeOut");
	    			removeClass(oClose,'fadeIn');
	    		}

	    		else if(scrollTop >= 498){
	    			console.log(scrollTop);
	    			document.getElementsByTagName("body")[0].style.overflow="hidden";
	    			oArrow.style.display="block";
					addClass(oArrow,"fadeIn");
	    			removeClass(oArrow,'fadeOut');
	    			oClose.style.display="block";
	    			addClass(oClose,"fadeIn");
	    			removeClass(oClose,'fadeOut');
	    		}
			}
			else if(oSize>735 &&oSize<765){
				if(scrollTop < 505){
		    		if(scrollTop < 485){
		    			oArrow.style.display="none";
		    			oClose.style.display="none";
		    		}    	
		    		document.getElementsByTagName("body")[0].style.overflow="auto"; 		
	    			addClass(oArrow,"fadeOut");
	    			removeClass(oArrow,'fadeIn');
	    			addClass(oClose,"fadeOut");
	    			removeClass(oClose,'fadeIn');
	    		}

	    		else if(scrollTop >= 505){
	    			console.log(scrollTop);
	    			document.getElementsByTagName("body")[0].style.overflow="hidden";
	    			oArrow.style.display="block";
					addClass(oArrow,"fadeIn");
	    			removeClass(oArrow,'fadeOut');
	    			oClose.style.display="block";
	    			addClass(oClose,"fadeIn");
	    			removeClass(oClose,'fadeOut');
	    		}
			}
			else if(oSize>765){
				if(scrollTop < 535){
		    		if(scrollTop < 515){
		    			oArrow.style.display="none";
		    			oClose.style.display="none";
		    		}    	
		    		document.getElementsByTagName("body")[0].style.overflow="auto"; 		
	    			addClass(oArrow,"fadeOut");
	    			removeClass(oArrow,'fadeIn');
	    			addClass(oClose,"fadeOut");
	    			removeClass(oClose,'fadeIn');
	    		}

	    		else if(scrollTop >= 535){
	    			console.log(scrollTop);
	    			document.getElementsByTagName("body")[0].style.overflow="hidden";
	    			oArrow.style.display="block";
					addClass(oArrow,"fadeIn");
	    			removeClass(oArrow,'fadeOut');
	    			oClose.style.display="block";
	    			addClass(oClose,"fadeIn");
	    			removeClass(oClose,'fadeOut');
	    		}
			}
    	};
    </script>

</body>
</html>