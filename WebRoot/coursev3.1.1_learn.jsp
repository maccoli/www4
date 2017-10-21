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
<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<title>课程学习中</title>
<style type="text/css">
ul,li,video,html,body{
  margin: 0;
  padding: 0;
  font-family: '微软雅黑';
}
body{
    width: 100%;
    height: 100%;
}
a{
  text-decoration: none;
}
a:hover{
  text-decoration: none;
}
li{
  list-style: none;
}
/*开始*/
    #top{
    	width: 99%;
    	height: 60px;
    	margin: 60px 0px 0px 0.8%;
    }
        #back{
            height: 60px;
            line-height: 60px;
            cursor: pointer;
            float: left;
        }
            #back span{
                display: block;
                color: #5eb95e;
                font-size: 40px;
                margin: 10px 10px 10px 0;
            /*background: rgba(22,152,110,0.5);*/

            }
        #course_title{
        	height: 60px;
        	/*background: rgba(22,152,110,0.5);*/
        	float: left;
        	margin-left: 10px;
            line-height: 60px;
            font-size: 26px;
            font-weight: bold;
            letter-spacing: 2px;
        }
    #main{
    	width: 98%;
    	height: 600px;
    	margin: 5px auto 0px;
    }
    #vcourse{
        width: 70%;
        height: 100%;
        float: left;
    }

/*侧边栏*/
    #menu{
    	width: 28%;
    	height: 100%;
    	float: right;
    	background: rgba(225,225,225,0.2);
    }
    #menu_tab{
    	width: 100%;
    	height: 40px;
    	/*background: rgba(221,152,210,0.5);*/
    }
    #menu_tab ul li{
    	float: left;
    }
    #menu_tab li:nth-child(1),#menu_tab li:nth-child(3),#menu_tab li:nth-child(5){
    	width: 20%;
    	height: 32px;
    	text-align: center;
    	line-height: 32px;
    	letter-spacing: 0.3em;
    	font-weight: bold;
    	font-size: 18px;
    	margin: 4px;
    }
    #menu_tab li:hover{
      cursor: pointer;
    }
    #menu_tab li:nth-child(2),#menu_tab li:nth-child(4){
        background-color: #5eb95e;
        width: 1.5%;
        height: 8px;
        border-radius: 5px;
        margin-top: 17px;
    }
    .active1{
    	background-color: #5eb95e;
    	border-radius: 5px;
    	color: #fff;
    }
    #hg{
    	background-color: #dedede;
    	width: 67.3%;
    	height: 3px;
    	margin-left: 1%;
    	border-radius: 5px;
    }

/*目录*/
    #mul_c{
        width: 100%;
        margin-top: 5px;
    }
    #mul_c div{
        width: 98%;
        margin-left: 1%;
        height: 30px;
        padding-left: 10px;
        background: rgba(94,185,94,0.2);
        font-size: 15px;
        color:#223448;
        line-height: 30px;
        border-radius: 7px;
        font-weight: bold;
    }
    #mul_c ul li{
        width: 96%;
        height: 20px;
    /*  background: rgba(22,25,12,0.5);*/
        line-height: 20px;
        margin: 5px 0px 5px 3%;
        padding-left: 10px;
    }
    #mul_c ul li a{
        color: #000;
        font-size: 13px;
    }
    #mul_c ul li a:hover,#mul_c ul li:hover{
        background-color: #e6e6e6;
        /*color: #fff;*/
        border-radius: 5px;
        cursor: pointer;
    }
    #mul_c ul li span{
        float: right;
        margin-right: 5px;
    }

/*笔记,提问*/
    #bjtext,#twtext{
        width: 96%;
        height: 100px;
        border-radius: 5px 5px 0px;
        display: block;
        margin: 5px 1.95%;
        border: 1px solid #8a8a8a;
        box-shadow: 0 6px 4px -4px #cdcdcd;
        font-size: 14px;
        line-height: 10px;
        outline: none;
        padding: 10px;
        background: #fff;
    }
    #bjsubmit,#twsubmit{
        height: 30px;
        border-radius: 3px;
        display: block;
        color: #5eb95e;
        font-size: 13px;
        font-weight: bold;
        letter-spacing: 1px;
        box-shadow: 0 5px 4px -4px #8a8a8a;
        background-color: #fff;
        border: 1px solid #cdcdcd;
        cursor: pointer;
    }
    #bjsubmit{
        margin-left: 78%;
    }
    #twsubmit{
        margin-left: 75%;
    }
    .note_list,.tiwen_list{
        width: 100%;
        margin: 5px;
    }
    .notel_hp img,.tiwenl_hp img{
        width: 8.5%;
        height: 35px;
        float: left;
        border-radius: 50%;
        overflow: hidden;
    }
    .notel_content,.tiwenl_content{
        width: 87.5%;
        margin-left: 2%;
        float: left;
    }
    .notel_content li:nth-child(1),.tiwenl_content li:nth-child(1){
        width: 100%;
        height: 20px;
    }
    .notel_content li:nth-child(1) a,.tiwenl_content li:nth-child(1) a{
        font-size: 14px;
        font-weight: bold;
        color: #5eb95e;
    }
    .notel_content li:nth-child(2),.tiwenl_content li:nth-child(2){
        width: 100%;
        font-size: 12px;
        line-height: 16px;
        margin: 5px 0px; 
    }
    .notel_content li:nth-child(3),.tiwenl_content li:nth-child(3){
        width: 100%;
        height: 20px;
        font-size: 12px;
        color: #8a8a8a;
        line-height: 18px;
    }
    .notel_content li:nth-child(3) span,.tiwenl_content li:nth-child(3) span{
        float: right;
        height: 18px;
        font-size: 12px;
        color: #8a8a8a;
        line-height: 18px;
        margin-right: 10px;
    }
    .tiwenl_content li:nth-child(3) span a{
        color: #8a8a8a;
    }

    .choose_content{
        overflow-x:hidden;
        overflow-y:auto;
        width: 98%;
        height: 552px;
    }

    .zan_addOne,.sc_addOne{
        cursor: pointer;
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
    <div id="top">
        <div id="back">
            <span class="am-icon-arrow-left"></span>
        </div>
        <div id="course_title">认识jQuery</div>
    </div>
    <div id="main">
        <div id="vcourse">
            <video width="100%" controls>
                <source src="course_infor/3.1.1.mp4"  type="video/mp4">
            </video>
        </div>
        <div id="menu">
            <div id="menu_tab">
                <ul>
                    <li class="active1">目录</li>
                    <li></li>
                    <li>笔记</li>
                    <li></li>
                    <li>提问</li>
                </ul>
            </div>
            <div id="hg"></div>
            <div id="content">
                <div id="mul_c" class="choose_content" style="display:block;">
                    <div>第一章:jQuery简介</div>
                    <ul>
                        <li><a href="coursev3.1.1_learn.jsp">第一节:认识jQuery<span>03：17</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="coursev3.1.2_learn.jsp">第二节:引入jQuery的方法<span>03：32</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第三节:jQueryHelloWord体验<span>08：12</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                    </ul>
                    <div>第二章:jQuery语法</div>
                    <ul>
                        <li><a href="#">第一节:jQuery的基本语法（一）<span>05：03</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第二节:jQuery的基本语法（二）<span>03：41</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第三节:jQuery的基本语法（三）<span>04：15</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                    </ul>
                    <div>第三章:jQuery选择器与事件</div>
                    <ul>
                        <li><a href="#">第一节:jQuery选择器<span>06：03</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第二节:事件常用方法<span>04：28</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第三节:绑定、解除绑定事件<span>06：30</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第三节:事件目标与冒泡<span>09：10</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                        <li><a href="#">第三节:自定义事件<span>04：56</span><span class="am-icon-check-circle-o" style="padding:4px 0px;color: #8a8a8a;"></span></a></li>
                    </ul>
                    <div><a href="test_jquery_one.jsp" style="color:#223448;">本课程测试</a></div>
                   
                </div>
                <div class="choose_content" style="display:none;"></div>
                <div id="bij_c" class="choose_content" style="display:none;">
                    <form>
                        <textarea name="txt" id="bjtext" clos="50" rows="7" warp="virtual" onblur="if(this.value=='') value='记下此时顿悟吧...';" onclick="if(this.value=='记下此时顿悟吧...')value='';">记下此时顿悟吧...</textarea>
                        <input id="bjsubmit" type="submit" value="记笔记">
                    </form>
                    <div id="bij_list_content"> 
                        

                    </div>
                </div>
                <div class="choose_content" style="display:none;"></div>
                <div id="tiw_c" class="choose_content" style="display:none;">
                    <form>
                        <textarea name="txt" id="twtext" clos="50" rows="7" warp="virtual" onblur="if(this.value=='') value='知之为知之，不知为不知...';" onclick="if(this.value=='知之为知之，不知为不知...')value='';">知之为知之，不知为不知...</textarea>
                        <input id="twsubmit" type="submit" value="我要提问">
                    </form> 
                    <div id="tiw_list_content">
                        <div class="tiwen_list">
                            <div class="tiwenl_hp"><a href="#"><img src="img/userhp.png"></a></div>
                            <div class="tiwenl_content">
                                <ul>
                                    <li><a href="#">用户名Erin</a></li>
                                    <li>这个老师讲得太仔细了，我听了完全弄懂了这个老师讲得太仔细了，我听了完全弄懂了这个老师讲得太仔细了，我听了完全弄懂了这个老师讲得太仔细了，我听了完全弄懂了这个老师讲得太仔细了，我听了完全弄懂了</li>
                                    <li>2017-4-16<span><a href="#">查看或回复</a></span><span class="zan_addOne">赞(22)</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/nav_deng.js" type="text/javascript"></script>
<script src="js/getDate.js"></script>
<script type="text/javascript">
window.onload=function ()
{
    var oDiv1=document.getElementById('menu_tab');
    var aLi1=oDiv1.getElementsByTagName('li');
    var oDiv2=document.getElementById('content');
    var aDiv1=oDiv2.getElementsByClassName('choose_content');

    for(var i=0;i<aLi1.length;i=i+2)
      {
        aLi1[i].index=i;
        aLi1[i].onclick=function ()
        {
           for(var j=0;j<aLi1.length;j=j+2)
           {
             aLi1[j].className=' ';
             aDiv1[j].style.display='none';
           }
           this.className='active1';
           aDiv1[this.index].style.display='block';
        };
      }

    //点击back回到上一页
        var oBack=document.getElementById('back');
        oBack.onclick=function(){
            window.history.back(-1);
        } 

//点击记笔记，下面立即会出现内容
    var oInput1=document.getElementById('bjsubmit');
    var oText1=document.getElementById('bjtext');
    var oDiv1=document.getElementById('bij_list_content');
    
    oInput1.onclick=function ()
    {
        var oClass1=document.createElement('div');
        var aClass1=document.getElementsByClassName('note_list');
        // var nowDate=getCurrentDate();'+getCurrentDate()+'
        console.log(getCurrentDate());
        oClass1.className="note_list";
        oClass1.innerHTML='<div class="notel_hp"><a href="#"><img src="'+$("#user_saveFileName img").eq(0).attr("src")+'"></a></div><div class="notel_content"><ul><li><a href="#">'+$("#user_nickName a").eq(0).text()+'</a></li><li>'+oText1.value+'</li><li>'+getCurrentDate()+'<span class="zan_addOne">赞(0)</span></li></ul></div>';
        
        if(aClass1.length>0)
        {
            oDiv1.insertBefore(oClass1,aClass1[0]);
        }
        else
        {
            oDiv1.appendChild(oClass1);
        }
        // 清空评分和输入框

        oText1.value="记下此时顿悟吧...";

        add();//调用增加函数
  
        return false;  //阻止form表单的默认事件，提交上去，导致页面会刷新一次不会有评论出来
    };

//点击提问，下面立即会出现内容
    var oInput2=document.getElementById('twsubmit');
    var oText2=document.getElementById('twtext');
    var oDiv2=document.getElementById('tiw_list_content');
    
    oInput2.onclick=function ()
    {
        var oClass2=document.createElement('div');
        var aClass2=document.getElementsByClassName('tiwen_list');
        oClass2.className="tiwen_list";
        oClass2.innerHTML='<div class="tiwenl_hp"><a href="#"><img src="'+$("#user_saveFileName img").eq(0).attr("src")+'"></a></div><div class="tiwenl_content"><ul><li><a href="#">'+$("#user_nickName a").eq(0).text()+'</a></li><li>'+oText2.value+'</li><li>'+getCurrentDate()+'<span><a href="#">查看或回答</a></span><span class="zan_addOne">赞(0)</span></li></ul></div>';
        
        if(aClass2.length>0)
        {
            oDiv2.insertBefore(oClass2,aClass2[0]);
        }
        else
        {
            oDiv2.appendChild(oClass2);
        }
        // 输入框

        oText2.value="知之为知之，不知为不知...";

        add();//调用增加函数
  
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

//提问Ajax
    //接受的数据key1: twcon 笔记内容 ;key2: twzheId 用户ID ;key3: tnickname 用户昵称 ;key4: theadp 用户头像 ;key5: twconid 笔记ID ;key6: twtime 笔记提交时间
    var videoid=1;  

    $.ajax({
        url:'xianshitw.video',
        type:'GET',
        data:{
            videoid:videoid
        },
        success:function(data){
            console.log("提问接受成功");
            var jsonArray = JSON.parse(data).list;
            $.each(jsonArray,function(i,value){
                var outStr  = "";//要打印到页面的数据
                var jsonCell = value;
                console.log(jsonCell);
                outStr = '<div class="tiwen_list"><div class="tiwenl_hp"><a href="otherCenter.jsp?twzheid='+jsonCell.twzheId+'"><img src="img/tx/'+jsonCell.theadp+'"></a></div><div class="tiwenl_content"><ul><li><a href="otherCenter.jsp?twzheid='+jsonCell.twzheId+'">'+jsonCell.tnickname+'</a></li><li>'+jsonCell.twcon+'</li><li>'+jsonCell.twtime+'<span class="tiwenxq"><a href="askquestion.jsp?idtw='+jsonCell.twconid+'">查看或回复</a></span><span class="zan_addOne">赞(0)</span><></ul></div></div>';
                if($(".tiwen_list").length>0)
                {
                    $(outStr).insertBefore($(".tiwen_list").eq(0));
                }
                else
                {
                    $("#tiw_list_content").append(outStr);
                }
            });
        },
        error:function(error){
            console.log("提问未接受成功");
            var data='{"list":[{"twcon":"不是很懂","tnickname":"qianyi1","theadp":"t8.jpg","twtime":"2017-04-10","twzheId":"1"},{"twcon":"感觉很多都没弄懂","tnickname":"qianyi2","theadp":"t3.jpg","twtime":"2017-04-15","twzheId":"2"}]}';
            var jsonArray = JSON.parse(data).list;
            $.each(jsonArray,function(i,value){
                var outStr  = "";//要打印到页面的数据
                var jsonCell = value;
                outStr = '<div class="tiwen_list"><div class="tiwenl_hp"><a href="otherCenter.jsp?twzheid='+jsonCell.twzheId+'"><img src="img/tx/'+jsonCell.theadp+'"></a></div><div class="tiwenl_content"><ul><li><a href="otherCenter.jsp?twzheid='+jsonCell.twzheId+'">'+jsonCell.tnickname+'</a></li><li>'+jsonCell.twcon+'</li><li>'+jsonCell.twtime+'<span class="tiwenxq"><a href="askquestion.jsp?idtw='+jsonCell.twconid+'">查看或回复</a></span><span class="zan_addOne">赞(0)</span><></ul></div></div>';
                if($(".tiwen_list").length>0)
                {
                    $(outStr).insertBefore($(".tiwen_list").eq(0));
                }
                else
                {
                    $("#tiw_list_content").append(outStr);
                }
            });
        }
    });
    $("#twsubmit").click(function(){
        var twcon=$("#twtext").val();
        console.log(twcon);
        var json = {};
        json.twcon = twcon;
        json.videoid=videoid;
        console.log(videoid);

        $.ajax({
            url:'videotw.video',
            type:'POST',
            data:json,
            success:function(){
                console.log("提问内容传输成功");
            },
            error:function(error){
                console.log("提问内容未传输成功");
            }
        });
    });



//笔记Ajax
    //接受的数据key1: bijicon 笔记内容 ;key2: userId 用户ID ;key3: nickname 用户昵称 ;key4: headp 用户头像 ;key5: bijid 笔记ID ;key6: bijitime 笔记提交时间
    var videoid=1;

    $.ajax({
        url:'showbiji.bip',
        type:'GET',
        data:{
            videoid:videoid
        },
        success:function(data){
            var jsonArray = JSON.parse(data).list;
            $.each(jsonArray,function(i,value){
                var outStr  = "";//要打印到页面的数据
                var jsonCell = value;//指的是{"key1":"val1","key2":"val2","key3":"val3"}
                outStr = '<div class="note_list"><div class="notel_hp"><a href="#"><img src="img/tx/'+jsonCell.headp+'"></a></div><div class="notel_content"><ul><li><a href="#">'+jsonCell.nickname+'</a></li><li>'+jsonCell.bijicon+'</li><li>'+jsonCell.bijitime+'<span class="zan_addOne">赞(0)</span></li></ul></div></div>';//利用jsonCell.key1，jsonCell.key2,jsonCell.key3调用函数，并加入到要输出的html段落中
                if($(".note_list").length>0)
                {
                    $(outStr).insertBefore($(".note_list").eq(0));
                }
                else
                {
                    $("#bij_list_content").append(outStr);
                }
            });
        },
        error:function(error){
            console.log("未传输成功");
            // var data='{"list":[{"bijicon":"xxx","nickname":"qianyi","headp":"img/user1_hp.jpg","bijitime":"2017-04"},{"bijicon":"xxx","nickname":"qianyi","headp":"img/user1_hp.jpg","bijitime":"2017-04"}]}';
        }
    });

    $("#bjsubmit").click(function(){
        var bijicon=$("#bjtext").val();
        console.log(bijicon);
        var json = {};
        json.bijicon = bijicon;
        json.videoid=videoid;
        $.ajax({
            url:'addbiji.bip',
            type:'POST',
            data:json,
            success:function(){
                console.log("传输成功");
            },
            error:function(error){
                console.log("未传输成功");
            }
        });
    });

add();
 //试卷ajax
        // var canshu = window.location.search;
        // canshu = canshu.split("?");
        // canshu = canshu[1].split("=");
        // canshu = canshu[1];
        // var json = {};
        // json.parameter = canshu;
        // $.ajax({
        //     url : 'aaa',
        //     type : 'GET',
        //     data : json,
        //     success : function(){
        //         console.log("成功~")
        //     },
        //     error : function(){
        //         console.log("服务器连接失败，数据更新失败")
        //     }
        // });

</script>
</body>
</html>
