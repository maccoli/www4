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
        background: url(img/999.png) left top #fdeff8;
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
            <img src="book_infor/img/book_cover62.jpg">
        </div>

        <div id="waikuangshang"></div>

        <div id="waikuangxia">
            <h1>CSS揭秘</h1>
        </div>

        <div id="gongnenglan">
            <ul>
                <li>豆瓣评分：</li>
                <li><span>9.4</span></li>
            </ul>
            <div id="download"><a href="book_infor/css揭秘.pdf" download="book"><span class="am-icon-download download_button"></span></a><span>下载量(</span><span class="download_count">12</span><span>)</span></div>
        </div>
        
        <div id="jianjie_b">
            <ul>
                <li>简介:</li>
                <li><p>本书是一本注重实践的教程，作者为我们揭示了 47 个鲜为人知的 CSS 技巧，主要内容包括背景与边框、形状、 视觉效果、字体排印、用户体验、结构与布局、过渡与动画等。本书将带领读者循序渐进地探寻更优雅的解决方案， 攻克每天都会遇到的各种网页样式难题。 </p>
                </li>
            </ul>
        </div>

        <div id="contain">
            <div id="left">
                <div id="shidurenqun">
                    <ul>
                        <li>适读人群：</li>
                        <li><p>本书的读者对象为前端工程师、网页开发人员。这本书的主要目标读者是正在由中级向高级进阶的CSS开发者。我们将跳过基础入门部分，直接探索现代CSS特性所针对的更高级的应用场景， 并将它们融会贯通。已经彻底掌握了CSS2.1，并有数年的实践经验。已经在书里或在网上了解过最流行的 CSS3 特性都有哪些，并且已经亲手尝试过——哪怕只是在自己的小项目里。知道SVG，以及它的用途。你可以读懂简单的、原生的 JavaScript 代码，比如创建元素，操作 它们的属性，把它们添加进文档，等等。 </p></li>
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
                                <img src="img/user2_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="#">蓝胖子。</a>
                                        <span>评分：<strong>9分</strong></span>
                                    </li>
                                    <li>
                                        每当我读到 Lea Verou 的文章时，总能收获新技能。这本《CSS揭秘》也不例外。这本书经过了精心 编排，把丰富的经验和技巧分解为一篇篇的短文，易读易懂。尽管书中的部分内容颇具前瞻性，但大多数 知识还是极为实用的，我在自己的项目中就用到了很多。
                                    </li>
                                    <li>
                                        2017-04-21
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
                                        <span>评分：<strong>10分</strong></span>
                                    </li>
                                    <li>
                                        我一直以为我对 CSS 的理解已经达到相当高的层次了，直到我读到了 Lea Verou 的这本书。如果你 希望把自己的 CSS 技能提升到一个新的段位，那这本书正是不二之选。
                                    </li>
                                    <li>
                                        2017-04-21
                                    </li>
                                </ul>
                            </div>
                        </div>
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
                                        《CSS 揭秘》是迄今为止我在这个领域里读到的最具专业性的书。或许你曾以为 CSS 这门语言简单 无奇，但 Lea 已将它的疆域拓展为如此广袤的一片天地，令人叹为观止。这本书显然不适合初学者，但我 会强烈推荐给每一位自信精通 CSS 的开发者。
                                    </li>
                                    <li>
                                        2017-04-19
                                    </li>
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
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover4.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="courseb_show_2.jsp">JavaScript高级程序设计</a></li>
                                <li>全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单...</li>
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
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover3.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">前端架构设计</a></li>
                                <li>本书展示了一名成熟的前端架构师对前端开发全面而深刻的理解。作者结合自己在Red Hat公司的项目实战经历，探讨了前端架构原则和前端架构的核心内容，包括工作...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover5.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">CSS实战手册（第2版）</a></li>
                                <li>本书从介绍最基本的CSS知识开始，到建立用于打印网页的CSS和改进你的CSS习惯的最佳实践。将关于CSS的选择器、继承、层叠、格式化、边距、填充、边框、图片...</li>
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
