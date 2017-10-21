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
<link rel="stylesheet" href="css/dsbmlist_style.css">
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
                    <li class="active"><a href="dasaibaominglist.jsp">大赛通知</a></li>
                    <li><a href="shixunrenwulist.jsp">实训任务</a></li>
                    <li><a href="xueyuangushilist.jsp">学员故事</a></li>
                </ul>
            </div>
        </div>

        <div class="bzgg_list" style="display:block;">
            <div class="danlist">
                <img src="img/5.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>20</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=1">微软2017编程之美挑战赛</a></li>
                        <li>编程之美挑战赛是微软面向学生开展的大型编程比赛，自2012年以来已成功举办了五届比赛，先后有来自国内外77000+高校学生参加过编</li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=2">第十五届“挑战杯”全国大学生课外学术科技作品竞赛“一带一路”国际专项赛</a></li>
                        <li><p>为配合“一带一路”国家战略，呼应今年5月即将举办的“一带一路”国际合作高峰论坛，第十五届“挑战杯”全国大学生课外学术科技作品竞赛组委会决定举办“一带一路”国际专项赛，聚焦“经济”与“科技”主题，引导“一带一路”沿线高校大学生关注“一带一路”沿线发展所面临的现实问题，共同展示科技创新与青年智慧，共同畅想“一带一路”美好未来，共同增强对“一带一路”倡议的理解与支持，促进实现</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>19</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <img src="img/dsbm_listr1.jpg">
            </div>
            <div class="danlist">
                <img src="img/dsbm_listl2.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>17</li>
                        <li>Apr</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=3">第十届“英特尔杯” 全国大学生软件创新大赛</a></li>
                        <li>为了进一步提升大学生创新思维，全面推动软件行业发展，促进软件专业技术人才培养，为国家软件产业输出有创新能力和实践能力的高端人才</li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=4">2017华为“创想杯”校园开发者大赛</a></li>
                        <li>华为“创想杯”校园开发者大赛是一个激励大学生释放潜能、实现梦想的平台。大赛设有最佳应用、最佳主题两个类别，目前已经启动，总决赛和颁奖典礼将于2017年6月举行。<br>【申请步骤】<br>1、实名认证:点击右上方“注册”按钮→注册华为开发者联盟会员→实名认证并通</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>13</li>
                        <li>Mar</li>
                    </ul>
                </div>
                <img src="img/dsbm_listr2.jpg">
            </div>
            <div class="danlist">
                <img src="img/dsbm_listl3.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>3</li>
                        <li>Mar</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=5">2017华为软件精英挑战赛</a></li>
                        <li>2017华为软件精英挑战赛是华为公司面向全球大学生举办的大型软件竞赛，在软件精英挑战赛的舞台上，我们相信您可以充分展示软件设计与编</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="bzgg_list" style="display:none;">
            <div class="danlist">
                <img src="img/dsbm_listl4.jpg">
                <div class="danlist_up">
                    <ul>
                        <li>5</li>
                        <li>Jan</li>
                    </ul>
                </div>
                <div class="list_right">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=6">浙江省大学生多媒体作品设计竞赛</a></li>
                        <li>浙江省大学生多媒体作品设计竞赛[1]  ，由浙江省大学生竞赛委员会主办，浙江师范大学承办，竞赛办公室设在浙江师范大学，由浙江师范大学教</li>
                    </ul>
                </div>
            </div>
            <div class="shuanglist">
                <div class="list_left">
                    <ul>
                        <li><a href="dasaibaoming.jsp?iddsbm=7">2017年(第10届)中国大学生计算机设计大赛</a></li>
                        <li>根据国家有关高等学校创新能力提升计划、进一步深化高校教学改革、全面提高教学质量的精神，切实提高计算机教学质量，激励大学生学习计算机知识、技术、技能的兴趣和潜能，培养其创新创业能力及团队合作意识，运用信息技术解决实际问题的综合实践能力，以提高其综合素质，造就更多的德智体美全面发展、社会就业需要、创新创业型、实用型、复合型人才，教育部高等学校计算机类专业教学指导委员会、软件工</li>
                    </ul>
                </div>
                <div class="shuanglist_up">
                    <ul>
                        <li>15</li>
                        <li>Nov</li>
                    </ul>
                </div>
                <img src="img/dsbm_listr3.jpg">
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

    // 上下页收缩
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
