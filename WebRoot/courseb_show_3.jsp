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
        background: url(img/999.png) left top #f9f8e9;
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
            <img src="book_infor/img/book_cover72.jpg">
        </div>

        <div id="waikuangshang"></div>

        <div id="waikuangxia">
            <h1>Effective java 中文版（第2版）</h1>
        </div>

        <div id="gongnenglan">
            <ul>
                <li>豆瓣评分：</li>
                <li><span>9.1</span></li>
            </ul>
            <div id="download"><a href="book_infor/Effective Java中文版（第2版）.pdf" download="book"><span class="am-icon-download download_button"></span></a><span>下载量(</span><span class="download_count">19</span><span>)</span></div>
        </div>
        
        <div id="jianjie_b">
            <ul>
                <li>简介:</li>
                <li><p>本书介绍了在Java编程中78条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么，不应该做什么才能产生清晰、健壮和高效的代码。<br>
本书中的每条规则都以简短、独立的小文章形式出现，并通过例子代码加以进一步说明。本书内容全面，结构清晰，讲解详细。可作为技术人员的参考用书。 </p>
                </li>
            </ul>
        </div>

        <div id="contain">
            <div id="left">
                <div id="shidurenqun">
                    <ul>
                        <li>适读人群：</li>
                        <li><p>本书不是针对初学者的，读者至少需要熟悉Java程序设计语言。如果你连equals()、toString()、hashCode()都还不了解的话，建议先去看看那些优秀的Java入门书籍之后再回来阅读本书。如果你现在已经在Java开发方面有了一定经验，而且想更加深入地了解Java编程语言，成为一名更优秀、更高效的Java开发人员，那么，建议你用心地研读本书。</p></li>
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
                                        如果你使用刚刚学会的Java做了一个小应用程序，那么你就可以开始有选择地看这本书。书中分别对Java的不同特性分章节给予作者本人的建议。如果你还没有用到其中的某一特性，那么就没必要读相关的章节，跳过去。只有你经历过了，摔倒过了，困扰过了，你才会与书中的建议产生共鸣
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
                                        <span>评分：<strong>8分</strong></span>
                                    </li>
                                    <li>
                                        很早就读过，当时就知道这本书很好，可惜当时功力尚浅，没什么收获。但近日再读时，确实很有收获，可以说此书虽不是深入骨髓，但也算入木三分。新手勿动！
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
                                        <a href="#">独领江山一枝花</a>
                                        <span>评分：<strong>6分</strong></span>
                                    </li>
                                    <li>
                                       先说内容，翻译的java语言工具书，属于高阶教材。我们团队的新人几乎人手一册。虽然解决程序问题时抱佛脚有些滑稽，但是调通程序这个挠头的场合，有几次助手的确是查书找见的盲点。 纸质的差，有点离谱。薄不说，平滑度也不好，背后的字有些透过来。
                                    </li>
                                    <li>
                                        2017-04-19
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
                                        身为一个以Java为生的Coder，到现在才看这本书，说起来多少有点惭愧。买了中文版，看了几页后实在是看不懂，完全不知所云，没办法，只好看英文版的，于是历时一个月，看得我欲仙欲死，生不如死。。。不过，经典就是经典，收获良多，强烈推荐！
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
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover7.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">Java并发编程实战</a></li>
                                <li>本书深入浅出地介绍了Java线程和并发，是一本完美的Java并发参考手册。书中从并发性和线程安全性的基本概念出发，介绍了如何使用类库提供的基本并发构建块，用...</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tjbook_list">
                        <div class="tjbook_cover"><img src="book_infor/img/tjbook_cover8.jpg"></div>
                        <div class="tjbook_content">
                            <ul>
                                <li><a href="#">Java编程思想 （第4版）</a></li>
                                <li>本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级特性（...</li>
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
