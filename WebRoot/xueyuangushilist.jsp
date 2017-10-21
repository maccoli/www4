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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel="stylesheet" href="css/xygslist_style.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' />
<title>本站公告</title>
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

        <div class="bzgg_list" style="display:block;">
            <div class="right_list">
                <div class="list_hp">
                    <a href="##">
                        <img src="img/user1_hp.jpg">
                        <div class="nicheng">阿水12344</div>
                    </a>
                </div>
                <div class="list_text">
                    <div class="left_yinghao"></div>
                    <div class="list_content">
                        <ul>
                            <li><a href="xueyuangushi.jsp?idxygs=1">浅谈我的前端学习</a></li>
                            <li>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;我开始接触前端是在一年前，那个时候对前端还完全不知，对前端的了解还是在学了一段时间的java以后，偶然在一个qq群里面看别人提起才开始关注前端的。那个时候还以为前端是一个和后端完全没什么关系的行业，直到我在网上了解了之后才发现当初的想法是有多么的无知。<br>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;后来我开始学习前端的东西，我发现前端的内容和后端正的很不一样。后端是专精，逻辑性</li>
                        </ul>
                    </div>
                    <div class="right_yinghao"></div>
                    <div class="list_date">
                        <ul>
                            <li>25</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div> 
            <div class="right_list">
                <div class="list_hp">
                    <a href="##">
                        <img src="img/user3_hp.jpg">
                        <div class="nicheng">浅伊_Erin</div>
                    </a>
                </div>
                <div class="list_text">
                    <div class="left_yinghao"></div>
                    <div class="list_content">
                        <ul>
                            <li><a href="xueyuangushi.jsp?idxygs=2">web前端学习心得</a></li>
                            <li>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;所谓行万里路，必先始于足下。刚开始学习WEB前端基础的时候，老师说，其实你们学的这个后面真正去工作的时候可能也不是很会用到，所以就有很多人会问，既然我们都用不到，那干嘛还学呀？其实，对于一个程序员来说，你不仅要有很好的后端专业能力，你还应当具备一定的前端素养，知道一些起码的前端知识。</li>
                        </ul>
                    </div>
                    <div class="right_yinghao"></div>
                    <div class="list_date">
                        <ul>
                            <li>20</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right_list">
                <div class="list_hp">
                    <a href="##">
                        <img src="img/user2_hp.jpg">
                        <div class="nicheng">蓝胖子。</div>
                    </a>
                </div>
                <div class="list_text">
                    <div class="left_yinghao"></div>
                    <div class="list_content">
                        <ul>
                            <li><a href="xueyuangushi.jsp?idxygs=3">关于java web后台开发的一点体会</a></li>
                            <li>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;java web开发分为前端与后台两个部分<br>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;这次项目目的是搭建一个学生课程设计作业提交系统（作业主要以压缩包形式上传下载，用户分为学生与老师两类，其中老师可以批量下载，并公布作业，ps：个人信息可进行修改）<br>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;而这次开发前台主要用到的是jsp</li>
                        </ul>
                    </div>
                    <div class="right_yinghao"></div>
                    <div class="list_date">
                        <ul>
                            <li>11</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right_list">
                <div class="list_hp">
                    <a href="##">
                        <img src="img/user5_hp.jpg">
                        <div class="nicheng">咚个隆咚强</div>
                    </a>
                </div>
                <div class="list_text">
                    <div class="left_yinghao"></div>
                    <div class="list_content">
                        <ul>
                            <li><a href="xueyuangushi.jsp?idxygs=4">Android开发历程</a></li>
                            <li><p>&nbsp; &nbsp; &nbsp;出来工作半年多了，没啥好交代的，就说说自己半年来的Android开发经历。</p><p> <strong>1.IDE</strong><strong>&nbsp;</strong>&nbsp; &nbsp;这半年来，从Eclipse到Android Studio，经历了两个IDE，在这里做一下简单的评价。<p>&nbsp; &nbsp; &nbsp;如果真要说，Android Studio是基本上大胜Eclipse的，至少Android Studio不会像Eclipse</li>
                        </ul>
                    </div>
                    <div class="right_yinghao"></div>
                    <div class="list_date">
                        <ul>
                            <li>2</li>
                            <li>Apr</li>
                        </ul>
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


    <div id="previous_page">
        <a onselectstart="return false;" style="-moz-user-select:none;color:#ccc;border-bottom: 2px solid #ccc;">上 一 页<span class="am-icon-long-arrow-right"></span></a>
    </div>
    <div id="next_page">
        <a onselectstart="return false;" style="-moz-user-select:none;color:#ccc;border-bottom: 2px solid #ccc;">下 一 页<span class="am-icon-long-arrow-right"></span></a>
    </div>

<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>  
<script src="js/jsmove.js"></script>
<script type="text/javascript">
window.onscroll=function ()
 {
    var oDiv1=document.getElementById('previous_page');
    var oDiv2=document.getElementById('next_page');
    var top = document.body.scrollTop||document.documentElement.scrollTop;
    
    if(top>=100&&top<=800)
    {
      startMove(oDiv2,'right',10);
      startMove(oDiv1,'left',10);
    }
    else
    {
      startMove(oDiv1, 'left',-20);
      startMove(oDiv2,'right',-20);
    }

}

//翻页设置
    // $(function(){
    //     $('#previous_page').click(function(){
    //         $(".bzgg_list").eq(1).css("display","none");
    //         $(".bzgg_list").eq(0).css("display","block");
    //         $("#previous_page a").css("color","#ccc");
    //         $("#next_page a").css("color","#000");
    //         $("#previous_page a").css("border-bottom","2px solid #ccc");
    //         $("#next_page a").css("border-bottom","2px solid #000");
    //     });
    //     $('#next_page').click(function(){
    //         $(".bzgg_list").eq(0).css("display","none");
    //         $(".bzgg_list").eq(1).css("display","block");
    //         $("#next_page a").css("color","#ccc");
    //         $("#previous_page a").css("color","#000");
    //         $("#next_page a").css("border-bottom","2px solid #ccc");
    //         $("#previous_page a").css("border-bottom","2px solid #000");
    //     });
    // });

</script>
</body>
</html>
