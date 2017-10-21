<%@page import="com.www2.dao.BaseDaoImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import = "com.www2.bean.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>测试</title>
<link rel="stylesheet" type="text/css" href="css/test_styles.css" />
<link rel="stylesheet" href="css/amazeui.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<style type="text/css">
    ul,li,html,body,h2,span{
        margin: 0;
        padding: 0;
        list-style-type:none;
      }
    body{
        background: url(img/999.png) repeat #f6f9ef;
        width: 100%;
        height: 100%;
    }
    .demo{ width:1000px; }
    xmp {
    white-space: pre-wrap;
    word-wrap: break-word;
    }
    a,a:link,a:hover{
        text-decoration: none;
    }
    .main-quiz-holder a:link,a:hover{
        color: #6C6C6C;
    }
    #main{
       width: 1000px; 
       margin: 60px auto 0px;
    }
    #back{
        width: 100%;
        height: 60px;
        line-height: 60px;
        cursor: pointer;
    }
        #back span{
            display: block;
            float: left;
            font-size: 20px;
            color: #223448;
        }
        #back span:nth-child(1){
            font-size: 40px;
            margin: 10px 1% 10px 0;
        }

</style>
</head>

<body>
<!-- 导航栏 -->
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

<div id="main">
    <div id="back">
        <span class="am-icon-arrow-left"></span>
        <span>返回</span>
    </div>
    <div class="demo">
        <div id='quiz-container'></div>
    </div>
</div>

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/quiz.js"></script>
<script src="js/amazeui.min.js"></script>
<script>
var init={"questions":[{"question":"<xmp>1、 关于HTML5说法正确的是：</xmp>","answers":["<xmp>A、 HTML5只是对HTML4的一个简单升级</xmp>","<xmp>B、 所有主流浏览器都支持HTML5</xmp>","<xmp>C、 HTML5新增了离线缓存机制</xmp>","<xmp>D、 HTML5主要是针对移动端进行了优化</xmp>"],"correctAnswer":3},{"question":"<xmp>2、 HTML5不支持的视频格式是：</xmp>","answers":["<xmp>A、 ogg</xmp>","<xmp>B、 mp4</xmp>","<xmp>C、 flv</xmp>","<xmp>D、 WebM</xmp>"],"correctAnswer":3},{"question":"<xmp>3、 不是HTML5特有的存储类型是：</xmp>","answers":["<xmp>A、 localStorage </xmp>","<xmp>B、 Cookie</xmp>","<xmp>C、 Application Cache</xmp>","<xmp>D、 sessionStorage</xmp>"],"correctAnswer":2},{"question":"<xmp>4、 以下不是HTML5的新增的标签是</xmp>","answers":["<xmp>A、 <bdi></xmp>","<xmp>B、 <xmp></xmp>","<xmp>C、 <command></xmp>","<xmp>D、 <dialog></xmp>"],"correctAnswer":2},{"question":"<xmp>5、 以下关于video说法正确的是：</xmp>","answers":["<xmp>A、 当前，video元素支持三种视频格式,其中WebM = 带有 Thedora 视频编码和 Vorbis 音频编码的 WebM 文件。</xmp>","<xmp>B、 source元素可以添加多个,具体播放哪个有浏览器决定。</xmp>","<xmp>C、 video内使用img展示有视频封面</xmp>","<xmp>D、 loop属性可以使媒介文件循环播放。</xmp>"],"correctAnswer":4},{"question":"<xmp>6、 关于html5说法正确的是：</xmp>","answers":["<xmp>A、 HTML5是在原有HTML上的升级版</xmp>","<xmp>B、 HTML可以不需要DTD</xmp>","<xmp>C、 没有<!DOCTYPE html>HTML5可以正常工作</xmp>","<xmp>D、 <output>是html5的新标签</xmp>"],"correctAnswer":4},{"question":"<xmp>7、 以下不是HTML5新特性的是：</xmp>","answers":["<xmp>A、 新的@font-face字体设置 </xmp>","<xmp>B、 新的离线存储</xmp>","<xmp>C、 新的音频、视频API</xmp>","<xmp>D、 新的内容标签</xmp>"],"correctAnswer":1},{"question":"<xmp>8、 关于应用缓存说法正确的是：</xmp>","answers":["<xmp>A、 FALLBACK:后退命令,优选使用缓存而不是网络更新</xmp>","<xmp>B、 NETWORK:不需要缓存命令</xmp>","<xmp>C、 CACHE :命令指出哪些文件需要被缓存</xmp>","<xmp>D、 所有manifest文件都以“CACHE MANIFEST”语句开始</xmp>"],"correctAnswer":1},{"question":"<xmp>9、 selection对象的哪个方法直接将用户选取的起点移到终点：</xmp>","answers":["<xmp>A、 selection.collapse();</xmp>","<xmp>B、 selection.containsNode();</xmp>","<xmp>C、 selection.collapseToStart ();</xmp>","<xmp>D、 selection.collapseToEnd();</xmp>"],"correctAnswer":4},{"question":"<xmp>10、 使用getCurrentPosition（）获取当前地理位置信息，返回error.PERMISSION_DENIED表示：</xmp>","answers":["<xmp>A、 用户拒绝了</xmp>","<xmp>B、 获取不到</xmp>","<xmp>C、 获取超时</xmp>","<xmp>D、 未知错误</xmp>"],"correctAnswer":1}]};

$(function(){
	$('#quiz-container').jquizzy({
        questions: init.questions
    });
});

window.onload=function() {
    //点击back回到上一页
        var oBack=document.getElementById('back');
        oBack.onclick=function(){
            if(back_sure())
                window.history.back(-1);
        }
        function back_sure(){  
            var gnl=confirm("当前正在测试，确定要退出吗?");  
            if (gnl==true){  
                return true;  
            }
            else{  
                return false;  
            }  
        };
};
</script>

</body>
</html>
