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
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<link rel="stylesheet" href="css/amazeui.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel="stylesheet" href="css/askq_style.css">
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
    <div id="main" class="clear">
        <div id="back">
            <span class="am-icon-arrow-left"></span>
            <span>返回</span>
        </div>
        <div id="question">
            <div class="head">
                <!-- <a href="#"><img src="img/user_hp1.jpg"></a>
                <a href="#">阿水12344</a> -->
            </div>
            <div class="content">
                
            </div> 
            <div class="good">
                <!-- <span class="date">2017-2-14</span>
                <a class="dhuifu" href="javascript:;">回答</a>
                <a class="dshoucang" href="javascript:;" my="0">收藏</a>
                <a class="dzan" href="javascript:;">赞</a> -->
            </div>
        <!-- 点赞后显示你赞了 -->
            <div class="people" total="0"><span class="am-icon-heart"></span></div>
            <!-- <div class="people" total="0" style="display: none;"></div>   -->
        <!-- 回复文本输入框 -->
            <div class="hfb" style="display:none;">
                <form onsubmit="return false;">
                    <textarea type="text" class="hf-text out" autocomplete="off" maxlength="100"></textarea>
                    <div class="hf_anniu">
                        <input class="hf-btn out" type="submit" value="回答">
                    </div>
                </form>
            </div>
            <div class="comment-list">
            <!-- 一条评论 -->
                <!-- <div class="comment" user="self">
                    <div class="comment-user">
                        <a href="#"><img src="img/userhp.png"/></a>
                        <a href="#"><span class="user">浅伊Erin：</span></a>
                    </div>
                    <div class="comment-main">
                        <div class="comment-text">
                            核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代
                        </div>
                        <div class="comment-date">
                            2017-2-19 23:01:11
                            <a class="comment-zan_youde" href="javascript:;" total="0" my="0">赞(0)</a>
                        </div>
                    </div>
                </div>
                -->
                
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
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/askq_js.js" type="text/javascript"></script>
<script src="js/getDate.js"></script>
<script type="text/javascript">

    //获取当前页面的url,并发给服务器
        //key1: theadp 提问的人头像  key2:tnickname  key3:twzheId   twtime   twcon   
        
        var canshu = window.location.search;
        canshu = canshu.split("?");
        canshu = canshu[1].split("=");
        canshu = canshu[1];
        var json1 = {};
        json1.parameter = canshu;
        $.ajax({
            url : 'xstw.video',
            type : 'GET',
            data : json1,
            success : function(data){
                console.log("提问内容获取成功~");
                var jsonArray = JSON.parse(data).list;
                var outStr1  = "";
                var outStr2  = "";
                var outStr3  = "";
                $.each(jsonArray,function(i,value){
                    var jsonCell = value;
                    outStr1 += '<a href="otherCenter.jsp?twzheId='+jsonCell.twzheId+'"><img src="img/tx/'+jsonCell.theadp+'"></a><a href="otherCenter.jsp?twzheId='+jsonCell.twzheId+'">'+jsonCell.tnickname+'</a>';
                    outStr2  = jsonCell.twcon;
                    outStr3 += '<span id="'+jsonCell.twzheId+'" class="date">'+jsonCell.twtime+'</span><a class="dhuifu" href="javascript:;">回答</a><a class="dshoucang" id="sc1" href="javascript:;" my="0">收藏</a><a class="dzan" href="javascript:;">赞</a>';
                });
                $(".head").html(outStr1);
                $(".content").html(outStr2);
                $(".good").html(outStr3);
            },
            error : function(){
                console.log("提问内容获取失败~");
                var data='{"list":[{"theadp":"t13.jpg","tnickname":"qianyi1","twzheId":"1","twtime":"2017-04-10","twcon":"本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。"}]}';
                var jsonArray = JSON.parse(data).list;
                var outStr1  = "";
                var outStr2  = "";
                var outStr3  = "";
                $.each(jsonArray,function(i,value){
                    var jsonCell = value;
                    outStr1 += '<a href="otherCenter.jsp?twzheId='+jsonCell.twzheId+'"><img src="img/tx/'+jsonCell.theadp+'"></a><a href="otherCenter.jsp?twzheId='+jsonCell.twzheId+'">'+jsonCell.tnickname+'</a>';
                    outStr2  = jsonCell.twcon;
                    outStr3 += '<span class="date">'+jsonCell.twtime+'</span><a class="dhuifu" href="javascript:;">回答</a><a class="dshoucang" href="javascript:;" my="0">收藏</a><a class="dzan" href="javascript:;">赞</a>';
                });
                $(".head").html(outStr1);
                $(".content").html(outStr2);
                $(".good").html(outStr3);
            }
        });

    // 回答接受已有的
        //replycon replyconid replytime replyid rnickname rheadp
        $.ajax({
            url:'xshuifu.video',
            type:'GET',
            data : json1,
            success:function(data){
                console.log("回答接受成功");
                var jsonArray = JSON.parse(data).list;
                $.each(jsonArray,function(i,value){
                    var outStr  = "";//要打印到页面的数据
                    var jsonCell = value;
                    outStr += '<div class="comment" user="self"><div class="comment-user"><a href="otherCenter.jsp?rid'+jsonCell.replyid+'"><img src="img/tx/'+jsonCell.rheadp+'"/></a><a href="otherCenter.jsp?rid'+jsonCell.replyid+'"><span class="user">'+jsonCell.rnickname+'</span></a></div><div class="comment-main"><div class="comment-text">'+jsonCell.replycon+'</div><div class="comment-date">'+jsonCell.replytime+'<a class="comment-zan_youde" href="javascript:;" total="0" my="0">赞(0)</a></div></div></div>';
                    if($(".comment").length>0)
                    {
                        $(outStr).insertBefore($(".comment").eq(0));
                    }
                    else
                    {
                        $(".comment-list").append(outStr);
                    }
                });
            },
            error:function(error){
                console.log("回答未接受成功");
                var data='{"list":[{"replyid":"1","rnickname":"qianyi1","rheadp":"t8.jpg","replytime":"2017-04-10","twzheId":"1","replycon":"注重技术原理剖析，深入JDK源码，辅以代核心知识点"}]}';
                var jsonArray = JSON.parse(data).list;
                $.each(jsonArray,function(i,value){
                    var outStr  = "";//要打印到页面的数据
                    var jsonCell = value;
                    outStr += '<div class="comment" user="self"><div class="comment-user"><a href="otherCenter.jsp?rid'+jsonCell.replyid+'"><img src="img/tx/'+jsonCell.rheadp+'"/></a><a href="otherCenter.jsp?rid'+jsonCell.replyid+'"><span class="user">'+jsonCell.rnickname+'</span></a></div><div class="comment-main"><div class="comment-text">'+jsonCell.replycon+'</div><div class="comment-date">'+jsonCell.replytime+'<a class="comment-zan_youde" href="javascript:;" total="0" my="0">赞(0)</a></div></div></div>';
                    if($(".comment").length>0)
                    {
                        $(outStr).insertBefore($(".comment").eq(0));
                    }
                    else
                    {
                        $(".comment-list").append(outStr);
                    }
                });
            }
        });
        //点击提交新的回答
        $(".hf-btn").click(function(){
            var twzheId=$(".good span").attr("id");
            console.log(twzheId);
            var replycon=$(".hf-text").val();
            console.log(replycon);
            var json2 = {};
            json2.twzheId = twzheId;
            json2.replycon = replycon;
            json2.parameter = canshu;
            console.log(json2.replycon);
            $.ajax({
                url:'huifu.video',
                type:'POST',
                data:json2,
                success:function(){
                    console.log("回答内容传输成功");
                },
                error:function(error){
                    console.log("回答内容未传输成功");
                }
            });
        });

        $("#sc1").click(function(){
            var twcon=$(".content").text();
            console.log("aaa");
            //$.ajax({
            //    url:'addquestion.coo',
            //    type:'GET',
            //    data:{
            //        twconid:canshu,
            //        twcon:twcon
            //    },
            //    success:function(){
            //        console.log("传输成功");
            //    },
            //    error:function(error){
            //        console.log("未传输成功");
             //   }
            //})
        });  


</script>
</body>
</html>
