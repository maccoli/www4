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
<link rel="stylesheet" href="css/amazeui.min.css">
<link rel="stylesheet" href="css/somecss.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel="stylesheet" href="css/cbook_style.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<title>图书</title>
<style type="text/css">
    #book_cover{
        width: 1060px;
        height: 160px;
        background: url(img/999.png) left top #fdeded;
        float: right;
        margin-top: -60px;
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
    <div id="main">
        <div id="book_cover">
            <img src="book_infor/img/book_cover42.jpg">
        </div>

        <div id="waikuangshang"></div>

        <div id="waikuangxia">
            <h1>JavaScript高级程序设计（第3版）</h1>
        </div>

        <div id="gongnenglan">
            <ul>
                <li>豆瓣评分：</li>
                <li><span>9.3</span></li>
            </ul>
            <div id="download"><a href="book_infor/JavaScript高级程序设计（第3版）.pdf" download="book"><span class="am-icon-download download_button"></span></a><span>下载量(</span><span class="download_count">15</span><span>)</span></div>
        </div>
        
        <div id="jianjie_b">
            <ul>
                <li>简介:</li>
                <li><p>本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。 </p>
                </li>
            </ul>
        </div>

        <div id="contain">
            <div id="left">
                <div id="shidurenqun">
                    <ul>
                        <li>适读人群：</li>
                        <li><p>本书将下列三类人员作为目标读者:<br>
    (1)熟悉面向对象编程、经验丰富而又打算学习JavaScript的开发人员，JavaScript毕竟与Java, C++
等传统语言存在着诸多联系;<br>
    (2)有意提升自己网站和Web应用程序易用性的Web开发人员;<br>
    (3)希望全面深入地理解这门语言的初级davaScript开发人员。<br>
    此外，本书也适合熟悉下列相关技木的读者阅读:<br>
    1)Java<br>
    2) PHP<br>
    3)ASP.NET<br>
    4) HTML<br>
    5)CSS<br>
    6)XML<br>
    本书不适合没有计算机基础知识的初学者，也不适合只想为网站添加简单交互功能的读者。</p></li>
                    </ul>
                </div>

                <div id="pingjia">
                    <div id="pingjia_title">评价区</div>
                    <form id="pingjia_form">
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
                        <textarea name="txt" id="pj_text" clos="50" rows="7" warp="virtual" onblur="if(this.value=='') value='评价此课程对你的帮助...';" onclick="if(this.value=='说说这本书给你的帮助...')value='';">说说这本书给你的帮助...</textarea>
                        <input id="pj_submit" type="submit" value="我要评价">
                    </form>
                    <div id="list_content">
                        <div class="pingjia_list">
                            <div class="pingjia_list_hp">
                                <img src="img/user5_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="#">咚个隆咚强</a>
                                        <span>评分：<strong>9分</strong></span>
                                    </li>
                                    <li>
                                        书籍太多了,我们反而不能每本都详读。如果你需要全面的了解JavaScript,知道JavaScript的语法,DOM,正则表达式,事件,浏览器差异等等,那么仅仅看这本书就够了,剩下的就是需要一个api手册和不停的实践了。
                                    </li>
                                    <li>
                                        2017-04-21
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="pingjia_list">
                            <div class="pingjia_list_hp">
                                <img src="img/user3_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="#">浅伊_Erin</a>
                                        <span>评分：<strong>7分</strong></span>
                                    </li>
                                    <li>
                                        胜在够全面，但无论从细节方面和可读性方面都没有犀牛书好。尤其在对象的讲解上，和犀牛书差的不是一点半点。作用链倒是讲得比犀牛书简洁明了。这本书和Andrew S. Tanenbaum 那本《计算机网络》一样，在国内都是过誉了，原因大概是两本书正好出现在了同类优秀书籍在国内相对匮乏的时代。
                                    </li>
                                    <li>
                                        2017-04-20
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="pingjia_list">
                            <div class="pingjia_list_hp">
                                <img src="img/user1_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="#">阿水12344</a>
                                        <span>评分：<strong>8分</strong></span>
                                    </li>
                                    <li>
                                       如果说《javascript权威指南》是一本字典，那zakas这本《javascript高级程序设计》可以算是一本由浅入深的好读物。 如果入门js的话，我比较推荐这本，再搭配权威指南那本书，基本看完后，对js就有一定程度的深入了。 
                                    </li>
                                    <li>
                                        2017-04-19
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="pingjia_list">
                            <div class="pingjia_list_hp">
                                <img src="img/user4_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="#">独领江山一枝花</a>
                                        <span>评分：<strong>9分</strong></span>
                                    </li>
                                    <li>
                                        avaScript最基础的书籍，要看认真，慢慢地看，累计接近1000小时吧。而且对象与继承，性能优化，HTML5 api由于没有实践或缺乏代码阅读量导致看的很糊涂，不过以后可以遇到时再翻翻，或者看更专业的书.
                                    </li>
                                    <li>
                                        2017-04-17
                                </ul>
                            </div>
                        </div>
                
                    </div>
                </div>
            </div>
            <div id="right">
                <div class="right_title">相关图书推荐</div>
          	    <div class="right_hg"></div>
                <div class="right_list">
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover6.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="courseb_show_1.jsp">CSS揭秘</a></li>
                                <li>本书是一本注重实践的教程，作者为我们揭示了 47 个鲜为人知的 CSS 技巧，主要内容包括背景与边框、形状、 视觉效果、字体排印、用户体验、结构与布局、过渡与动画...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover2.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">JavaScript语言精粹</a></li>
                                <li>JavaScript 曾是“世界上最被误解的语言”，因为它担负太多的特性，包括糟糕的交互和失败的设计，但随着Ajax 的到来，JavaScript“从最受误解的编程语言演变...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover1.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">深入浅出Node.js</a></li>
                                <li>本书从不同的视角介绍了 Node 内在的特点和结构。由首章Node 介绍为索引，涉及Node 的各个方面，主要内容包含模块机制的揭示、异步I/O 实现原理的展现、异步...</li>
                            </ul>
                        </div>
                    </div>
                   

                </div>
            </div>
        </div>

    </div>

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

<script src="js/jquery.js"></script> 
<script src="js/getDate.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script type="text/javascript">
window.onload=function()
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
            oSpan.innerHTML = "<strong>" + (this.index) + "分</strong> " ;
        }
    }
    function fnPoint(iArg)
    {
        iScore = iArg || iStar;
        for (i = 0; i < aLi.length; i++) 
            aLi[i].className = i < iScore ? "on" : "";
    }

//点击评价，下面立即会出现评价内容
    var oInput1=document.getElementById('pj_submit');
    var oText1=document.getElementById('pj_text');
    var oDiv1=document.getElementById('list_content');
    
    oInput1.onclick=function ()
    {
        var oClass1=document.createElement('div');
        var aClass1=document.getElementsByClassName('pingjia_list');
        
        oClass1.className="pingjia_list";
        oClass1.innerHTML='<div class="pingjia_list_hp"><img src="'+$("#user_saveFileName img").eq(0).attr("src")+'"></div><div class="pingjia_list_content"><ul><li><a href="#">'+$("#user_nickName a").eq(0).text()+'</a><span>评分：'+oSpan.innerHTML+'</span></li><li>'+oText1.value+'</li><li>'+getCurrentDate()+'</li></ul></div>';
        
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
        oText1.value="说说这本书给你的帮助...";

        
      
        return false;  //阻止form表单的默认事件，提交上去，导致页面会刷新一次不会有评论出来
    };

};

// 点赞按钮效果
    function add(){
        $(".zan_addOne").click(function(){
            var y=this.innerHTML.match(/\d+/g);
            // console.log('当前是第+x'+'被点击'+'原本的值为'+y);
            // console.log($(this).attr('class'));
            if($(this).attr('class') == "zan_addOne"){
                $(this).text('赞('+(++y)+')');
                $(this).addClass("added");//自增过了就加一个.added表示
            }
        });
    }  
    add(); 

    $(".download_button").click(function(){
        var count1=$(".download_count").text();
        $(".download_count").text(++count1);
    }); 


</script>
</body>
</html>
