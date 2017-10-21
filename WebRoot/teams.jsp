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
	<title>小组排行榜</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/amazeui_deng.min.css">
		<link rel="stylesheet" href="css/nav_deng.css">
		<!-- 导航栏css导入结束--> 
	<style>
		html{width: 100%;height: 100%;}
		body{width: 100%;height: 100%;}
		#pm{width: 100%;height: 450px;}
			.title{float: left;width: 300px;height: 150px;margin-left: 60px;}
				.t-top{width: 300px;height: 100px;background: #ccffcc;color:#fff;font-size: 48px;font-weight: bold;margin-top:20px;padding-top: 15px;}
				.t-top span{display:block;float:left;height: 55px;}
				.title p{padding-left: 10px;margin: 5px;font-size: 10px;font-weight: bold;color: #999;}
			.search{float: right;width: 200px;height: 90px;margin-right: 50px;}
				.search input{width: 120px;border:0px solid black; border-bottom:2px solid #999;outline:none;padding:1px 5px;text-align:center;margin-top: 60px;}
			#pm-con{clear:both;width: 1075px;height: 280px;margin:0 auto;}
				.pm_box{width: auto;height: auto;float: left;margin:0 10px;}
				.pm{float:left;position: relative;box-shadow: 7px 5px 2px #999;opacity: 0;}
				/*.pm:hover{
					-webkit-animation-name: bounceIn;
  					animation-name: bounceIn;

				}*/
					#team-img{width: 100%;height: 80%;position: absolute;}
					#team-name{width: 100%;height: 20%;font-size: 20px;font-weight: bold;position: absolute;bottom: 0;padding-left: 5px;text-overflow:ellipsis;white-space:nowrap; overflow:hidden;text-align: center;padding: 5px 10px 0px 10px; }
						.pm a{color: black;text-decoration: none;}
					#team-pm{width:30px;height:40px;background:#ffffcc;font-size: 28px;font-weight: bold;text-align: center;position: absolute;}
				#pm4{background: #ffcc99;width: 185px;height: 230px;margin-top: 50px;}
				#pm2{background: #ccff99;width: 195px;height: 240px;margin-top: 25px;}
				#pm1{background: #ff9900;width: 205px;height: 250px;}
				#pm3{background: #FFFF99;width: 195px;height: 240px;margin-top: 25px;}
				#pm5{background: #ccff00;width: 185px;height: 230px;margin-top: 50px;}
		#jr_xj{background: #ccffcc;width: 100%;height: 300px;padding-top:50px;}
			.jr_xj{width: 80%;height: 200px;margin: 0 auto;color:white;}
				.new{width: 50%;height:100%; float: left;border-right: 3px solid #ccc;padding-right: 120px;}
				.join{width: 50%;height:100%; float: left;}
					.jr_xj .pic{width: 50%;font-size: 80px;height: 100%;line-height:200px;float: left;text-align: right;padding-right: 20px;}
					.jr_xj .pic_title{width:50%;height: 100%;line-height:200px;font-size: 25px;float: left;text-align: left;}
					.jr_xj .pic_title a{color: white;text-decoration: none;}


		#detail{width: 100%;min-height: 600px;}
			.d_title_bar{width: 100%;height: 50px;background: #fff;padding-top: 50px;}
				.d_title{width: 155px;height: 45px;line-height: 45px;background: #999;font-size: 35px;font-weight: bold;padding-left: 3px;margin-left: 60px;color: #fff;}
				.d_con{margin-top: 50px;width: 100%;}
				.d_con table{width: 60%;margin:0 auto;text-align: left;}
				.d_con table tr th{  text-align: center;background: #ffd586;}
				.d_con table tr td:nth-child(1){  width: 80px;font-weight: bold;text-align: center;}
				.d_con table tr td:nth-child(2){  padding-left: 20px;}
				.d_con table tr td a{  text-decoration: none;}

		/*关键字搜索*/
			    #search{width: 100%;height: 80px;padding-top: 30px;}
			        #search form{width: 600px;height: 75px;margin: 0 auto;}
			            #search_text{width: 540px;height: 50px;float: left;border-radius: 6px;border: 3px solid rgba(34,52,72,1);outline: none;padding: 5px 20px;}
			            #search_submit{width: 50px;height: 50px;float: right;margin: 5px 0px 5px 5px;border: none;background: url(img/footer_search1.png) no-repeat;outline: none;}

					.d_con_bar{width: 1100px;padding-top: 50px;margin: 0 auto;height: auto;}
					.d_con_bar .d_con_img{width:200px;height: 200px;position: relative;float: left;margin:10px;overflow: hidden;
											background:#fff;background-repeat: no-repeat;background-position: center center;background-size: 100%;
									        transition: background-size 0.2s;
									        -moz-transition:background-size 0.2s; 
									        -webkit-transition:background-size 0.2s;
									        -o-transition:background-size 0.2s; 
					}
					.d_con_bar .d_con_img:hover{background-size: 150%;}
					.d_con_bar .d_con_title{width: 100%;height: 40px;position: absolute;bottom: 0px;background: rgba(0,0,0,0.5);line-height: 40px;color: #fff;padding-left: 5px;z-index: 101} 
						.d_con_bar .d_con_title span{padding: 2px 8px;text-align: center;margin: 0px 5px;}


	</style>  

</head>

<body>
<!-- 第零 导航栏开始-->
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
             <input id="search-input" type="text" value="" placeholder="请输入搜索内容..." />
         </form>
         <div id="log">
             <img src="img/logo1.png">
         </div>
     </div>
<!-- 第一 排名-->
	<div id="pm">
		<!-- 1.1、标题 -->
			<div class="title">
				<div class="t-top" id="t1">
					<span class="animated" style="margin-left: 25px;">T</span>
					<span class="animated">E</span>
					<span class="animated">A</span>
					<span class="animated">M</span>
					<span class="animated">T</span>
					<span class="animated">O</span>
					<span class="animated">P</span>
					<span style="font-size:30px;margin-top:20px;height:40px;" class="animated">5</span>
					<div style="clear:both;width:90%;height:5px;background:#fff;margin:0 auto;" ></div>
				</div>
				<div style="clear:both;"></div>
				<p>FROM 3/06 TO 3/13</p>
			</div>

		<!-- 1.3、前五名 -->
			<div id="pm-con"> 
				<!-- 1.3.1、第4名 -->
					<div class="pm_box">
						<div class="pm" id="pm4">
							<a href="##">
								<img src="img/tx/x17.jpg" id="team-img">
								<div id="team-name">
									爱拼才会赢
								</div>
								<div id="team-pm">
									4
								</div>
							</a>
						</div>
					</div>
				<!-- 1.3.2、第2名 -->
					<div class="pm_box">
						<div class="pm" id="pm2">
							<a href="##">
								<img src="img/tx/x9.jpg" id="team-img">
								<div id="team-name">
									Thinking
								</div>
								<div id="team-pm">
									2
								</div>
							</a>
						</div>
					</div>
				<!-- 1.3.3、第1名 -->
					<div class="pm_box">
						<div class="pm" id="pm1">
							<a href="##">
								<img src="img/tx/x1.jpg" id="team-img">
								<div id="team-name">
									攻城战队
								</div>
								<div id="team-pm">
									1
								</div>
							</a>
						</div>
					</div>
				<!-- 1.3.4、第3名 -->
					<div class="pm_box">
						<div class="pm" id="pm3">
							<a href="##">
								<img src="img/tx/x19.jpg" id="team-img">
								<div id="team-name">
									那些年的我们
								</div>
								<div id="team-pm">
									3
								</div>
							</a>
						</div>
					</div>
				<!-- 1.3.5、第5名 -->
					<div class="pm_box">
						<div class="pm" id="pm5" >
							<a href="##">
								<img src="img/tx/x14.jpg" id="team-img">
								<div id="team-name">
									Find dream
								</div>
								<div id="team-pm">
									5
								</div>
							</a>
						</div>
					</div>
			</div>
	</div>
<!-- 第二 新建加入-->
	<div id="jr_xj">
		<div class="jr_xj">
			<!-- 2.1、新建小组 -->
				<div class="new">
					<div class="pic">
						<span class="glyphicon glyphicon-plus"></span>
					</div>
					<div class="pic_title">
						<a href="javascript:;" id="new_team">新建小组</a>
					</div>
				</div>
			<!-- 2.2、加入小组 -->
				<div class="join">
					<div class="pic">
						<span class="glyphicon glyphicon-send"></span>
					</div>
					<div class="pic_title">
						<a href="javascript:;" id="join_team">加入小组</a>
					</div>
				</div>
		</div>
	</div>
<!-- 第三 全部小组-->
	<div id="detail">
		<!-- 3.1、标题 -->
			<div class="d_title_bar">
				<div class="d_title">MORE>></div>
			<!-- 搜索栏处 -->
			    <div id="search">
			        <form>
			            <input type="text" name="search" id="search_text" value="" placeholder="请输入搜索内容...">
			            <input type="submit" name="submit" id="search_submit" value="">
			        </form>
			    </div>
			</div>
		<div style="clear:both"></div>
		<!-- 3.2、小组表格展示 -->
			<div class="d_con_bar" id="all_teams">
				
				
				
			</div>
	</div>
<!-- 第四 footer -->
	<div style="clear: both;"></div>
    <div id="footer" style="margin-top:50px;">
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

<!-- 新建小组 -->
	<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
		<div class="am-modal-dialog">
			<div class="am-modal-hd">新建小组</div>
			<div class="am-modal-bd" style="text-align:left;">
				<span  style="padding-left:50px;">设置小组名:</span>
				<input id="new_team_text" type="text" class="am-modal-prompt-input"></div>
			<div class="am-modal-footer">
				<span class="am-modal-btn" data-am-modal-cancel>取消</span>
				<span id="new_team_btn" class="am-modal-btn" data-am-modal-confirm>提交</span>
			</div>
		</div>
	</div>
<!-- 加入小组 -->
	<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt2">
		<div class="am-modal-dialog">
			<div class="am-modal-hd">加入小组</div>
			<div class="am-modal-bd" style="text-align:left;">
				<span  style="padding-left:50px;">申请加入的小组名:</span>
				<input id="join_team_text" type="text" class="am-modal-prompt-input"></div>
			<div class="am-modal-footer">
				<span class="am-modal-btn" data-am-modal-cancel>取消</span>
				<span id="join_team_btn" class="am-modal-btn" data-am-modal-confirm>提交</span>
			</div>
		</div>
	</div>

<!-- js	 -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/fun_class.js"></script>
    <script src="js/amazeui.min.js"></script>
    <!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
		<!-- 导航栏js导入结束 -->
    <script>
    	//0、加载小组数据 	     		//@ajax：showTeam
    		// 小组编号groupid，小组名字groupname，小组图片groupp
	    	$.ajax({
				url : 'showTeam',
				type : 'GET',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
					var outStr  = "";
					$.each(jsonArray,function(i,value){
						var jsonCell = value;
						outStr += '<div class="d_con_img" style="background-image:url(img/tx/'+groupp+')"><a href="team.jsp?idxz='+jsonCell.groupid+'"><div class="d_con_title">'+jsonCell.groupname+'</div></a></div>';
					});
					$("#all_teams").html(outStr);

				},
				error : function(){
					//测试
						/*var data = '{"list":[{"groupid":"1","groupname":"攻城战队","groupp":"x1.jpg"},{"groupid":"2","groupname":"Thinking","groupp":"x9.jpg"},{"groupid":"3","groupname":"那些年的我们","groupp":"x19.jpg"},{"groupid":"4","groupname":"爱拼才会赢","groupp":"x17.jpg"},{"groupid":"5","groupname":"Find dream","groupp":"x14.jpg"},{"groupid":"6","groupname":"和山五壮士","groupp":"x2.jpg"},{"groupid":"7","groupname":"那些年的我们","groupp":"x16.jpg"},{"groupid":"8","groupname":"爱拼才会赢","groupp":"x4.jpg"},{"groupid":"9","groupname":"Find dream","groupp":"x6.jpg"},{"groupid":"10","groupname":"Thinking","groupp":"x7.jpg"},{"groupid":"11","groupname":"那些年的我们","groupp":"x10.jpg"},{"groupid":"12","groupname":"爱拼才会赢","groupp":"x11.jpg"},{"groupid":"13","groupname":"Find dream","groupp":"x12.jpg"}]}';
						var jsonArray = JSON.parse(data).list;
						var outStr  = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							outStr += '<div class="d_con_img" style="background-image:url(img/tx/'+jsonCell.groupp+')"><a href="team.jsp?idxz='+jsonCell.groupid+'"><div class="d_con_title">'+jsonCell.groupname+'</div></a></div>';
						});
						$("#all_teams").html(outStr);*/
					console.log("服务器被天狗吃掉了，获取数据失败~");
				}
			});

    	window.onload = function(){
    		var aPm =document.getElementsByClassName("pm");
    		var aPm_box =document.getElementsByClassName("pm_box");
    		var oT1 =document.getElementById("t1");
    		var aT =oT1.getElementsByTagName("span");
	    	var move_time = 800;
    		var test1=0;
    		var test2=0;

	    	//1、小组排名前5特效
	    		for(var i=0;i<5;i++){
	    			addClass(aPm[i],"animated2");
	    			aPm_box[i].index=i;
	    		// 1.1、排名12345出现--开始
	   				(function(i){
			   			setTimeout(function(){
			   				if(i==0){
				   				aPm[2].style.opacity="1";
				   				addClass(aPm[2],"fadeIn");
			   				}
			   				else if(i==1){
			   					aPm[1].style.opacity="1";
				   				addClass(aPm[1],"fadeIn");
			   				}
			   				else if(i==2){
			   					aPm[3].style.opacity="1";
				   				addClass(aPm[3],"fadeIn");
			   				}
			   				else if(i==3){
			   					aPm[0].style.opacity="1";
				   				addClass(aPm[0],"fadeIn");
			   				}
			   				else if(i==4){
			   					aPm[4].style.opacity="1";
				   				addClass(aPm[4],"fadeIn");
			   				}
			   			},200*i);
	   				})(i);
	   			//    排名12345出现--结束
	   			// 1.2、排名鼠标事件--开始
		    		aPm_box[i].onmouseover = function(e){ 
		    			// console.log(this.index);
		    			if($(aPm[this.index]).hasClass("fadeIn")){
		    				$(aPm[this.index]).removeClass("fadeIn");
		    			}
		    			var that = this; 

					    if( !e ) e = window.event;  
					    var reltg = e.relatedTarget ? e.relatedTarget : e.fromElement;  
					    while( reltg && reltg != this ) reltg = reltg.parentNode;  
					    if( reltg != this ){  
					        // 这里可以编写 onmouseenter 事件的处理代码
		    				$(aPm[this.index]).addClass("bounceIn"); 
		    				console.log($(aPm[this.index]).innerHTML);
		    				// console.log($(aPm[1]).attr('class'));
		    				// console.log($(aPm[this.index]).className);
		    				// console.log("进"+test1);
	    					test1++; 
					    }  
						that.onmouseout = function(e){  
						    if( !e ) e = window.event;  
						    var reltg = e.relatedTarget ? e.relatedTarget : e.toElement;  
						    while( reltg && reltg != this ) reltg = reltg.parentNode;  
						    if( reltg != this ){  
						        // 这里可以编写 onmouseleave 事件的处理代码
						        $(aPm[this.index]).removeClass("bounceIn")
						        $(aPm_box[this.index]).onmouseout=null; 
						        // console.log("出"+test2);
	   							test2++;  
						   }  
						} 
					}
				//    排名鼠标事件--结束  
	    		}
	    	//2、标题运动函数--开始
	    		/*function titleMove2(){
	    		// 2.1、运动一：字符单个跳动
		    		for(var i=0;i<aT.length;i++){
		    			// aT[i].index=i;
		    			(function(i){
				    		setTimeout(function(){
				    			addClass(aT[i],"rotateIn");
				    			setTimeout(function(){
				    				removeClass(aT[i],"rotateIn");
				    			},move_time);
				    		},move_time*i);
		    			})(i);
		    		}  
		    	// 2.2、运动二：单词跳动
		    		setTimeout(function(){
			    		for(var i=0;i<aT.length;i++){
			    			// aT[i].index=i;
			    			(function(i){
			    				if(i<4){
			    					addClass(aT[i],"bounce");
			    					setTimeout(function(){
						    			removeClass(aT[i],"bounce");
					    			},move_time);
			    				}
			    				else if(i>3 && i<7){
					    			setTimeout(function(){
					    				addClass(aT[i],"bounce");
					    				setTimeout(function(){
						    				removeClass(aT[i],"bounce");
						    			},move_time);
					    			},move_time);
			    				}
			    				else{
			    					setTimeout(function(){
					    				addClass(aT[i],"bounce");
					    				setTimeout(function(){
						    				removeClass(aT[i],"bounce");
						    			},move_time);
					    			},2*move_time);
			    				}
			    			})(i);
			    		}
		    		},9*move_time);  		
	    		}*/
	    		function titleMove(){
	 
		    	// 2.2、运动二：单词跳动
			    		for(var i=0;i<aT.length;i++){
			    			// aT[i].index=i;
			    			(function(i){
			    				if(i<4){
			    					addClass(aT[i],"bounce");
			    					setTimeout(function(){
						    			removeClass(aT[i],"bounce");
					    			},move_time);
			    				}
			    				else if(i>3 && i<7){
					    			setTimeout(function(){
					    				addClass(aT[i],"bounce");
					    				setTimeout(function(){
						    				removeClass(aT[i],"bounce");
						    			},move_time);
					    			},move_time);
			    				}
			    				else{
			    					setTimeout(function(){
					    				addClass(aT[i],"bounce");
					    				setTimeout(function(){
						    				removeClass(aT[i],"bounce");
						    			},move_time);
					    			},2*move_time);
			    				}
			    			})(i);
			    		}
	    		}
	    		titleMove();
	    		// setInterval(titleMove,4*move_time);
	    	//3、新建小组   				//@ajax：xingroup.jia
	    		$(function() {
					$('#new_team').on('click', function() {
						$('#my-prompt').modal({
							relatedTarget: this,
							onConfirm: function(e) {
								// alert('您将创建名为：“' + e.data + '”的小组。' || '')
								console.log("小组的名字："+e.data);
								var json = {};
								json.group = e.data;
								$.ajax({
									url : 'xingroup.jia',
									type : 'GET',
									data : json,
									success : function(){
										alert("新建小组成功~");
									},
									error : function(){
										alert("小组创建不成功~");
									}
								});
							},
							onCancel: function(e) {
								console.log("取消新建小组~");
								return false;
				 			}
						});
					});
				});
			//4、加入小组					//@ajax：addgroup.jia
				$(function() {
					$('#join_team').on('click', function() {
						$('#my-prompt2').modal({
							relatedTarget: this,
							onConfirm: function(e) {
								// alert('已经向：“' + e.data + '小组发出加入申请' || '')
								console.log("小组的名字："+e.data);
								var json = {};
								json.groupname = e.data;
								$.ajax({
									url : 'addgroup.jia',
									type : 'GET',
									data : json,
									success : function(){
										alert("加入小组申请发送成功~");
									},
									error : function(){
										alert("加入小组申请发送不成功~");
									}
								});
							},
							onCancel: function(e) {
								return false;
								console.log("取消申请加入小组~");
				 			}
						});
					});
				});
    	};
    </script>

</body>
</html>