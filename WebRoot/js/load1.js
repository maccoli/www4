// 提取小组任务里面的内容，包括换行符号
		function a(){
			function ReplaceSeperator(mobiles) {
			    var i;
			    var result = "";
			    var c;
			    for (i = 0; i < mobiles.length; i++) {
			        c = mobiles.substr(i, 1);
			        if (c == ";" || c == "," || c == "，" || c == "\n")
			            result = result + "；";
			        else if (c != "\r")
			            result = result + c;
			    }
			    return result;
			}
			var mobiles = ReplaceSeperator($("#team_work").val());
			// $("#team_honor").text()=mobiles;
			console.log("aaaaa"+mobiles);
		}
// 修改密码
		var oFrom_Passwd = document.getElementById("changePasswd");//改密码的表单
		var aPasswd = oFrom_Passwd.getElementsByTagName("input");//表单中三个密码的表单输入框
		var oBtn = oFrom_Passwd.getElementsByTagName("button")[0];//表单中的提交按钮
		// 针对#新密码#的输入
			function passwordB(){
				var patrn=/^(\w){6,20}$/; 
				if (!patrn.exec(aPasswd[1].value)){
					alert("注意：输入错误!\n\n密码由6-20个字母、数字、下划线\n\n");
				} 
				else{
					return;
				}
			} 
		// 针对#再次输入新密码#
			function passwordC(){
				if(aPasswd[1].value != aPasswd[2].value){
					alert("注意：两次密码输入不一致");
					console.log("两次密码输入不一致");
				}
			}
// 当前时间
	function nowTime(){
		var T = {};
		var date = new Date();
		T.year = date.getFullYear();	//年
	    T.month = date.getMonth() + 1;	//月
	    T.today = date.getDate();		//日
	    T.day = date.getDay();			//星期几
	    T.hour = date.getHours();		//时
	    T.minute = date.getMinutes();	//分
	    T.second = date.getSeconds();	//秒
	    return T;
	    //alert(T.year+"-"+T.month+"-"+T.today+"-"+T.day+"-"+T.hour+"-"+T.minute+"-"+T.second);
	}
// 本周目标时间判别
		function TimeWeekWork(){
		 	var oForm_WeekWork = document.getElementById("form_week_work");//填写日期的表单
			var oBtn_WeekWork = document.getElementById("btn_week_work");//日期的按钮
			var oCon_WeekWork = document.getElementById("Con_WeekWork");//本周目标的内容
			var oDate_WeekWork = document.getElementById("Date_WeekWork");//日期控件
			
			//*****************表单填写的日期对象oDate[]，字符串 转为 数字******************
				var oDate = oDate_WeekWork.value.split("-");//将日期分解，比如2017-04-22，分解成2017,04,22
					/*alert(oDate[0]+oDate[1]+oDate[2]);
					alert(oDate[1].substring(0,1)+oDate[2].substring(0,1))//调试：显示当前时间*/
				if(oDate[1].substring(0,1)=="0"){
					oDate[1]=oDate[1].substr(1,1)-0;
				}
				else{
					oDate[1]=oDate[1]-0;
				}
				if(oDate[2].substring(0,1)=="0"){
					oDate[2]=oDate[2].substr(1,1)-0;
				}
				else{
					oDate[2]=oDate[2]-0;
				}
				oDate[0]=oDate[0]-0;
			
			//******************新建一个“今天”的时间对象 T_date，并取年月日星期。新建Odate开始、Ldate结束。******************
			    var T_date = new Date();
				    /*// 改变当天时间验证，修改365的值表示加减多少天
				    	T_date = new Date(T_date.getTime()+365*24*3600*1000);*/
				var T_year = T_date.getFullYear();	//年
			    var T_month = T_date.getMonth() + 1;//月
			    var T_today = T_date.getDate();		//日
			    var T_day = T_date.getDay();		//星期几
					//alert("假设当前时间为："+T_yaer+"年"+T_month+"月"+T_today+"日"+"  周"+T_day);
		    	var Odate;//本周开始的日期Odate
		    	var Ldate;//结束的日期Ldate
		    
		    //******************根据星期几计算本周的开始、结束时间，并取年月日星期几*******************
			    if(T_day == 0){
			    	Odate = new Date(T_date.getTime()-6*24*3600*1000);
			    	Ldate = new Date(T_date.getTime());
			    }
			    else{
			    	Odate = new Date(T_date.getTime()-(T_day-1 )*24*3600*1000);
			    	Ldate = new Date(T_date.getTime()+(7-T_day )*24*3600*1000);
			    }
			    var	O_year = Odate.getFullYear() - 0;
			    var O_month = Odate.getMonth() + 1;
			    var O_today = Odate.getDate();
			    var O_day = Odate.getDay();
			    var L_year = Ldate.getFullYear() - 0;
			    var L_month = Ldate.getMonth() + 1;
			    var L_today = Ldate.getDate();
			    var L_day = Ldate.getDay();
			
			
			//******************判断所选日期是否符合规定:今天的年份是否和所选年份一致
				//判断所选月日是否正确,并且有返回值0/1........ 0表示输入错误，1表示正确。
					function true_date_select(){
						if(O_month != L_month){
								// 开始的月份和结束的月份不同	//???暂时不考虑选择的日子是否在现在的日子之前
								if(oDate[1] == O_month && oDate[2] >= O_today){
									// alert("几号对的11");
									return 1;
								}
								else if(oDate[1] == L_month && oDate[2] <= L_today){
									// alert("几号对的12");
									return 1;
								}
								else{
									alert("请选择本周的时间~");
									return 0;
								}
							}
						else{
							if(oDate[1] == O_month && oDate[2] >= O_today && oDate[2] <= L_today){
								// alert("几号对的2");
								return 1;
							}
							else{
								alert("请选择本周的时间~");
								return 0;
							}
						}
					}
				//判断所选年份是否正确
					if( O_year != L_year){
						//当遇到12月和1月衔接是两个年份时
						if( O_year == oDate[0] || L_year == oDate[0] ){
							//所选年份和 本周开始年份 或 结束年份 相同
							true_date_select();
						}
						else{
							alert("请选择本周的时间~");
							return 0;
						}
					}
					else {
						//选择的月份不是12或1月
						if( T_year == oDate[0] ){
							//今天的年份和所选年份一致一致
							true_date_select();
						}
						else{
							alert("请选择本周的时间~");
							return 0;
						}
					}
		}
// 头像
	function uploadFile(ofile,ofileimg,oloading_cover,oshowloading){
		var fileObj = document.getElementById(ofile).files[0];	
		showImg();
		if(fileObj){
			var url = "uploadimage.jsp";
			var form = new FormData();
			form.append('myfile',fileObj);
			xhr = new XMLHttpRequest();
			xhr.open("post",url,true);
			xhr.onload = uploadComplete; //请求完成
            xhr.onerror =  uploadFailed; //请求失败
            xhr.upload.onprogress = progressFunction;
            xhr.send(form);
		}
		else{
			alert('请选择文件');
		}
		function showImg(){
			var fileimg = document.getElementById(ofileimg);	
			var src = window.URL.createObjectURL(fileObj);
			console.log(src);
			var img = document.createElement("img");
	        img.src = src;
	        fileimg.appendChild(img);
		}
		function progressFunction(evt){
			var loadingCover = document.getElementById(oloading_cover);
			var showloading = document.getElementById(oshowloading);
			// var progressBar = document.getElementById('progressbar');
			// var percentage = document.getElementById('percentage');
			if(evt.lengthComputable){
				progressbar.max = evt.total;
				progressBar.value = evt.loaded;
				var loading = Math.round(evt.loaded / evt.total * 100);
				percentage.innerHTML = loading + '%';
				showloading.innerHTML = loading + '%';
				loadingCover.style.top = -loading + '%';
				if(loading==100){
					showloading.style.display = 'none';
				}
			}
		}
		function uploadComplete(evt) {
	     //服务断接收完文件返回的结果
	     //    alert(evt.target.responseText);
	         console.log("上传成功！");
	    }
	    //上传失败
	    function uploadFailed(evt) {
	        console.log(evt);
	    }
	}	
// p的省略号函数
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
	 		// console.log(aPtext_length);
		 	// console.log(ii+" "+aNum+" "+x2)
		 	// console.log(ii+" "+aEnglish+" "+x3);
		 	// console.log(ii+" "+aPtext_length);
		 	ii++;
		 	if(aPtext_length>=345){
		 		// console.log("addShengLueHao");
		 		$(this).addClass("p");
		 	}
		});
	}	
//
//
window.onload = function(){
	
	// 显示数据时候要加上下面对应的@函数
	// @Tab2头像的加载 
		$("#gr_tx_btn").click(function(){
			uploadFile('file','fileimg','loading-cover','showloading');
		});
		$("#xz_tx_btn").click(function(){
			uploadFile('file2','fileimg2','loading-cover2','showloading2');
		});
	// @Tab3学习记录的特效
		function onmouseShow(){
			var oDiv = document.getElementById("con3");
			var aDiv = oDiv.getElementsByClassName("con3-img");
			var aDiv1 = oDiv.getElementsByClassName("con3-bg");
			var aDiv2 = oDiv.getElementsByClassName("con3-rec");
			var aTitle = oDiv.getElementsByClassName("con3-title");
			for(var i=0;i<aDiv.length;i++){
				aDiv[i].index=i;
				aDiv[i].onmouseover = function(){
					aDiv1[this.index].style.display="block";
					aDiv2[this.index].style.display="block";
					aTitle[this.index].style.display="none";
				};
				aDiv[i].onmouseout = function(){
					aDiv1[this.index].style.display="none";
					aDiv2[this.index].style.display="none";
					aTitle[this.index].style.display="block";
				};
			}
		}
		onmouseShow();
	// @Tab7小组成员头像特效
		function onmouseShow2(){
			var oDiv1 = document.getElementById("xz_cy");
			var aDan = oDiv1.getElementsByClassName("xz_cy");
			var aMen = oDiv1.getElementsByClassName("xz_cy_men");
			for(var i=0;i<aDan.length;i++){
				aDan[i].index=i;
				aDan[i].onmouseover = function(){
					aMen[this.index].style.display="block";
				};
				aDan[i].onmouseout = function(){
					aMen[this.index].style.display="none";
				};
			}
		}
		onmouseShow2();
	// @Tab7段落p的省略号函数调用
		shenglue();
		// 
	// 选项卡
		//一级选项卡 
			var oDiv_tab = document.getElementById("content-tab");
			var aLi_tab = oDiv_tab.getElementsByTagName("li");
			var oDiv_tab = document.getElementById("content-con");
			var aDiv_tab = oDiv_tab.getElementsByClassName("con0");
			// console.log("aaa");
			for(i=0;i < aLi_tab.length;i++){
				aLi_tab[i].index=i;
				aLi_tab[i].onclick = function(){
					// console.log("first");	
					for(j=0;j< aLi_tab.length;j++){
						aLi_tab[j].className="";
						aDiv_tab[j].style.display="none";
					}
					this.className="tab_active";
					aDiv_tab[this.index].style.display="block";
					if(this.id=="xzxx_bar"){
		                chart2();
		                chart3();
		            }
		            else if(this.id="grmb"){
		            	chart1();
		            }
				};
			}
		//二级选项卡
	        for(var x=1;x<=aDiv_tab.length;x++){
	            tab(x);
	        }
	        function tab(x){   
	            var oDiv = document.getElementById('con'+x);
	            var oUl = null;
	            if(document.getElementById('con'+x+'-tab')){
	            	 oUl = document.getElementById('con'+x+'-tab');
	            }else{
	            	return;
	            }
	            
	            var aLi = oUl.getElementsByTagName('li');
	            var aCon = oDiv.getElementsByClassName('con'+x); 	
	           
	            // console.log(aCon.length);
	            for(var i=0;i<aLi.length;i++){
	                aLi[i].index = i;
	                aLi[i].onclick = function(){
	                    for(var j=0;j<aLi.length;j++){
	                        aLi[j].className='con0_li_noactive';
	                        aCon[j].style.display='none';
	                    }
	                    this.className='con0_li_active';
	                    aCon[this.index].style.display='block';	                    if(this.id=="mubiao_lsjl"){
	                    	chart1();
		                }
		                else if(this.id=="xzxx"){
		                	chart2();
		                }
		                else if(this.id=="rwqk"){
		                	chart3();
		                }
	                };
	            }
	            
	        }

//@ajax：提交数据的ajax
	// @allTable删除表格效果 			// @ajax：delTr.aim 
    	var oBtn_jinrimubiao = document.getElementById("jinrimubiao_btn");
    	var oBtn_benzhoumubiao = document.getElementById("benzhoumubiao_btn");
	    function deleteTable(del,num){
	    	//del:表格的id名称
	    	//num:a链接位于表格第几列
			var oTab=document.getElementById(del);
			//var Id=oTab.tBodies[0].rows.length+1;
			for(var i=0;i<oTab.tBodies[0].rows.length;i++)
			{
				oTab.tBodies[0].rows[i].cells[num].getElementsByTagName('a')[0].onclick=function()
				{
					that = this;
					//弹出框的提示语
						if(del=="gz_user"){
							confirm_val=window.confirm("确认取消关注吗？");
						}
						else if(del == "sc_wenti" || del == "sc_wenzhang" || del == "sc_kecheng"){
							confirm_val=window.confirm("确认取消收藏吗？");
						}
						else{
							confirm_val=window.confirm("真的要删除啊？");
						}
					//确认删除：ajax数据发送+删除行
						if(confirm_val==true){
							//新建json对象delJson，放置table值，con值
								delJson = {};
								//
							//@delJson.table,获取table值：
								if( del == "jinrimubiao"){
									delJson.table = "todayaim" ;
								}
								else if( del == "benzhoumubiao"){
									delJson.table = "weekaim" ;
								}
								else if( del == "my_question"){
									delJson.table = "userquestion" ;
								}
								else if( del == "answerToMe"){
									delJson.table = "answernews" ;//回答消息表
								}
								else if( del == "newsBySystem"){
									delJson.table = "systemnews" ;//系统消息表
								}
								else if( del == "addTeam_table"){
									delJson.table = "teamnews" ;//小组消息表
								}
								else if( del == "sc_wenzhang"){
									delJson.table = "coarticle" ;//收藏的文章
								}
								else if( del == "sc_kecheng"){
									delJson.table = "cocourse" ;//收藏的课程
								}
								else if( del == "sc_wenti"){
									delJson.table = "coquestion" ;//收藏的问题
								}
								else if( del == "myshare"){
									delJson.table = "usershare" ;//分享文章
								}
								else if( del == "gz_user"){
									delJson.table = "userconcern" ;//关注的用户
								}
								else{
									alert("表名被天狗吃掉了，删除失败");
								}
							//@delJson.con,获取con值：
								delJson.con = $(this).parent().siblings().eq(0).text();
								console.log(delJson.con);
								//
							//@ajax传送数据delJson给服务器delTr，后台删除成功，前台做出删除状态
								$.ajax({
									url : "delTr.aim",
									type : 'GET',
									data : delJson,
									success : function(){
										console.log("删除成功");
										oTab.tBodies[0].removeChild(that.parentNode.parentNode);
										// var Id=oTab.tBodies[0].rows.length+1;
										// console.log("删除原来的"+oTab.id+"表格的剩余行数"+oTab.tBodies[0].rows.length);
										if(oTab.id=="jinrimubiao" && oTab.tBodies[0].rows.length==0){
											oBtn_jinrimubiao.style.display="none";
										}
										if(oTab.id=="benzhoumubiao" && oTab.tBodies[0].rows.length==0){
											oBtn_benzhoumubiao.style.display="none";
										}
									},
									error : function(){
										console.log("服务器被天狗吃掉了，删除失败");
									}
								})
						}
					//取消删除
						else{
							return false;
						}
				};
			}
		}	
		//调用deletTable函数			
			//deleteTable("jinrimubiao",2);
			//deleteTable("benzhoumubiao",3);			
			deleteTable("my_question",3);			
			deleteTable("answerToMe",1);
			deleteTable("newsBySystem",1);
			deleteTable("addTeam_table",2);
			
			deleteTable("sc_wenzhang",1);
			deleteTable("sc_kecheng",1);
			deleteTable("sc_wenti",1);			deleteTable("myshare",3);			deleteTable("gz_user",1);
	// @allPicDiv删除div效果  			// @ajax：delDiv
		function deleteDiv(div,cell,num){
			//div：包裹所有可删除元素 的 第一个父元素
			//cell：被删除元素 的 class名字
			//num：删除是cell的第几个a，下标从0开始
			var oDiv=document.getElementById(div);
			var Id=oDiv.getElementsByClassName(cell).length;
			for(var i=0;i<oDiv.getElementsByClassName(cell).length;i++)
			{
				oDiv.getElementsByClassName(cell)[i].getElementsByTagName('a')[num].onclick=function()
				{
					that = this;
					confirm_val=window.confirm("你真的忍心删除吗？");
					//确认删除：ajax数据发送+删除行
						if(confirm_val==true){
							delJson = {};
							delJson.table = ((div == "lesson_record") ? "user_learn_record" : "team_member");
							delJson.con = (div == "lesson_record") ? $(this).prev().find(".3_title").text() : $(this).parent().prev().attr("name");
							// alert(delJson2.con);
							// @ajax传数据delJson给服务器delDiv
								$.ajax({
									url : 'delDiv',
									type : 'GET',
									data : delJson,
									success:function(){
										console.log("删除成功");
										if(cell=="con3-img"){
											oDiv.removeChild(this.parentNode);
											onmouseShow();
										}
										else if(cell=="xz_cy")
										{
											oDiv.removeChild(this.parentNode.parentNode);
											onmouseShow2();
										}
									},
									error:function(){
										console.log("服务器被天狗吃掉了，删除失败");
									}
								});
						}
					//取消删除
						else{
								return false;
							}
					};
			}
		}
		deleteDiv("lesson_record","con3-img",1);
		deleteDiv("xz_cy","xz_cy",0);
	
	// 添加今日目标 					// @ajax: addTarget 
		// 今目标内容：aim 
			var oInput_today_work=$("#form_today_work_input");//今日目标的输入框
			function addTable1(add,btn){
				//add:表的id值，添加目标的表格
				//btn:触发添加事件的按钮
				var oTab=document.getElementById(add);
				var oAddBtn=document.getElementById(btn);
				var Id=oTab.tBodies[0].rows.length+1;
				oAddBtn.onclick=function(){
					that = this;
					//新建要传输的json对象
						addJson = {};
						addJson.aim = oInput_today_work.val().replace(/,/g, "，");					//@ajax
						$.ajax({
							url : 'aimadd.aim',
							type : 'GET',
							data : addJson,
							success:function(){
								console.log("添加成功！");
								// 今日目标一行内容值
									var oTr=document.createElement("tr");
									var oTd=document.createElement('td');
									oTd.innerHTML=oInput_today_work.val();
									oTr.appendChild(oTd);
									var oTd=document.createElement('td');
									oTd.innerHTML='<select name="" id=""><option value="">未完成</option><option value="">已完成</option></select>';
									oTr.appendChild(oTd);
									var oTd=document.createElement('td');
									oTd.innerHTML='<a href="javascript:;">删除</a>';
									oTr.appendChild(oTd);
								// 删除函数
									deleteTable("jinrimubiao",2);
									console.log("aaa");
							},
							error:function(){
								console.log("服务器被天狗吃掉了，添加失败~");
							}
						});
					return false;
				}
			}
			addTable1("jinrimubiao","form_today_work_btn");	

	// 添加本周目标 					// @ajax: addTarget
		// 本周目标内容：aim，预计完成时间：wtime 
			var oInput_week_work=$("#Con_WeekWork");//本周目标的输入框
			var oInput2_week_work=$("#Date_WeekWork");//本周目标时间的输入框
			function addTable2(add,btn){
				//add:表的id值，添加目标的表格
				//btn:触发添加事件的按钮
				var oTab=document.getElementById(add);
				var oAddBtn=document.getElementById(btn);
				var Id=oTab.tBodies[0].rows.length+1;
				oAddBtn.onclick=function(){
					that = this;
					//新建要传输的json对象
						addJson = {};
						//
					//@addJson.con：要输入的内容
						var b = oInput_week_work.val();
						b = b.replace(/,/g, "，");
						addJson.con = b ;
					//@addJson.con：要输入的预计完成时间
						var a = oInput2_week_work.val();
						addJson.wtime = a;
					//@ajax
						$.ajax({
							url : 'waimadd.aim',
							type : 'GET',
							data : addJson,
							success:function(){
								console.log("添加成功！");
								// 本周目标一行内容值
									var x = TimeWeekWork();
									if(x==0){
										// 再次检查预计完成时间是否正确
										return false;
									}
									else{
										var oTr=document.createElement("tr");//
										var oTd=document.createElement('td');//本周目标内容
										oTd.innerHTML=oInput_week_work.val();
										oTr.appendChild(oTd);
										var oTd=document.createElement('td');//预计完成时间
										oTd.innerHTML=oInput2_week_work.val();
										oTr.appendChild(oTd);
										var oTd=document.createElement('td');//
										oTd.innerHTML='<select name="" id=""><option value="">未完成</option><option value="">已完成</option></select>';
										oTr.appendChild(oTd);
										var oTd=document.createElement('td');
										oTd.innerHTML='<a href="javascript:;">删除</a>';
										oTr.appendChild(oTd);
									}									if(oTab.tBodies[0].rows.length==0){
										oTab.tBodies[0].appendChild(oTr);
									}
									else{
										oTab.tBodies[0].insertBefore(oTr,oTab.tBodies[0].rows[0]);
									}
									// console.log("表格行数"+oTab.tBodies[0].rows.length);
									if(oTab.tBodies[0].rows.length==1){
										if(oTab.id=="jinrimubiao"){
											oBtn_jinrimubiao.style.display="block";
										}
										else if(oTab.id=="benzhoumubiao"){
											oBtn_benzhoumubiao.style.display="block";
										}
									}
								// 删除函数
									deleteTable("benzhoumubiao",3);
							},
							error:function(){
								console.log("服务器被天狗吃掉了，添加失败~");
							}
						})
					return false;
				}
			}
			addTable2("benzhoumubiao","form_week_work_btn");			
	
	// 同意添加其为小组成员 			// @ajax：addMumber
		function AddMumber(){
			var oTab = document.getElementById("addTeam_table");
			// var Id=oTab.tBodies[0].rows.length+1;
			for(var i=0;i<oTab.tBodies[0].rows.length;i++)
			{
				oTab.tBodies[0].rows[i].cells[1].getElementsByTagName('a')[0].onclick=function()
				{	that = this;
					//判断是否可操作
						console.log($(this).attr("class"));
						if( $(this).attr("class") == "old_news" ){
							console.log("已经同意了");
							return false;
						}
					confirm_val=window.confirm("确认将ta加入小组？");
					//确认添加
						if(confirm_val==true){
							var img_src = $(this).parent().siblings().eq(0).find("a").eq(0).attr("data-src");//申请者的img
							var img_id = $(this).parent().siblings().eq(0).find("a").eq(0).attr("data-id");//申请者的id							var $that = $(this);//发送请求之后this指向会变化，要先保存原值
							//@ajax ,直返一个值img_id,即申请者的id
								$.ajax({
									url : 'addMumber',
									type : 'GET',
									data : img_id,//申请者的id，小组id根据session获取中的user_id，
									success:function(){
										//添加的内容
											var $div = $("<div class='xz_cy'></div>");
											var $img = $("<img alt=''>");
											var $diva = $("<div class='xz_cy_men'><a href='javascript:;'>删除</a></div>");
											$img.attr({
												"src" : img_src,
												"name" : img_id
											})
											$div.append($img);
											$div.append($diva);
											// console.log($div.html());
										//添加的执行和处理,重调 头像特效 和 头像删除
											$("#xz_cy").append($div);
											onmouseShow2();
											deleteDiv("xz_cy","xz_cy",0);
										// 同意按钮的处理
											$that.addClass("old_news");
											$that.text("已同意");
									},
									error:function(){
										console.log("服务器被天狗吃掉了，添加失败~");
									}
								})
						}
					//取消添加
						else{
							return false;
						}				};
			}
		}
		AddMumber();
	
	// 修改进行中的今日、本周目标 		// @ajax：change
		// 内容aim，状态finish，数据库表名table
			function change1(obj){
				// alert("aaa");
				//alert(obj);
					$(obj).click(function(){
						that = this;
						var json = {};
						var aim = [];
						var finish = [];
						var waim = [];
						var wfinish = [];
						var table;
						console.log(obj );
					//今日目标数据
						if(obj == "#jinrimubiao_btn"){
							table = "todayaim";
							console.log("111"+table);
							$("#jinrimubiao tbody tr").each(function(index){
								// alert( index + "  " + $(this).children().eq(0).text() );
								aim[index] = $(this).children().eq(0).text();//取第一列的目标内容值
							})
							$("#jinrimubiao tbody tr td select").each(function(index){
								// alert( index + "  " + $(this).val() );
								var f = ($(this).val() == "已完成") ? "2" : "1";
								//console.log("zuangtai"+f);
								finish[index] = f;//取状态值
								
							})
						}
					//本周目标数据
						else if( obj == "#benzhoumubiao_btn"){
							table = "weekaim";
							$("#benzhoumubiao tbody tr").each(function(index){
								//alert( index + "  " + $(this).children().eq(0).text() );
								waim[index] = $(this).children().eq(0).text();
							})
							$("#benzhoumubiao tbody tr td select").each(function(index){
								//alert( index + "  " + $(this).val() );
								var f = ($(this).val() == "已完成") ? "2" : "1";
								console.log("zuangtai"+f);
								wfinish[index] = $(this).val();//取状态值
							})
						}
					//传输数据json赋值
						json.table = table;
						console.log(json.table+"222"+table);
						json.aim = '"'+aim+'"';//将数组con以 字符串 的形式付给json中的con属性
						console.log(json.aim);
						json.finish = '"'+finish+'"';
						json.waim = '"'+waim+'"';//将数组con以 字符串 的形式付给json中的con属性
						json.wfinish = '"'+wfinish+'"';
						console.log(json.waim+"!!!"+json.wfinish+"!!!"+json.table);
						//@ajax
							$.ajax({
								url : 'upfinish.aim',
								type : 'GET',
								data : json,
								success:function(){
									console.log("提交成功");
								},
								error:function(){
									console.log("服务器被天狗吃掉了，提交失败");
								}
							})
						return false;
					}) 
			}
			change1("#jinrimubiao_btn");
			change1("#benzhoumubiao_btn");//@ajax：返回数据的ajax

//1、目标
	// 显示今日目标tab11,tab13			// @ajax: showaim.aim
		// 内容aim，状态finish
			$.ajax({
				url : 'showaim.aim',
				type : 'GET',
				success:function(data){
					var jsonArray = JSON.parse(data).list;
					// console.log(jsonArray+jsonArray.length);
					var outStr = "", outStr2 = "",count = 0,rate = 0;
					$.each(jsonArray,function(i,value){
						jsonCell = value;
						outStr += '<tr><td>'+jsonCell.aim+'</td>';
						outStr2 += '<tr><td>'+jsonCell.aim+'</td>';
						//console.log("状态:"+jsonCell.finish);
						if(jsonCell.finish == "2"){
							outStr += '<td><select><option value="未完成">未完成</option><option value="已完成" selected="selected">已完成</option></select></td>';
							outStr2 += '<td><span class="glyphicon glyphicon-ok" style="color:green;"></span></td></tr>';
							count ++ ;
							console.log("已完成："+count);
						}
						else{
							outStr += '<td><select><option value="未完成" selected="selected">未完成</option><option value="已完成">已完成</option></select></td>';
							outStr2 += '<td><span class="glyphicon glyphicon-remove" style="color:red;"></span></td></tr>';
							
						}
						outStr += '<td><a href="javascript:;">删除</a></td></td>';
						rate = i+1;
						//console.log("总数："+rate);
					})
					rate = count/rate*100;
					rate = rate.toFixed(0) + "%";
					// rate1 = (1/3)*100;
					// console.log(rate+" "+rate1.toFixed(0));
					outStr2 += '<tr style="background:#76ae0a"><th>完成率</th><td>'+rate+'</td></tr>';
					$("#jinrimubiao tbody").html(outStr);
					$("#jinrimubiao2 tbody").html(outStr2);
					//要加载的js函数
						deleteTable("jinrimubiao",2);
				},
				error:function(){
					/*var jsonArray = [
										{
											"aim" : "任务1",
											"finish" : "1"
										},
										{
											"aim" : "任务2",
											"finish" : "2"
										},
										{
											"aim" : "任务3",
											"finish" : "1"
										}
									]; //模拟的数据*/
					// @javabean，这里的con和state要和javabean中定义的变量命名一致
					
						
					console.log("服务器被天狗吃掉了，今日目标加载有问题~");
				}
			})
	
	// 显示本周目标  					// @ajax：showwaim.aim
		//需要：本周目标的内容waim，预计完成时间wtime，状态wfinish
			$.ajax({
				url : 'showwaim.aim',
				type : 'GET',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
					var outStr = "";
					$.each(jsonArray,function(i,value){
						jsonCell = value;
						outStr += '<tr><td>'+jsonCell.waim+'</td><td>'+jsonCell.wtime+'</td><td>';
						str1 = '<select name="" id=""><option value="" selected="selected">未完成</option><option value="">已完成</option></select>';
						str2 = '<select name="" id=""><option value="">未完成</option><option value="" selected="selected">已完成</option></select>';
						outStr += (jsonCell.wfinish == '1') ? str1 : str2 ;
						outStr += '</td><td><a href="javascript:;">删除</a></td></tr>';
					});
					$("#benzhoumubiao tbody").html(outStr);
					//要加载的js函数
						deleteTable("benzhoumubiao",3);
				},
				error : function(){
					/*var jsonArray = [
											{
												"aim" : "任务1",
												"finish" : "1",
												"stime" : "2017/4/12"
											},
											{
												"aim" : "任务2",
												"finish" : "1",
												"stime" : "2017/4/12"
											},
											{
												"aim" : "任务3",
												"finish" : "2",
												"stime" : "2017/4/12"
											}
										];//模拟的数据*/
					console.log("服务器被天狗吃掉了，本周目标加载有问题~");
				}
			})
	
	// 显示今日目标历史记录  			// @ajax：showaim.record
		// 内容aim，发布时间stime，状态finish
			$.ajax({
				url : 'showaim.record',
				type : 'GET',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
					var outStr = "";
					$.each(jsonArray,function(i,value){
						var jsonCell = value;
						outStr += '<tr><td>'+jsonCell.aim+'</td><td>'+jsonCell.stime+'</td>'
						outStr += (jsonCell.finish == "1") ? '<td><span class="glyphicon glyphicon-ok" style="color:green;"></span></td></tr>' : '<td><span class="glyphicon glyphicon-remove" style="color:red;"></span></td></tr>';
					})
					$("#jinrimubiao_record tbody").html(outStr);
				},
				error : function(){
					
					console.log("服务器被天狗吃掉了，加载今日目标历史记录失败~");
				}
			})	

	// 显示本周目标历史记录  			// @ajax：showwaim.record
		// 内容aim，发布时间stime，预计完成时间wtime，最后操作时间ctime，状态finish
			$.ajax({
				url : 'showwaim.record',
				type : 'GET',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
					var outStr = "";
					$.each(jsonArray,function(i,value){
						var jsonCell = value;
						outStr += '<tr><td>'+jsonCell.waim+'</td><td>'+jsonCell.stime+'</td><td>'+jsonCell.wtime+'</td><td>'+jsonCell.ctime+'</td><td>';
						outStr += (jsonCell.wfinish == "1") ? '<span class="glyphicon glyphicon-remove" style="color:red;"></span></td></tr>' :'<span class="glyphicon glyphicon-ok" style="color:green;"></span></td></tr>';
					});
					$("#benzhoumubiao_record tbody").html(outStr);
					// console.log(outStr);
				},
				error : function(){
					/*var jsonArray = [
											{
												"aim" : "任务1",
												"finish" : "1",
												"waim" : "周任务1",
												"wfinish" : "1",
												"stime" : "2017/4/12",
												"wtime" : "2017/4/4",
												"ctime" : "2017/5/1"
											},
											{
												"aim" : "任务2",
												"finish" : "1",
												"waim" : "周任务12",
												"wfinish" : "2",
												"stime" : "2017/4/12",
												"wtime" : "2017/4/4",
												"ctime" : "2017/5/1"
											},
											{
												"aim" : "任务3",
												"finish" : "2",
												"waim" : "周任务3",
												"wfinish" : "2",
												"stime" : "2017/4/12",
												"wtime" : "2017/4/4",
												"ctime" : "2017/5/1"
											}
										];//模拟的数据*/
					
					console.log("服务器被天狗吃掉了，本周目标历史记录加载失败~");
				}

			})


//2、个人资料	
	// 显示个人资料
		// 头像savedFileName，昵称nickname，性别sex，个性签名personsign，个人荣誉personhonor，联系方式cotacti，小组编号groupid
			/*$.ajax({
				url : 'showuser',
				type : 'POST',
				success : function(data){
					var jsonArray = JSON.parse(data).list;
					var outStr = "";
					$.each(jsonArray,function(i,value){
						var jsonCell = value;
						outStr += 
					})
				}
			})*/


//
//0、其他
	// 个人任务图 			// @ajax：
		function chart1(){
			console.log(this.id);
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
	// 小组成员图 			// @ajax：
		function chart2(){
			console.log(this.id);
            var data2 = {
	            labels : ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"],
	            datasets : [
	                // 灰色的
	                {
	                    fillColor : "rgba(220,220,220,0.5)",
	                    strokeColor : "rgba(220,220,220,1)",
	                    pointColor : "rgba(220,220,220,1)",
	                    pointStrokeColor : "#fff",
	                    data : [50,70,50,0,50,80,95]
	                },
	                // 蓝色的
	                {
	                    fillColor : "rgba(151,187,205,0.5)",
	                    strokeColor : "rgba(151,187,205,1)",
	                    pointColor : "rgba(151,187,205,1)",
	                    pointStrokeColor : "#fff",
	                    data : [65,0,50,0,56,0,0]
	                }
	            ]
	        }
        	var ctx2 = document.getElementById("myChart2").getContext("2d");
        	var myNewChart2 = new Chart(ctx2).Line(data2);
        }
	// 小组圆饼图 			// @ajax：
		function chart3(){
			var data_bzre = [
                {	value : 90,	color: "#304607" },
                {	value : 90,	color: "#76ae0a" },
                {	value : 60,	color: "#ededdc" },
                {	value : 30,	color: "#9d3d82" },
                {	value : 45,	color: "#bac54b" },
                {	value : 30,	color: "#bac54b" },
                {	value : 15,	color: "#83bd1a" }
            ];
            var ctx5 = document.getElementById("myChart5").getContext("2d");
            var myNewChart5 = new Chart(ctx5).Pie(data_bzre);
            var ctx6 = document.getElementById("myChart6").getContext("2d");
            var myNewChart6 = new Chart(ctx6).Pie(data_bzre);
            var ctx7 = document.getElementById("myChart7").getContext("2d");
            var myNewChart7 = new Chart(ctx7).Pie(data_bzre);
		}
}