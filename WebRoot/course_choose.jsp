<%@page import="com.www2.bean.Search"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/amazeui_deng.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/nav_deng2.css">
<link rel="stylesheet" href="css/somecss.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<title>课程筛选</title>
<style type="text/css">
html,body,ul,li{
  margin: 0;
  padding: 0;
  font-family: '微软雅黑';
}
a{
  text-decoration: none;
}
body{
    width: 100%;
    height: 100%;
}
 html{width: 100%;height: 100%;}
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

/*关键字搜索处*/
    #search{
        width: 100%;
        height: 100px;
        margin-top: 60px;
    }
        #search form{
            width: 600px;
            height: 100px;
            /* background: rgba(111,211,118,0.8); */
            margin: 0 auto;
            padding-top: 40px;
        }
            #search_text{
                width: 540px;
                height: 50px;
                float: left;
                border-radius: 6px;
                border: 3px solid rgba(34,52,72,1);
                /*box-shadow: 0 0 0 2px rgba(34,52,72,1);*/
                outline: none;
                padding: 16px;
            }
            #search_submit{
                width: 50px;
                height: 50px;
                float: right;
                margin: 5px 0px 5px 5px;
                border: none;
                background: url(img/search_bg.png) no-repeat;
                outline: none;
            }

/*课程类型选择处*/
    #main{
        /*width: 100%;*/
        /*background: rgba(111,144,210,0.7);*/
        /*margin: 60px auto 0px;*/
        /*height: 800px;*/
    }
    #choose{
        margin: 0px auto;
        width: 1200px;
        height: 260px;
        padding-top: 20px;
        /*background: rgba(174,210,119,0.7);*/
    }
        .option{
            width: 100%;
            height: 60px;
            /*background: rgba(111,188,28,0.7);*/
            /*box-shadow: 0px 6px 4px -4px #dedede;*/
        }
        .option li{
            height: 60px;
            line-height: 60px;
            padding-top: 5px;
            margin-left: 35px;
            float: left;
            cursor: pointer;
            border-bottom: 1px solid rgba(191,65,185,0);
            color: #948e8e;
            user-select:none;
        }
        .option_fl{
            display: none;
        }
        .option_title{
            width: 5%;
            margin: 0px 1%;
            height: 60px;
            line-height: 60px;
            float: left;
            font-size: 18px;
            padding-top: 5px;
            font-weight: bold;
            color: #5f5e5e;
            user-select:none;
        }

/*课程*/
    #list{
        width: 1200px;
        margin: 0 auto;
    }
    .course{
        width: 20%;
        height: 240px;
        /*background: rgba(111,157,42,0.5);*/
        float: left;
    }
    .course a{
        /*text-decoration: none;*/
        color: #000;
        display: block;
        width: 192px;
        height: 192px;
        padding: 0px;
        /*background: red;*/
    }
    .course_bg{
        width: 100%;
        /*width: 80%;*/
        height: 192px;
        margin: 14px 14% 34px 0%;
        /*background: rgba(111,188,28,0.7);*/
        background-position: center center;
        background-size: 100%;
        transition: background-size 0.2s;
        -moz-transition:background-size 0.2s; 
        -webkit-transition:background-size 0.2s;
        -o-transition:background-size 0.2s; 
    }
    
    .course a:hover .course_bg{
        background-size: 120%;
    }
    .course_xq{
        /*width: 64%;*/
        width: 85%;
        height: 70px;
        background: #fff;
        margin: -84px 0px 0px 30%;
        position: relative;
        z-index: 5;
        box-shadow: 0 8px 4px -4px #cdcdcd;
    }
        .course_title{
            width: 90%;
            height: 35px;
            line-height: 35px;
            /*background: rgba(111,210,115,0.7);*/
            margin: 0px 5%;
            padding-top: 7px;
            /*font-weight: bold;*/
            font-size: 14px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
            .course_title a{
                color: #000;
            }
        .course_xg{
            width: 95%;
            height: 30px;
            margin-left: 5%; 
        }
            .xg_most{
                /*width: 150px;*/
                height: 30px;
                /*background: rgba(111,210,115,0.7);*/
                float: left;
                /*margin-top: 10px;*/
            }
            .xg_most li{
                float: left;
                color: #8a8a8a;
                line-height: 30px;
                height: 30px;
                font-size: 12px;
            }
            .xg_most li:nth-child(1){
                width: 15px;
                height: 15px;
                /*margin-top: 3px;*/
                margin-right: 2px;
                /*font-size: 12px;*/
            }
            .xg_most li:nth-child(2){
                /*width: 30px;*/
                height: 30px;
                line-height: 30px;
                /*color: #8a8a8a;*/
                /*font-size: 12px;*/
                margin: 0px 5px 0px 0px;
            }
            .xg_small{
                /*width: 30px;*/
                height: 30px;
                float: right;
                /*background: rgba(111,110,115,0.7);*/
                line-height: 30px;
                color: #8a8a8a;
                font-size: 12px;
            }
            .xg_small span{
                color: red;
                font-size: 15px;
                margin: 0px 6px 0px 0px;
            }
        .bottomer{
            width: 100%;
            height: 70px;
            line-height: 70px;
            color: #7d7d7d;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            display:block;
            letter-spacing: 2px;
        }

/*置顶按钮设置*/
    #scrolltop{
        position: fixed;
        bottom: 50px;
        right: 40px;
    }
    #scrolltop span{
        font-size: 40px;
        color: #223448;
        cursor: pointer;
    }

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
        </div><a href="course_choose.jsp">
        <form>
            <input id="search-input" type="text" value="" placeholder="请输入搜索内容..." />
        </form></a>
        <div id="log">
            <img src="img/logo1.png">
        </div>
    </div>

<!-- 搜索栏处 -->
    <div id="search">
        <form>
            <input type="text" name="search" id="search_text"  placeholder="请输入搜索内容..." value="" >
            <input type="submit" name="submit" id="search_submit" value="">
        </form>
    </div>

<!-- 课程类型选择 -->
    <div id="main">
        <div id="choose">
            <div class="option">
                <div class="option_title">方向：</div>
                <ul class="option_first">
                    <li name="0" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="1">前端开发</li>
                    <li name="2">后台开发</li>
                    <li name="3">移动端</li>
                    <li name="4">数据库</li>
                </ul>
            </div>
            <div class="option">
                <div class="option_title">分类：</div>
                <ul class="option_fl" style="display:block;">
                    <li name="00" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                </ul>
                <ul class="option_fl">
                    <li name="10" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="11">HTML/CSS</li>
                    <li name="12">JavaScript</li>
                    <li name="13">HTML5</li>
                    <li name="14">CSS3</li>
                    <li name="15">jQuery</li>
                    <li name="16">Bootstrap</li>
                    <li name="17">Node.js</li> 
                    <li name="18">Vue.js</li>
                    <li name="19">AngularJS</li> 
                </ul>
                <ul class="option_fl">
                    <li name="20" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="21">C</li>
                    <li name="22">C++</li>
                    <li name="23">Jave</li>
                    <li name="24">PHP</li>
                    <li name="25">Python</li>
                    <li name="26">C#</li>
                </ul>
                <ul class="option_fl">
                    <li name="30" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="31">Android</li>
                    <li name="32">iOS</li>
                </ul>
                <ul class="option_fl">
                    <li name="40" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="41">MySQL</li>
                    <li name="42">Oracle</li>
                    <li name="43">大数据</li>
                    <li name="44">SQL Server</li>
                </ul>
            </div>
            <div class="option">
                <div class="option_title">类型：</div>
                <ul class="option_last">
                    <li name="o" style="color: #000; border-bottom: 1px solid #223448; ">全部</li>
                    <li name="a">基础</li>
                    <li name="b">提高</li>
                    <li name="c">图书</li>
                </ul>
            </div>
        </div>
        <div id="list">
            
        </div>
        <!-- <div class="bottomer">已经到底部了</div> -->
    </div>
    
<!-- 置顶按钮 -->
    <div id="scrolltop">
        <span class="am-icon-arrow-up"></span>
    </div>

</div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/amazeui.min.js"></script> 
<script type="text/javascript">


//选项卡选择样式及筛选功能
    var redirect = "0";
    var cclass = "00";
    var ctype = "o";
    // console.log("redirect:"+redirect+" cclass:"+cclass+" ctype:"+ctype);
    $(".option_first li").click(function(){
        redirect = $(this).attr("name");
        cclass = redirect+'0';
        ctype = "o";
        $(".option_last li").css("color","#948e8e");
        $(".option_last li").css("border-bottom","1px solid rgba(191,65,185,0)");
        $(".option_last li").eq(0).css("color","#000");
        $(".option_last li").eq(0).css("border-bottom","1px solid #223448");
        var x=$(this).index();
        $(".option_fl").siblings(".option_fl").css("display","none");
        $(".option_fl").eq(x).css("display","block");
        $(this).siblings(".option_first li").css("color","#948e8e");
        $(this).siblings(".option_first li").css("border-bottom","1px solid rgba(191,65,185,0)");
        $(this).css("color","#000");
        $(this).css("border-bottom","1px solid #223448");
        // console.log("redirect:"+redirect+" cclass:"+cclass+" ctype:"+ctype);
        if(redirect=="0"){
            $(".course").css("display","block");
        }
        else{
            $(".course").css("display","none");
            $(".course").each(function(){
                if($(this).attr("typeone")==redirect){
                    $(this).css("display","block");
                }
            })
        }

    });
    $(".option_fl li").click(function(){
        cclass = $(this).attr("name");
        $(this).siblings(".option_fl li").css("color","#948e8e");
        $(this).siblings(".option_fl li").css("border-bottom","1px solid rgba(191,65,185,0)");
        $(this).css("color","#000");
        $(this).css("border-bottom","1px solid #223448");
        // console.log("redirect:"+redirect+" cclass:"+cclass+" ctype:"+ctype);
        var cclassgeweishu = (cclass-0)%10;
        console.log("cclassgeweishu:"+cclassgeweishu);
        if(cclassgeweishu=="0"){
            $(".course").css("display","none");
            $(".course").each(function(){
                if((($(this).attr("typetwo")-0)/10).toFixed(0) == redirect){
                    $(this).css("display","block");
                }
            })
        }
        else{
            $(".course").css("display","none");
            $(".course").each(function(){
                if($(this).attr("typetwo") == cclass){
                    $(this).css("display","block");
                }
            })
        }
    });
    $(".option_last li").click(function(){
        ctype = $(this).attr("name");
        $(this).siblings(".option_last li").css("color","#948e8e");
        $(this).siblings(".option_last li").css("border-bottom","1px solid rgba(191,65,185,0)");
        $(this).css("color","#000");
        $(this).css("border-bottom","1px solid #223448");
        // console.log("redirect:"+redirect+" cclass:"+cclass+" ctype:"+ctype);
        // 类型是全部
        if(ctype=="o"){
            $(".course").css("display","none");
            $(".course").each(function(){
                //方向不是全部、分类是全部
                if(redirect != "0" && ((cclass-0)%10) == "0"){
                    if( $(this).attr("typeone") == redirect){
                        $(this).css("display","block");
                    }
                }
                //方向是全部、分类是全部
                else if(redirect == "0" && ((cclass-0)%10) == "0"){
                    $(this).css("display","block");
                }
                //方向不是全部、分类不是全部
                else{
                    if( $(this).attr("typeone") == redirect && $(this).attr("typetwo") == cclass ){
                        $(this).css("display","block");
                    }
                }
            })
        }
        //类型不是全部
        else{
            $(".course").css("display","none");
            $(".course").each(function(){
                //方向不是全部、分类是全部
                if( redirect != "0" &&  ((cclass-0)%10) == "0"){
                    if( $(this).attr("typeone") == redirect && $(this).attr("typethree") == ctype ){
                        $(this).css("display","block");
                    }
                    // console.log("1、方向不是全部、分类是全部。");
                }
                //方向是全部、分类必定是全部
                else if( redirect == "0" && ((cclass-0)%10) == "0"){
                    if( $(this).attr("typethree") == ctype){
                        $(this).css("display","block");
                    }
                    // console.log("2、方向是全部、分类必定是全部。");
                }
                //方向不是全部、分类不是全部
                else{
                    if( $(this).attr("typeone") == redirect && $(this).attr("typetwo") == cclass && $(this).attr("typethree") == ctype ){
                        $(this).css("display","block");
                    }
                    // console.log("3、方向不是全部、分类不是全部。");
                }
            })
        }
    });
    
//置顶按钮
    $('#scrolltop').on('click', function() {
          var $w = $(window);
          $w.smoothScroll({position: 0});
        });

//接受数据                         //@ajax：showALLkc.sea                
    //课程编号id，课程题目title，课程方向redirect，课程分类cclass，课程类型ctype，浏览量watch，评分grade，课程背景图片pic 
        $.ajax({
                    url : 'showAllkc.sea',
                    type : 'POST',
                    success : function(data){
                        var jsonArray = JSON.parse(data).list;
                        var outStr = "";
                        $.each(jsonArray,function(i,value){
                            var jsonCell = value;
                            outStr  += '<div class="course" typeone="'+jsonCell.redirect+'" typetwo="'+jsonCell.cclass+'" typethree="'+jsonCell.ctype+'">'+'<a href="'+jsonCell.curl+'"><div class="course_bg" style="background-image:url('+jsonCell.pic+')"></div><div class="course_xq"><div class="course_title">'+jsonCell.title+' </div><div class="course_xg"><ul class="xg_most"><li><span class="am-icon-eye"></span></li><li>'+jsonCell.watch+' </li></ul><div class="xg_small"><span>'+jsonCell.grade+' </span>分</div></div></div></a></div>';
                        });
                        $("#list").html(outStr);

                    },
                           
                    error : function(){
                        var data='{"list":[{"id":"1","title":"前端-html/css-基础","redirect":"1","cclass":"11","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-JavaScript-基础","redirect":"1","cclass":"12","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"前端-HTML5-基础","redirect":"1","cclass":"13","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-CSS3-基础","redirect":"1","cclass":"14","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-jQuery-基础","redirect":"1","cclass":"15","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-Bootstrap-基础","redirect":"1","cclass":"16","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-Node.js-基础","redirect":"1","cclass":"17","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-Vue.js-基础","redirect":"1","cclass":"18","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-AngularJS-基础","redirect":"1","cclass":"19","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-AngularJS-基础","redirect":"1","cclass":"19","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-html/css-案例","redirect":"1","cclass":"11","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-JavaScript-案例","redirect":"1","cclass":"12","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"前端-HTML5-案例","redirect":"1","cclass":"13","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-CSS3-案例","redirect":"1","cclass":"14","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-jQuery-案例","redirect":"1","cclass":"15","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-Bootstrap-案例","redirect":"1","cclass":"16","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-Node.js-案例","redirect":"1","cclass":"17","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-Vue.js-案例","redirect":"1","cclass":"18","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-AngularJS-案例","redirect":"1","cclass":"19","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-AngularJS-案例","redirect":"1","cclass":"19","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-html/css-图书","redirect":"1","cclass":"11","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-JavaScript-图书","redirect":"1","cclass":"12","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"前端-HTML5-图书","redirect":"1","cclass":"13","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-CSS3-图书","redirect":"1","cclass":"14","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-jQuery-图书","redirect":"1","cclass":"15","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-Bootstrap-图书","redirect":"1","cclass":"16","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"前端-Node.js-图书","redirect":"1","cclass":"17","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"前端-Vue.js-图书","redirect":"1","cclass":"18","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"前端-AngularJS-图书","redirect":"1","cclass":"19","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"前端-React-图书","redirect":"1","cclass":"19","ctype":"c","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"后台-C-基础","redirect":"2","cclass":"21","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"后台-C++-基础","redirect":"2","cclass":"22","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"后台-Jave-基础","redirect":"2","cclass":"23","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"后台-PHP-基础","redirect":"2","cclass":"24","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"后台-Python-基础","redirect":"2","cclass":"25","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"后台-C#-基础","redirect":"2","cclass":"26","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"后台-C-案例","redirect":"2","cclass":"21","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"后台-C-案例","redirect":"2","cclass":"22","ctype":"b","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"数据库5","redirect":"4","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"数据库1","redirect":"4","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"数据库2","redirect":"4","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"数据库3","redirect":"4","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"数据库4","redirect":"4","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"移动5","redirect":"3","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"},{"id":"1","title":"移动1","redirect":"3","cclass":"31","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg1.jpg"},{"id":"1","title":"移动2","redirect":"3","cclass":"41","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg2.jpg"},{"id":"1","title":"移动3","redirect":"3","cclass":"41","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg3.jpg"},{"id":"1","title":"移动4","redirect":"3","cclass":"41","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg4.jpg"},{"id":"1","title":"移动5","redirect":"3","cclass":"41","ctype":"a","watch":"0","grade":"8.0","pic":"course_bg5.jpg"}]}';

                        var jsonArray = JSON.parse(data).list;
                        var outStr = "";
                        $.each(jsonArray,function(i,value){
                            var jsonCell = value;
                            outStr  += '<div class="course" typeone="'+jsonCell.redirect+'" typetwo="'+jsonCell.cclass+'" typethree="'+jsonCell.ctype+'">'+'<a href="course.jsp?idkc='+jsonCell.id+'"><div class="course_bg" style="background-image:url(img/'+jsonCell.pic+' )"></div><div class="course_xq"><div class="course_title">'+jsonCell.title+' </div><div class="course_xg"><ul class="xg_most"><li><span class="am-icon-eye"></span></li><li>'+jsonCell.watch+' </li></ul><div class="xg_small"><span>'+jsonCell.grade+' </span>分</div></div></div></a></div>';
                        });
                        $("#list").html(outStr);
                        console.log("服务器被天狗吃掉了，获取数据失败~");
                    }
                });

//搜索，发送并接受数据             //@ajax：searchCourse.sea    
    //搜索的内容值searchval     
        $("#search_submit").click(function(){
            var json = {};//新建一个json对象
            json.searchval = $("#search_text").val();
            $.ajax({
                url : 'searchCourse.sea',
                type : 'POST',
                data : json,
                success : function(data){
                    console.log("成功:搜索，发送并接受数据~");
                    var jsonArray = JSON.parse(data).list;
                    var outStr = "";
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr  += '<div class="course" typeone="'+jsonCell.redirect+'" typetwo="'+jsonCell.cclass+'" typethree="'+jsonCell.ctype+'">'+'<a href="'+jsonCell.curl+'"><div class="course_bg" style="background-image:url('+jsonCell.pic+')"></div><div class="course_xq"><div class="course_title">'+jsonCell.title+' </div><div class="course_xg"><ul class="xg_most"><li><span class="am-icon-eye"></span></li><li>'+jsonCell.watch+' </li></ul><div class="xg_small"><span>'+jsonCell.grade+' </span>分</div></div></div></a></div>';
                    console.log(outStr);
                    });
                    console.log(outStr);
                    $("#list").html(outStr);
                    console.log($("#list").html());
                    console.log("成功:搜索，发送并接受数据~");
                },
                error : function(){
                    console.log("服务器连接失败:搜索，发送并接受数据");
                }
            })
            return false;
        })         



</script>
</body>
</html>
