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
<link rel='icon' href='img/logo.ico' type='image/x-ico' />
<link rel="stylesheet" href="css/amazeui.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel="stylesheet" href="css/zpxxlist_style.css">
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
                    <li class="active"><a href="zhaopinxinxilist.jsp">招聘信息</a></li>
                    <li><a href="dasaibaominglist.jsp">大赛通知</a></li>
                    <li><a href="shixunrenwulist.jsp">实训任务</a></li>
                    <li><a href="xueyuangushilist.jsp">学员故事</a></li>
                </ul>
            </div>
        </div>

        <div class="bzgg_list" style="display:block;">
            <div class="danlist">
                <img src="img/zpxx8.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>24</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li>
                          <a href="zhaopinxinxi.jsp?idzpxx=1">H5前端</a>
                        </li>
                        <li>杭州魔库科技有限公司<br>岗位职责：<br>1、负责魔库交互部分的前端设计，开发与实现<br>2、负责web端相关产品的
                        </li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=2">python开发工程师（实习生+地铁口）</a></li>
                        <li>杭州阿思拓信息科技有限公司<br>岗位职责：<br/>负责web网站python开发,维护<br/>任职要求：<br/>1.熟悉Python开发语言；</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>24</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <img src="img/zpxx2.jpg">
            </div>
            <div class="danlist">
                <img src="img/zpxx3.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>22</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=3">web前端开发工程师</a></li>
                        <li>浙江万克新能源科技有限公司<br>岗位职责：<br>1、负责网站整体页面代码规划和布局，保证网站页面表现层的整体性和可维护性；<br></li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=4">JAVA开发工程师</a></li>
                        <li>杭州数美科技有限公司<br>岗位描述：<br>1、参与云计算、大数据项目的大型应用系统产品的研发工作；<br>2、根据需求设计、开发、测试和集成软件功能组件；<br>3、撰写软件产品相关文档。</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>20</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <img src="img/zpxx4.jpg">
            </div>
            <div class="danlist">
                <img src="img/zpxx5.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>18</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=5">JAVA WEB</a></li>
                        <li>杭州爱拼机网络科技有限公司<br>岗位职责：<br>1) 精通Java Web开发相关技术，包括JSP, Sevlet, jdbc等<br>2) 熟悉J2EE架构和开发模式</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="bzgg_list" style="display:none;">
            <div class="danlist">
                <img src="img/zpxx6.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>18</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=6">Android技术实习生/双休</a></li>
                        <li>杭州中跃教育科技有限公司<br>岗位职责：<br>1．参与无线 Android 平台的设计。<br>2．参与代码的编写。</li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=7">安卓开发工程师</a></li>
                        <li>爱家乐联合控股有限公司<br>岗位职责：<br/>1 、协同产品经理进行基于Android系统平台的产品开发<br/>2 、根据项目任务计划, 带领团队完成软件编码和单元测试<br/>3 、参与软件的质量管理, 确保开发, 测试, 上线工作按时完成</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>17</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <img src="img/zpxx7.png">
            </div>
            <div class="danlist">
                <img src="img/zpxx1.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>5</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=8">大数据开发实习生/双休/五险一金</a></li>
                        <li>北京中软国际教育科技股份有限公司杭州分公司<br>任职要求：<br>1、大专及以上学历，条件优秀者可放宽要求<br></li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="zhaopinxinxi.jsp?idzpxx=9">MySQL数据库开发工程师</a></li>
                        <li>杭州笛佛软件有限公司<br>任职要求：<br>1.两年以上的Mysql数据库开发经验，了解关系数据库原理与设计，数据库基础知识扎实 ；<br>2.熟悉SQL语言，有一定数据库开发、架构或SQL调优经验；</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>21</li>
                        <li>Mar</li>
                    </ul>
                </div>
                <img src="img/zpxx9.jpg">
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
        <a onselectstart="return false;" style="-moz-user-select:none;color:#000;border-bottom: 2px solid #000;">下 一 页<span class="am-icon-long-arrow-right"></span></a>
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
      startMove(oDiv1,'left',-20);
      startMove(oDiv2,'right',-20);
    }

 }

//翻页设置

    $(function(){
        $('#previous_page').click(function(){
            $(".bzgg_list").eq(1).css("display","none");
            $(".bzgg_list").eq(0).css("display","block");
            $("#previous_page a").css("color","#ccc");
            $("#next_page a").css("color","#000");
            $("#previous_page a").css("border-bottom","2px solid #ccc");
            $("#next_page a").css("border-bottom","2px solid #000");
        });
        $('#next_page').click(function(){
            $(".bzgg_list").eq(0).css("display","none");
            $(".bzgg_list").eq(1).css("display","block");
            $("#next_page a").css("color","#ccc");
            $("#previous_page a").css("color","#000");
            $("#next_page a").css("border-bottom","2px solid #ccc");
            $("#previous_page a").css("border-bottom","2px solid #000");
        });


    });

</script>
</body>
</html>
