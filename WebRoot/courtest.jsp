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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>演示：jQuery实现的测试答题功能</title>
<link rel="stylesheet" type="text/css" href="css/test_styles.css" />
<link rel="stylesheet" href="css/amazeui.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng.css">
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

//获取当前页面的url,并发给服务器
    var canshu = window.location.search;
    canshu = canshu.split("?");
    canshu = canshu[1].split("=");
    canshu = canshu[1];
    var json = {};
    json.parameter = canshu;
//接受数据并显示
    var init;
    var init1='{"questions":[';
        $.ajax({
            url : 'CoursetestServlet',//阿彪servlet调用的名字
            type : 'POST',//一般用GET，密码什么比较保密的用POST
            data : json,
            success : function(data){
                <!-- console.log(data); -->
                var jsonArray = JSON.parse(data).list;
                $.each(jsonArray,function(i,value){
                    var jsonCell = value;
                    if(i==0){
                        init1 += '{"question":"<xmp>'+(i-0+1)+'、 '+jsonCell.question+'</xmp>","answers":["<xmp>A、 '+jsonCell.ansA+'</xmp>","<xmp>B、 '+jsonCell.ansB+'</xmp>","<xmp>C、 '+jsonCell.ansC+'</xmp>","<xmp>D、 '+jsonCell.ansD+'</xmp>"],"correctAnswer":'+jsonCell.creans+'}';
                    }
                    else{
                        init1 += ',{"question":"<xmp>'+(i-0+1)+'、 '+jsonCell.question+'</xmp>","answers":["<xmp>A、 '+jsonCell.ansA+'</xmp>","<xmp>B、 '+jsonCell.ansB+'</xmp>","<xmp>C、 '+jsonCell.ansC+'</xmp>","<xmp>D、 '+jsonCell.ansD+'</xmp>"],"correctAnswer":'+jsonCell.creans+'}';
                    }
                });
                init1 += ']}';
                <!-- console.log("最后1："+init1); -->
                init = init1;
                <!-- console.log("最后!!!："+init); -->
            },
            error : function(){
                console.log("服务器被天狗吃掉了，获取数据失败~");
                 //var data = '{"list":[{"question":"HTML 代码aaaa:","ansA":"aaa","ansB":"bbb ","ansC":"ccc","ansD":"ddd","cre_ans":"1"},{"question":"q.bbbbbb","ansA":"aaa","ansB":"bbb","ansC":"ccc","ansD":"ddd","cre_ans":"2"}]}';
            }
        });
    <!-- var init = JSON.parse(init1); -->
    <!-- var init = {}; -->
    <!-- console.log("最后："+init); -->
    <!-- init = init1; -->


window.onload=function() {
    console.log("最后2："+init);
    init = {"questions":[{"question":"<xmp>1、 关于HTML5说法正确的是：</xmp>","answers":["<xmp>A、 HTML5只是对HTML4的一个简单升级</xmp>","<xmp>B、 所有主流浏览器都支持HTML5</xmp>","<xmp>C、 HTML5新增了离线缓存机制</xmp>","<xmp>D、 HTML5主要是针对移动端进行了优化</xmp>"],"correctAnswer":3},{"question":"<xmp>2、 HTML5不支持的视频格式是：</xmp>","answers":["<xmp>A、 ogg</xmp>","<xmp>B、 mp4</xmp>","<xmp>C、 flv</xmp>","<xmp>D、 WebM</xmp>"],"correctAnswer":3},{"question":"<xmp>3、 不是HTML5特有的存储类型是：</xmp>","answers":["<xmp>A、 localStorage </xmp>","<xmp>B、 Cookie</xmp>","<xmp>C、 Application Cache</xmp>","<xmp>D、 sessionStorage</xmp>"],"correctAnswer":2},{"question":"<xmp>4、 以下不是HTML5的新增的标签是</xmp>","answers":["<xmp>A、 <bdi></xmp>","<xmp>B、 <xmp></xmp>","<xmp>C、 <command></xmp>","<xmp>D、 <dialog></xmp>"],"correctAnswer":2},{"question":"<xmp>5、 以下关于video说法正确的是：</xmp>","answers":["<xmp>A、 当前，video元素支持三种视频格式,其中WebM = 带有 Thedora 视频编码和 Vorbis 音频编码的 WebM 文件。</xmp>","<xmp>B、 source元素可以添加多个,具体播放哪个有浏览器决定。</xmp>","<xmp>C、 video内使用img展示有视频封面</xmp>","<xmp>D、 loop属性可以使媒介文件循环播放。</xmp>"],"correctAnswer":4},{"question":"<xmp>6、 关于html5说法正确的是：</xmp>","answers":["<xmp>A、 HTML5是在原有HTML上的升级版</xmp>","<xmp>B、 HTML可以不需要DTD</xmp>","<xmp>C、 没有<!DOCTYPE html>HTML5可以正常工作</xmp>","<xmp>D、 <output>是html5的新标签</xmp>"],"correctAnswer":4},{"question":"<xmp>7、 以下不是HTML5新特性的是：</xmp>","answers":["<xmp>A、 新的@font-face字体设置 </xmp>","<xmp>B、 新的离线存储</xmp>","<xmp>C、 新的音频、视频API</xmp>","<xmp>D、 新的内容标签</xmp>"],"correctAnswer":1},{"question":"<xmp>8、 关于应用缓存说法正确的是：</xmp>","answers":["<xmp>A、 FALLBACK:后退命令,优选使用缓存而不是网络更新</xmp>","<xmp>B、 NETWORK:不需要缓存命令</xmp>","<xmp>C、 CACHE :命令指出哪些文件需要被缓存</xmp>","<xmp>D、 所有manifest文件都以“CACHE MANIFEST”语句开始</xmp>"],"correctAnswer":1},{"question":"<xmp>9、 selection对象的哪个方法直接将用户选取的起点移到终点：</xmp>","answers":["<xmp>A、 selection.collapse();</xmp>","<xmp>B、 selection.containsNode();</xmp>","<xmp>C、 selection.collapseToStart ();</xmp>","<xmp>D、 selection.collapseToEnd();</xmp>"],"correctAnswer":4},{"question":"<xmp>10、 使用getCurrentPosition（）获取当前地理位置信息，返回error.PERMISSION_DENIED表示：</xmp>","answers":["<xmp>A、 用户拒绝了</xmp>","<xmp>B、 获取不到</xmp>","<xmp>C、 获取超时</xmp>","<xmp>D、 未知错误</xmp>"],"correctAnswer":1}]};
    $(function(){
    	$('#quiz-container').jquizzy({
            questions: init.questions
        });
        console.log("zhixingle2");
    });
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
