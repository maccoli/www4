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
        background: url(img/999.png) left top #fbeaec;
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
            <img src="book_infor/img/book_cover82.jpg">
        </div>

        <div id="waikuangshang"></div>

        <div id="waikuangxia">
            <h1>Android软件安全与逆向分析</h1>
        </div>

        <div id="gongnenglan">
            <ul>
                <li>豆瓣评分：</li>
                <li><span>8.3</span></li>
            </ul>
            <div id="download"><a href="book_infor/Android软件安全与逆向分析.pdf" download="book"><span class="am-icon-download download_button"></span></a><span>下载量(</span><span class="download_count">7</span><span>)</span></div>
        </div>
        
        <div id="jianjie_b">
            <ul>
                <li>简介:</li>
                <li><p>本书由浅入深、循序渐进地讲解了Android 系统的软件安全、逆向分析与加密解密技术。包括Android软件逆向分析和系统安全方面的必备知识及概念、如何静态分析Android 软件、如何动态调试Android 软件、Android 软件的破解与反破解技术的探讨，以及对典型Android 病毒的全面剖析。</p>
                </li>
            </ul>
        </div>

        <div id="contain">
            <div id="left">
                <div id="shidurenqun">
                    <ul>
                        <li>适读人群：</li>
                        <li><p>本书适合所有Android 应用开发者、Android 系统开发工程师、Android 系统安全工作者阅读学习。</p></li>
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
                                <img src="img/user1_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="##">阿水12344</a>
                                        <span>评分：<strong>10分</strong></span>
                                    </li>
                                    <li>
                                        和不错的介绍Android逆向工程的书籍，条理清晰，实战性很强。对自己现在进行的任务很有帮助。虽然自己不是这个方向的大牛，但是确实觉得这款技术非常有趣！强烈推荐！
                                    </li>
                                    <li>
                                        2017-04-21
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="pingjia_list">
                            <div class="pingjia_list_hp">
                                <img src="img/user2_hp.jpg"></div>
                            <div class="pingjia_list_content">
                                <ul>
                                    <li>
                                        <a href="##">蓝胖子。</a>
                                        <span>评分：<strong>8分</strong></span>
                                    </li>
                                    <li>
                                        因为工作的缘故涉及到破解等方面的内容，所以快速的翻阅了大部分章节。应该说写的内容还算丰富，不过笔墨分配还可以斟酌。介绍的工具较多，需要参考其它资料文档，并且加以实例练习才能掌握。 某些章节还会随时研究。
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
                                        <a href="##">浅伊_Erin</a>
                                        <span>评分：<strong>8分</strong></span>
                                    </li>
                                    <li>
                                        我默默的说下，花了三个小时浏览了一遍~~本书讲的比较细，看得出作者试图从底层、从原理来说明一些问题。。但是估计考虑到整个书的定位上，所以系统机制、软件内部机理还是不是很多~~内容上有不小篇幅介绍了smali、dex、arm指令内容。。最后想说的是，本书是Android软件逆向、调试、分析的入门好书，值的本人这样菜鸟学习~~
                                    </li>
                                    <li>
                                        2017-04-20
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
                                        <a href="##">独领江山一枝花</a>
                                        <span>评分：<strong>7分</strong></span>
                                    </li>
                                    <li>
                                       对反编译和保护手段的介绍都无甚稀奇，对编译和安装等流程介绍也停留在代码流程的讲解上。关于 dalvik 指令 和 smali 的介绍还算殷实，需要的时候应该用的上。无论如何，只要签名抓牢，就还有最后的稻草。
                                    </li>
                                    <li>
                                        2017-04-19
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
                                        花了两天时间粗略的读了一遍。作者太厉害了！非常值得阅读并实践里面的例子
                                    </li>
                                    <li>
                                        2017-04-16
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
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover9.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#" style="font-size:12px;">Google Android SDK开发范例大全</a></li>
                                <li>本书主要以范例集的方式来讲述Android的知识点，详细介绍了开发Android的人机交互界面、Android常用的开发控件、Android手机收发短信等通信服务、开发...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover10.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">Android开发精要</a></li>
                                <li>本书从Android繁杂的源代码中抽取出了Android开发的“精华”和“要点”，剥离了大量琐碎的底层实现细节，进行了高度概括和总结，不仅能帮助开发者迅速从宏观...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover11.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">Android应用性能优化</a></li>
                                <li>本书主要介绍如何快速高效地优化应用，让应用变得稳定高效。你将学会利用Android SDK和NDK来混合或单独使用Java、C/C++来开发应用。</li>
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
