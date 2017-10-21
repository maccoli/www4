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
	<title>分享资源</title>
	<meta charset="utf-8" />
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel='icon' href='img/logo.ico' type='image/x-ico' />
	<!-- 1/1、导航栏css导入开始-->
		<link rel="stylesheet" href="css/amazeui_deng.min.css">
		<link rel="stylesheet" href="css/nav_deng.css">
		<!-- 导航栏css导入结束--> 
<style>
		html{width: 100%;height: 100%;}
		body{width: 100%;height: 100%;}
	/*1、图片*/
		#bar1_pic{width: 100%;height: 225px;background:url(img/999.png) left top #fffff0;}
			.bar1_pic{width: 1100px;height: 100%;margin:0 auto;}
			.bar1_pic h1{font-size: 75px;padding-left: 150px;padding-top: 50px;font-weight: bold;}
	/*2、搜索和排序*/
		#bar2_sort{width: 100%;height: 170px;/* height: 200px; */}
			/*关键字搜索*/
			    #search{width: 100%;height: 80px;padding-top: 30px;}
			        #search form{width: 600px;height: 75px;margin: 0 auto;}
			            #search_text{width: 540px;height: 50px;float: left;border-radius: 6px;border: 3px solid rgba(34,52,72,1);outline: none;padding: 5px 20px;}
			            #search_submit{width: 50px;height: 50px;float: right;margin: 5px 0px 5px 5px;border: none;background: url(img/footer_search1.png) no-repeat;outline: none;}
			/*排序*/
				#sort{width: 1000px;height: 65px;/* height: 95px; */margin:0 auto;}
					#sort ul{width: 700px;height: 30px;list-style: none;margin:0px auto 0px;color: #999;}
					#sort ul span{width: 50px;height: 30px;line-height: 30px;font-size: 14px;font-weight: bolder;display: block;float:left;color: black;}
					#sort ul li{width: 100px;height: 30px;line-height: 30px;margin-right: 10px;float:left;
							text-align: center;border-radius: 5px;}	
					#sort ul .sort_active{color:black;font-weight: bold;text-decoration: underline;}
					#sort ul .sort_active2{color:black;font-weight: bold;}
					#sort ul li a{color: #999;text-decoration: none;font-size: 10px;display: block;}
					#sort ul li:hover {background: black;}
					#sort ul li:hover a{color:#fff;}
	/*3、内容*/
		#bar3_con{width: 100%;height: auto;}
			#bar3_con .con{width: 1100px;height: 220px;margin: 0 auto;clear:both;}
				.con .con_left{width: 30%;height: 100%;float:left;margin-top: 10px;}
					.con .con_left a{text-decoration: none;color: black;}
					.con_left .writer_tx{width: 40%;height: 100%;float:left;text-align: right;}
						.writer_tx img{width: 50px;height: 50px;border-radius: 50%;}
					.con_left .writer_name{width: 60%;height: 100%;float:left;padding-left: 10px;}
						.con_left .writer_name h2{font-size: 16px;width: 60%;height: 20px;line-height: 20px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;display: block;}

				.con .con_right{width: 70%;height: 100%;float:left;overflow:hidden;}
					.con_right a{text-decoration: none;color: black;}
					.con_right .article_info{width: 100%;height: 80px;}
						.con_right .article_info h1{font-size: 30px;margin: 0px;width: 60%;height: 40px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;display: block;}
						.con_right .article_info p{width: 100%;height:50px;line-height: 30px;margin:0px;color: #727272;}
						.con_right .article_info p span{display: block;margin-right: 15px;height: 40px;line-height: 40px;float:left;}
						.con_right .article_info p .glyphicon{margin-right: 5px;}
					.con_right .article_con{width: 100%;height: 14px;padding-bottom: 40px;}
						.con_right .article_con p{position:relative;width: 100%;height: 90px;margin:0px;padding:0px;font-size: 15px;overflow: hidden;text-indent:0;}
						.con_right .article_con .p:after {content:"...";font-weight:bold;position:absolute;bottom:0;right:0;padding:0 20px 3px 45px;background:url(img/ellipsis_bg.png) repeat-y;/*background-size: auto 25px;*/}
	/*4、更多*/
		#bar4_more{width: 100%;height: 150px;padding: 50px;}
			.bar4_more{width: 200px;height: 50px;margin:0 auto;text-align:center;}
			.bar4_more a{color: #999;width: 100%;height: 100%;display: block;text-decoration: none;}
	
</style>
</head>
<body>
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
	                <li><a href="quitServlet">退出</a></li>
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
    	<!-- 导航栏结束 -->
	<div id="bar1_pic">
		<div class="bar1_pic">
			<h1>SHARE <small>YOUR WISDOM</small></h1>
		</div>
	</div>
	<div id="bar2_sort">
		<!-- 搜索栏处 -->
		    <div id="search">
		        <form>
		            <input type="text" name="search" id="search_text" value="" placeholder="请输入搜索内容..." >
		            <input type="submit" name="submit" id="search_submit" value="">
		        </form>
		    </div>
		    <div style="clear:both;"></div>
		<!-- 分类 -->
			<div id="sort">
				<div class="sort sort1">
					<ul>
						<span>方向：</span>
						<li ><a name="0" href="javascript:;" class="sort_active">全部</a></li>
						<li ><a name="前端" href="javascript:;">前端</a></li>
						<li ><a name="后台" href="javascript:;">后台</a></li>
						<li ><a name="移动" href="javascript:;">移动</a></li>
						<li ><a name="数据库" href="javascript:;">数据库</a></li>
					</ul>
				</div>
				<!-- <div class="sort sort2">
					<ul>
						<span>排序：</span>
						<li><a href="javascript:;" class="sort_active2">最新</a></li>
						<li><a href="javascript:;">点赞数</a></li>
						<li><a href="javascript:;">浏览量</a></li>
					</ul>
				</div> -->
			</div>
	</div>
	<div id="bar3_con">
		
		
		
	</div>
	<div id="bar4_more">
		<div class="bar4_more">
			<a href="javascript:;" id="more_btn">加载更多>></a>
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

	<!-- 置顶按钮 -->
	    <div id="scrolltop">
	        <span class="am-icon-arrow-up"></span>
	    </div>

</body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/amazeui.min.js"></script> 
    <!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
		<script src="js/nav_deng.js" type="text/javascript"></script>
		<!-- 导航栏js导入结束 -->
	<script>
		var conLength = 0;//有多少个篇文章
		var count = 5;//加载更多，显示到第几个
		// p的省略号函数--开始
			function shenglue(){
				 var oCon = document.getElementById('bar3_con');
				 var aCon = oCon.getElementsByClassName('article_con');
				 var ii=1;
				 var oPtext = $('.article_con p').each(function(){
				 	var aPtext = $(this).text();
				 		aPtext = $.trim(aPtext);
				 	// 字符中取数字// var aNum = aPtext.replace(/[^0-9]/ig,"");// var x2 = aNum.length;
				 	// p中的字符串的实际长度中文字符长度为2；数字和英文为1；
				 	var aPtext_length = 0;
				 	for(var j=0;j<aPtext.length;j++){
				 		// 字符串的每个字符
				 		var a = aPtext.charAt(j);
				 		aPtext_length++;
				 		if(escape(a).length>4){
				 			//中文字符的长度经编码之后大于4  
				 			aPtext_length++;
				 		}
				 	}
				 	// 字符中取英文
				 	var x3 = 0;
				 	var aEnglish = ""; 
				 	if(/[a-z]/i.test(aPtext)){
				 		aEnglish = aPtext.replace(/[^a-z]/ig,""); 
				 		x3 = aPtext.match(/[a-z]/ig).length;
				 		if(x3%2 == 1){
				 			aPtext_length+=2;
				 		}
				 	}
				 	// console.log(ii+" "+aNum+" "+x2)
				 	// console.log(ii+" "+aEnglish+" "+x3);
				 	// console.log(ii+" "+aPtext_length);
				 	ii++;
				 	if(aPtext_length>=200){
				 		console.log("addShengLueHao");
				 		$(this).addClass("p");
				 	}
				 });
			}
			// p的省略号函数--结束
		// 加载更多more
			/*function more(){
				num = conLength;
				show(num);
			}*/
			$("#more_btn").click(function(){
				count = conLength;
				show(count);
				console.log("加载更多");
			})
		// 显示函数	
			function show(num){
				$("#bar3_con .con").each(function(){
					if($(this).attr("bianhao")<num){
						if($(this).css("display")=="none"){
							$(this).css("display","block");
						}
					}
					if($(this).attr("bianhao")>=num){
						if($(this).css("display")=="block"){
							$(this).css("display","none");
						}
					}
				});
			}
		//加载全部的文章数据
			//作者的编号writerId，作者的名字savedFileName，作者的头像writerName，
			//文章的编号articleId，文章的题目articleTitle，文章的类型articleType，文章的发布时间articleTime，
			//文章的浏览量articleViews，文章的点赞数articleLikes，文章的收藏数articleCollected，文章的内容articleCon
			$.ajax({
				url : 'showAllfx.sea',
				type : 'GET',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
						var outStr  = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							outStr += '<div class="con" bianhao="'+i+'" name="'+jsonCell.articleType+'"><div class="con_left"><div class="writer_tx"><a href="otherCenter.jsp?idgr='+jsonCell.writerId+'"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></a></div><div class="writer_name"><h2>'+jsonCell.writerName+'</h2></div></div><div class="con_right"><a href="xianshifenx.jsp?idwz='+jsonCell.articleId+'"  ><div class="article_info"><h1 class="article_title">'+jsonCell.articleTitle+'</h1><p><span class="article_time" title="发布时间">'+jsonCell.articleTime+'</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews+'</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes+'</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected+'</span></p></div><div class="article_con"><p>'+jsonCell.articleCon.replace(/<[^>]*>/g,"")+'</p></div></a></div></div>';
							conLength = i;
						});
						outStr += '<div id="nothing" style="display:none;width:800px;margin:0 auto;">还没有相关数据~</div>'
					if(conLength==0){
						$("#bar3_con").html("还没有相关数据~");
					}
					$("#bar3_con").html(outStr);
					$("#bar3_con .con").css("display","none");
					show(5);
				},
				error : function(){
					// var data = '{"list" : [{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"1","articleType":"1","articleTitle":"1qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"2","savedFileName":"t2.jpg","writerName":"用户2","articleId":"2","articleType":"1","articleTitle":"2qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"3","articleType":"1","articleTitle":"3qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"4","articleType":"1","articleTitle":"4qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"5","articleType":"2","articleTitle":"25后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"5","savedFileName":"t5.jpg","writerName":"用户5","articleId":"6","articleType":"2","articleTitle":"26后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"7","articleType":"2","articleTitle":"27后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"8","articleType":"2","articleTitle":"28后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"9","articleType":"3","articleTitle":"82移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"10","articleType":"3","articleTitle":"92移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"11","articleType":"3","articleTitle":"102移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"12","articleType":"3","articleTitle":"112移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"13","articleType":"4","articleTitle":"129数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"14","articleType":"4","articleTitle":"139数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"15","articleType":"4","articleTitle":"149数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"16","articleType":"4","articleTitle":"159数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"17","articleType":"1","articleTitle":"16qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"2","savedFileName":"t2.jpg","writerName":"用户2","articleId":"1819","articleType":"1","articleTitle":"17qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"19","articleType":"1","articleTitle":"18qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"20","articleType":"1","articleTitle":"19qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"21","articleType":"2","articleTitle":"5后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"5","savedFileName":"t5.jpg","writerName":"用户5","articleId":"22","articleType":"2","articleTitle":"6后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"23","articleType":"2","articleTitle":"7后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"24","articleType":"2","articleTitle":"8后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"25","articleType":"3","articleTitle":"8移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"27","articleType":"3","articleTitle":"9移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"28","articleType":"3","articleTitle":"10移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"29","articleType":"3","articleTitle":"11移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"30","articleType":"4","articleTitle":"12数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"6","savedFileName":"t6.jpg","writerName":"用户6","articleId":"31","articleType":"4","articleTitle":"13数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"32","articleType":"4","articleTitle":"14数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"4","savedFileName":"t4.jpg","writerName":"用户4","articleId":"33","articleType":"4","articleTitle":"15数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"34","articleType":"1","articleTitle":"16qianduanwenzhang","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"}]}';
						/*var jsonArray = JSON.parse(data).list;
						var outStr  = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							outStr += '<div class="con" bianhao="'+i+'" name="'+jsonCell.articleType+'"><div class="con_left"><div class="writer_tx"><a href="otherCenter.jsp?idgr='+jsonCell.writerId+'"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></a></div><div class="writer_name"><h2>'+jsonCell.writerName+'</h2></div></div><div class="con_right"><a href="xianshifenx.jsp?idwz='+jsonCell.articleId+'"  ><div class="article_info"><h1 class="article_title">'+jsonCell.articleTitle+'</h1><p><span class="article_time" title="发布时间">'+jsonCell.articleTime+'</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews+'</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes+'</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected+'</span></p></div><div class="article_con"><p>'+jsonCell.articleCon+'</p></div></a></div></div>';
							conLength = i;
						});
						outStr += '<div id="nothing" style="display:none;width:800px;margin:0 auto;">还没有相关数据~</div>'
					if(conLength==0){
						$("#bar3_con").html("还没有相关数据~");
					}
					$("#bar3_con").html(outStr);
					$("#bar3_con .con").css("display","none");
					show(5);*/
					console.log("服务器被天狗吃掉了，获取数据失败~");
				}
			});
		//选项卡
		window.onload=function(){
			shenglue();
			// 分类选项卡--开始
				var oSort = document.getElementById("sort");
				var oUl_direction = oSort.getElementsByTagName("ul")[0];
				//var oUl_type = oSort.getElementsByTagName("ul")[1];
				var aA_direction = oUl_direction.getElementsByTagName("a");
				//var aA_type = oUl_type.getElementsByTagName("a");
				for(var i=0;i<aA_direction.length;i++){
					aA_direction[i].onclick=function(){
						$(".sort1 a").removeClass("sort_active");
						$(this).addClass("sort_active");
						var name = $(this).attr("name");
						console.log(name);
						// var num2 = 5;
						var nameNum = 0 ; 
						$("#bar3_con .con").css("display","none");
						if(name==0){
							$("#bar3_con .con").css("display","block");
							$("#more_btn").css("display","block");
							$("#nothing").css("display","none");
							show(5);
						}
						else{
							$("#bar3_con .con").each(function(index){
								// console.log($(this).attr("name"));
								if($(this).attr("name")==name){
									nameNum = 0;
									$(this).css("display","block");
									$("#more_btn").css("display","none");
									$("#nothing").css("display","none");
									nameNum = index;
									console.log("符合选项卡的数据："+nameNum);
								}
							});
							if(nameNum==0){
								$("#nothing").css("display","block");
								$("#more_btn").css("display","none");
							}
						}
						return false;
					};
				}
			// 搜索
				$("#search_submit").click(function(){
					var json = {};
					json.key = $("#search_text").val();
					console.log("搜素的内容是："+json.key);
					$.ajax({
						url : 'searchShare.sea',
						type : 'POST',
						data : json,
						success : function(data){
							var jsonArray = JSON.parse(data).list;
							var outStr  = "";
							$.each(jsonArray,function(i,value){
								var jsonCell = value;
								outStr += '<div class="con" bianhao="'+i+'" name="'+jsonCell.articleType+'"><div class="con_left"><div class="writer_tx"><a href="otherCenter.jsp?idgr='+jsonCell.writerId+'"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></a></div><div class="writer_name"><h2>'+jsonCell.writerName+'</h2></div></div><div class="con_right"><a href="xianshifenx.jsp?idwz='+jsonCell.articleId+'"  ><div class="article_info"><h1 class="article_title">'+jsonCell.articleTitle+'</h1><p><span class="article_time" title="发布时间">'+jsonCell.articleTime+'</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews+'</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes+'</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected+'</span></p></div><div class="article_con"><p>'+jsonCell.articleCon+'</p></div></a></div></div>';
								conLength = i;
							});
							outStr += '<div id="nothing" style="display:none;width:800px;margin:0 auto;">还没有相关数据~</div>'
							if(conLength==0){
								$("#bar3_con").html("还没有相关数据~");
							}
							$("#bar3_con").html(outStr);
							$("#bar3_con .con").css("display","none");
							show(5);
							console.log("成功更新数据~")
							},
						error : function(){
							var data = '{"list" : [{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"1","articleType":"1","articleTitle":"genxinde ","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"2","savedFileName":"t2.jpg","writerName":"用户2","articleId":"2","articleType":"2","articleTitle":"genxnde后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"3","articleType":"3","articleTitle":"更新的移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"4","articleType":"4","articleTitle":"更新de数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"2","savedFileName":"t2.jpg","writerName":"用户2","articleId":"2","articleType":"2","articleTitle":"genxnde后台","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"1","savedFileName":"t1.jpg","writerName":"用户1","articleId":"3","articleType":"3","articleTitle":"更新的移动","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"},{"writerId":"3","savedFileName":"t3.jpg","writerName":"用户3","articleId":"4","articleType":"4","articleTitle":"更新de数据库","articleTime":"2017-4-30","articleViews":"20","articleLikes":"10","articleCollected":"2","articleCon":"aaaaa"}]}';
							var jsonArray = JSON.parse(data).list;
							var outStr  = "";
							$.each(jsonArray,function(i,value){
								var jsonCell = value;
								outStr += '<div class="con" bianhao="'+i+'" name="'+jsonCell.articleType+'"><div class="con_left"><div class="writer_tx"><a href="otherCenter.jsp?idgr='+jsonCell.writerId+'"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></a></div><div class="writer_name"><h2>'+jsonCell.writerName+'</h2></div></div><div class="con_right"><a href="xianshifenx.jsp?idwz='+jsonCell.articleId+'"  ><div class="article_info"><h1 class="article_title">'+jsonCell.articleTitle+'</h1><p><span class="article_time" title="发布时间">'+jsonCell.articleTime+'</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews+'</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes+'</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected+'</span></p></div><div class="article_con"><p>'+jsonCell.articleCon+'</p></div></a></div></div>';
								conLength = i;
							});
							outStr += '<div id="nothing" style="display:none;width:800px;margin:0 auto;">还没有相关数据~</div>'
							if(conLength==0){
								$("#bar3_con").html("还没有相关数据~");
							}
							$("#bar3_con").html(outStr);
							$("#bar3_con .con").css("display","none");
							show(5);
							console.log("服务器连接失败，数据更新失败")
						}
					})

					return false;
				})	
		};
		


			
	</script>

</html>