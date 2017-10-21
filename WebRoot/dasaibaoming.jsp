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
<link rel="stylesheet" href="css/amazeui.min.css">
<link rel="stylesheet" href="css/somecss.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel="stylesheet" href="css/dsbm_style.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<title>大赛报名</title>
<style type="text/css">

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
    <div id="bgpicture"></div>
    <div id="blackbg"></div>

    <div id="main">
        <div id="bzgg_menu">
            <div id="benzhangg">本站公告</div>
            <div id="options">
                <ul>
                    <li><a href="zhaopinxinxilist.jsp">招聘信息</a></li>
                    <li class="active"><a href="dasaibaominglist.jsp">大赛通知</a></li>
                    <li><a href="shixunrenwulist.jsp">实训任务</a></li>
                    <li><a href="xueyuangushilist.jsp">学员故事</a></li>
                </ul>
            </div>
        </div>
        <div id="bzgg_center">
            <div id="back">
                <span class="am-icon-arrow-left"></span>
                <span>返回</span>
            </div>
            <div id="article">
             
            </div>
                
        </div>
    </div>

<!-- 清除浮动 -->
    <div style="clear: both;"></div>
<!-- foot -->
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
 
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script type="text/javascript">
 window.onload=function ()
 {
    //点击back回到上一页
        var oBack=document.getElementById('back');
        oBack.onclick=function(){
            window.history.back(-1);
        }
 };


//获取当前页面的url,并发给服务器
    var canshu = window.location.search;
    canshu = canshu.split("?");
    canshu = canshu[1].split("=");
    canshu = canshu[1];
    var json = {};
    json.parameter = canshu;
//接受数据并显示
    //key1: item -文章标题,key2: time -文章时间, key3: browses -文章浏览量, key4: content -文章内容
        $.ajax({
            url : 'contest.nose',//阿彪servlet调用的名字
            type : 'POST',//一般用GET，密码什么比较保密的用POST
            data : json,
            success : function(data){
                var jsonArray = JSON.parse(data).list;
                var outStr  = "";//要打印到页面的数据
                $.each(jsonArray,function(i,value){
                    var jsonCell = value;
                    outStr += '<div id="article_top"><div id="at_title">'+jsonCell.item+'</div><div id="at_ul"><ul><li>'+jsonCell.time+'</li><li>浏览量：</li><li>'+jsonCell.browses+'</li></ul></div></div><div id="article_hg"></div><div id="article_content">'+jsonCell.content+'</div><div id="article_bottom"><ul><li class="addOne">我要参加</li></ul></div>';
                });
                $("#article").html(outStr);//最后，打印出来
            },
            error : function(){
                console.log("服务器被天狗吃掉了，获取数据失败~");
                // var data='{"list":[{"item":"大赛报名","time":"2017-12-12","browses":"14","content":"<p>我知道我说出这句话来说的时候肯定会招来嘲笑。微软竟然要开源 Windows？！</p><p>在这里我们一谈到 Windows，你可不要想到就是家家户户台式电脑打开后的那个桌面。这里的 Windows 系统是一个最核心的操作系统，它能够运行没有显示器的一些服务设备，比如「数据商店」或者「web 应用」。我们谈到的是核心中的核心，子集中的子集，一些基于用户的核心服务和一些远程管理工具。Windows，你可不要想到就是家家户户台式电脑打开后的那个桌面。这里的 Windows 系统是一个最核心的操作系统，它能够运行没有显示器的一些服务设备，比如「数据商店」或者「web 应用」。我们谈到的是核心中的核心，子集中的子集，一些基于用户的核心服务和一些远程管理工具。</p><p>为什么？因为微软已经在「主机服务竞赛」中败下阵来。</p><p>其实，就算是把核心的 Windows 产品免费分享出来了，微软仍然有大把的机会赚钱。集束型管理工具、监控、绩效插件、任何在 Windows 环境中衍生出来的工具都可以为它所用。企业级 IT 服务（这是微软一直以来擅长的）和奇妙灵活的云端服务（这是 Linux 一直以来擅长的）之间的界限正在不断消融。微软需要让整个程序开发界对它重拾信心，让他们相信 Windows 平台时至今日仍然是一个靠谱的选择，下一个 Twitter 或者 Youtube 一定会在这个平台上出现！</p><p>我知道我说出这句话来说的时候肯定会招来嘲笑。微软竟然要开源 Windows？！</p><p>在这里我们一谈到 Windows，你可不要想到就是家家户户台式电脑打开后的那个桌面。这里的 Windows 系统是一个最核心的操作系统，它能够运行没有显示器的一些服务设备，比如「数据商店」或者「web 应用」。我们谈到的是核心中的核心，子集中的子集，一些基于用户的核心服务和一些远程管理工具。</p><p>为什么？因为微软已经在「主机服务竞赛」中败下阵来。</p><p>其实，就算是把核心的 Windows 产品免费分享出来了，微软仍然有大把的机会赚钱。集束型管理工具、监控、绩效插件、任何在 Windows 环境中衍生出来的工具都可以为它所用。企业级 IT 服务（这是微软一直以来擅长的）和奇妙灵活的云端服务（这是 Linux 一直以来擅长的）之间的界限正在不断消融。微软需要让整个程序开发界对它重拾信心，让他们相信 Windows 平台时至今日仍然是一个靠谱的选择，下一个 Twitter 或者 Youtube 一定会在这个平台上出现！<a href= &quot;baidu.com &quot;>baidu</a></p>"}]}';
            
            }
        });


// 点赞按钮效果
     $(".addOne").click(function(){
        if($(this).attr('class') == "addOne"){
                $(this).text("已参加");
                $(this).css("background","#fcbe8d")
                $(this).addClass("added");//自增过了就加一个.added表示
            }
     });
</script>
</body>
</html>
