<%@page import="com.www2.dao.BaseDaoImpl"%>
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
	<title>个人中心</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
	<link rel="stylesheet" href="css/center.css">
	
</head>
<body>
<!-- 零、导航栏 -->
	<div class="dao_hang_lan" id="dao_hang_lan">
		<img src="img/bg3.jpg" alt=""/>
		<div class="user_tx dropdown">
			<a href="##" class="dropdown-toggle"  data-toggle="dropdown"></a>
			<ul class="dropdown-menu">
				<li><a href="##">退出</a></li>
			</ul>
		</div>
	</div>
	<div class="clearfloat"></div>
<!-- 一、内容 -->
	<div class="content">
		<div class="container">
			<div class="row">
			<!-- 一(一)、左边导航选项卡 -->
				<div  id="content-tab" style="position:fixed;z-index:2000;">
					<a href="index.html">
						<div class="sy">
							<img src="img/logo_sm.png" alt="" id="logo" style="width:80px;height:80px;margin-top:20px;margin-left:12px;">
						</div>
					</a>
					<ul >
						<li id="grmb"  class="tab_active">
							<img src="img/rw3.png" alt=""><br>目标
						</li>
						<li>
							<img src="img/gr3.png" alt=""><br>个人资料
						</li>
						<li>
							<img src="img/jl3.png" alt=""><br>学习记录
						</li>
						<li>
							<img src="img/ly3.png" alt=""><br>消息
						</li>
						<li>
							<img src="img/sc3.png" alt=""><br>收藏
						</li>
						<li>
							<img src="img/fx3.png" alt=""><br>分享
						</li>
						<li id="xzxx_bar">
							<img src="img/xz3.png" alt=""><br>我的小组
						</li>
					</ul>
					<div class="clearfloat"></div>
				</div>	
			<!-- 一(二)、中间内容 -->
				<div  id="content-con">
				<!-- 1、目标 -->
					<div class="con0" id="con1" style="display:block">
					<!-- 1.0目标二级导航栏 -->
						<ul id="con1-tab">
							<li class="con0_li_active">今日目标</li>
							<li class="con0_li_noactive">本周目标</li>
							<li id="mubiao_lsjl" class="con0_li_noactive">目标历史记录</li>
						</ul>
					<!-- 1.1今日目标 -->
						<div class="con1" >
							<form action="" style="width:90%;margin:0px auto;" id="form_today_work">
								<div class="form-group">
									<h5 class="con_2_title">今日目标</h5>
								</div>
								<div class="form-group">
									<lable><input type="text" class="form-control"  id="form_today_work_input"></lable>
								</div>
								<div class="form-group" style="height:34px">
									<lable ><input class="btn btn-success" type="submit" style="float:right;" id="form_today_work_btn"></lable>
								</div>
							</form>
							<div class="feng_ge"></div>
							<form action="" style="width:90%;margin:0 auto;">
								<div class="form-group">
									<h5 class="con_2_title">进行中的目标</h5>
								</div>
								<div class="form-group">
									<table class="table" id="jinrimubiao">
										<thead>
										<tr>
											<th>目标内容</th>
											<th style="text-align:center;">状态</th>
											<th style="text-align:center;">操作</th>
										</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>
								<div class="form-group" style="height:34px;">
									<input type="submit" class="btn btn-success" style="float:right;" id="jinrimubiao_btn">
								</div>
							</form>
						</div>
					<!-- 1.2本周目标 -->
						<div class="con1" style="display:none;">
							<form  action="" style="width:90%;margin:0 auto;" id="form_week_work">
								<div class="form-group">
									<h5 class="con_2_title">本周目标</h5>
									<lable><input id="Con_WeekWork" type="text" class="form-control" ></lable>
								</div>
								<div class="form-group am-input-group am-datepicker-date" data-am-datepicker="{format: 'yyyy-mm-dd'}" style="width:200px;">
									<input id="Date_WeekWork" type="text" class="am-form-field" placeholder="选择预期完成时间" readonly >
									<span class="am-input-group-btn am-datepicker-add-on">
										<button class="am-btn am-btn-default" type="button" ><span class="am-icon-calendar"></span> </button>
									</span>
								</div>
								<div class="form-group" style="height:34px;">
									<button class="btn btn-success" type="submit" style="float:right;" id="form_week_work_btn">提交</button>
								</div>
							</form>
							
							<div class="feng_ge"></div>
							<form action="" style="width:90%;margin:0 auto;">
								<div class="form-group">
									<h5 style="color:#f58220;font-weight:bold;">进行中的目标</h5>
								</div>
								<div class="form-group">
									<table class="table" id="benzhoumubiao">
									<thead>
										<tr>
											<th>目标内容</th>
											<th>预计完成时间</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										
									</tbody>
									</table>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-success" style="float:right;" id="benzhoumubiao_btn">
								</div>
							</form>
						</div>
					<!-- 1.3目标历史记录 -->
						<div class="con1"  style="display:none;box-sizing:border-box;">
 						<!-- 1.3.1今日目标的图表和今日任务完成情况	 -->
							<div class="target_chart" style="width:900px;margin:0px auto;box-sizing:content-box;">

								<h5 class="con_2_title">
									<span class="glyphicon glyphicon-flag"></span>
									今日目标
									&nbsp;<!-- <span class="badge">完成率95%</span> -->
								</h5>
       							<div style="width:400px;height:400px;float:left;">
       								<canvas id="myChart1" width="400" height="400" style="background:#fff;float:left;"></canvas>
       							</div>

       							<div style="width:300px;float:left; margin-left:80px;">
       								<table class="table" id="jinrimubiao2">
       									<thead>
       										<tr class="table_bar">
		       									<th style="border:0;">今日目标</th>
		       									<th style="border:0;">状态</th>
		       								</tr>
       									</thead>
	       								<tbody>
		       								
	       								</tbody>
	       							</table>
       							</div>

								<div class="clearfloat"></div>
							</div>
							<div class="feng_ge"></div>
						<!-- 1.3.2今日目标记录 -->
							<div class="targrt_today_all" style="width:900px;margin:0px auto;clear:both;">
								<h5 class="con_2_title">
									<span class="glyphicon glyphicon-flag"></span>
									今日目标记录
									&nbsp;<!-- <span class="badge">完成率90%</span> -->
								</h5>
								<div class="table_s">
									<table class="table table_bar">
										<th style="width:390px;">目标内容</th>
										<th style="width:236px;">发布时间</th>
										<th style="width:174px">状态</th>
									</table>
									<table class="table_hidden table" id="jinrimubiao_record">
										<tbody>
											
										</tbody>
									</table>
								</div>
							</div>
							<div class="feng_ge"></div>
						<!-- 1.3.3阶段目标记录 -->
							<div class="targrt_days_all" style="width:900px;margin:0px auto;clear:both;">
								<h5 class="con_2_title">
									<span class="glyphicon glyphicon-flag"></span>
									本周目标记录
									&nbsp;<!-- <span class="badge">已完成2项</span> -->
								</h5>
								<div class="table_s">
									<table class="table table_bar">
										<tr>
											<th style="width:310px;">本周目标</th>
											<th style="width:126px;">发布时间</th>
											<th style="width:126px;">预计完成时间</th>
											<th style="width:126px;">最后操作时间</th>
											<th style="width:102px;">状态</th>
										</tr>
									</table>
									<table class="table table_hidden" id="benzhoumubiao_record">
										<tbody>
											
										</tbody>	
									</table>
								</div>
							</div>
							<div class="feng_ge"></div>
						</div>
					</div>
				<!-- 2、个人资料 -->
					<div class="con0"  style="display:none;"  id="con2">
					<!-- 2.0个人二级导航栏 -->
						<ul id="con2-tab">
							<li class="con0_li_active">基本资料</li>
							<li class="con0_li_noactive">修改密码</li>
						</ul>
					<!-- 2.1基本资料 -->
						<div class="con2" style="display:block;">
							<form action="uphead.man" method="post" enctype="multipart/form-data">
								<table  class="table table1" style="width:500px;margin:0 150px">
									<tr>
										<!-- 换头像 -->
										<th>头　　像：</th>
										<td>
											<!-- <progress id="progressbar" value="0" max="100" style="width:300px;"></progress> -->
											<!-- <span id="percentage"></span> -->
											<div id="fileimg">
												<div id="loading-cover"></div>
												<div id="showloading"></div>
												<img src="<%=basePath %>/img/tx/${user.savedFileName}" alt="">
											</div>
											<!-- <input type="file" id="file" name="file" value="请选择头像(1:1)"/> -->
											<a href="#" id="tx_a">
												<input type="file" id="file" name="file" value="浏览" />
												请选择头像(1:1)
											</a>
											<br>
											<input  class="btn btn-success btn-sm" type="button" id="gr_tx_btn" value="上传" style="margin:5px 0px;" />
											<input  class="btn btn-success btn-sm" type="submit" value="提交" id="gr_tx_submit">
										</td>
									</tr>
								</table>
							</form>
							<form action="">
								<table class="table table1" style="width:500px;margin:0 150px" id="person_info">
										
									<tbody>
										<tr>
											<th>昵　　称：</th>
											<td><input class="form-control" type="text" value="阿水12344"></td>
										</tr>
										<tr>
											<th>性　　别：</th>
											<td>
												<select name="" id=""  class="form-control">
														<option value="0">不设置</option>
														<option value="2">男</option>
														<option value="1">女</option>
												</select>
											</td>
										</tr>
										<tr>
											<th>手机号码：</th>
											<td><input class="form-control" type="text" value="17826808793" disabled="disabled"></td>
										</tr>
										<tr>
											<th>成长分值：</th>
											<td><input class="form-control" type="text" value="200" disabled="disabled"></td>
										</tr>
										<tr>
											<th>个性签名：</th>
											<td><input class="form-control" type="text" value="我就是我，不一样的烟火" style="width:350px"></td>
										</tr>
										<tr>
											<th>个人荣誉：</th>
											<td><textarea placeholder="请填写个人荣誉" style="width:350px" rows="5">准备参加全国计算机大赛</textarea></td>
										</tr>
										<tr>
											<th>联系方式：</th>
											<td><input class="form-control" type="text" value="qq：1292640216" style="width:350px"></td>
										</tr>
										<tr>
											<th>归属小组：</th>
											<td><input class="form-control" type="text" value="攻城小组" disabled="disabled"></td>
										</tr>
										<tr>
											<th></th>
											<td><input type="submit" value="提交" class="btn btn-success" style="margin-left:300px;"></td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
					<!-- 2.2修改密码 -->
						<div class="con2" style="display:none;">
							<form action="" id="changePasswd">
								<table class="table table1"  style="width:500px;margin:50px 150px">
									<tr >
										<th>原密码：</th>
										<td>
											<label>
												<input class="form-control" type="password"  placeholder="请输入原密码" id="oldpswd">
											</label>
								   		</td>
									</tr>
									<tr >
										<th>输入现密码：</th>
										<td>
											<label>
									    		<input class="form-control" type="password"  placeholder="请输入新密码"  id="newpswd">
											</label>
										</td>
									</tr>
									<tr >
										<th>再次输入：</th>
										<td>
											<label>
												<input id="newpswd2" class="form-control" type="password" placeholder="请与上面输入的值一致" >
								    		</label>
										</td>
									</tr>
									<tr>
										<th></th>
										<td>
											<button class="btn btn-success" style="margin-left:150px;" id="changepswd_btn">提交</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				<!-- 3、学习记录 -->
					<div class="con0" id="con3" style="display:none;">
					<!-- 3.0学习记录二级导航栏 -->
						<ul id="con3-tab">
							<li class="con0_li_active">课程学习记录</li>
							<li class="con0_li_noactive">我的提问</li>
						</ul>
					<!-- 3.1课程学习记录 -->
						<div class="con3" style="display:block;" id="lesson_record">
							您暂无任何课程记录~
						</div>
					<!-- 3.2我的提问 -->
						<div class="con3" style="display:none;">
							<div class="table_s">
								<table class="table table_tw table_bar">
								 	<thead>
										<tr>
											<th>题目</th>
											<th>发布时间</th>
											<th>评论数</th>
											<th>操作</th>
										</tr>
									</thead>
								</table>
								<table id="my_question" class="table_tw table_hidden" style="height:400px;">
									<tbody>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				<!-- 4、消息 -->
					<div class="con0" id="con4" style="display:none;">
						<!-- 4.0消息二级导航栏 -->
							<ul id="con4-tab">
								<li class="con0_li_active">回答消息</li>
								<li class="con0_li_noactive">系统消息</li>
							</ul>
						<!-- 4.1、回答消息 -->
							<div class="con4">
								<div class="table_s">
									<table class="table table_1 table_bar">
									 	<thead>
											<tr>
												<th>别人的回答</th>
												<th>消息操作</th>
											</tr>
										</thead>
									</table>
									<table id="answerToMe" class="table_1 table_hidden" style="height:400px;">
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
						<!-- 4.2、系统消息 -->
							<!-- 系统消息 -->
								<div class="con4" style="display:none">
								<div class="table_s">
									<table class="table table_1 table_bar">
									 	<thead>
											<tr>
												<th>系统消息</th>
												<th>消息操作</th>
											</tr>
										</thead>
									</table>
									<table id="newsBySystem" class="table_1 table_hidden" style="height:230px;">
										<tbody>
											<tr>
												<td><a href="javascript:;" data-am-modal="{target: '#my-popup1'}">感谢你的注册~</a></td>
												<td><a href="javascript:;">删除</a></td>
												<div class="am-popup" id="my-popup1">
												  	<div class="am-popup-inner">
											  			<div class="am-popup-hd">
											  				<h4 class="am-popup-title">感谢你的注册~</h4>
											  				<span data-am-modal-close class="am-close">&times;</span>
											  			</div>
												  		<div class="am-popup-bd">
															欢迎你使用我们的平台~
												  		</div>
												  	</div>
												</div>
											</tr>

										</tbody>
									</table>
								</div>
							<!-- 小组消息 -->
								<div class="table_s">
									<table class="table table_2 table_bar">
									 	<thead>
											<tr>
												<th>小组消息</th>
												<th>成员操作</th>
												<th>消息操作</th>
											</tr>
										</thead>
									</table>
									<table id="addTeam_table" class="table_2 table_hidden" style="height:180px;">
										<tbody>
											
										</tbody>
									</table>
								</div>
							</div>
	
					</div>
				<!-- 5、收藏 -->
					<div class="con0" id="con5" style="display:none;">
					<!-- 5.0收藏二级导航栏 -->
						<ul id="con5-tab">
							<li class="con0_li_active">文章</li>
							<li class="con0_li_noactive">课程</li>
							<li class="con0_li_noactive">问题</li>
						</ul>
					<!-- 5.1文章 -->
						<div class="con5">
							<div class="con5_img"><img src="img/center/2.jpg" alt=""></div>
							<div class="feng_ge"></div>
							<div class="table_s">
								<table class="table table_bar">
									<thead>
										<tr>
											<th>标题</th>
											<th>操作</th>
										</tr>
									</thead>
								</table>
								<table class="table  table_hidden" id="sc_wenzhang" style="height:520px;">
									<tbody>
										
									</tbody>
								</table>	
							</div>					
						</div>
					<!-- 5.2课程 -->
						<div class="con5" style="display:none">
							<div class="con5_img"><img src="img/center/1.jpg" alt=""></div>
							<div class="feng_ge"></div>
							<div class="table_s">
								<table class="table table_bar">
									<thead>
										<tr>
											<th>标题</th>
											<th>操作</th>
										</tr>
									</thead>
								</table>
								<table class="table  table_hidden" id="sc_kecheng" style="height:520px;">
									<tbody>
										
									</tbody>
								</table>	
							</div>					
						</div>
					<!-- 5.3问题 -->
						<div class="con5" style="display:none">
							<div class="con5_img"><img src="img/center/3.jpg" alt=""></div>
							<div class="feng_ge"></div>
							<div class="table_s">
								<table class="table table_bar">
									<thead>
										<tr>
											<th>标题</th>
											<th>操作</th>
										</tr>
									</thead>
								</table>
								<table class="table  table_hidden" id="sc_wenti" style="height:520px;">
									<tbody>
										 
									</tbody>
								</table>	
							</div>					
						</div>
						
						<div class="feng_ge"></div>
						
					</div>
				<!-- 6、分享 -->
					<div class="con0" id="con6" style="display:none">
					<!-- 6.0分享二级导航栏 -->
						<ul id="con6-tab">
							<li class="con0_li_active">我的分享</li>
							<li class="con0_li_noactive">分享动态</li>
							<li class="con0_li_noactive">关注管理</li>
						</ul>
					<!-- 6.1我的分享 -->
						<div class="con6">
							<div style="width:90%;margin:33px auto;">
								<button class="btn btn-danger"><a href="fenxiangwz.jsp">新建分享</a></button>
								<div class="feng_ge"></div>
								<div class="table_s">
									<table class="table con6_table_1 table_bar">
										<thead>
											<tr>
												<th>标题</th>
												<th>发布时间</th>
												<th>点赞数</th>
												<th>操作1</th>
												<th>操作2</th>
											</tr>
										</thead>
									</table>
									<table class="table con6_table_1 table_hidden" style="height:350px;" id="myshare">
										<tbody>
											
										</tbody>
									</table>
								</div>	
							</div>						
						</div>
					<!-- 6.2分享动态 -->
						<div class="con6" style="display:none">
								<div id="bar3_con">
									
								</div>
						</div>
					<!-- 6.3关注管理 -->
						<div class="con6"  style="display:none">
							<div>
								<table id="gz_user" class="table" >
									<thead>
										<tr>
											<th>关注的用户</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				<!-- 7、我的小组 -->
					<div class="con0" id="con7" style="display:none;">
					<!-- 7.0我的小组二级导航栏 -->
						<ul id="con7-tab">
							<li id="xzxx" class="con0_li_active">基本信息</li>
							<li id="rwqk" class="con0_li_noactive">任务情况</li>
							<li id="xxxg" class="con0_li_noactive"><a href="showgrouph.group">信息修改</a></li>
							<!-- <li class="con0_li_noactive">小组计划</li> -->
						</ul>
					<!-- 7.1基本信息 -->
						<div class="con7">
							<div id="team_info">
								
							</div>
						</div>
					<!-- 7.2任务情况 -->
						<div class="con7" id="con7_rwqk" style="display:none">
						<!-- 7.2.1队长
										            <div class="con7_cy">
										                <div class="ren">
										                    <a href="4_otherCenter_4-9.html"><img src="img/tx/t1.jpg" alt=""></a>
										                    <p id="dz_name" class="name">阿水12344<span class="glyphicon glyphicon-user" style="font-size:10px;">队长</span></p>
										                </div>
										                <div class="am-panel-group" id="accordion">
										                    <div class="am-panel am-panel-default">
										                        <div class="am-panel-hd">
										                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-11'}">本周任务</h4>
										                        </div>
										                        <div id="do-not-say-11" class="am-panel-collapse am-collapse">
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
										                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-12'}">今日动态</h4>
										                        </div>
										                        <div id="do-not-say-12" class="am-panel-collapse am-collapse">
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
										                <div class="con7_chart">
										                    <canvas id="myChart5" width="200" height="200"></canvas>
										                </div>
										            </div>
										        7.2.2组员1
										            <div class="con7_cy">
										                <div class="ren">
										                    <a href=""><img src="img/tx/t2.jpg" alt=""></a>
										                    <p class="name">彩莲12344</p>
										                </div>
										                <div class="am-panel-group" id="accordion">
										                    <div class="am-panel am-panel-default">
										                        <div class="am-panel-hd">
										                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-21'}">本周任务</h4>
										                        </div>
										                        <div id="do-not-say-21" class="am-panel-collapse am-collapse">
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
										                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-22'}">今日动态</h4>
										                        </div>
										                        <div id="do-not-say-22" class="am-panel-collapse am-collapse">
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
										                <div class="con7_chart">
										                    <canvas id="myChart6" width="200" height="200"></canvas>
										                </div>
										            </div>
										        7.2.2组员2
										            <div class="con7_cy">
										                <div class="ren">
										                    <a href=""><img src="img/tx/t3.jpg" alt=""></a>
										                    <p class="name">阿彪12344</p>
										                </div>
										                <div class="am-panel-group" id="accordion">
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
										                    <div class="am-panel am-panel-default">
										                        <div class="am-panel-hd">
										                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-3'}">...</h4>
										                        </div>
										                        <div id="do-not-say-3" class="am-panel-collapse am-collapse">
										                            <div class="am-panel-bd">...</div>
										                        </div>
										                    </div>
										                </div>
										                <div class="con7_chart">
										                    <canvas id="myChart7" width="200" height="200"></canvas>
										                </div>
										            </div> -->
				        </div>
					<!-- 7.3信息修改 -->
						<div class="con7" style="display:none;" id="con7_3">
							<form action="upgrouph.group" method="post" enctype="multipart/form-data" id="form_xz_tx">
								<table class="table table1" style="width:500px;margin:0 150px">
									<tr>
										<!-- 换头像 -->
										<th style="width:30%;">小组头像：</th>
										<td style="text-align:left">
											<!-- <progress id="progressbar" value="0" max="100" style="width:300px;"></progress> -->
											<!-- <span id="percentage"></span> -->
											<div id="fileimg2">
												<div id="loading-cover2"></div>
												<div id="showloading2"></div>
												<img src="<%=basePath %>/img/tx/${group.groupp}" alt="">
											</div>
											<!-- <input type="file" id="file" name="file" value="请选择头像(1:1)"/> -->
											<a href="#" id="tx_b">
												<input type="file" id="file2" name="file2" value="浏览" />
												请选择头像(1:1)
											</a>
											<br>
											<input  class="btn btn-success btn-sm" type="button" id="xz_tx_btn" value="上传" style="margin:5px 0px;" />
											<input  class="btn btn-success btn-sm" type="submit" value="提交" id="xz_tx_submit">
										</td>
									</tr>
								</table>
							</form>
							<form action="">
								<table class="table table1" style="width:500px;margin:0 150px" id="XZZLtable">
									<tbody>
										
									</tbody>
								</table>
							</form>
						</div>

					</div>
				</div>
				<div class="clearfloat"></div>
			</div>
			<div class="clearfloat"></div>
		</div>
		<div class="clearfloat"></div>
	</div>

<!-- js代码开始 -->
	    <script src="js/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/amazeui.min.js"></script>
	    <script src="js/chart.js"></script>
		<script src="js/load.js"></script>
<!-- js代码结束 -->

</body>
</html>