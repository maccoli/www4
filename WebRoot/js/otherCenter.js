	window.onload = function(){
   		// 个人任务图标
			function chart1(){
				// console.log(this.id);
	               var data = {
		            labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
		            datasets : [
		                // 灰色的
		                {
		                    fillColor : "rgba(220,220,220,0.5)",
		                    strokeColor : "rgba(220,220,220,1)",
		                    pointColor : "rgba(220,220,220,1)",
		                    pointStrokeColor : "#fff",
		                    data : [90,70,90,100,90,80,95]
		                },
		                // 蓝色的
		                {
		                    fillColor : "rgba(151,187,205,0.5)",
		                    strokeColor : "rgba(151,187,205,1)",
		                    pointColor : "rgba(151,187,205,1)",
		                    pointStrokeColor : "#fff",
		                    data : [65,59,90,81,56,100,0]
		                }
		            ]
	        	};
	        	var ctx1 = document.getElementById("myChart1").getContext("2d");
	        	var myNewChart1 = new Chart(ctx1).Line(data);
			}
   		
		// tab选项卡
			var chart1_count="0";
	   		var oDiv_tab = document.getElementById("tab");
	   		var aDiv_tab = oDiv_tab.getElementsByClassName("tab");
	   		var oDiv_con = document.getElementById("con");
	   		var aDiv_con = oDiv_con.getElementsByClassName("con");
	   		var oZhuzi = document.getElementById("zhuzi");
			for(i=0;i < aDiv_tab.length;i++){
				aDiv_tab[i].index=i;
				aDiv_tab[i].onclick = function(){
					// console.log("first");	
					for(j=0;j< aDiv_tab.length;j++){
						aDiv_con[j].style.display="none";
					}
					aDiv_con[this.index].style.display="block";
					if(this.index==0){oZhuzi.style.top="75px";}
					else if(this.index==1){oZhuzi.style.top="139px";if(chart1_count=="0"){chart1();chart1_count="1";}}
					else if(this.index==2){oZhuzi.style.top="204px";}
					else if(this.index==3){oZhuzi.style.top="269px";}
					else if(this.index==4){oZhuzi.style.top="334px";}
					else if(this.index==5){oZhuzi.style.top="394px";}
					// else if(this.index==6){oZhuzi.style.left="86.7%";}
				};
			}
		
		//关注按钮
			function guanzhu(){
				$("#guanzhu").click(function(){
					$(this).val("已关注");
					var canshu = window.location.search;
			        canshu = canshu.split("?");
			        canshu = canshu[1].split("=");
			        canshu = canshu[1];
			        var json = {};
			        json.parameter = canshu;
			        console.log("关注的用户："+json.parameter);
			        $.ajax({
			            url : 'addatten.atten',
			            type : 'GET',
			            data : json,
			            success : function(){
			                console.log("成功~");
			            },
			            error : function(){
			                console.log("服务器连接失败，关注失败");
			            }
			        })
				});
			}
		
		// p的省略号函数--开始
			function shengluehao(){
				 var oCon = document.getElementById('fx');
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
				 	console.log(ii+" "+aEnglish+" "+x3);
				 	console.log(ii+" "+aPtext_length);
				 	ii++;
				 	if(aPtext_length>=418){
				 		console.log("addShengLueHao");
				 		$(this).addClass("p");
				 	}
				 });
			}
		
		//@ajax

			// 个人资料
			    var canshu = window.location.search;
		        canshu = canshu.split("?");
		        canshu = canshu[1].split("=");
		        canshu = canshu[1];
		        var json = {};
		        json.parameter = canshu;
				$.ajax({
					url : 'showother.other',
					type : 'GET',
					data : json,
					success : function(data){
						console.log(data);
						var jsonArray = JSON.parse(data).list;//个人资料
						// var jsonArray2 = JSON.parse(data).list2;//小组的阶段目标
						var outStr  = "";
						var outStr2  = "";
						var name = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							if(jsonCell.nickname=="阿水12344" || jsonCell.nickname=="浅伊_Erin" || jsonCell.nickname=="蓝胖子。"){
								$("#oc_jdmb").html("参加全国计算机大赛。<br>申报国创。");
								$("#displayxz").css("display","block");
								$("#displayxz2").css("display","none");
							}
							var sextype="";
							if(jsonCell.sex=="1"){
								sextype="女";
							}
							else if(jsonCell.sex=="2"){
								sextype="男";
							}
							else{
								sextype="未设置";
							}
							outStr += '<tr><th>性别：</th><td>'+sextype+'</td></tr><tr><th>联系方式：</th><td>'+jsonCell.cotacti+'</td></tr><tr><th>个性签名：</th><td>'+jsonCell.personsign+'</td></tr><tr><th>个人荣誉：</th><td>'+jsonCell.personhonor+'</td></tr><tr><th></th></tr>';
							outStr2 += '<div class="user_tx"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></div><div class="user_name"><h3><span>'+jsonCell.nickname+'</span>&nbsp;<small><input class="btn btn-xs btn-warning" id="guanzhu" value="关注" type="submit"></small></h3></div>';
							name = jsonCell.nickname;
						});
						$("#oc_grzx").html(outStr);
						$("#oc_tx_bar").html(outStr2);
						$("head title").text(name+"的主页");
						guanzhu();
					},
					error : function(){
						/*var jsonArray = [
							{
								"savedFileName" : 't1.jpg',
								'nickname' : 'ttt',
								'sex' : '2',
								'point' : '2100',
								'personsign' : '我就是我，不一样的烟火',
								'personhonor' : '参加国创',
								'cotacti' : 'qq:1234567987',
								'groupid' : '攻城战队'
							}
						];

						var outStr  = "";
						var outStr2  = "";
						var name = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							if(jsonCell.nickname=="阿水12344" || jsonCell.nickname=="浅伊_Erin" || jsonCell.nickname=="蓝胖子。"){
								$("#oc_jdmb").html("参加全国计算机大赛。<br>申报国创。");
							}
							
							outStr += '<tr><th>性别：</th><td>'+jsonCell.sex+'</td></tr><tr><th>联系方式：</th><td>'+jsonCell.cotacti+'</td></tr><tr><th>个性签名：</th><td>'+jsonCell.personsign+'</td></tr><tr><th>个人荣誉：</th><td>'+jsonCell.personhonor+'</td></tr><tr><th></th></tr>';
							outStr2 += '<div class="user_tx"><img src="img/tx/'+jsonCell.savedFileName+'" alt=""></div><div class="user_name"><h3><span>'+jsonCell.nickname+'</span>&nbsp;<small><input class="btn btn-xs btn-warning" id="guanzhu" value="关注" type="submit"></small></h3></div>';
							name = jsonCell.nickname;
						});
						$("#oc_grzx").html(outStr);
						$("#oc_tx_bar").html(outStr2);
						$("head title").text(name+"的主页");
						guanzhu();*/
						console.log("服务器被天狗吃掉了，获取数据失败~");
					}
				});
			//阶段任务
				/*$.ajax({
					url : 'showOtherCenter2',
					type : 'GET',
					success : function(data){
						var jsonArray = JSON.parse(data).list;
						var outStr  = j;
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							outStr += ;
						});
						$("#oc_jdmb").html(outStr);

					},
					error : function(){
						console.log("服务器被天狗吃掉了，获取数据失败~");
					}
				});*/
			//分享动态
				$.ajax({
					url : 'fshowother.other',
					type : 'GET',
					data : json,
					success : function(data){
						var jsonArray = JSON.parse(data).list;
						var outStr  = "";
						var count = 0;
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							outStr += '<div class="fx_con"><div class="fx_con_left"><img src="img/ship.jpg';
							// outStr += jsonCell.articlePic;
							outStr += '" alt=""></div><div class="fx_con_right"><a href="7_share_4-7.html?id2=';
							outStr += jsonCell.articleId;
							outStr += '"><div class="article_info"><h1 class="article_title">';
							outStr += jsonCell.articleTitle;
							outStr += '</h1><p><span class="article_time" title="发布时间">';
							outStr += jsonCell.articleTime;
							outStr += '</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews;
							outStr += '</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes;
							outStr += '</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected;
							outStr += '</span></p></div><div class="article_con">'+jsonCell.articleCon+'</div></a></div></div>';
							count = i;
						});
						if(count==0){
							$("#fx").html("该用户没有任何分享记录~");
						}
						else{
							console.log(outStr);
							$("#fx").html(outStr);
							shengluehao();
						}
					},
					error : function(){
						//测试
							/*var data = '{"list":[]}'
							var jsonArray = JSON.parse(data).list;
							var outStr  = "";
							var count = 0;
							$.each(jsonArray,function(i,value){
								var jsonCell = value;
								outStr += '<div class="fx_con"><div class="fx_con_left"><img src="img/a/';
								outStr += jsonCell.articlePic;
								outStr += '" alt=""></div><div class="fx_con_right"><a href="7_share_4-7.html?id2=';
								outStr += jsonCell.articleId;
								outStr += '"><div class="article_info"><h1 class="article_title">';
								outStr += jsonCell.articleTitle;
								outStr += '</h1><p><span class="article_time" title="发布时间">';
								outStr += jsonCell.articleTime;
								outStr += '</span><span class="glyphicon glyphicon-eye-open" title="浏览量"></span><span class="article_views">'+jsonCell.articleViews;
								outStr += '</span><span class="glyphicon glyphicon-thumbs-up" title="点赞数"></span><span class="article_likes">'+jsonCell.articleLikes;
								outStr += '</span><span class="glyphicon glyphicon-heart" title="收藏数"></span><span class="article_collected">'+jsonCell.articleCollected;
								outStr += '</span></p></div><div class="article_con"><p>'+jsonCell.articleCon+'</p></div></a></div></div>';
								count = i;
							});
							if(count==0){
								$("#fx").html("该用户没有任何分享记录~");
							}
							else{
								console.log(outStr);
								$("#fx").html(outStr);
								shengluehao();
							}*/
						console.log("服务器被天狗吃掉了，获取数据失败~");
					}
				});
			//小组消息
				/*$.ajax({
					url : 'showOtherCenter4',
					type : 'GET',
					success : function(data){
						var jsonArray = JSON.parse(data).list;
						var outStr  = "";
						$.each(jsonArray,function(i,value){
							var jsonCell = value;
							// outStr += ;
						});
						$("#oc_xzname").html(jsonCell.);

					},
					error : function(){
						console.log("服务器被天狗吃掉了，获取数据失败~");
					}
				});*/
			
			
   	};