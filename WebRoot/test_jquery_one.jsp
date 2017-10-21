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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>测试</title>
<link rel="stylesheet" type="text/css" href="css/test_styles.css" />
<link rel="stylesheet" href="css/amazeui.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/nav_deng0.css">
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<style type="text/css">
    ul,li,html,body,h2,span{
        margin: 0;
        padding: 0;
        list-style-type:none;
      }
    body{
        background: url(img/999.png) repeat #f6f9ef;
        width: 100%;
        height: 100%;
    }
    .demo{ width:1000px; }
    xmp {
    white-space: pre-wrap;
    word-wrap: break-word;
    }
    a,a:link,a:hover{
        text-decoration: none;
    }
    .main-quiz-holder a:link,a:hover{
        color: #6C6C6C;
    }
    #main{
       width: 1000px; 
       margin: 60px auto 0px;
    }
    #back{
        width: 100%;
        height: 60px;
        line-height: 60px;
        cursor: pointer;
    }
        #back span{
            display: block;
            float: left;
            font-size: 20px;
            color: #223448;
        }
        #back span:nth-child(1){
            font-size: 40px;
            margin: 10px 1% 10px 0;
        }

</style>
</head>

<body>
<!-- 导航栏 -->
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
    <div id="back">
        <span class="am-icon-arrow-left"></span>
        <span>返回</span>
    </div>
    <div class="demo">
        <div id='quiz-container'></div>
    </div>
</div>

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/quiz.js"></script>
<script src="js/amazeui.min.js"></script>
<script>
var init={'questions':[{'question':'<xmp>1、 HTML 代码:  <p>one</p> <div><p>two</p></div> <p>three</p>  jQuery 代码:   $("div > p");  结果:</xmp>','answers':['<xmp>A、 [ <p>two</p> ] </xmp>','<xmp>B、 [ <p>one</p> ] </xmp>','<xmp>C、 [ <p>three</p> ] </xmp>','<xmp>D、 [ <div><p>two</p></div> ]</xmp>'],'correctAnswer':1},
         {'question':'<xmp>2、 HTML 代码: <div>DIV</div> <span>SPAN</span> <p>P</p>  jQuery 代码:  $("*")   结果:</xmp>','answers':['<xmp>A、 [ <div>DIV</div> ]</xmp>','<xmp>B、 [ <span>SPAN</span> ] </xmp>','<xmp>C、 [ <p>P</p> ]</xmp>','<xmp>D、 [ <div>DIV</div>, <span>SPAN</span>, <p>P</p> ]</xmp>'],'correctAnswer':4},
         {'question':'<xmp>3、 HTML 代码: <table>  <tr><td>Header 1</td></tr> <tr><td>Value 1</td></tr> <tr><td>Value 2</td></tr> </table>  jQuery 代码: $("tr:gt(0)")    结果:</xmp>','answers':['<xmp>A、 [<tr><td>Header 1</td></tr>]</xmp>','<xmp>B、 [ <tr><td>Value 1</td></tr>, <tr><td>Value 2</td></tr> ]</xmp>','<xmp>C、 [<tr><td>Value 2</td></tr>]</xmp>','<xmp>D、 [<td>Value 2</td>]</xmp>'],'correctAnswer':2},
         {'question':'<xmp>4、 HTML 代码:  <div>div</div> <p class="myClass">p class="myClass"</p> <span>span</span><p class="notMyClass">p class="notMyClass"</p> jQuery 代码:  $("div,span,p.myClass")  结果:</xmp>','answers':['<xmp>A、 [ <div>div</div>, <p class="myClass">p class="myClass"</p>, <span>span</span> ]</xmp>','<xmp>B、 [ <p class="myClass">p class="myClass"</p> ]</xmp>','<xmp>C、 [ <p class="notMyClass">p class="notMyClass"</p> ]</xmp>','<xmp>D、 [ <div>div</div> ]</xmp>'],'correctAnswer':1},
         {'question':'<xmp>5、 下面哪种不是jquery的选择器？</xmp>','answers':['<xmp>A、 基本选择器</xmp>','<xmp>B、 后代选择器</xmp>','<xmp>C、 类选择器</xmp>','<xmp>D、 进一步选择器</xmp>'],'correctAnswer':4},
         {'question':'<xmp>6、 当DOM加载完成后要执行的函数，下面哪个是正确的？</xmp>','answers':['<xmp>A、 jQuery(expression,[context])</xmp>','<xmp>B、 jQuery(html,[ownerDocument])</xmp>','<xmp>C、 jQuery(callback)</xmp>','<xmp>D、 jQuery(elements)</xmp>'],'correctAnswer':3},
         {'question':'<xmp>7、 有这样一个表单元素，想要找到这个hidden元素，下面哪个是正确的？</xmp>','answers':['<xmp>A、 visible</xmp>','<xmp>B、 hidden</xmp>','<xmp>C、 visible()</xmp>','<xmp>D、 hidden()</xmp>'],'correctAnswer':2},
         {'question':'<xmp>8、 如果想要找到一个表格的指定行数的元素，用下面哪个方法可以快速找到指定元素？</xmp>','answers':['<xmp>A、 text()</xmp>','<xmp>B、 get()</xmp>','<xmp>C、 eq()</xmp>','<xmp>D、 contents()</xmp>'],'correctAnswer':3},
         {'question':'<xmp>9、 在一个表单中，如果想要给输入框添加一个输入验证，可以用下面的哪个事件实现？</xmp>','answers':['<xmp>A、 hover(over ,out)</xmp>','<xmp>B、 keypress（fn）</xmp>','<xmp>C、 change()</xmp>','<xmp>D、 change(fn)</xmp>'],'correctAnswer':4},
		 {'question':'<xmp>10、 <a href="xxx.jpg" title="温家宝出席学校...">新闻</a>,获取<a>元素title的属性值。</xmp>','answers':['<xmp>A、 $("a").attr("title").val();</xmp>','<xmp>B、 $("#a").attr("title");</xmp>','<xmp>C、 $("a").attr("title");</xmp>','<xmp>D、 $("a").attr("title").value;</xmp>'],'correctAnswer':3}]};

$(function(){
	$('#quiz-container').jquizzy({
        questions: init.questions
    });
});

window.onload=function() {
    //点击back回到上一页
        var oBack=document.getElementById('back');
        oBack.onclick=function(){
            if(back_sure())
                window.history.back(-1);
        }
        function back_sure(){  
            var gnl=confirm("当前正在测试，确定要退出吗?");  
            if (gnl==true){  
                return true;  
            }
            else{  
                return false;  
            }  
        };
};
</script>

</body>
</html>
