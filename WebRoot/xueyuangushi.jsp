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
<link rel="stylesheet" href="css/xygs_style.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<title>学员故事</title>
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
                    <li><a href="dasaibaominglist.jsp">大赛通知</a></li>
                    <li><a href="shixunrenwulist.jsp">实训任务</a></li>
                    <li class="active"><a href="xueyuangushilist.jsp">学员故事</a></li>
                </ul>
            </div>
        </div>
        <div id="bzgg_center">
            <div id="back">
                <span class="am-icon-arrow-left"></span>
                <span>返回</span>
            </div>
            <div id="ajxadata"></div>
           
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
    //key1: item -实训任务文章标题,key2: time -文章时间, key3: browses -文章浏览量, key4: content -文章内容, key5: likes -文章点赞量, key6: headp -文章相关用户头像, key7: writername -文章相关用户昵称
        $.ajax({
            url : 'sustory.nose',//阿彪servlet调用的名字
            type : 'POST',//一般用post
            data : json,
            success : function(data){
                var jsonArray = JSON.parse(data).list;
                var outStr  = "";//要打印到页面的数据
                $.each(jsonArray,function(i,value){
                    var jsonCell = value;
                    outStr += '<div id="article"><div id="article_top"><div id="at_title">'+jsonCell.item+'</div><div id="at_ul"><ul><li>'+jsonCell.time+'</li><li>浏览量：</li><li>'+jsonCell.browses+'</li></ul></div></div><div id="article_hg"></div><div id="article_content">'+jsonCell.content+'</div><div id="article_bottom"><ul><li class="addOne">点赞<span>'+jsonCell.likes+'</span></li></ul></div></div><div id="userinfor"><div id="userhp"><img src="'+jsonCell.headp+'"></div><div id="username">'+jsonCell.writername+'</div></div>';
                });
                $("#ajxadata").html(outStr);//最后，打印出来
            },
            error : function(){
                console.log("服务器被天狗吃掉了，获取数据失败~");
                // var data='{"list":[{"item":"求js任意值运动框架函数","time":"2017-12-12","browses":"14","content":"<p>的选择，下一个 Twitter 或者 Youtube 一定会在这个平台上出现！</p>","likes":"15","headp":"img/hp.jpg","writername":"浅伊Erin"}]}';
    
            }
        });


 // 点赞按钮效果
     $(".addOne").click(function(){
        x=$(this).index();
        var temp=$(".addOne span").eq(x).text();       
        if($(this).attr('class') == "addOne"){
                $(".addOne span").eq(x).text(++temp);
                $(this).addClass("added");//自增过了就加一个.added表示
            }
     });
    
</script>
</body>
</html>
