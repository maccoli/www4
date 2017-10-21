<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Target</title>
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" href="css/somecss.css">
 	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 

<style type="text/css">
	ul,li,html,body,h2,span{
	  margin: 0;
	  padding: 0;
	  list-style-type:none;
	}
	a{
	  text-decoration: none;
	}
	li{
	  list-style: none;
	}
	body{
		width: 100%;
		height: 100%;
	}
	.all_title{
		width: 20%;
		height: 60px;
		margin: 60px auto 20px;
		/*background: rgba(221,145,115,0.5);*/
		font-size: 32px;
		line-height: 60px;
		text-align: center;
		letter-spacing: 5px;
		font-weight: bold;
		color: #223448;
	}

/*登入--开始*/
		html{width: 100%;height: 100%;}
		body{width: 100%;}
		.modal *{margin: 0px;padding: 0px;list-style: none;}
		.modal a{text-decoration: none;display: block;}
		.modal *, :before, :after {box-sizing: border-box;margin: 0;transition: 0.4s;}
		/*.navbar{width: 100%;height: 50px;background: green;position: fixed;top: 0px;color: #000;}*/
			.open {font-size: 16px;text-align: center;white-space: nowrap;cursor: pointer;line-height: 40px;float: left;}
			.inputDiv{}

		.modal {height: 400px;width: 650px;margin: auto;box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);position: absolute;left: 0;right: 0;transition: .4s, box-shadow .3s .4s;z-index: 801;}
		.modal.hidden {box-shadow: none;transition: .4s, box-shadow 0s;opacity: 0;visibility: hidden;}
		.modal.hidden .form {top: 100%;}
		.modal.hidden .invite {top: -100%;}
		.modal.hidden .invite .close {height: 0;width: 0;top: 0;right: 0;}
		.form, .invite {background: rgba(71, 71, 71, 0.8);width: 50%;height: 100%;padding: 25px;position: absolute;top: 0;left: 0;}
		.form input {background: rgba(255, 255, 255, 0.15);width: 100%;padding: 8px;margin: 15px 0;border: none;border-radius: 3px;outline: none;color: #FFF;font-size: 20px;}
		input:-webkit-autofill {-webkit-box-shadow: 0 0 0px 500px #7a7a7a inset;-webkit-text-fill-color: #FFF;}
		label {color: #76ae0a;font-weight: normal;/*color: #FB5781;*/}
		.invite {background: #76ae0a;/*background: linear-gradient(-45deg, #f857a6, #ff5858);*/background: #76ae0a;left: 50%;}
		.nope {background: #474747;padding: 10px 15px;border-radius: 3px;box-shadow: 0 2px 5px rgba(0, 0, 0, 0.25);position: absolute;bottom: 30px;left: 50%;font-size: 12px;white-space: nowrap;cursor: pointer;transform: translateX(-50%);}
		.nope:hover {box-shadow: 0 5px 10px rgba(0, 0, 0, 0.25);transform: translateX(-50%);}
		.close {background: #474747;height: 30px;width: 30px;border: 3px solid #FFF;border-radius: 50%;position: absolute;top: -15px;right: -15px;cursor: pointer;transition: .4s .3s;}
		.close:before, .close:after {content: '';background: #FFF;height: 80%;width: 3px;position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%) rotate(-45deg);}
		.close:after {transform: translate(-50%, -50%) rotate(45deg);}
		.beijing{width: 100%;background: rgba(0,0,0,0.5);position: absolute;left: 0;display: none;z-index: 800;}
/*登入--结束*/


/*导航栏*/
	#nav{
	  width: 100%;
	  height: 60px;
	  background: rgba(34,52,72,0);
	  position: fixed; 
	  z-index: 999; 
	  top: 0px;
	}
	#daohang{
		width: 40px;
		height: 40px;
		text-align: center;
		line-height: 40px;
		margin: 10px 10px 10px 0.8%;
		float: left;
		position: relative;
	}
		#daohang span{
			cursor: pointer;
			/*color:#223448;*/
			position: absolute;
		    left: 7px;
		    width: 26px;
		    height: 3px;
		    background-color: #223448;
		    border-radius: 4px;
		    display: inline-block;
		    transition: all .4s;
		    box-sizing: border-box;
		}
		#daohang span:nth-child(1){
			top: 11px;
		}
		#daohang span:nth-child(2){
			top: 19px;
			opacity: 1;
		}
		#daohang span:nth-child(3){
			bottom: 10px;
		}
	#user{
		width: 80px;
		height: 40px;
	   /* background: rgba(222,214,152,0.8);*/
	    float: right;
	    margin: 10px 2% 10px 0px;
	    color: #223448;
	    line-height: 40px;
	}
	#user span{
		float: left;
		margin: 0px 6%;
	}
	#user a{
		font-size: 16px;
		cursor: pointer;
		line-height: 40px;
		color: #223448;
		float: left;
	}
		#user img{
			width: 40px;
			height: 40px;
			border-radius: 50%;
			vertical-align: middle;
			margin-right: 10px;
		}
	#search-input{
		width: 40px;
		height: 45px;
		color: #ccc; 
	    outline: none; 
	    overflow:hidden; 
	    float: right;
	    margin: 9px -43px 8px 0px;
	    border-radius: 25px; 
	    background: rgba(225,225,225,0);
	    padding: 8px 37px 8px 8px;   
	    border: 1px solid rgba(225,225,225,0); 
	    /*-moz-box-shadow: inset 1px 1px 10px rgba(0,0,0,0.1); 
	    -webkit-box-shadow: inset 1px 1px 10px rgba(0,0,0,0.1); 
	    box-shadow: inset 1px 1px 10px rgba(0,0,0,0.1); */
	    transition: all .8s;
	    -webkit-transition: all .8s; 
	    -moz-transition: all .8s; 
	    -o-transition: all .8s;
	}
		#search-input:hover, #search-input:focus{
		    border-color: #223448;
		    color: #ccc;
			width: 200px;
		}
	#searchcorn{
		width: 40px;
		height: 40px;
		float: right;
		margin: 10px 50px 10px 0px;
		text-align: center;
		line-height: 40px;
		position: relative;
		z-index: 10;
	}
		#searchcorn span{
			cursor: pointer;
			color: #223448;
		}
	#log{
		width: 60px;
		height: 60px;
		margin: 0 auto;
		/*background: rgba(222,214,152,0.8);*/
	}
		#log img{
			width: 60px;
			height: 60px;
		}

/*导航菜单*/
	#menu{
		width: 100px;
		height: 350px;
		background: rgba(1,0,1,0.7);
		position: fixed; 
		z-index: 999;
		top: 61px;
		left: 16px;
		display: none;
		border-radius: 0px 0px 5px 5px;
	}
	.menu_list{
		width: 100px;
		height: 50px;
		top: 25px;
		/*background: rgba(114,24,211,0.5);*/
		color: #fff;
		position: relative;
		line-height: 50px;
		text-align: center;
		font-size: 20px;
		letter-spacing: 1px;
		cursor: pointer;
	}
	.menu_hg1{
		width: 2px;
		height: 2px;
		background: rgba(1,0,1,0.9);
		position: relative;
		top: 10px;
		left: 15px;
	}

/*轮播图*/
	#banner{
		width:100%;
		height:550px;
		position:relative;
		}
	.pic{
		width:100%;
		height:550px;
		position:relative;/*相对定位  参照物*/
		overflow:hidden;/*舞台超出部分隐藏*/
		}
	.pic ul li{
		width:100%;
		height:550px;
		position:absolute;/*绝对定位  改变盒子位置*/
		top:0px;
		left:100%;
	}	
	.pic ul li img{
		width:100%;
		height: 100%;
		}

	.nav{
		width:118px;
		height:20px;
		position:absolute;
		left:50%;
		margin-left:-41px;
		top:55px;
		
		text-align: center;
	}

	.nav ul li{
		width:10px;
		height:4px;
		/*background:rgba(232,236,248,1);*/
		/*background:rgba(187,210,181,1);*/
		/*background:rgba(235,223,199,1);*/
		background: #fff;
		float:left;
		margin-right:8px;
		cursor:pointer;
		margin-top: 8px;
		border-radius: 10px;
		}
		.nav ul li:nth-child(5){
			margin-right:0px;
		}
	.nav ul li.bj{
		background:rgba(34,52,72,1);
		width:14px;
		height:8px;
		margin-top: 7px;
	}
	nav div {
		position: absolute;
		top: 50%;
		display: block;
		outline: none;
		text-align: left;
		z-index: 100;
		-webkit-transform: translateY(-50%);
		transform: translateY(-50%);
	}

	nav div.prev {
		left: 0;
	}

	nav div.next {
		right: 0;
	}
	.nav-circlepop div {
		margin: 0 30px;
		width: 50px;
		height: 50px;
	}

	.nav-circlepop div::before {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		border-radius: 50%;
		background: #fff;
		content: '';
		opacity: 0;
		-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
		transition: transform 0.3s, opacity 0.3s;
		-webkit-transform: scale(0.9);
		transform: scale(0.9);
	}

	.nav-circlepop .icon-wrap {
		position: relative;
		display: block;
		margin: 10% 0 0 10%;
		width: 80%;
		height: 80%;
	}

	.nav-circlepop div.next .icon-wrap {
		-webkit-transform: rotate(180deg);
		transform: rotate(180deg);
	}

	.nav-circlepop .icon-wrap::before,
	.nav-circlepop .icon-wrap::after {
		position: absolute;
		left: 25%;
		width: 3px;
		height: 50%;
		background: #fff;
		content: '';
		-webkit-transition: -webkit-transform 0.3s, background-color 0.3s;
		transition: transform 0.3s, background-color 0.3s;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	}

	.nav-circlepop .icon-wrap::before {
		-webkit-transform: translateX(-50%) rotate(30deg);
		transform: translateX(-50%) rotate(30deg);
		-webkit-transform-origin: 0 100%;
		transform-origin: 0 100%;
	}

	.nav-circlepop .icon-wrap::after {
		top: 50%;
		-webkit-transform: translateX(-50%) rotate(-30deg);
		transform: translateX(-50%) rotate(-30deg);
		-webkit-transform-origin: 0 0;
		transform-origin: 0 0;
	}

	.nav-circlepop div:hover::before {
		opacity: 1;
		-webkit-transform: scale(1);
		transform: scale(1);
	}

	.nav-circlepop div:hover .icon-wrap::before,
	.nav-circlepop div:hover .icon-wrap::after {
		background: #223448;
	}

	.nav-circlepop div:hover .icon-wrap::before {
		-webkit-transform: translateX(-50%) rotate(45deg);
		transform: translateX(-50%) rotate(45deg);
	}

	.nav-circlepop div:hover .icon-wrap::after {
		-webkit-transform: translateX(-50%) rotate(-45deg);
		transform: translateX(-50%) rotate(-45deg);
	}

/*热门推荐*/
	#rmtj{
		width: 1200px;
		height: 200px;
		margin: 40px auto;
		/*background: rgba(114,154,210,0.5);*/
	}
	#rmtj_course{
		width: 84%;
		height: 200px;
		/*background: rgba(199,154,110,0.7);*/
		margin-left: 8%;
		float: left;
	}
		.rmtj_course_list{
			width: 22.5%;
			height: 200px;
			/*background: rgba(214,154,210,0.5);*/
			float: left;
		}
		.rmtj_course_list:nth-child(1),.rmtj_course_list:nth-child(2),.rmtj_course_list:nth-child(3){
			margin-right: 3.3%;
		}
			.rmtj_course_list_img{
				width: 100%;
				height: 140px;
				background: rgba(114,154,210,0.5);
				overflow: hidden;
				position: relative;
			}
				.rmtj_course_list_img img{
					width: 100%;
					height: 100%;
					position: absolute;
					top: 0px;
					left:0px;
				}
			.rmtj_course_list_con{
				width: 100%;
				height: 57px;
				margin-top: 3px;
				background: #f1f1ef;
			}
				.rmtj_course_list_con_title{
					width: 80%;
					height: 25px;
					padding-left: 4%;
					/*background: rgba(111,144,210,0.7);*/
					overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;
					font-size: 18px;
					line-height: 25px;
					color: #000;
				}
				.rmtj_course_list_con_xq{
					width: 92%;
					height: 32px;
					margin-left: 4%;
				}
					.rmtj_course_list_con_xq li{
						float: left;
						margin-right: 2%;
						height: 32px;
						line-height: 32px;
						font-size: 12px;
						color: #707070;
					}
					.rmtj_course_list_con_xq li:nth-child(3){
						float: right;
					}
					.rmtj_course_list_con_xq li span{
						color: #e23312;
						font-size: 14px;
						margin-right: 1%;
					}
	#rmtj_more{
		width: 3.5%;
	    height: 42px;
	    border-radius: 50%;
	    float: left;
	    margin: 79px 2.5% 79px 2%;
	    text-align: center;
	    line-height: 42px;
	    color: rgba(34,52,72,1);
	    font-size: 12px;
	    box-shadow: 0 0 0 1px rgba(34,52,72,1);
	}
	#rmtj_more a {
	    width: 100%;
	    height: 42px;
	    text-align: center;
	    box-shadow: 0 0 0 1px rgba(34,52,72,1);
	    border-radius: 50%;
	    background: rgba(0,1,0,0);
	    margin: -42px 0px 0px 0px;
	    position: relative;
	    z-index: 10;
	}

/*四大模块*/
	#sdmk{
	  width: 1200px;
	  height: 460px;
	  margin: 0 auto;
	}
	#sdmk_left,#sdmk_right{
	  width: 30%;
	  height: 100%;
	  /*background: rgba(211,210,185,0.5);*/
	  float: left;
	}
	#sdmk_center{
	  width: 40%;
	  height: 100%;
	  /*background: rgba(191,104,210,0.7);*/
	  background: url(img/readinggirl.jpg) no-repeat;
	  float: left;
	}
	.left_content,.right_content{
	  width: 60%;
	  height: 150px;
	  /*background: rgba(191,210,185,0.5);*/
	  margin: 40px 20%;
	  float: left;
	  cursor: pointer;
	}
	.sdmk_corn{
	  width: 25%;
	  height: 54px;
	  /*background: rgba(191,65,185,0.5);*/
	  margin: 0 auto;
	  text-align: center;
	  line-height: 54px;
	  color: #223448;
	}
	.sdmk_jianjie{
	  
	  height: 90px;
	  margin-top: 6px;
	 /* background: rgba(191,65,185,0.5);*/
	  font-size: 14px;
	  color: #223448;
	  text-indent: 30px;
	}
	/*中间模块，选项卡*/
	.center_content{
	  width: 100%;
	  height: 100%;
	  background: rgba(0,0,0,0.6);
	  color: #fff;
	}
	.content_titile{
	  height: 80px;
	  padding: 40px 0px 0px;
	  font-size: 26px;
	  font-weight: bold;
	  letter-spacing: 3px;
	  border-bottom: 2px solid #fff;
	  margin-left: 8%;
	}
	.content_list{
	  width: 85%;
	  height: 320px;
	  margin: 30px 8%;
	}
		.content_list ul{
		    float: left;
		    width: 100%
		}
		.content_list ul span{
			height: 50px;
			margin-right: 8%;
			float: left;
			line-height: 50px;
			font-size: 16px;
			padding-top: 10px;
		}
		.content_list li{
			height: 50px;
			margin-right: 14%;
			float: left;
			line-height: 50px;
			font-size: 16px;
			padding-top: 10px;
			/*background: rgba(112,45,199,0.6);*/
			border-bottom: 0px solid #fff;
		}	
		.content_list li a{
		  color: #fff;
		}
	
/*本站公告*/
	#bzgg{
		width: 100%;
		height: 360px;
		background: rgba(153,204,255,0.4);
	}
		#bzgg_contain{
			width: 1200px;
			height: 360px;
			/*background: rgba(114,188,21,0.4);*/
			margin: 0 auto;
		}
			#bzgg_left{
				height: 240px;
				width: 20%;
				float: left;
				margin: 60px 3%;
				/*background: rgba(116,175,148,0.3);*/
			}
				#bzgg_left ul{
					width: 80%;
				    height: 80%;
				    position: relative;
				    overflow: hidden;
				    margin: 10%;
				   /* background: #bfbfbf;*/
				}
				#bzgg_left li{
					width: 100%;
					height: 100%;
					position: absolute;
				}
				#bzgg_left span{
					color: #333333;
				}
			#bzgg_center{
				width: 62.5%;
				height: 240px;
				margin: 60px 0px;
				/*background: rgba(116,175,148,0.3);*/
				float: left;
				overflow: hidden;
				position: relative;
			}
			#bzgg_center li{
				position: absolute;
				width: 100%;
				height: 100%;
			}
				.bzgg_center_title{
					width: 80%;
					height: 40px;
					line-height: 40px;
					font-size: 26px;
					overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;
					letter-spacing: 1px;
				}
					.bzgg_center_title a{
						color: #000;
					}
				.bzgg_center_xg{
					width: 100%;
					height: 25px;
					color: #707070;
				}
				.bzgg_center_content{
					width: 100%;
					height: 175px;
					line-height: 25px;
					text-indent: 34px;
					font-size: 18px;
					position:relative;
					overflow:hidden;
					/*overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;*/
				}	
					.bzgg_center_content::after {
					    content:"...";
					    font-weight:bold;
					    position:absolute;
					    bottom:0;
					    right:0;
	    				padding: 0 2.2% 0px 0;
					    background: #d6ebff;
					}
			#bzgg_right{
				width: 5%;
				height: 100%;
				/*background: rgba(116,175,148,0.7);*/
				float: right;
				margin: 0px 4% 0px 0px;
			}
				#bzgg_right ul{
					width: 44%;
					margin-top: 90px;
					margin-left: 28%;
					/*background: rgba(111,145,221,0.7);*/
				}
					#bzgg_right ul li{
						width: 100%;
						height: 44px;
						line-height: 44px;
						text-align: center;
						font-size: 20px;
						font-weight: bold;
						letter-spacing: 1px;
						border-bottom: 1px solid #000;
						cursor: pointer;
					}
						#bzgg_right ul li:nth-child(4){
							border-bottom: 0px;
						}
				#bzgg_right_shuxian{
					width: 1px;
					height: 20px;
					background: #000;
					margin: 0px 0px 0px 50%;
				}
				#bzgg_more{
					width: 70%;
				    height: 42px;
				    border-radius: 50%;
				    text-align: center;
				    line-height: 42px;
				    font-size: 14px;
				    color: rgba(34,52,72,1);
				    box-shadow: 0 0 0 1px rgba(34,52,72,1);
				    margin: 7px 0px 0px 15%;
				}
					#bzgg_more a{
						width: 100%;
					    height: 42px;
					    box-shadow: 0 0 0 1px rgba(34,52,72,1);
					    border-radius: 30px;
					    background: rgba(0,1,0,0);
					    margin: -42px 0px 0px 0px;
					    position: relative;
					    z-index: 10;
					}

/*热门分享*/
	#rmfx{
		width: 1200px;
		height: 360px;
		/*background: rgba(11,145,211,0.5);*/
		margin: 0 auto;
	}
	#rmfx_shuxian{
		width: 1px;
		height: 200px;
		float: left;
		margin-top: 160px;
		background: #000;
	}
	#rmfx_center{
		width: 60%;
		height: 360px;
		float: left;
		/*background: rgba(191,65,185,0.7);*/
	}
		#rmfx_enter_article{
			width: 95%;
			height: 300px;
			/*background: rgba(174,211,213,0.7);*/
			margin-left: 5%;
			position: relative;
			overflow: hidden;
		}
		.rmfx_enter_article_list{
			position: absolute;
			width: 100%;
			height: 100%;
		}
			.rmfx_enter_article_title{
				width: 80%;
				height: 40px;
				line-height: 40px;
				font-size: 24px;
				letter-spacing: 1px;
			}
				.rmfx_enter_article_title a{
					color: #000;
				}
			.rmfx_enter_article_xg{
				width: 100%;
				height: 25px;
				font-size: 14px;
				color: #707070;
				line-height: 25px;
			}
				.rmfx_enter_article_xg span{
					margin-left: 0.8%;
				}
				.rmfx_enter_article_xg span:nth-child(1){
					margin-left: 0px;
				}
			.rmfx_enter_article_content{
				width: 100%;
				height: 175px;
				font-size: 18px;
				text-indent: 30px;
				line-height: 25px;
				position:relative;
				overflow:hidden;
				/*background: rgba(211,188,28,0.7);*/
			}
				/*添加省略号*/
     		       .rmfx_enter_article_content::after {
     				    content:"...";
     				    font-weight:bold;
     				    position:absolute;
     				    bottom:0;
     				    right:0;
     				    background: #fff;
         				padding: 0 1.3% 0px 0;
     				}
			.rmfx_enter_article_fabuzhe{
				width: 12%;
				height: 45px;
				line-height: 45px;
				font-size: 14px;
				color: #707070;
				/*background: rgba(111,188,28,0.7);*/
				margin-left: 89%;
			}
			.rmfx_enter_article_fabuzhe img{
				border-radius: 50%;
				width: 40px;
				height: 40px;
				margin: 0px 5px 0px 10px;
				vertical-align: middle;
			}
		#rmfx_enter_option{
			width: 14%;
			height: 60px;
			/*background: rgba(191,165,185,0.7);*/
			left: 5%;
			position: relative;
		}
			#rmfx_enter_option li{
				width: 12%;
				height: 12px;
				margin-right: 15%;
				float: left;
				border-radius: 50%;
				margin-top: 20px;
				cursor: pointer;
				background: #bfbfbf;
			}
	#rmfx_img{
		width: 37%;
		height: 360px;
		float: right;
		position: relative;
		overflow: hidden;
	}
	#rmfx_img img{
		width: 100%;
		height: 100%;
	}
	#rmfx_hengxian{
		width: 25%;
		height: 1px;
		background: #000;
		float: left;
	}
	#rmfx_more{
		width: 40px;
	    height: 40px;
	    float: left;
	    border-radius: 50%;
	    margin: -20px 0px 0px 7px;
	    text-align: center;
	    line-height: 40px;
	    color: rgba(34,52,72,1);
	    font-size: 12px;
	    box-shadow: 0 0 0 1px rgba(34,52,72,1);
	}
		#rmfx_more a{
			width: 40px;
		    height: 40px;
		    box-shadow: 0 0 0 1px rgba(34,52,72,1);
		    border-radius: 30px;
		    background: rgba(0,1,0,0);
		    margin: -40px 0px 0px 0px;
		    position: relative;
		    z-index: 10;
		}

/*小组排名*/
	#xzpm{
		width: 100%;
		height: 360px;
		/*background: rgba(222,145,45,0.6);*/
	}
	#xzpm_left{
		width:42%;
		height: 100%;
		background: rgba(153,204,255,0.4);
		float: left;

	}
	.xzpm_left_img{
		width: 74%;
	   	height: 76%; 
		margin: 7% 0px 0px 38%;
		position: relative;
		overflow: hidden;
	}
		#xzpm_left img{
			width: 100%;
	   		height: 100%;
		}
	#xzpm_center{
		width: 6%;
		height: 200px;
		/*background: rgba(111,157,211,0.5);*/
		float: left;
		margin: 136px 0px 0px 6.5%;
	}
		#xzpm_center_no{
			width: 100%;
			height: 50px;
			/*background: rgba(177,154,188,0.5);*/
			font-size: 20px;
			font-weight: bold;
			line-height: 50px;
			border-bottom: 1px solid #000;
			letter-spacing: 1px;
			padding-left: 5px; 
		}
		#xzpm_center ul{
			width: 50%;
			height: 110px;
			margin: -50px 0px 0px 50%;
			/*background: rgba(111,145,255,0.7);*/
		}
			.xzpm_center_li1{
				text-align: center;
				width: 100%;
				color:#707070; 
				line-height:30px; 
				height:30px;
				font-size: 16px;
				cursor: pointer;
			}
			.xzpm_center_li2{
				text-align: center;
				width: 100%;
				font-size:26px; 
				color:#000; 
				line-height:50px; 
				height:50px;
				font-weight: bold;
				cursor: pointer;
			}
		#xzpm_more{
					width: 40px;
				    height: 40px;
				    border-radius: 50%;
				    margin: 5px 0px 0px 50%; 
				    text-align: center;
				    line-height: 40px;
				    color: rgba(34,52,72,1);
				    font-size: 12px;
				    box-shadow: 0 0 0 1px rgba(34,52,72,1);
				}
					#xzpm_more a{
						width: 40px;
					    height: 40px;
					    box-shadow: 0 0 0 1px rgba(34,52,72,1);
					    border-radius: 30px;
					    background: rgba(0,1,0,0);
					    margin: -40px 0px 0px 0px;
					    position: relative;
					    z-index: 10;
					}
	#xzpm_right{
		width: 25%;
		height: 100%;
		background: rgba(242, 242, 242, 1);
		float: right;
	}
		.xzpm_right_contain{
			width: 120%;
			height: 230px;
			border: 1px solid #000;
			margin: 64px 0px 64px -76%;
			position: relative;
            overflow: hidden;
		}
		/*.xzpm_right_contain_list{
			width: 400px;
		}*/
			.xzpm_right_contain_title{
				width: 50%;
				height: 50px;
				/*background: rgba(111,145,132,0.5);*/
				margin:40px 0px 0px 10%;
				font-size: 26px;
				letter-spacing: 4px;
				font-weight: bold;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
			}
				.xzpm_right_contain_title a{
					color: #000;
				}
			.xzpm_right_contain_jianjie{
				width: 80%;
				height: 100px;
				line-height: 20px;
				font-size: 16px;
				margin-left: 10%;
			}

/*foot*/
	#footer{
		width: 100%;
		height: 230px;
		background: url(img/footerbg.jpg) no-repeat;
		margin-top: 80px;
	}
	#footer_contain{
		width: 100%;
		height: 230px;
		background: rgba(1,0,1,0.6);
	}
		#footer_contain form{
			width: 37%;
		    height: 100px;
		    /* background: rgba(111,211,118,0.8); */
		    margin: 0 auto;
		    padding-top: 50px;
		}
			#footer_search{
				width: 90%;
			    height: 50px;
			    float: left;
			    border-radius: 6px;
			    border: 1px solid #fff;
			    outline: none;
			    padding: 5px;
			}
			#footer_submit{
				width: 8%;
			    height: 50px;
			    float: right;
			    margin: 5px 0px 5px 1%;
			    border: none;
			    background: url(img/footer_search2.png) no-repeat;
			    outline: none;
			}
		#footer_yqlj{
			width: 60%;
			height: 50px;
			/*background: rgba(111,148,75,0.8);*/
			margin: 40px auto 0px;
			color: #fff;
			font-size: 22px;
			letter-spacing: 2px;
		}
			#footer_yqlj a{
				color: #fff;
				margin-left: 2%;
				font-size: 20px;
			}

</style>
  </head>
  
  <body>
 <!-- 导航栏 -->
	<div id="nav">
		<div id="daohang">
			<!-- 三杠整齐菜单图标<span class="am-icon-bars am-icon-lg" style="color:white;display:none"></span> -->
			<!-- <span class="am-icon-align-left am-icon-lg" style="color:#223448;"></span> -->
			<!-- <span class="am-icon-th-large am-icon-sm"></span> -->
			<span></span>
			<span></span>
			<span></span>
		</div>
		<div id="user">
			<div class="open">登录</div>
			<span>|</span>
			<a href="regist2.jsp">注册</a>
			<!-- <a href="#"><img src="img/hp2.png"></a> -->
		</div>
		<div id="searchcorn">
			<span class="am-icon-search am-icon-sm"></span>
		</div>
	    <form>
	    	<input id="search-input" type="text" value="请输入搜索内容..." onblur="if(this.value=='') value='请输入搜索内容...';" onclick="if(this.value=='请输入搜索内容...')value='';"/>
	    </form>
		<div id="log"><img src="img/logo1.png"></div>

	</div>
<!-- 登入表单 -->
	<div class="beijing"></div>
	<div class="modal hidden">
		<div class="form">
			<form action="LoginServlet" method="post">
				<label for="phone" required="required">账户：<input id="phone" name="id" type="text" value="<%=request.getAttribute("id") %>"/></label>
				<font color="red" size="2">${msg2}</font>
				<label for="pass">密　码<input id="pass" type="password" name="password" value="<%=request.getAttribute("password")%>"required="required"/></label>
				<font color="red" size="2">${msg3}</font>
				<label for="" ><span>验证码:&nbsp;</span><input type="text" name="verifycode" style="width:100px"></label><img src="VerifyCodeServlet" id="verify" onclick="document.getElementById('verify').src='VerifyCodeServlet?'+Math.random();"style="height:29px;margin-left:20px">
				<font color="red" size="2">${msg1}</font>
				<input type="submit" value="登入" style="background:#76ae0a">
			</form>
		</div>
		<div class="invite">
			<h3>微专业实训平台欢迎你<br/><br/><br/><small>希望在这里你能找到更好的未来~<br/>有更多的实践机会~<br>等等、、、</small></h3>
			<div class="nope"><a href="regist2.jsp">我要注册~ </a></div>
			<div title="close" class="close"></div>
		</div>
	</div>	
<!-- 导航菜单 -->
	<div id="menu">
			<ul>
				<li class="menu_list">学习</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">公告</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">分享</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">小组</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
			</ul>
	</div>

<!-- 轮播图 -->
	<div id="banner">
		<div class="pic">
			<ul>
				<li style="left:0px;">
					<img src="img/banner_img7.jpg"></li>
				<li>
					<img src="img/banner_img8.jpg"></li>
				<li>
					<img src="img/banner_img9.jpg"></li>
				<li>
					<img src="img/banner_img10.jpg"></li>
				<li>
					<img src="img/banner_img11.jpg"></li>
			</ul>
		</div>
		<nav class="nav-circlepop">
			<div class="prev">
				<span class="icon-wrap"></span>
			</div>
			<div class="next">
				<span class="icon-wrap"></span>
			</div>
		</nav>
		<div class="nav">
			<ul>
				<li class="bj"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>

<!-- 热门推荐 -->
	<div id="rmtj">
		<div id="rmtj_course">
			<div class="rmtj_course_list">
				<a href="#">
					<div class="rmtj_course_list_img">
						<img src="img/rmtj_1.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">Java入门基础</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>45人已学习</li>
								<li>45人已赞</li>
								<li>
									<span>9.4</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="#">
					<div class="rmtj_course_list_img">
						<img src="img/rmtj_2.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">Java入门基础</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>45人已学习</li>
								<li>45人已赞</li>
								<li>
									<span>9.4</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="#">
					<div class="rmtj_course_list_img">
						<img src="img/rmtj_3.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">Java入门基础</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>45人已学习</li>
								<li>45人已赞</li>
								<li>
									<span>9.4</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="#">
					<div class="rmtj_course_list_img">
						<img src="img/rmtj_4.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">Java入门基础</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>45人已学习</li>
								<li>45人已赞</li>
								<li>
									<span>9.4</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>	
		</div>
		<div id="rmtj_more">
	    	more
	    	<a href="#" style="display:none"></a>
	    </div>
	</div>

<!-- 四大模块 -->
	<div class="all_title">学习ING</div>
	<div id="sdmk">
	    <div id="sdmk_left"> 
	        <div class="left_content sdmkl_num">
	        	<div class="sdmk_corn"><span class="am-icon-html5" style="font-size:48px;"></span></div>
	        	<div class="sdmk_jianjie">前端开发，是网站的前台代码实现，包括基本的HTML和CSS以及JavaScript/ajax，现在最新的高级版本HTML5、CSS3，以及SVG等。</div>
	    	</div>
	    	<div class="left_content sdmkl_num">
	    		<div class="sdmk_corn"><span class="am-icon-mobile" style="font-size:60px;"></span></div>
	    		<div class="sdmk_jianjie">移动端开发，是指与服务器相对应，为客户提供本地服务的程序。一般安装在普通的客户机上，需要与服务端互相配合运行。</div>
	    	</div>  
	    </div>
	    <div id="sdmk_center">
	    	<div class="center_content" style="display:block;">
	          <div class="content_titile" style="width: 135px;">前端开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">HTML/CSS</a></li>
	              <li><a href="#">JavaScript</a></li>
	              <li><a href="#">CSS3</a></li>
	              <li><a href="#">HTML5</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">基础</a></li>
	              <li><a href="#">案例</a></li>
	              <li><a href="#">图书</a></li>
	              <li><a href="#">测试</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 165px;">移动端开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">Android</a></li>
	              <li><a href="#">IOS</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">基础</a></li>
	              <li><a href="#">案例</a></li>
	              <li><a href="#">图书</a></li>
	              <li><a href="#">测试</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 135px;">后台开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">C</a></li>
	              <li><a href="#">C++</a></li>
	              <li><a href="#">C#</a></li>
	              <li><a href="#">JAVA</a></li>
	            </ul>
	            <ul>
	             <span>类型：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">基础</a></li>
	              <li><a href="#">案例</a></li>
	              <li><a href="#">图书</a></li>
	              <li><a href="#">测试</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 100px;">数据库</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">C</a></li>
	              <li><a href="#">C++</a></li>
	              <li><a href="#">C#</a></li>
	              <li><a href="#">JAVA</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="#">全部</a></li>
	              <li><a href="#">基础</a></li>
	              <li><a href="#">案例</a></li>
	              <li><a href="#">图书</a></li>
	              <li><a href="#">测试</a></li>
	            </ul>
	          </div>
	        </div>    
	    </div>
	    <div id="sdmk_right">
	        <div class="right_content sdmkr_num">
	        	<div class="sdmk_corn"><span class="am-icon-desktop" style="font-size:40px;"></span></div>
	        	<div class="sdmk_jianjie">后台开发，后台就是通过一个做好的页面程序可以填加更新网站内容，在网站的页面上(也就是前台)显示。</div>
	    	</div>
	    	<div class="right_content sdmkr_num">
	    		<div class="sdmk_corn"><span class="am-icon-database" style="font-size:40px;"></span></div>
	    		<div class="sdmk_jianjie">数据库，是按照数据结构组织和管理数据的建立在计算机存储设备上的仓库，用户可对文件中的数据进行更新、删除等操作。</div>
	    	</div>
	    </div>
	</div>

<!-- 本站公告 -->
	<div class="all_title">本站公告</div>
	<div id="bzgg">
		<div id="bzgg_contain">
			<div id="bzgg_left">
				<ul>
					<li style="display:block;">
						<span class="am-icon-newspaper-o" style="font-size: 154px; margin: -12px 4%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-clock-o" style="font-size: 206px; margin: -54px 4%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-money" style="font-size: 162px; margin: -22px 5%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-user" style="font-size: 206px; margin: -54px 8%;"></span>
					</li>
				</ul>
			</div>
			<div id="bzgg_center">
				<ul>
					<li style="display:block;">
						<div class="bzgg_center_title"><a href="#">Windows竟然变得开源了要变得开源了变得开源了</a></div>
						<div class="bzgg_center_xg">200人已读 17/03/25</div>
						<div class="bzgg_center_content">会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度、考核制度、督查巡查制度，确保实现脱贫攻坚工作目标任务。
						<p>会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title"><a href="#">2017全国计算机大赛报名通知</a></div>
						<div class="bzgg_center_xg">200人已读 17/03/25</div>
						<div class="bzgg_center_content">会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度、考核制度、督查巡查制度，确保实现脱贫攻坚工作目标任务。
						<p>会议指出，脱贫攻坚工成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到脱贫攻</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title"><a href="#">JS完美引动框架的制作</a></div>
						<div class="bzgg_center_xg">200人已读 17/03/25</div>
						<div class="bzgg_center_content">会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标
						<p>会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title"><a href="#">与前端的爱恨情仇</a></div>
						<div class="bzgg_center_xg">200人已读 17/03/25</div>
						<div class="bzgg_center_content">会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度、考核制度、督查巡查制度，确保实现脱贫攻坚工作目标任务。
						<p>会议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到202求贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对位。党的十八大确定了到的十八大确定了到贯穿脱贫攻</p></div>
					</li>
				</ul>
			</div>
			<div id="bzgg_right">
				<ul>
					<li style="color: #000;">01</li>
					<li style="color: rgba(1,0,1,0.4);">02</li>
					<li style="color: rgba(1,0,1,0.4);">03</li>
					<li style="color: rgba(1,0,1,0.4);">04</li>
				</ul>
				<div id="bzgg_right_shuxian"></div>
				<div id="bzgg_more">
					more
					<a href="#" style="display:none"></a>
				</div>	
			</div>
		</div>
	</div>

<!-- 热门分享 -->
	<div class="all_title">热门分享</div>
	<div id="rmfx">
		<div id="rmfx_shuxian"></div>
		<div id="rmfx_center">
			<div id="rmfx_enter_article">
				<div class="rmfx_enter_article_list" style="display:block;">
					<div class="rmfx_enter_article_title">
						<a href="#">今天出门摔了一跤</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>100</span>
						人已读
						<span>70</span>
						人已赞
						<span>17/04/18</span>
					</div>
					<div class="rmfx_enter_article_content">
						议指出，脱贫攻整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度、考核制小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度、考核制度、督查巡查制度，除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过确保实现脱贫攻坚工作目标任务。
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="#">
							<img src="img/hp4.png"></a>
					</div>
				</div>
				<div class="rmfx_enter_article_list" style="display:none;">
					<div class="rmfx_enter_article_title">
						<a href="#">2今天出门摔了一跤</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>100</span>
						人已读
						<span>70</span>
						人已赞
						<span>17/04/18</span>
					</div>
					<div class="rmfx_enter_article_content">
						议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过过程、各方面，严格落求贯穿脱贫攻坚工作全过除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作全过过程、各方面，严实脱贫攻坚工作报告制度、责任制度、考核制度、督查巡查制度，确保实现脱贫攻坚工作目标任务。
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="#">
							<img src="img/hp4.png"></a>
					</div>
				</div>
				<div class="rmfx_enter_article_list" style="display:none;">
					<div class="rmfx_enter_article_title">
						<a href="#">今3天出门摔了一跤</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>100</span>
						人已读
						<span>70</span>
						人已赞
						<span>17/04/18</span>
					</div>
					<div class="rmfx_enter_article_content">
						议指出，脱贫攻坚工作在党和国家工作全局中具有重要地位。党的十八大确定了到2020年全面建成小康社会的目标，其中最难实现的就是农村贫困人口脱贫、贫困县摘帽、消除区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制度区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚工作区域性整体贫困。实现这个目标是我们党对人民的庄严承诺。必须把从严要求贯穿脱贫攻坚全过程、各方面，严格落实脱贫攻坚工作报告制度、责任制贯穿脱贫攻坚、考核制度、督查巡查制度，确保实现脱贫攻坚工作目标任务。
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="#">
							<img src="img/hp4.png"></a>
					</div>
				</div>
			</div>
			<div id="rmfx_enter_option">
				<ul>
					<li style="background: rgba(153,204,255,0.7);"></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
		<div id="rmfx_img">
			<img src="img/rmfx_img1.jpg" style="display:block;">
			<img src="img/rmfx_img2.jpg" style="display:none;">
			<img src="img/rmfx_img1.jpg" style="display:none;">
		</div>
		<div id="rmfx_hengxian"></div>
		<div id="rmfx_more">
			more
			<a href="#" style="display:none"></a>
		</div>
	</div>

<!-- 小组排名 -->
	<div class="all_title">小组排名</div>
	<div id="xzpm">
		<div id="xzpm_left">
			<div class="xzpm_left_img">
				<img src="img/rmtj_1.jpg" style="display:block">		
				<img src="img/rmtj_1.jpg" style="display:none">		
				<img src="img/rmtj_1.jpg" style="display:none">
			</div>
		</div>
		<div id="xzpm_center">
			<div id="xzpm_center_no">NO.</div>
			<ul>
				<li class="xzpm_center_li2">1</li>
				<li class="xzpm_center_li1">2</li>
				<li class="xzpm_center_li1">3</li>
			</ul>
			<div id="xzpm_more">
				more
				<a href="#"></a>
			</div>
		</div>
		<div id="xzpm_right">
			<div class="xzpm_right_contain">
				<div class="xzpm_right_contain_list" style="display:block">
					<div class="xzpm_right_contain_title"><a href="#">攻1城战队攻城战队</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：1我们组是最后移动端开发，是指与服务器相对应，为客户提供本地服务的程序。除了一些只在本地运行的应用程序之外，一般安装在普通的客户机上，需要与服务端互相配合运行。</div>
				</div>
				<div class="xzpm_right_contain_list" style="display:none">
					<div class="xzpm_right_contain_title"><a href="#">攻2城战队攻城战队</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：2我们组是最后移动端开发，是指与服务器相对应，为客户提供本地服务的程序。除了一些只在本地运行的应用程序之外，一般安装在普通的客户机上，需要与服务端互相配合运行。</div>
				</div>
				<div class="xzpm_right_contain_list" style="display:none">
					<div class="xzpm_right_contain_title"><a href="#">攻3城战队攻城战队</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：3我们组是最后移动端开发，是指与服务器相对应，为客户提供本地服务的程序。除了一些只在本地运行的应用程序之外，一般安装在普通的客户机上，需要与服务端互相配合运行。</div>
				</div>	
			</div>
		</div>
	</div>

<!-- foot -->
	<div id="footer">
		<div id="footer_contain">
			<form>
				<input type="text" name="search" id="footer_search">
				<input type="submit" name="submit" id="footer_submit" value="">
			</form>
			<div id="footer_yqlj">
				友情链接：
				<a href="#">百度</a>
				<a href="#">慕课网</a>
				<a href="#">UI设计</a>
				<a href="#">网易云课堂</a>
				<a href="#">花瓣网</a>
				<a href="#">Bootstrap中文网</a>
			</div>
		</div>
	</div>

<script src="js/jquery.js"></script>
<script src="js/amazeui.min.js"></script> 
<script type="text/javascript">
	window.onload=function ()
	{
// 导航栏处搜索框移动设置
		var oSearch=document.getElementById('searchcorn');
		var oInput=document.getElementById('search-input');

		oSearch.onmouseover=function (){
			oInput.style.width='200px';
			// oInput.style.color='#ccc';
		}
		oSearch.onmouseout=function (){
			oInput.style.width='40px';
			// oInput.style.color='#223448';
		}
		oInput.onmouseover=function (){
			oInput.style.width='200px';
			// oInput.style.color='#ccc';
		}
		oInput.onmouseout=function (){
			oInput.style.width='40px';
			// oInput.style.color='#223448';
		}

//导航菜单鼠标事件样式
		var aMenu=document.getElementsByClassName('menu_list');
		var c="menu_list";
		var newc1="rubberBand animated";
	
		aMenu[0].onmouseover=function (){
			this.className = c+' '+newc1;
		}
		aMenu[0].onmouseout=function (){
			this.className = c;
		}
		aMenu[1].onmouseover=function (){
			this.className = c+' '+newc1;
		}
		aMenu[1].onmouseout=function (){
			this.className = c;
		}
		aMenu[2].onmouseover=function (){
			this.className = c+' '+newc1;
		}
		aMenu[2].onmouseout=function (){
			this.className = c;
		}
		aMenu[3].onmouseover=function (){
			this.className = c+' '+newc1;
		}
		aMenu[3].onmouseout=function (){
			this.className = c;
		}

    };

// 轮播图
	var a=0;//初始化序列号
    var b=0;//前一个li的序列号
	$(".nav ul li").click(function(){
		$(this).addClass("bj").siblings().removeClass("bj");
		a=$(this).index();//获取当前li的序列号
		if (a>b)


		{
			$(".pic ul li").eq(a).css("left","100%");
			$(".pic ul li").eq(a).animate({left:"0px"},300);
			$(".pic ul li").eq(b).animate({left:"-100%"},300);
			b=a;
		}else if (a<b)
		{
			$(".pic ul li").eq(a).css("left","-100%");
			$(".pic ul li").eq(a).animate({left:"0px"},300);
			$(".pic ul li").eq(b).animate({left:"100%"},300);
			b=a;
		}
	});
	$(".next").click(function(){
		a++;
		if (a>4)a=0;
		$(".pic ul li").eq(a).css("left","100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"-100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
	});
	$(".prev").click(function(){
		a--;
		if (a<0)a=4;
		$(".pic ul li").eq(a).css("left","-100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
	});
  //怎样让在发生点击事件后重新计算时间
    var timer=setInterval(function(){     
      a++;
		if (a>4)a=0;
		$(".pic ul li").eq(a).css("left","100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"-100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
    },4000);

//导航菜单
 	$(".menu_list").click(function(){
		x=$(this).index();//获取当前li的序列号
		y=x*0.5;
		$(".menu_hg1").eq(y).css("background","#fff").siblings(".menu_hg1").animate({width:"1px"},500);
		$(".menu_hg1").eq(y).animate({width:"70px"},500).siblings(".menu_hg1").css("background","rgba(1,0,1,0)");		
	});
	
//导航菜单定位
	$('.menu_list').eq(0).on('click', function() {
	  var $w = $(window);
	  $w.smoothScroll({position: 781});
	});
	$('.menu_list').eq(1).on('click', function() {
	  var $w = $(window);
	  $w.smoothScroll({position: 1381});
	});
	$('.menu_list').eq(2).on('click', function() {
	  var $w = $(window);
	  $w.smoothScroll({position: 1891});
	});
	$('.menu_list').eq(3).on('click', function() {
	  var $w = $(window);
	  $w.smoothScroll({position: 2381});
	});

//登入
		function weizhi(){
			var clientHeight = document.body.clientHeight;
			var scrollTop = document.body.scrollTop;
	        var availHeight = window.screen.availHeight;
			var weizhi = (availHeight-400)/2;
			weizhi = parseInt(weizhi)+scrollTop;
	        var offsetHeight = document.body.offsetHeight;
	        var scrollHeight = document.body.scrollHeight;
	        var screenTop = window.screenTop;
	        var height = window.screen.height;
	        $(".beijing").css("height",availHeight+"px");
			$("#scrollHeight").val(scrollHeight);
			$("#clientHeight").val(clientHeight);
			$("#offsetHeight").val(offsetHeight);
			$("#scrollTop").val(scrollTop);
			$("#screenTop").val(screenTop);
			$("#availHeight").val(availHeight);
			$("#height").val(height);
			$("#weizhi").val(weizhi);
			$(".close, .nope").on('click', function () {
				$('.modal').addClass('hidden');
				$('.beijing').css('display','none');
				$('body').css('overflow','auto')
			})
			$(".open").on('click', function () {
				$('.modal').css('top',weizhi+'px');
				$('.beijing').css('top',scrollTop+'px');
				$('.modal').removeClass('hidden');
				$('.beijing').css('display','block');
				$('body').css('overflow','hidden')
			})	
		}
		weizhi();		

//导航变差
	var count2=0;
	$("#daohang").click(function(){
		count2++;
		if(count2%2==0)
		{
			$("#daohang span").eq(0).css("transform","");
			$("#daohang span").eq(1).css("opacity","1");
			$("#daohang span").eq(2).css("transform","");
			$("#menu").css("display","none");
		}
        else
        {
        	$("#daohang span").eq(0).css("transform","translateY(11px) rotate(-45deg)");
			$("#daohang span").eq(1).css("opacity","0");
			$("#daohang span").eq(2).css("transform","translateY(-11px) rotate(45deg)");
			$("#menu").css("display","block");
        }	
	});

// onscroll函数
	window.onscroll=function ()
	{
	// 滚动导航栏样式改变
	   var oNav=document.getElementById('nav');
	   var oUser=document.getElementById('user');
	   var aA=oNav.getElementsByTagName('a');
	   var aSpan=oNav.getElementsByTagName('span');
	   var top = document.body.scrollTop||document.documentElement.scrollTop; 

	   if(top>=550)
	   {
	     oNav.style.borderBottom="1px solid #223448";
	     oNav.style.boxShadow="0 4px 4px -4px #8a8a8a";
	     oNav.style.background="rgba(1,0,1,1)";
	     aSpan[0].style.background="#fff";
	     aSpan[1].style.background="#fff";
	     aSpan[2].style.background="#fff";
	     aSpan[3].style.color="#fff";
	     aSpan[4].style.color="#fff";
	     oUser.style.color="#fff";
	     aA[0].style.color="#fff";
	   }
	   else
	   {
	     oNav.style.borderBottom="none";
	     oNav.style.boxShadow="none";
	     oNav.style.background="rgba(1,0,1,0)";
	     aSpan[0].style.background="#223448";
	     aSpan[1].style.background="#223448";
	     aSpan[2].style.background="#223448";
	     aSpan[3].style.color="#223448";
	     aSpan[4].style.color="#223448";
	     oUser.style.color="#223448";
	     aA[0].style.color="#223448";
	   }

	//滚动到某个模块标题变化
		var aTitle=document.getElementsByClassName('all_title');
		var c="all_title";
		var newc1="swing animated"; 
		if(top<780)
		{
            aTitle[0].className =c;
			aTitle[1].className =c;
			aTitle[2].className =c;
			aTitle[3].className =c;
		}
		if(top>=780 &&top<1380)
		{
			aTitle[0].className =c+' '+newc1;
			aTitle[1].className =c;
			aTitle[2].className =c;
			aTitle[3].className =c;
		}
		if(top>=1380 &&top<1880)
		{
			aTitle[1].className =c+' '+newc1;
			aTitle[0].className =c;
			aTitle[2].className =c;
			aTitle[3].className =c;
		}
		if(top>=1880 &&top<2380)
		{
			aTitle[2].className =c+' '+newc1;
			aTitle[1].className =c;
			aTitle[0].className =c;
			aTitle[3].className =c;
		}
		if(top>=2380)
		{
			aTitle[3].className =c+' '+newc1;
			aTitle[1].className =c;
			aTitle[2].className =c;
			aTitle[0].className =c;
		}

	//登入
		weizhi();
	};


	$(function(){ 
//热门推荐图片从中心开始放大
		$('.rmtj_course_list').mouseenter(function(){ 
			x=$(this).index();
			var wValue=1.2 * $(".rmtj_course_list_img img").eq(x).width(); 
			var hValue=1.2 * $(".rmtj_course_list_img img").eq(x).height(); 
			$(".rmtj_course_list_img img").eq(x).animate({width: wValue, height: hValue, left:("-"+(0.2 * $(".rmtj_course_list_img img").eq(x).width())/2), top:("-"+(0.2 * $(".rmtj_course_list_img img").eq(x).height())/2)}, 200); 
		}).mouseleave(function(){ 
			x=$(this).index();
			$(".rmtj_course_list_img img").eq(x).animate({width: "100%", height: "100%", left:"0px", top:"0px"}, 200 ); 
		});
	
//四大模块选项卡
		// $(".sdmkl_num").click(function(){
		// 	x=$(this).index();//获取当前li的序列号
		// 	$(".center_content").eq(x).siblings(".center_content").css("display","none");	
		// 	$(".center_content").eq(x).css("display","block");	
		// }); 
		// $(".sdmkr_num").click(function(){
		// 	x=$(this).index()+2;//获取当前li的序列号
		// 	$(".center_content").eq(x).siblings(".center_content").css("display","none");	
		// 	$(".center_content").eq(x).css("display","block");	
		// });

	    $(".sdmkl_num").click(function (){
			x=$(this).index();
			$(".center_content").removeClass("fadeIn animated");
			$(".center_content").eq(x).siblings(".center_content").addClass("fadeOut animated");
			setTimeout(function () {
				$(".center_content").css("display","none");
				$(".center_content").removeClass("fadeOut animated");
				$(".center_content").eq(x).css("display","block");
		        $(".center_content").eq(x).addClass("fadeIn animated");
		    }, 1000);
		});
		$(".sdmkr_num").click(function (){
			x=$(this).index()+2;
			$(".center_content").removeClass("fadeIn animated");
			$(".center_content").eq(x).siblings(".center_content").addClass("fadeOut animated");
			setTimeout(function () {
				$(".center_content").css("display","none");
				$(".center_content").removeClass("fadeOut animated");
				$(".center_content").eq(x).css("display","block");
		        $(".center_content").eq(x).addClass("fadeIn animated");
		    }, 1000);
		});

		$(".sdmkl_num").mouseover(function (){
			x=$(this).index();
		    $(".sdmk_corn").eq(x).addClass("bounce animated");
		}).mouseleave(function (){
			x=$(this).index();
			$(".sdmk_corn").eq(x).removeClass("bounce animated");
		});
		$(".sdmkr_num").mouseover(function (){
			x=$(this).index()+2;
		    $(".sdmk_corn").eq(x).addClass("bounce animated");
		}).mouseleave(function (){
			x=$(this).index()+2;
			$(".sdmk_corn").eq(x).removeClass("bounce animated");
		});
	
//四大模块中心
		$(".content_list li").mouseover(function(){
			x=$(this).index();//获取当前li的序列号	
			$(this).css("border-bottom","1px solid #fff");		
		}).mouseleave(function(){
			x=$(this).index();//获取当前li的序列号	
			$(this).css("border-bottom","0px solid #fff");		
		});
	
//本站公告处轮播自制
	 //    var count1=0;
	 //    $("#bzgg_right li").click(function (){
		// 	x=$(this).index();
		// 	count1=x;
		// 	$(this).siblings("#bzgg_right li").css("color","rgba(1,0,1,0.4)");	
		// 	$(this).css("color","#000");	
			
		// 	$("#bzgg_left li").eq(x).siblings("#bzgg_left li").animate({left: "-240px"}, 600);
		// 	setTimeout(function () {
		// 		$("#bzgg_left li").css("left","240");
		// 		$("#bzgg_left li").eq(x).siblings("#bzgg_left li").css("display","none");
		// 		$("#bzgg_left li").eq(x).css("display","block");
		//         $("#bzgg_left li").eq(x).animate({left: "0px"}, 600);
		//     }, 605);

		// 	$("#bzgg_center li").eq(x).siblings("#bzgg_center li").animate({left: "-750px"}, 600);
		// 	setTimeout(function () {
		// 		$("#bzgg_center li").css("left","750px");
		// 		$("#bzgg_center li").eq(x).siblings("#bzgg_center li").css("display","none");
		// 		$("#bzgg_center li").eq(x).css("display","block");
		//         $("#bzgg_center li").eq(x).animate({left: "0px"}, 600);
		//     }, 605);
		// }); 
	    
		// var timer1=setInterval(function(){
		// 	count1++;
		// 	if (count1>3)
		// 		count1=0;
		// 	$("#bzgg_right li").eq(count1).siblings("#bzgg_right li").css("color","rgba(1,0,1,0.4)");	
		// 	$("#bzgg_right li").eq(count1).css("color","#000");	
			
		// 	$("#bzgg_left li").eq(count1).siblings("#bzgg_left li").animate({left: "-240px"}, 600);
		// 	setTimeout(function () {
		// 		$("#bzgg_left li").css("left","240");
		// 		$("#bzgg_left li").eq(count1).siblings("#bzgg_left li").css("display","none");
		// 		$("#bzgg_left li").eq(count1).css("display","block");
		//         $("#bzgg_left li").eq(count1).animate({left: "0px"}, 600);
		//     }, 605);

		// 	$("#bzgg_center li").eq(count1).siblings("#bzgg_center li").animate({left: "-750px"}, 600);
		// 	setTimeout(function () {
		// 		$("#bzgg_center li").css("left","750px");
		// 		$("#bzgg_center li").eq(count1).siblings("#bzgg_center li").css("display","none");
		// 		$("#bzgg_center li").eq(count1).css("display","block");
		//         $("#bzgg_center li").eq(count1).animate({left: "0px"}, 600);
		//     }, 605);
		// },5000);	

//本站公告处轮播
	    var count1=0;
	    $("#bzgg_right li").click(function (){
			x=$(this).index();	
			$(this).siblings("#bzgg_right li").css("color","rgba(1,0,1,0.4)");
			$(this).css("color","#000");


			$("#bzgg_left li").removeClass("fadeIn animated");
			$("#bzgg_left li").eq(x).siblings("#bzgg_left li").addClass("fadeOutanimated");
			setTimeout(function () {
				$("#bzgg_left li").css("display","none");
				$("#bzgg_left li").removeClass("fadeOut animated");
				$("#bzgg_left li").eq(x).css("display","block");
		        $("#bzgg_left li").eq(x).addClass("fadeInanimated");
		    }, 500);

		    $("#bzgg_center li").removeClass("fadeInRight animated");
			$("#bzgg_center li").eq(x).siblings("#bzgg_center li").addClass("fadeOutLeft animated");
			setTimeout(function () {
				$("#bzgg_center li").css("display","none");
				$("#bzgg_center li").removeClass("fadeOutLeft animated");
				$("#bzgg_center li").eq(x).css("display","block");
		        $("#bzgg_center li").eq(x).addClass("fadeInRight animated");
		    }, 500);
		
		}); 

		var timer1=setInterval(function(){
			count1++;
			if (count1>3)
				count1=0;	
			$("#bzgg_right li").eq(count1).siblings("#bzgg_right li").css("color","rgba(1,0,1,0.4)");
			$("#bzgg_right li").eq(count1).css("color","#000");

			$("#bzgg_left li").removeClass("fadeIn animated");
			$("#bzgg_left li").eq(count1).siblings("#bzgg_left li").addClass("fadeOut animated");
			setTimeout(function () {
				$("#bzgg_left li").css("display","none");
				$("#bzgg_left li").removeClass("fadeOut animated");
				$("#bzgg_left li").eq(count1).css("display","block");
		        $("#bzgg_left li").eq(count1).addClass("fadeIn animated");
		    }, 500);

		    $("#bzgg_center li").removeClass("fadeInRight animated");
			$("#bzgg_center li").eq(count1).siblings("#bzgg_center li").addClass("fadeOutLeft animated");
			setTimeout(function () {
				$("#bzgg_center li").css("display","none");
				$("#bzgg_center li").removeClass("fadeOutLeft animated");
				$("#bzgg_center li").eq(count1).css("display","block");
		        $("#bzgg_center li").eq(count1).addClass("fadeInRight animated");
		    }, 500);
		},5000);
    
//热门分享处轮播
		var count4=0;
	    $("#rmfx_enter_option li").click(function (){
			x=$(this).index();	
			count4=x;
			$(this).css("background","rgba(153,204,255,0.7)");	
			$(this).siblings("#rmfx_enter_option li").css("background","#bfbfbf");

			$(".rmfx_enter_article_list").removeClass("fadeInLeft animated");
			$(".rmfx_enter_article_list").eq(x).siblings(".rmfx_enter_article_list").addClass("fadeOutRight animated");
			setTimeout(function () {
				$(".rmfx_enter_article_list").css("display","none");
				$(".rmfx_enter_article_list").removeClass("fadeOutRight animated");
				$(".rmfx_enter_article_list").eq(x).css("display","block");
		        $(".rmfx_enter_article_list").eq(x).addClass("fadeInLeft animated");
		    }, 500);

		    $("#rmfx_img img").removeClass("fadeIn animated");
			$("#rmfx_img img").eq(x).siblings("#rmfx_img img").addClass("fadeOut animated");
			setTimeout(function () {
				$("#rmfx_img img").css("display","none");
				$("#rmfx_img img").removeClass("fadeOut animated");
				$("#rmfx_img img").eq(x).css("display","block");
		        $("#rmfx_img img").eq(x).addClass("fadeIn animated");
		    }, 500);
		
		}); 

		var timer2=setInterval(function(){
			count4++;
			if (count4>2)
				count4=0;	
			$("#rmfx_enter_option li").eq(count4).css("background","rgba(153,204,255,0.7)");	
			$("#rmfx_enter_option li").eq(count4).siblings("#rmfx_enter_option li").css("background","#bfbfbf");

			$(".rmfx_enter_article_list").removeClass("fadeInLeft animated");
			$(".rmfx_enter_article_list").eq(count4).siblings(".rmfx_enter_article_list").addClass("fadeOutRight animated");
			setTimeout(function () {
				$(".rmfx_enter_article_list").css("display","none");
				$(".rmfx_enter_article_list").removeClass("fadeOutRight animated");
				$(".rmfx_enter_article_list").eq(count4).css("display","block");
		        $(".rmfx_enter_article_list").eq(count4).addClass("fadeInLeft animated");
		    }, 500);

		    $("#rmfx_img img").removeClass("fadeIn animated");
			$("#rmfx_img img").eq(count4).siblings("#rmfx_img img").addClass("fadeOut animated");
			setTimeout(function () {
				$("#rmfx_img img").css("display","none");
				$("#rmfx_img img").removeClass("fadeOut animated");
				$("#rmfx_img img").eq(count4).css("display","block");
		        $("#rmfx_img img").eq(count4).addClass("fadeIn animated");
		    }, 500);
		},5000);

//小组排名处轮播
		var count3=0;
		$("#xzpm_center li").click(function (){
			x=$(this).index();	
			count3=x;
			str=$(this).text();
			if(str=="1"){
				// count3=0;
				x=0;
				$("#xzpm_center li").eq(0).text("1");
				$("#xzpm_center li").eq(1).text("2");
				$("#xzpm_center li").eq(2).text("3");
			}
			else if(str=="2"){
				// count3=1;
				x=1;
				$("#xzpm_center li").eq(0).text("2");
				$("#xzpm_center li").eq(1).text("3");
				$("#xzpm_center li").eq(2).text("1");
			}
			else{
				// count3=2;
				x=2;
				$("#xzpm_center li").eq(0).text("3");
				$("#xzpm_center li").eq(1).text("1");
				$("#xzpm_center li").eq(2).text("2");
			}

			$(".xzpm_right_contain_list").removeClass("fadeInRight animated");
			$(".xzpm_right_contain_list").eq(x).siblings(".xzpm_right_contain_list").addClass("fadeOutLeft animated");
			setTimeout(function () {
				$(".xzpm_right_contain_list").css("display","none");
				$(".xzpm_right_contain_list").removeClass("fadeOutLeft animated");
				$(".xzpm_right_contain_list").eq(x).css("display","block");
		        $(".xzpm_right_contain_list").eq(x).addClass("fadeInRight animated");
		    }, 500);

		    $(".xzpm_left_img img").removeClass("fadeIn animated");
			$(".xzpm_left_img img").eq(x).siblings(".xzpm_left_img img").addClass("fadeOut animated");
			setTimeout(function () {
				$(".xzpm_left_img img").css("display","none");
				$(".xzpm_left_img img").removeClass("fadeOut animated");
				$(".xzpm_left_img img").eq(x).css("display","block");
		        $(".xzpm_left_img img").eq(x).addClass("fadeIn animated");
		    }, 500);
		    
		}); 

		var timer3=setInterval(function(){
			count3++;

			if(count3>2)
				count3=0;
			if(count3==0){
				$("#xzpm_center li").eq(0).text("1");
				$("#xzpm_center li").eq(1).text("2");
				$("#xzpm_center li").eq(2).text("3");
			}
			else if(count3==1){
				$("#xzpm_center li").eq(0).text("2");
				$("#xzpm_center li").eq(1).text("3");
				$("#xzpm_center li").eq(2).text("1");
			}
			else{
				$("#xzpm_center li").eq(0).text("3");
				$("#xzpm_center li").eq(1).text("1");
				$("#xzpm_center li").eq(2).text("2");
			}

			$(".xzpm_right_contain_list").removeClass("fadeInRight animated");
			$(".xzpm_right_contain_list").eq(count3).siblings(".xzpm_right_contain_list").addClass("fadeOutLeft animated");
			setTimeout(function () {
				$(".xzpm_right_contain_list").css("display","none");
				$(".xzpm_right_contain_list").removeClass("fadeOutLeft animated");
				$(".xzpm_right_contain_list").eq(count3).css("display","block");
		        $(".xzpm_right_contain_list").eq(count3).addClass("fadeInRight animated");
		    }, 500);

		    $(".xzpm_left_img img").removeClass("fadeIn animated");
			$(".xzpm_left_img img").eq(count3).siblings(".xzpm_left_img img").addClass("fadeOut animated");
			setTimeout(function () {
				$(".xzpm_left_img img").css("display","none");
				$(".xzpm_left_img img").removeClass("fadeOut animated");
				$(".xzpm_left_img img").eq(count3).css("display","block");
		        $(".xzpm_left_img img").eq(count3).addClass("fadeIn animated");
		    }, 500);

		},5000);	

//more的样式改变
    //热门推荐的
		$("#rmtj_more").mouseover(function(){
			$("#rmtj_more").css("color","#fff");
			$("#rmtj_more").css("background","rgba(34,52,72,1)");
			$("#rmtj_more").css("box-shadow","0 0 0 0px rgba(34,52,72,1);");
			$("#rmtj_more a").css("display","block");
			$("#rmtj_more a").animate({width: "124%", height: "52px",marginLeft: "-5px" ,marginRight: "-5px",marginTop: "-47px",marginBottom: "-5px"}, 100 );
		}).mouseleave(function(){ 
			$("#rmtj_more a").animate({width: "100%", height: "42px",marginLeft: "0px" ,marginRight: "0px",marginTop: "-42px",marginBottom: "0px"}, 100 );
			setTimeout(function () {
				$("#rmtj_more").css("color","rgba(34,52,72,1)");
				$("#rmtj_more").css("background","rgba(34,52,72,0)");
				$("#rmtj_more").css("box-shadow","0 0 0 1px rgba(34,52,72,1);");
				$("#rmtj_more a").css("display","none");
			},100);	
		});
	//本站公告的
		$("#bzgg_more").mouseover(function(){
			$("#bzgg_more").css("color","#fff");
			$("#bzgg_more").css("background","rgba(34,52,72,1)");
			$("#bzgg_more").css("box-shadow","0 0 0 0px rgba(34,52,72,1);");
			$("#bzgg_more a").css("display","block");
			$("#bzgg_more a").animate({width: "125%", height: "52px",marginLeft: "-12.5%" ,marginRight: "-12.5%",marginTop: "-47px",marginBottom: "-5px"}, 100 );
		}).mouseleave(function(){ 
			$("#bzgg_more a").animate({width: "100%", height: "42px",marginLeft: "0px" ,marginRight: "0px",marginTop: "-42px",marginBottom: "0px"}, 100 );
			setTimeout(function () {
				$("#bzgg_more").css("color","rgba(34,52,72,1)");
				$("#bzgg_more").css("background","rgba(34,52,72,0)");
				$("#bzgg_more").css("box-shadow","0 0 0 1px rgba(34,52,72,1);");
				$("#bzgg_more a").css("display","none");
			},100);	
		});
	//热门分享的
		$("#rmfx_more").mouseover(function(){
			$("#rmfx_more").css("color","#fff");
			$("#rmfx_more").css("background","rgba(34,52,72,1)");
			$("#rmfx_more").css("box-shadow","0 0 0 0px rgba(34,52,72,1);");
			$("#rmfx_more a").css("display","block");
			$("#rmfx_more a").animate({width: "50px", height: "50px",marginLeft: "-5px" ,marginRight: "-5px",marginTop: "-45px",marginBottom: "-5px"}, 100 );
		}).mouseleave(function(){ 
			$("#rmfx_more a").animate({width: "40px", height: "40px",marginLeft: "0px" ,marginRight: "0px",marginTop: "-40px",marginBottom: "0px"}, 100 );
			setTimeout(function () {
				$("#rmfx_more").css("color","rgba(34,52,72,1)");
				$("#rmfx_more").css("background","rgba(34,52,72,0)");
				$("#rmfx_more").css("box-shadow","0 0 0 1px rgba(34,52,72,1);");
				$("#rmfx_more a").css("display","none");
			},100);	
		});
	//小组排名的
		$("#xzpm_more").mouseover(function(){
			$("#xzpm_more").css("color","#fff");
			$("#xzpm_more").css("background","rgba(34,52,72,1)");
			$("#xzpm_more").css("box-shadow","0 0 0 0px rgba(34,52,72,1);");
			$("#xzpm_more a").css("display","block");
			$("#xzpm_more a").animate({width: "50px", height: "50px",marginLeft: "-5px" ,marginRight: "-5px",marginTop: "-45px",marginBottom: "-5px"}, 100 );
		}).mouseleave(function(){ 
			$("#xzpm_more a").animate({width: "40px", height: "40px",marginLeft: "0px" ,marginRight: "0px",marginTop: "-40px",marginBottom: "0px"}, 100 );
			setTimeout(function () {
				$("#xzpm_more").css("color","rgba(34,52,72,1)");
				$("#xzpm_more").css("background","rgba(34,52,72,0)");
				$("#xzpm_more").css("box-shadow","0 0 0 1px rgba(34,52,72,1);");
				$("#xzpm_more a").css("display","none");
			},100);	
		});


	});
 

   


</script>
  </body>
</html>
