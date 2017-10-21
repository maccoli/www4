      //获取当前页面的url,并发给服务器 -->
            var canshu = window.location.search;
            // console.log(canshu); -->
            canshu = canshu.split("?");
            // console.log(canshu); -->
            canshu = canshu[1].split("=");
            // console.log(canshu); -->
            canshu = canshu[1];
            // console.log(canshu); -->
            // alert(canshu); -->
            var json = {};
            json.parameter = canshu;
            var articletitle = "";
            $.ajax({
                url : 'xianshifx.share',
                type : 'POST',
                data : json,
                success : function(data){
                    console.log("分享数据"+data);
                    var jsonArray = JSON.parse(data).list;
                    var outStr  = "";
                    var outStr1  = "";
                    var outStr2  = "";
                    var outStr4 = '<div class="comment" user="self"><div class="comment-user"><a href="#"><img src="img/tx/t8.jpg"/></a><a href="#"><span class="user">浅伊Erin：</span></a></div><div class="comment-main"><div class="comment-text">核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代</div><div class="comment-date">2017-2-19 23:01:11<a class="comment-zan_youde" href="javascript:;" total="0" my="0">赞(0)</a></div></div></div>';
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr = jsonCell.articleCon;
                        outStr2 = '<h1>'+jsonCell.articleTitle+'</h1><h5><span>'+jsonCell.articleTime+'</span><span>浏览量：'+jsonCell.articleViews+'</span></h5>';
                        $("head title").text(jsonCell.articleTitle);     
                        outStr3 = '<a href="otherCenter.jsp?id='+jsonCell.writerId+'"><img src="img/tx/'+jsonCell.savedFileName+'"></a><span>'+jsonCell.writerName+'</span>';
                        
                        var time = jsonCell.articleTime.split("-");
                        if(time[0]<2018&&time[1]<5){
                            $("#jiapinlun").html(outStr4);
                        }
                        articletitle = jsonCell.articleTitle;
                    });
                    $("#fx_con").html(outStr);
                    $("#fx_title").html(outStr2);
                    $("#user_infor_con").html(outStr3);
                    $("#scwz").click(function(){
                        var json = {};
                        json.articleId = canshu;
                        json.articleTitle = articletitle;
                        $.ajax({
                            url : 'addarticle.coo',
                            type : 'GET',
                            data : json,
                            success : function(){
                                console.log("收藏成功~");
                            },
                            error : function(){
                                console.log("收失败~");
                            }
                        })
                    })
                },
                error : function(){
                
                    console.log("服务器被天狗吃掉了，获取数据失败~");
                }
            });

    window.onload = function(){
        var oBtn = document.getElementById("buttons");
        var aBtn = oBtn.getElementsByTagName("button");
        var aNum = oBtn.getElementsByClassName("number");

        // console.log(aNum[0].innerHTML); -->
        // console.log(aNum[1].innerHTML); -->
        // console.log(aNum[2].innerHTML); -->

        for(var i=0;i<aBtn.length;i++){
            aBtn[i].index=i;
            aBtn[i].disposable=0;
            aBtn[i].onclick=function(){
                if(this.disposable==0){
                    aNum[this.index].innerHTML=parseInt(aNum[this.index].innerHTML)+1;
                    this.disposable=1;
                    this.style.background="#ccffcc";
                }
                else if(this.disposable==1){
                    
                    return;
                }

            }
        }
    }

    function addloadEvent(func){
        var oldonload=window.onload;
        if(typeof window.onload !="function"){
            window.onload=func;
        }
        else{
            window.onload=function(){
                if(oldonload){
                    oldonload(); 
                }
                func();
            }
        }
    }
    addloadEvent(b);

    function b(){
        var pn=document.getElementById("pl");
        var lists=pn.children;
            function remove(node){
                node.parentNode.removeChild(node);
            }
            function reply1(){
                var textarea=document.getElementsByClassName("hf-text out")[0];
                var comment=document.getElementsByClassName("comment-list")[0];
                var aComment=comment.getElementsByClassName("comment");
                var div=document.createElement("div");
                div.className="comment";
                div.setAttribute("user","self");
                var html='<div class="comment-user">'+'<a href="'+'#'+'"><img src="'+$("#user img").attr("src")+'"/></a><a href="'+'#'+'"><span class="user">'+$("#user_nickName").text()+'：'+'</span></a></div><div class="comment-main"><div class="comment-text">'+textarea.value+'</div><div class="comment-date">'+getCurrentDate()+'<a class="comment-zan" href="javascript:;" total="0" my="0">赞(0)</a><a class="comment-dele" href="javascript:;">删除</a></div></div>';
                
                div.innerHTML=html;
                if(aComment.length>0)
                {
                    comment.insertBefore(div,aComment[0]);
                }
                else
                {
                    comment.appendChild(div);
                }
                
                textarea.value="";
                // 在form处加了return false;此处不用再加 -->
            }
        //回复里点赞 -->
            function praiseReply(el){
                //获取当前total值 也就是所有点赞数量 -->
                var total=parseInt(el.getAttribute("total"));
                //获取当前my值 我的点赞 -->
                var my=parseInt(el.getAttribute("my"));
                //创建新的total -->
                var newtotal;
                //判断my=0就是我准备要点赞 -->
                if(my==0){
                    //我点了赞总数量就要+1 -->
                    newtotal=total+1;
                    //更新total值 -->
                    el.setAttribute("total",newtotal);
                    //更新my值 -->
                    el.setAttribute("my",1);
                    //更新文字 -->
                    el.innerHTML="已赞("+newtotal+")";
                }
            }
        //删除节点 -->
            function operateReply(el){
                var comment=el.parentNode.parentNode.parentNode;
                remove(comment);
            }
        //遍历所有状态消息 -->
            for(var i=0;i<lists.length;i++){
                //全部事件代理 -->
                lists[i].onclick=function(e){
                    //获取当前点击事件 -->
                    var e=e||window.event;
                    var el=e.srcElement;
                    if(!el){
                        el=e.target;
                        //兼容火狐 -->
                    }
                    //判断点击的类名 -->
                    switch(el.className){
                       
                        case "dhuifu":
                        comeout();
                        break;
                        case "hf-btn out":
                        reply1();
                        break;
                        //每条评论中点赞 -->
                        case "comment-zan":
                        praiseReply(el);
                        break;
                        case "comment-zan_youde":
                        praiseReply(el);
                        break;
                        case "comment-dele":
                        operateReply(el);
                        break;
                    }
                }
            }
    //遍历结束 -->
    }; 



    