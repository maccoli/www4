﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
    <!-- 1/2、导航栏开始-->
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
        </div>
        <form>
            <input id="search-input" type="text" value="" placeholder="请输入搜索内容..." style="margin:15px 50px 10px 0px;"/>
        </form>
        <div id="log">
            <img src="img/logo1.png">
        </div>
    </div>
        <!-- 导航栏结束 -->
    
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
                    <span>(</span><span class="number" id="num_zan">100</span><span>)</span>
                </button> 
                <button class="btn" title="收藏量" id="sc_btn">
                    <span class="btn_logo glyphicon glyphicon-heart"></span>
                    <span>(</span><span class="number" id="num_sc" >200</span><span>)</span>
                </button>
                <button class="btn" title="不支持数">
                    <span class="btn_logo glyphicon glyphicon-thumbs-down"></span> 
                    <span>(</span><span class="number" id="num_cai">300</span><span>)</span>
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
    <script>
        
            var arttitle = "";
       //获取当前页面的url,并发给服务器
            var canshu = window.location.search;
            // console.log(canshu);
            canshu = canshu.split("?");
            // console.log(canshu);
            canshu = canshu[1].split("=");
            // console.log(canshu);
            canshu = canshu[1];
            // console.log(canshu);
            // alert(canshu);
            var json = {};
            json.parameter = canshu;
            $.ajax({
                url : 'showArticle',
                type : 'GET',
                data : json,
                success : function(data){
                    var jsonArray = JSON.parse(data).list;
                    var outStr  = "";
                    var outStr1  = "";
                    var outStr2  = "";
                    var outStr4 = '<div class="comment" user="self"><div class="comment-user"><a href="#"><img src="img/tx/t8.jpg"/></a><a href="#"><span class="user">浅伊Erin：</span></a></div><div class="comment-main"><div class="comment-text">核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代</div><div class="comment-date">2017-2-19 23:01:11<a class="comment-zan_youde" href="javascript:;" total="0" my="0">赞(0)</a></div></div></div>';
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr = jsonCell.aritcleCon;
                        outStr2 = '<h1>'+jsonCell.articleTitle+'</h1><h5><span>'+jsonCell.articleTime+'</span><span>浏览量：'+jsonCell.articleViews+'</span></h5>';
                        outStr3 = '<a href="#"><img src="img/tx/'+jsonCell.savedFileName+'"></a><span>'+jsonCell.nickname+'</span>';
                        var time = jsonCell.articleTime.split("-");
                        if(time[0]<2018&&time[1]<5){
                            $("#jiapinlun").html(outStr4);
                        }
                        arttitle = jsonCell.articleTitle;
                        $("head title").text(jsonCell.articleTitle);
                    });
                    $("#fx_con").html(outStr);
                    $("#fx_title").html(outStr2);
                    $("#user_infor_con").html(outStr3); 
                    $("#sc_btn").click(function(){
                        var json = {};
                        json.articleTitle = arttitle;
                        json.articleId = canshu;
                        console.log("json.articleTitle："+json.articleTitle+",json.articleId"+json.articleId);
                        $.ajax({
                            url : 'addarticle.coo',
                            type : 'GET',
                            data : json,
                            success : function(){
                                console.log("收藏成功~");
                            },
                            error : function(){
                                console.log("收藏失败");
                            }
                        })
                    })    
                },
                error : function(){
                    
                    console.log("服务器被天狗吃掉了，获取数据失败~");
                }
            });

    window.onload = function(){
        var oBtn = document.getElementById("buttons");
        var aBtn = oBtn.getElementsByTagName("button");
        var aNum = oBtn.getElementsByClassName("number")

        // console.log(aNum[0].innerHTML);
        // console.log(aNum[1].innerHTML);
        // console.log(aNum[2].innerHTML);

       <!--  for(var i=0;i<aBtn.length;i++){
           aBtn[i].index=i;
           aBtn[i].disposable=0;
           console.log(i);
           if(i!=1){
               aBtn[i].onclick=function(){
                   if(this.disposable==0){
                       aNum[this.index].innerHTML=parseInt(aNum[this.index].innerHTML)+1;
                       this.disposable=1;
                       this.style.background="#ccffcc";
                   }
                   else if(this.disposable==1){
                       return;
                   }
               }
           }
       } -->
    }

    function addloadEvent(func){
        var oldonload=window.onload;
        if(typeof window.onload !="function"){
            window.onload=func;
        }
        else{
            window.onload=function(){
                if(oldonload){
                    oldonload(); 
                }
                func();
            }
        }
    }
    addloadEvent(b);

    function b(){
        var pn=document.getElementById("pl");
        var lists=pn.children;
        //删除当前节点
            function remove(node){
                node.parentNode.removeChild(node);
            }
        //最外层评论框回复提交
            function reply1(){
                var textarea=document.getElementsByClassName("hf-text out")[0];
                var comment=document.getElementsByClassName("comment-list")[0];
                var aComment=comment.getElementsByClassName("comment");
                var div=document.createElement("div");
                div.className="comment";
                div.setAttribute("user","self");
                var html='<div class="comment-user">'+'<a href="'+'#'+'"><img src="'+$("#user_saveFileName img").eq(0).attr("src")+'"/></a><a href="'+'#'+'"><span class="user">'+$("#user_nickName a").eq(0).text()+'：'+'</span></a></div><div class="comment-main"><div class="comment-text">'+textarea.value+'</div><div class="comment-date">'+getCurrentDate()+'<a class="comment-zan" href="javascript:;" total="0" my="0">赞(0)</a><a class="comment-dele" href="javascript:;">删除</a></div></div>';
                // console.log('!!!'+$("#user_saveFileName img").eq(0).attr("src"));
                // console.log('!!'+$("#user_nickName a").eq(0).text());

                div.innerHTML=html;
                if(aComment.length>0)
                {
                    comment.insertBefore(div,aComment[0]);
                }
                else
                {
                    comment.appendChild(div);
                }
                
                textarea.value="";
                // 在form处加了return false;此处不用再加
            }
        //回复里点赞
            function praiseReply(el){
                //获取当前total值 也就是所有点赞数量
                var total=parseInt(el.getAttribute("total"));
                //获取当前my值 我的点赞
                var my=parseInt(el.getAttribute("my"));
                //创建新的total
                var newtotal;
                //判断my=0就是我准备要点赞
                if(my==0){
                    //我点了赞总数量就要+1
                    newtotal=total+1;
                    //更新total值
                    el.setAttribute("total",newtotal);
                    //更新my值
                    el.setAttribute("my",1);
                    //更新文字
                    el.innerHTML="已赞("+newtotal+")";
                }
            }
        //删除节点
            function operateReply(el){
                var comment=el.parentNode.parentNode.parentNode;
                remove(comment);
            }
        //遍历所有状态消息
            for(var i=0;i<lists.length;i++){
                //全部事件代理
                lists[i].onclick=function(e){
                    //获取当前点击事件
                    var e=e||window.event;
                    var el=e.srcElement;
                    if(!el){
                        el=e.target;//兼容火狐
                    }
                    //判断点击的类名
                    switch(el.className){
                       
                        case "dhuifu":
                        comeout();
                        break;
                        case "hf-btn out":
                        reply1();
                        break;
                        //每条评论中点赞
                        case "comment-zan":
                        praiseReply(el);
                        break;
                        case "comment-zan_youde":
                        praiseReply(el);
                        break;
                        case "comment-dele":
                        operateReply(el);
                        break;
                    }
                }
            }
    //遍历结束
    }; 



    
    </script>


</body>
</html>