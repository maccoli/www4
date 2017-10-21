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
<link rel="stylesheet" href="css/sxrwlist_style.css">
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
                    <li class="active"><a href="shixunrenwulist.jsp">实训任务</a></li>
                    <li><a href="xueyuangushilist.jsp">学员故事</a></li>
                </ul>
            </div>
        </div>

        <div class="bzgg_list" style="display:block;">
            <div class="right_list">
                <div class="list_pic">
                    <img src="img/sxrw1.jpg">
                </div>
                <div class="list_text">
                    <div class="list_content">
                        <ul>
                            <li><a href="shixunrenwu.jsp?idsxrw=1">贷款超市（中介广告型）H5页面设计</a></li>
                            <li><p>需求简介:<br />H5页面收集整理各家金融机构的贷款产品的特性进行罗列，并可进行搜索。用户根据自身需要进行点击申请，申请页无需设计，为外链。</p><p>背景资料:</p></li>
                        </ul>
                    </div>
                    <div class="list_date">
                        <ul>
                            <li>27</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div> 
            <div class="right_list">
                <div class="list_pic">
                    <img src="img/sxrw2.jpg">
                </div>
                <div class="list_text">
                    <div class="list_content">
                        <ul>
                            <li><a href="shixunrenwu.jsp?idsxrw=2">PC软件官网升级重做</a></li>
                            <li><p>需求简介:<br />1、PC软件官网设计，要求简约，视觉搭配不要复杂，简单直接。&nbsp;<br />2、不影响文案逻辑的前提下，页面布局与层级设置可自由调整。&nbsp;<br />3、注重创意与布局协调感，与同类产品相比辨识度高！</li>
                        </ul>
                    </div>
                    <div class="list_date">
                        <ul>
                            <li>24</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right_list">
                <div class="list_pic">
                    <img src="img/sxrw3.jpg">
                </div>
                <div class="list_text">
                    <div class="list_content">
                        <ul>
                            <li><a href="shixunrenwu.jsp?idsxrw=3">舌尖上的幸福，谁来帮你实现？</a></li>
                            <li><p>以一个人的一天餐饮为主线，引出ABC公司不同食品饮料行业的产品和解决方案，来吸引相关企业购买自动化工业产品，同时也给大众用户进行一定的科普宣传。希望通过H5宣传进行互动传播，并收集客户信息。</p><p>背景资料:<br />相关产品北京资料请参考附件内容。企业产品相关链接：</p></li>
                        </ul>
                    </div>
                    <div class="list_date">
                        <ul>
                            <li>16</li>
                            <li>Apr</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right_list">
                <div class="list_pic">
                    <img src="img/sxrw4.png">
                </div>
                <div class="list_text">
                    <div class="list_content">
                        <ul>
                            <li><a href="shixunrenwu.jsp?idsxrw=4">实现超市管理系统</a></li>
                            <li><p>内容要求:<br />功能模块要求主要有如下几部分：进货管理模块、售货管理模块、仓库管理模块、快捷信息查询、系统设置、帮助等。<br />具体的要求功能描述如下：</li>
                        </ul>
                    </div>
                    <div class="list_date">
                        <ul>
                            <li>1</li>
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


</script>
</body>
</html>
