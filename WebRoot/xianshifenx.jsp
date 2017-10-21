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
    <title>BOOTSTRAP框架</title>
    <meta charset="utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel='icon' href='img/logo.ico' type='image/x-ico' />
    <!-- 1/1、导航栏css导入开始-->
        <link rel="stylesheet" href="css/amazeui_deng.min.css">
        <link rel="stylesheet" href="css/nav_deng.css">
        <!-- 导航栏css导入结束--> 
    <link rel="stylesheet" href="css/share.css">



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
        <div id="searchcorn" style="margin:15px 50px 10px 0px;">
            <span class="am-icon-search am-icon-sm"></span>
        </div><a href="course_choose.jsp">
        <form>
            <input id="search-input" type="text" value="" placeholder="请输入搜索内容..." />
        </form></a>
        <div id="log" style="margin:-10px auto">
            <img src="img/logo1.png">
        </div>
    </div>
    
<!-- 文章主题 -->
    <!-- bar1、背景图 -->
        <div class="share_bgimg">
            <img src="img/share_bgimg.jpg">
        </div>
        <div class="user_infor">
            <div class="user_infor_con" id="user_infor_con">
                
            </div>
        </div>
    <!-- bar2、文章内容等 -->
        <div id="fx" >
            <div class="title" id="fx_title">
                
            </div>
            <div class="fx_con" id="fx_con">
              
            </div>
            <div class="sc" id="buttons">
                <button class="btn" title="点赞数">
                    <span class="btn_logo glyphicon glyphicon-thumbs-up"></span> 
                    <span>(</span><span class="number" id="num_zan">0</span><span>)</span>
                </button> 
                <button class="btn" title="收藏量" id="scwz">
                    <span class="btn_logo glyphicon glyphicon-heart"></span>
                    <span>(</span><span class="number" id="num_sc" >0</span><span>)</span>
                </button>
                <button class="btn" title="不支持数">
                    <span class="btn_logo glyphicon glyphicon-thumbs-down"></span> 
                    <span>(</span><span class="number" id="num_cai">0</span><span>)</span>
                </button> 
            </div>
        </div>

    <div id="pl">
        <div class="hfb">
            <div class="hf_title">评论区</div>
            <form onsubmit="return false;">
                <textarea type="text" class="hf-text out" autocomplete="off" maxlength="100"></textarea>
                <div class="hf_anniu">
                    <input class="hf-btn out" type="submit" value="评论">
                </div>
            </form>
        </div>
        <div class="comment-list" id="jiapinlun">
            <!-- 一条评论 -->
            
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

    <script src="js/jquery.js"></script>
    <script src="js/getDate.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- 1/3、导航栏js导入，之后要在window.onload执行nav_search();函数 -->
        <script src="js/nav_deng.js" type="text/javascript"></script>
        <!-- 导航栏js导入结束 -->
     <script src="js/xianshifenx.js" type="text/javascript"></script>



</body>
</html>