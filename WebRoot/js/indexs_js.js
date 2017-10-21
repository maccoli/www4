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
		// clearInterval(timer1);
    function turnoption1(){     
      	a++;
		if (a>4)a=0;
		$(".pic ul li").eq(a).css("left","100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"-100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
    };
	var timer1=setInterval(turnoption1,4000);
    function lbInterval(){     
      	timer1=setInterval(turnoption1,4000);
    };
    
    $(".nav ul li").click(function(){
    	clearInterval(timer1);
    	lbInterval();
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
		clearInterval(timer1);
    	lbInterval();
		a++;
		if (a>4)a=0;
		$(".pic ul li").eq(a).css("left","100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"-100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
	});
	$(".prev").click(function(){
		clearInterval(timer1);
    	lbInterval();
		a--;
		if (a<0)a=4;
		$(".pic ul li").eq(a).css("left","-100%");
		$(".pic ul li").eq(a).animate({left:"0px"},300);
		$(".pic ul li").eq(b).animate({left:"100%"},300);
		b=a;
		$(".nav ul li").eq(a).addClass("bj").siblings().removeClass("bj");
	});
    
	


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

//本站公告处轮播
	    var count1=0;
	    $("#bzgg_right li").click(function (){
			x=$(this).index();	
			count1=x;
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
 