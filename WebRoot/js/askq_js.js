//点击back回到上一页
    var oBack=document.getElementById('back');
    oBack.onclick=function(){
        window.history.back(-1);
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
        var pn=document.getElementById("question");
        var lists=pn.children;
        //删除当前节点
            function remove(node){
                node.parentNode.removeChild(node);
            }
        //上面的点赞
            function praisebox(el){
                //获取赞数量容器
                    var praise=document.getElementsByClassName("people")[0];
                //获取容器当前total值
                    var total=parseInt(praise.getAttribute("total"));
                //获取点击的innerHTML
                    var txt=el.innerHTML;
                //创建一个新的total存储用
                    var newtotal;
                //判断点击的文字内容
                    if(txt=="赞"){
                        //total值+1 因为我还没点击赞，所以要点击的时候就多了一个人 total+1
                        newtotal=total+1;
                        //判断赞数量 把相应文字放到赞容器里
                        praise.innerHTML=newtotal==1 ? '<span class="am-icon-heart"></span>我觉得很赞' : '<span class="am-icon-heart"></span>我和'+ total +'个人觉得很赞';
                        el.innerHTML="取消赞";
                    }
                    else{
                        //反之total值-1
                        newtotal=total-1;
                        praise.innerHTML=newtotal==0 ? "" : '<span class="am-icon-heart"></span>'+newtotal +'个人觉得很赞';
                        el.innerHTML="赞";
                    }
                //更新total值
                    praise.setAttribute("total",newtotal);
                //如果没有人点赞容器隐藏
                    praise.style.display=(newtotal==0) ? "none" : "block";
            }
        //最外层评论框回复提交
            function reply1(){
                var textarea=document.getElementsByClassName("hf-text out")[0];
                var comment=document.getElementsByClassName("comment-list")[0];
                var aComment=comment.getElementsByClassName("comment");
                var div=document.createElement("div");
                div.className="comment";
                div.setAttribute("user","self");
                var html='<div class="comment-user">'+'<a href="'+'#'+'"><img src="'+$("#user_saveFileName img").eq(0).attr("src")+'"/></a><a href="'+'#'+'"><span class="user">'+$("#user_nickName a").eq(0).text()+'</span></a></div><div class="comment-main"><div class="comment-text">'+textarea.value+'</div><div class="comment-date">'+getCurrentDate()+'<a class="comment-zan" href="javascript:;" total="0" my="0">赞(0)</a><a class="comment-dele" href="javascript:;">删除</a></div></div>';
                
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
                // 在form处加了return false;此处不用再加
            }
        //点击出现回答框，两次不出现
            function comeout(){
                var oHuifu=document.getElementsByClassName("hfb")[0];
                if(oHuifu.className=="hfb"){
                    oHuifu.style.display="block";
                    oHuifu.className="hfb out";
                }
                else{
                    oHuifu.style.display="none";
                    oHuifu.className="hfb";
                }
            }
        //回复里点赞
            function praiseReply(el){
                //获取当前total值 也就是所有点赞数量
                var total=parseInt(el.getAttribute("total"));
                //获取当前my值 我的点赞
                var my=parseInt(el.getAttribute("my"));
                //创建新的total
                var newtotal;
                //判断my=0就是我准备要点赞
                if(my==0){
                    //我点了赞总数量就要+1
                    newtotal=total+1;
                    //更新total值
                    el.setAttribute("total",newtotal);
                    //更新my值
                    el.setAttribute("my",1);
                    //更新文字 就是我点了后 文字就是取消赞了
                    el.innerHTML="取消赞("+newtotal+")";
                }else{
                    //反之-1
                    newtotal=total-1;
                    el.setAttribute("total",newtotal);
                    el.setAttribute("my",0);
                    el.innerHTML=(newtotal==0)?"赞(0)":"赞("+newtotal+")";
                }
            }
        //收藏
            function collocate(el){
                // var total=parseInt(el.getAttribute("total"));
                var my=parseInt(el.getAttribute("my"));
                var newtotal;
                if(my==0){
                    // newtotal=total+1;
                    // el.setAttribute("total",newtotal);
                    el.setAttribute("my",1);
                    el.innerHTML="已收藏";
                }
            }
        //操作回复
            function operateReply(el){
                //每条评论
                var comment=el.parentNode.parentNode.parentNode;
                //否则就是删除节点
                remove(comment);
            }
        //遍历所有状态消息
            for(var i=0;i<lists.length;i++){
                //全部事件代理
                lists[i].onclick=function(e){
                    //获取当前点击事件
                    var e=e||window.event;
                    var el=e.srcElement;
                    if(!el){
                        el=e.target;//兼容火狐
                    }
                    //判断点击的类名
                    switch(el.className){
                        //上面的点赞
                        case "dzan":
                        praisebox(el);
                        break;
                        case "dshoucang":
                        collocate(el);
                        break;
                        case "hf-btn out":
                        reply1();
                        break;
                        // 点击出现回答框，两次不出现
                        case "dhuifu":
                        comeout();
                        break;
                        //每条评论中点赞
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
    //遍历结束
    }; 
