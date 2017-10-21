<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>課程</title>
<link rel="stylesheet" href="css/amazeui.min.css">
<link rel="stylesheet" href="css/somecss.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' />
<style type="text/css">
ul,li,html,body{
  margin: 0;
  padding: 0;
  font-family: '微软雅黑';
}
a,a:hover,a:link{
  text-decoration: none;
}
li{
  list-style: none;
}
.clear{
    clear:both;
}
.clear:after{
    content: "";
    clear:both;
    height:0;
    display:block;
}
/*标题与背景*/
    #bgimg{
        width: 100%;
        height: 350px;
        margin-top: 60px;
        position: relative;
    }
    #bgimg img{
    	width: 100%;
    	height: 100%;
    }
    #cs_title{
    	width: 100%;
    	height: 60px;
    	position: absolute;
    	top: 290px;
    	background: rgba(0,0,0,0.5);
    	color: #fff;
    }
    #cs_title_center{
        width: 1100px;
        height: 100%;
        margin: 0 auto;
    }


    #titlet{
    	/*width: 400px;*/
    	height: 60px;
    	line-height: 60px;
    	font-weight: bold;
    	font-size: 28px;
    	text-indent: 0.5em;
    	float: left;
    	/*margin-left: 210px;*/
    	letter-spacing: 2px;
    }
    #shoucang{
        width: 26px;
        height: 26px;
        /*background: #5eb95e;*/
        color: #fff;
        float: left;
        text-align: center;
        /*padding-top: 4px;*/
        border-radius: 4px;
        font-size: 24px;
        margin: 20px 15px;
    }
    #shoucang:hover{
        cursor: pointer;
    }
    #titleu{
    	/*width: 414px;*/
    	height: 60px;
    	float: right;
    	/*margin-left: 210px;*/
    }
    #titleu ul{
        width: 414px;
    }
    #titleu ul li{
    	float: left;
    	height: 20px;
    	line-height: 20px;
    	margin: 30px 10px 10px 0px;
      letter-spacing: 3px;
    }
    #titleu ul li:nth-child(2) span{
        font-size: 16px;
        color: #5eb95e;
        /*color: #bfbfbf;*/
    }
    #titleu ul li:nth-child(6) span{
    	color: red;
    	font-size: 22px;
    	font-style: italic;
    }

/*中间主题部分*/
    #contain{
    	width: 1100px;
    	margin: 0 auto;
    }
    #jianj{
        width: 1100px;
        margin-top: 20px;
    }
    #jianj li{
    	float: left;
    	color: #515151;
    }
    #jianj li:nth-child(1){
        width: 60px;
        height: 50px;
        text-align: center;
        line-height: 50px;
        letter-spacing: 0.2em;
    }
    #jianj li:nth-child(2){
    	width: 1040px;
    	margin-top: 15px;
    }
    #others{
    	width: 1100px;
    }
    #o_left{
    	width: 750px;
    	float: left;
    }
    #left_menu{
    	width: 300px;
    	height: 40px;
    	margin-top: 15px;
    }
    #left_menu li{
    	float: left;
    }
    #left_menu li:nth-child(1),#left_menu li:nth-child(3),#left_menu li:nth-child(5),#left_menu li:nth-child(7){
    	width: 62px;
    	height: 32px;
    	text-align: center;
    	line-height: 32px;
    	letter-spacing: 0.3em;
    	font-weight: bold;
    	font-size: 18px;
    	margin: 4px;
    }
    #left_menu li:hover{
        cursor: pointer;
    }
    #left_menu li:nth-child(2),#left_menu li:nth-child(4),#left_menu li:nth-child(6){
        background-color: #5eb95e;
        width: 5px;
        height: 10px;
        border-radius: 5px;
        margin-top: 15px;
    }
    .lm_active{
    	background-color: #5eb95e;
    	border-radius: 5px;
    	color: #fff;      /*此处考虑下边框阴影*/
    }
    #left_hg{
    	background-color: #bfbfbf;
    	width: 136px;
    	height: 3px;
    	margin-left: 5px;
    	border-radius: 5px;
    }
    #left_content{
    	width: 750px;
    	height: 700px;
    	margin-top: 5px;
    }
    #o_right{
    	width: 280px;	
    	float: right;
    }

/*进度条*/
    .circle {
        width: 200px;
        height: 200px;
        position: relative;
        border-radius: 50%;
        background: #5eb95e;
        margin-top: 20px;
    }
    .pie_left, .pie_right {
        width:200px; 
        height:200px;
        position: absolute;
        top: 0;
        left: 0;
    }
    .left, .right {
        width:200px; 
        height:200px;
        background:#b0ffb0;
        border-radius: 50%;
        position: absolute;
        top: 0;
        left: 0;
    }
    .pie_right, .right {
        clip:rect(0,auto,auto,93px);
    }
    .pie_left, .left {
        clip:rect(0,100px,auto,0);
    }
    .mask {
        width: 170px;
        height: 170px;
        border-radius: 50%;
        left: 15px;
        top: 15px;
        background: #FFF;
        position: absolute;
        text-align: center;
        line-height: 170px;
        font-size: 20px;
        font-weight: bold;
        color: #5eb95e;
    }   

/*右边链接*/
    .right_title{
        height: 32px;
        width: 100px;
        font-size: 16px;
        margin: 19px 0px 4px 4px;
        line-height: 32px;
        letter-spacing: 0.2em;
    	color: #8a8a8a;
    }
    .right_hg{
    	background-color: #e6e6e6;
    	width: 280px;
    	height: 3px;
    	border-radius: 5px;
    }
    .right_list{
    	width: 280px;
    	height: 240px;
    	margin-top: 10px;
    }
    .right_list li{
    	width: 280px;
    	height: 30px;
    	line-height: 30px;
    }
    .right_list li img{
    	margin: 0px 5px;
    	vertical-align:middle;
    }
    .right_list li a{
    	color: #8a8a8a;
    	font-size: 14px;
    }

/*評價頁*/
    #pjtext{
        width: 722px;
        height: 140px;
        border-radius: 10px 10px 0px;
        display: block;
        margin: 10px;
        border: 2px solid #8a8a8a;
        box-shadow: 0 8px 4px -4px #cdcdcd;
        font-size: 14px;
        line-height: 20px;
        outline: none;
        padding: 10px;
        background: #fff;
    }
    /*评分处*/
    #star{position:relative;width:700px;margin:10px 0px 10px 10px; padding-bottom: 20px;}
    #star ul,#star span{float:left;display:inline;height:20px;line-height:20px;}
    #star ul{margin:0 10px;}
    #star li{float:left;width:20px;cursor:pointer;text-indent:-9999px;background:url(img/heart1.png); margin-right: 5px;}
    #star strong{color:#f30d0d;padding-left:5px;}
    #star li.on{background:url(img/heart2.png);}

    #pjsubmit{
        width: 80px;
        height: 40px;
        border-radius: 5px;
        display: block;
        margin: 0px 0px 30px 653px;
        color: #5eb95e;
        font-weight: bold;
        letter-spacing: 0.2em;
        box-shadow: 0 5px 4px -4px #8a8a8a;
        background-color: #fff;
        border: 1px solid #cdcdcd;
        cursor: pointer;
        padding-left: 2px;
    }
    .pingjia_list{
        width: 720px;
        margin: 10px;
    }
    .pingjial_hp img{
        width: 60px;
        height: 60px;
        float: left;
        border-radius: 30px;
        overflow: hidden;
    }
    .pingjial_content{
        width: 650px;
        margin-left: 70px;
    }
     .pingjial_content li:nth-child(1){
        width: 100%;
        height: 24px;
        line-height: 24px;
     }
     .pingjial_content li:nth-child(1) a{
        font-size: 16px;
        font-weight: bold;
        color: #5eb95e;
     }
     .pingjial_content li:nth-child(1) span{
        float:right;
     }
        .pingjial_content li:nth-child(1) span strong{
            color:#f30d0d;
            padding-left:5px;
        }
    .pingjial_content li:nth-child(2){
        width: 650px;
        font-size: 14px;
        line-height: 20px;
        margin: 5px 0px;
     }
     .pingjial_content li:nth-child(3){
        width: 650px;
        height: 20px;
        font-size: 14px;
        color: #8a8a8a;
        line-height: 20px;
     }

    #pingjia_tishi{
        width: 722px;
        height: 100px; 
        margin: 10px 10px 30px;
        border-radius: 10px;
        text-align: center;
        color: #8a8a8a;
        padding-top: 20px;
        box-shadow: 0 0 0 2px #8a8a8a;
    }

/*目录页*/
    .content_list{
        width: 750px;
        margin-top: 10px; 
    }
    .content_list div{
        width: 740px;
        height: 40px;
        padding-left: 10px;
        /*background: rgba(243,123,29,0.7);*/
        background: rgba(94,185,94,0.2);
        color:#223448;
        font-size: 18px;
        line-height: 40px;
        border-radius: 10px;
        font-weight: bold;
    }
    .content_list ul li{
        width: 730px;
        height: 30px;
     /* background: rgba(22,25,12,0.5);*/
        line-height: 30px;
        margin: 5px 0px 5px 10px;
        padding-left: 10px;
    }
    .content_list ul li a{
        color: #000;
    }
    .content_list ul li a:hover,.content_list ul li:hover{
        background-color: #e6e6e6;
        /*color: #fff;*/
        border-radius: 10px;
        cursor: pointer;
    }
    .content_list ul li span{
        float: right;
        margin-right: 5px;
    }

/*foot*/
    #footer{
        width: 100%;
        height: 200px;
        background: url(img/footerbg.jpg) no-repeat;
        margin-top: 80px;
    }
    #footer_contain{
        width: 100%;
        height: 200px;
        background: rgba(1,0,1,0.6);
    }
       
        #footer_yqlj{
            width: 60%;
            /*background: rgba(111,148,75,0.8);*/
            color: #fff;
            font-size: 22px;
            letter-spacing: 2px;
            height: 40px;
            margin: 0 auto;
            padding-top: 80px;
        }
            #footer_yqlj a{
                color: #fff;
                margin-left: 2%;
                font-size: 20px;
            }


</style>
</head>
 
<body>
    <div id="nav">
        <div id="daohang">
            <a href="#">
                <span class="am-icon-home" style="color:#fff;font-size:30px;"></span>
            </a>
        </div>
        <div id="user" class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="img/hp2.png">
            </a>
            <ul class="dropdown-menu  pull-right">
                <li><a href="##">阿水12344</a></li>
                <li><a href="##">退出</a></li>
            </ul>
        </div>
        <div id="searchcorn">
            <span class="am-icon-search am-icon-sm" style="padding-top:8px;"></span>
        </div>
        <form>
            <input id="search-input" type="text" value="请输入搜索内容..." onblur="if(this.value=='') value='请输入搜索内容...';" onclick="if(this.value=='请输入搜索内容...')value='';"/>
        </form>
        <div id="log">
            <img src="img/logo1.png">
        </div>
    </div>
    <div id="bgimg">
        <img src="img/cshow_bg.jpg">
        <div id="cs_title">
            <div id="cs_title_center">
                <div id="titlet">HTML5基础一</div>
                <div id="shoucang"><span class="am-icon-heart-o"></span></div>
                <div id="titleu">
                    <ul>
                        <li>难度:</li>
                        <li>
                            <span class="am-icon-star-o nanduxishu"></span>
                            <span class="am-icon-star-o nanduxishu"></span>
                            <span class="am-icon-star-o nanduxishu"></span>
                            <span class="am-icon-star-o nanduxishu"></span>
                            <span class="am-icon-star-o nanduxishu"></span>
                        </li>
                        <li>浏览量:</li>
                        <li>18</li>
                        <li>评分:</li>
                        <li><span>9.5</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div> 
    <div id="contain">
        <div id="jianj">
            <ul class="clear">
                <li>简介:</li>
                 <li>本课程详细的讲解了HTML5的基本知识，包括开发H5之前需要做的很多准备，HTML5在HTML原来的基础上增加的新特性，以及HTML5样式、链接以及表格的使用。</li>
            </ul>
        </div>
        <div id="others" class="clear">
            <div id="o_left">
                <div id="left_menu">
                    <ul>
                        <li class="lm_active">目录</li>
                        <li></li>
                        <li>评价</li>
                    </ul>
                </div>
                <div id="left_hg"></div>
                <div id="left_content">

                <!-- 目錄 -->
                    <div id="mul_c" class="choose_content" style="display:block;">
                        <div class="content_list">
                            <div>第一章:HTML5开发前准备</div>
                            <ul>
                                <li><a href="coursev1.1.1_learn.html">第一节:开发前的准备<span>08：00</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="coursev1.1.2_learn.html">第二节:快捷键<span>03：56</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                            </ul>
                            <div>第二章:HTML5特性简介</div>
                            <ul>
                                <li><a href="#">第一节:HTML5简介<span>03：25</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第二节:HTML5集成开发环境搭建<span>05：00</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第三节:HTML5基础详情<span>10：13</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                            </ul>
                            <div>第三章:HTML5元素、属性和格式化</div>
                            <ul>
                                <li><a href="#">第一节:HTML5元素简介及使用方法<span>06：52</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第二节:HTML5属性使用方法<span>08：31</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第三节:HTML5格式化及使用<span>05：37</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                            </ul>
                            <div>第四章:HTML5样式、链接和表格</div>
                            <ul>
                                <li><a href="#">第一节:HTML5样式的使用<span>10：42</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第二节:HTML5链接属性及使用<span>07：53</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                                <li><a href="#">第三节:HTML5表格使用 <span>11：50</span><span class="am-icon-check-circle-o" style="padding:8px 0px;color: #8a8a8a;"></span></a></li>
                            </ul>
                            <div><a href="courtest.jsp?idctest=3" style="color:#223448;">本课程测试</a></div>
                        </div>
                    </div>

                    <div class="choose_content" style="display:none;"></div>
                <!-- 评价 -->
                    <div id="pingj_c" class="choose_content" style="display:none;">
                        <form style="display:none;" id="pingjia_form">
                            <div id="star">
                                 <span>评分：</span>
                                 <ul>
                                 <li><a href=":;">1</a></li>
                                 <li><a href="javascript:;">2</a></li>
                                 <li><a href="javascript:;">3</a></li>
                                 <li><a href="javascript:;">4</a></li>
                                 <li><a href="javascript:;">5</a></li>
                                 <li><a href="javascript:;">6</a></li>
                                 <li><a href="javascript:;">7</a></li>
                                 <li><a href="javascript:;">8</a></li>
                                 <li><a href="javascript:;">9</a></li>
                                 <li><a href="javascript:;">10</a></li>
                                 </ul>
                                 <span id="score">未评</span>
                            </div>
                            <textarea name="txt" id="pjtext" clos="50" rows="7" warp="virtual" onblur="if(this.value=='') value='评价此课程对你的帮助...';" onclick="if(this.value=='评价此课程对你的帮助...')value='';">评价此课程对你的帮助...</textarea>
                            <input id="pjsubmit" type="submit" value="我要评价">
                        </form>
                        <div id="pingjia_tishi" style="display:none;">
                            您当前学习不足90%，不可进行评价
                        </div>
                        <div id="list_content">
                            <div class="pingjia_list">
                                <div class="pingjial_hp">
                                    <img src="img/user3_hp.jpg"></div>
                                <div class="pingjial_content">
                                    <ul>
                                        <li>
                                            <a href="#">浅伊_Erin</a>
                                            <span>评分：<strong>9分</strong></span>
                                        </li>
                                        <li>
                                            非常实用，也很详细，需要在实践中多练习！
                                        </li>
                                        <li>
                                            2017-04-17
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        
                    </div>
                </div>
            </div>
            <div id="o_right">
                <div class="circle">
                    <div class="pie_left">
                        <div class="left"></div>
                    </div>
                    <div class="pie_right">
                        <div class="right"></div>
                    </div>
                    <div class="mask">
                        已学习
                        <span>0</span>
                        %
                    </div>
                </div>
                <div id="scdownload">
                    <div class="right_title">素材下载</div>
                    <div class="right_hg"></div>
                    <div class="right_list">
                        <ul>
                            <!-- 考虑hover时的样式 -->        
                            <li>
                                <img src="img/document.png">        
                                <a href="course_infor/HTML51_code.zip" download="coursedocument">本课程相关实例源码以及课件</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="tjcourse">
                    <div class="right_title">课程推荐</div>
                    <div class="right_hg"></div>
                    <div class="right_list">
                        <ul>
                            <!-- 考虑hover时的样式 -->        
                            <li>
                                <a href="coursev_show3.html">初识jQuery</a>
                            </li>
                            <li>
                                <a href="##">JavaScript基础</a>
                            </li>
                            <li>
                                <a href="##">MySQL基础</a>
                            </li>
                            <li>
                                <a href="##">HTML/CSS基础</a>
                            </li>
                            <li>
                                <a href="##">Java基础(一)</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> 
    </div>

<!-- foot -->
    <div id="footer" class="clear">
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
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/getDate.js"></script>
<script type="text/javascript">
// 改变count2的值来设定本课程的难度系数
    var count2= 2;
    for(var i=0;i<count2;i++)
    {
        $(".nanduxishu").eq(i).removeClass("am-icon-star-o");
        $(".nanduxishu").eq(i).addClass("am-icon-star");
    }

// 進度條
    $('.circle').each(function(index, el) {
      var numStart = 0;
      var num = $(this).find('span').text() * 3.6;
      var timer = null;
      var _this = this;
      timer = setInterval(function(){
        if(numStart>num){
          clearInterval(timer);
          tiemr = null;
        }
        animateLoading(_this,numStart);
        numStart += 3.6;
      },10);
    });

    function animateLoading(_this,num){
      if (num <= 180) {
        $(_this).find('.right').css({'transform':"rotate(" + num + "deg)"});

      } else {
        $(_this).find('.right').css({'transform': "rotate(180deg)"});
        $(_this).find('.left').css({'transform': "rotate(" + (num - 180) + "deg)"});
      };
    };

// 選項卡
    $("#left_menu li").click(function(){
        x=$(this).index();
        $(this).siblings("#left_menu li").removeClass("lm_active");
        $(this).addClass("lm_active");
        $(".choose_content").eq(x).siblings(".choose_content").css("display","none");
        $(".choose_content").eq(x).css("display","block");
    });


    $(function(){
        if($(".mask span").text()>=90)
        {
            $("#pingj_c form").css("display","block");
        }
        else
        {
            $("#pingjia_tishi").css("display","block");
        }
    });

//加一功能
    $("#notel_content_huifu_button li")
//收藏功能
    var count1=0;
    $("#shoucang span").click(function(){
        count1++;
        if(count1%2==0){
            $(this).css("color","#fff");
            $(this).removeClass("am-icon-heart");
            $(this).addClass("am-icon-heart-o");
        }
        else{
            $(this).css("color","#f21423");
            $(this).removeClass("am-icon-heart-o");
            $(this).addClass("am-icon-heart");
        }
    });


window.onload = function ()
{

// 评价功能
    var oStar = document.getElementById("star");
    var aLi = oStar.getElementsByTagName("li");
    var oUl = oStar.getElementsByTagName("ul")[0];
    var oSpan = oStar.getElementsByTagName("span")[1];
    var i = iScore = iStar = 0;
    var aMsg = [
        "1分很不满意|差得太离谱，与卖家描述的",
        "2分不满意|部分有破卖家描述的不符，不满意",
        "3分一般|质量一般，没有卖家描述的那么好",
        "4分满意|质量不错，与卖家描述的基本一",
        "5分非常满意|质量非常好，与卖家描述的完全",
        "6分很不满意|差得太离谱，与卖家非常不满",
        "7分不满意|部分有破损家描述的不符，不满意",
        "8分一般|质量一般，没有卖家描述的那么好",
        "9分满意|质量不错，与卖家描述还是挺满意的",
        "10分非常满意|质量非常好，非常满意"
        ]
    for (i = 1; i <= aLi.length; i++)
    {
        aLi[i - 1].index = i;
        aLi[i - 1].onmouseover = function ()
        {
            fnPoint(this.index);
        };
        aLi[i - 1].onmouseout = function ()
        {
            fnPoint();
        };
        aLi[i - 1].onclick = function ()
        {
            iStar = this.index;
            oSpan.innerHTML = "<strong>" + (this.index) + " 分</strong> " ;
        }
    }
    function fnPoint(iArg)
    {
        iScore = iArg || iStar;
        for (i = 0; i < aLi.length; i++) 
            aLi[i].className = i < iScore ? "on" : "";
    }


//点击评价，下面立即会出现评价内容
    var oInput1=document.getElementById('pjsubmit');
    var oText1=document.getElementById('pjtext');
    var oDiv1=document.getElementById('list_content');
    
    oInput1.onclick=function ()
    {
        var oClass1=document.createElement('div');
        var aClass1=document.getElementsByClassName('pingjia_list');
        
        oClass1.className="pingjia_list";
        oClass1.innerHTML='<div class="pingjial_hp"><img src="img/userhp.png"></div><div class="pingjial_content"><ul><li><a href="#">用户名Erin</a><span>评分：'+oSpan.innerHTML+'</span></li><li>'+oText1.value+'</li><li>'+getCurrentDate()+'</li></ul></div>';
        
        if(aClass1.length>0)
        {
            oDiv1.insertBefore(oClass1,aClass1[0]);
        }
        else
        {
            oDiv1.appendChild(oClass1);
        }
        // 清空评分和输入框
        for (i = 0; i < aLi.length; i++) 
            aLi[i].className = "";
        oSpan.innerHTML="未评";
        oText1.value="评价此课程对你的帮助...";

        
      
        return false;  //阻止form表单的默认事件，提交上去，导致页面会刷新一次不会有评论出来
    };


};

// 利用AJAX给后台传数据
    //发送数据
    //收藏ajax
        $('#shoucang').click(function(){
            var courseid=1;
            var coursename="HTML5基础一";
            $.ajax({
                url:'',
                type:'GET',
                data:{
                    coursename:coursename,
                    courseid:courseid
                },
                success:function(){
                    console.log("传输成功");
                },
                error:function(error){
                    console.log("未传输成功");
                }
            })
        });
    //试卷ajax
        var canshu = window.location.search;
        canshu = canshu.split("?");
        canshu = canshu[1].split("=");
        canshu = canshu[1];
        var json = {};
        json.parameter = canshu;
        $.ajax({
            url : '',
            type : 'POST',
            data : json,
            success : function(){
                console.log("成功~")
            },
            error : function(){
                console.log("服务器连接失败，数据更新失败")
            }
        })





</script>


</body>
</html>
