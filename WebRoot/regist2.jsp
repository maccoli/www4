<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>注册</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/nav_deng.css">
		<!-- 导航栏css导入结束--> 
	<style>
		html{width: 100%;height: 100%;}
		body{width: 100%;height: 100%;background:url(img/1-3.jpg) no-repeat;background-size: 100% 100%; }
		#regist_form #start button{position: absolute;top: 280px;right: 22%;display: none;}
		#regist_form form {width:300px;border-radius:29px;margin:0 ;background:rgba(94,94,94,0.6);text-align:center;padding-top:20px;padding-bottom:10px;position: absolute;right: 13%;margin-top: 200px;display: none;}
		/*#regist_form form {width:300px;border-radius:29px;margin:0 ;background:rgba(94,94,94,0.6);text-align:center;padding-top:20px;position: absolute;right: 13%;margin-top: 200px;}*/
			#regist_form form label{width: 200px;height: 29px;margin:5px auto;display: inline-block;overflow: hidden;}
			#regist_form form input{width: 200px;height: 29px;}
		.j_dian{width: 10px;height: 10px;border-radius: 10px;background: rgba(176, 247, 136,1);position: absolute;margin-left: 348px;z-index:101;display: none;}
		.j_img{width: 120px;height: 115px;position: absolute;z-index: 200;display: none;}		
			.j_img img{width:100%;height: 100%;z-index: 100;}
			#jieshao .img1{left: 215px;}
			#jieshao .img2{left: 370px;}
		.j_text{width: 120px;height: 115px;position: absolute;font-weight:bold;font-size: 13px;display: none;}
			.j_text p{width: 120px;height: 115px;display: block;padding-top: 20%;}
			.j_text p span{font-size: 20px;}
			#jieshao .text1{left: 90px;}
			#jieshao .text2{left: 500px;}
		#j_zhou{width:5px;height:80px;margin-left:350px;/*background:#66CC66;*/background:rgba(121,121,121,0.4);position:absolute;z-index:100;top:0px;
			transition: height 6s;
			-moz-transition: height 6s; /* Firefox 4 */
			-webkit-transition: height 6s; /* Safari 和 Chrome */
			-o-transition: height 6s; /* Opera */
		}
		.animated2{
			-webkit-animation-duration: 0.8s;
			animation-duration: 0.8s;
			-webkit-animation-fill-mode: both;
			animation-fill-mode: both;
		}
		input::-webkit-input-placeholder, textarea::-webkit-input-placeholder { color: #797979;font-size: 8px;} 
		input:-moz-placeholder, textarea:-moz-placeholder { color: #797979;font-size: 8px;} 
		input::-moz-placeholder, textarea::-moz-placeholder { color: #797979;font-size: 8px;} 
		input:-ms-input-placeholder, textarea:-ms-input-placeholder { color: #797979;font-size: 8px;} 
		
		#form_zc #yanzheng input{width:100px;display:inline;float: left;}
		#form_zc #yanzheng img{height:29px;width:54px;display:inline;margin-right:5px;}
		#form_zc #yanzheng a{width:10px;text-algin:center;display:inline;font-size:2px;font-weight:20;margin-left:0px;}
		
		#regist_form p{font-size:8px;height:8px;line-hieght:8px;text-align:left;display:none;padding-left:50px;}
		#regist_btn{line-height:25px;padding:0px;;font-size:12px;margin-right:0px;float:right}
	</style>  
</head>
<body>
         <% String msg=(String)session.getAttribute("msg"); %>
  	<!-- 1/2、导航栏开始-->
	    <div id="nav">
	        <div id="log">
	            <a href="index1.jsp"><img src="img/logo1.png"></a>
	        </div>
	    </div>
    	<!-- 导航栏结束 -->
	<div style="width:100%;height:100%;position:relative">
		<!-- 左边 -->
			<div id="jieshao" style="width:70%;float:left;position:relative;">
				<div id="j_zhou"></div>
				<div id="j11" class="j_dian" style="top:80px;"></div>
				<div id="j12" class="j_img img1" style="top:20px"><img src="img/p1.jpg"></div>
				<div id="j13" class="j_text text1" style="top:20px;"><p style="color:#C86F67;">设置<span>每日任务</span><br>并统计完成情况</p></div>
				
				<div id="j21" class="j_dian" style="top:180px;"></div>
				<div id="j22" class="j_img img2" style="top:120px"><img src="img/p2.jpg"></div>
				<div id="j23" class="j_text text2" style="top:120px;"><p style="color:#FF9B6A;"><span>课程资源</span>丰富<br>和个人分享<br>方便的交流平台</p></div>
				
				<div id="j31" class="j_dian" style="top:280px;"></div>
				<div id="j32" class="j_img img1" style="top:220px"><img src="img/p3.jpg"></div>
				<div id="j33" class="j_text text1" style="top:220px;"><p style="color:#DCFF93;">设置<span>阶段任务</span><br>并有倒计时提醒</p></div>
				
				<div id="j41" class="j_dian" style="top:380px;"></div>
				<div id="j42" class="j_img img2" style="top:320px"><img src="img/p4.jpg"></div>
				<div id="j43" class="j_text text2" style="top:320px;"><p style="color:#B7D28D;">提供<span>实训机会</span><br>和及时新闻资讯<br>有用的经验分享</p></div>
				
				<div id="j51" class="j_dian" style="top:480px;"></div>
				<div id="j52" class="j_img img1" style="top:420px"><img src="img/p5.jpg"></div>
				<div id="j53" class="j_text text1" style="top:420px;"><p style="color:#B8F1ED;">组建<span>个人小组</span><br>互相督促进步</p></div>
			</div>
		<!-- 右边 -->
			<div id="regist_form" style="width:30%;float:left;">
				<div id="start">
					<button id="start_btn"class="btn btn-success">我要注册</button>
				</div>
				<form action="Registers" id="form_zc" method="post">
					<label>
						<input class="form-control" type="text" placeholder="手机号" name="phone" required="required" id="phone_rename" autocomplete="off">
					</label>
						<p style="color:green;" id="p_rename1">该用户名有效~</p>
						<p style="color:red;" id="p_rename2">该用户名已注册过了，去登入吧~</p>
						<p style="color:red;" id="p_rename3">手机号码格式不对</p>
					<label>
						<input class="form-control" type="password" placeholder="请输入密码" name="password" id="password" required="required">
					</label>
						<p style="color:red;" id="p_rename4">"密码由6-20个字母、数字、下划线</p>
					<label>
						<input class="form-control" type="password" placeholder="请再次输入密码" name="confirmPassword" id="confirmPassword" required="required">
					</label>
						<p style="color:red;" id="p_rename5">"密码输入不一致</p>
					<label id="yanzheng">
						<input class="form-control" type="text" placeholder="输入验证码" name="verifycode" required="required" id="yanzhengma"><img src="VerifyCodeServlet" id="verify" onclick="document.getElementById('verify').src='VerifyCodeServlet?'+Math.random();"style="height:29px;margin-left:20px">
					<%= msg %>
					</label>
					<label>
						<button id="regist_btn" class="form-control btn btn-success"  style="width:70px;height:25px;outline: none;">提交</button>
					</label>
				</form>
			</div>
	</div>

	
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script>
	    // 原生js加class
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
		// 结束
    	window.onload = function(){
	    	// 注册按钮的特效
    			var oBtn = document.getElementById("start_btn");
	    		setTimeout(function(){
					oBtn.style.display="block";
	    		},2000);
	    		setInterval(function(){
	    			addClass(oBtn,'animated2');
	    			addClass(oBtn,'bounce');
		    		// removeClass(oBtn,'zoomOutDown');
	    		},3000);
	    		setTimeout(function(){
		    		setInterval(function(){
		    			removeClass(oBtn,'animated2');
		    			removeClass(oBtn,'bounce');
	    				// addClass(oBtn,'zoomOutDown');
		    		},3000);
	    		},1500);

	    		var oFrom = document.getElementById("form_zc");
	    		oBtn.onclick = function(){
	    			oBtn.style.display="none";
	    			oFrom.style.display="block";
	    			addClass(oFrom,'animated');
	    			addClass(oFrom,'zoomIn');
	    		};
	    		var n=1;
	    		var oZhu = document.getElementById("j_zhou");
	    		oZhu.style.height="600px";
	    		var j_time = 300;

	    		for(var i=1;i<7;i++){
	    			for(var j=1;j<4;j++){
	    				(function(i,j){
	    					var id_str = "j"+i+j;
	    					<!-- console.log(id_str); -->
	    					var oDiv = document.getElementById(id_str);
		    			// 点
		    				if(j==1){
		    					setTimeout(function(){
		    						oDiv.style.display="block";
		    						addClass(oDiv,'bounceIn');
		    						addClass(oDiv,'animated');
			    				}, j_time*n);
		    				}
		    			// 图片
		    				else if(j==2){
		    				//左边的img
		    					if( i%2 ==1){
			    					setTimeout(function(){
			    						oDiv.style.display="block";
			    						addClass(oDiv,'fadeInLeft');
			    						addClass(oDiv,'animated');
				    				}, j_time*n);
		    					}
		    				// 右边的img
		    					else if( i%2 ==0){
			    					setTimeout(function(){
			    						oDiv.style.display="block";
			    						addClass(oDiv,'fadeInRight');
			    						addClass(oDiv,'animated');
				    				}, j_time*n);
		    					}
		    				}
	    				// 文字
		    				else if(j==3){
		    				//左边的字
		    					if( i%2 ==1){
			    					setTimeout(function(){
			    						oDiv.style.display="block";
			    						addClass(oDiv,'rollIn');
			    						addClass(oDiv,'animated');
				    				}, j_time*n);
		    					}
		    				// 右边的字
		    					else if( i%2 ==0){
			    					setTimeout(function(){
			    						oDiv.style.display="block";
			    						addClass(oDiv,'rollInRight');
			    						addClass(oDiv,'animated');
				    				}, j_time*n);
		    					}
		    				}
		    				n++;
	    				})(i,j);
	    			}
	    		}
	    	
	    	//注册表单的验证
	    		var test1,test2,test3,test4;
		    	//用户名的验证
					$("#phone_rename").keyup(function(){
						// var phone = '17826808793';
						var patrn=/^1[34578]\d{9}$/; 
						if(!patrn.exec( $("#phone_rename").val())){
							test1=0;
							$("#p_rename3").css("display","block");
							$("#p_rename1").css("display","none");
							$("#p_rename2").css("display","none");
						}
						else{
							test1=1;
							console.log( $("#phone_rename").val());
							var json= {};
							json.id = $("#phone_rename").val();
							console.log(json.id);
							$("#p_rename3").css("display","none");
							//@ajax：验证是否已经注册过
								$.ajax({
									url : 'Registers',
									type : 'POST',
									data : json,//用户填写的手机号
									success : function(data){
										//console.log(data);
										if(data == "1"){
											test2=1;
											$("#p_rename1").css("display","block");
										}
										else if(data == "2"){
											test2=0;
											$("#p_rename2").css("display","block");
										}
										else{
											test2=0;
											console.log("检查重名返回数据不对~");
										}
									},
									error : function(){

										console.log("服务器被天狗吃掉了，检查重名出现错误");
									}
								});
							}
					}); 

				 

				//密码的输入格式
					$("#password").keyup(function(){
						var patrn=/^(\w){6,20}$/; 
						if (!patrn.exec($("#password").val())){
							test3=0;
							$("#p_rename4").css("display","block");
						}
						else{
							test3=1;
							$("#p_rename4").css("display","none");
						}
					});
				//密码的再次输入，一致性
					$("#confirmPassword").keyup(function(){
						if($("#password").val() != $("#confirmPassword").val()){
							test4=0;
							$("#p_rename5").css("display","block");
						}
						else{
							test4=1;
							$("#p_rename5").css("display","none");
						}
					});	    	

			//@ajax：提交数据给后台
				$("#regist_btn").click(function(){
					var test5=1; 
						if(!$("#yanzhengma").val()){
							test5=0;
							$("#p_rename3").css("display","block");
							$("#p_rename1").css("display","none");
							$("#p_rename2").css("display","none");
						}
						
				console.log(test1, test2, test3 ,test4,test5);
					if( test1 == 1 && test2 == 1 && test3 == 1 && test4 == 1 && test5==1 ){
						console.log("注册信息输入正确~");
						var json = {};
						json.id = $("#phone_rename").val();
						json.password = $("#password").val();
						json.yanzhengma = $("#yanzhengma").val();
						console.log(json.id+" "+json.password+" "+json.yanzhengma)
						$.ajax({
							url : 'Registers',
							type : 'POST',
							data : json,
							success : function(data){
								console.log("返回值"+data);
								<!-- data=4; -->
								if(data=="13"){
									var pd = window.confirm("注册成功了~现在去登陆吗？");
									console.log(pd);
									if(pd==true){
										self.location="http://115.159.58.215:8080/www4/index1.jsp"; 
										window.navigate("http://115.159.58.215:8080/www4/index1.jsp");
									}
									else{
										return;
									}
								}
								else if(data=="1"){
									alert("注册失败~验证码错误~");
								}
								else {
									alert("服务器返回的值不确定~");
								}
							},
							error : function(){
								alert("服务器被天狗吃掉了，注册失败~");
							}
						});
					}
					else{
						alert("请填写完整正确的注册信息~");
					}
					return false;
				});
    	};
    </script>


</body>
</html>