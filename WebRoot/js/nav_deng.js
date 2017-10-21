var useridid = "";

	//导航栏搜索设置
        function nav_search(){
                var oSearch=document.getElementById('searchcorn');
                var oInput=document.getElementById('search-input');

                oSearch.onmouseover=function (){
                    oInput.style.width='200px';
                    // oInput.style.color='#ccc';
                    console.log("oSearch-onmouseover");
                }
                oSearch.onmouseout=function (){
                    oInput.style.width='40px';
                    // oInput.style.color='#223448';
                    console.log("oSearch-onmouseout");
                }
                oInput.onmouseover=function (){
                    oInput.style.width='200px';
                    // oInput.style.color='#ccc';
                    console.log("oInput-onmouseover");
                }
                oInput.onmouseout=function (){
                    oInput.style.width='40px';
                    // oInput.style.color='#223448';
                    console.log("oInput-onmouseout");
                }
        }
        nav_search();

    //导航栏头像的显示
        //用户的头像saveFileName,用户的昵称nickName,用户编号userid
            $.ajax({
                url : 'daohang',
                type : 'POST',
                success : function(data){
                    console.log("个人资料:"+data);
                    console.log("加载个人头像等成功~");
                    var jsonArray = JSON.parse(data).list;
                    var outStr1 = "";
                    var outStr2 = "";
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        console.log($("#user").attr("class"));
                        if($("#user").attr("class")=="e dropdown"){
                            outStr1 = '<a href="newcenter6.jsp?id='+jsonCell.userid+'" id="user_saveFileName">'+'<img src="img/tx/'+jsonCell.savedFileName+'" >'+'</a>';
                            $("#user").html(outStr1);
                            useridid=jsonCell.userid;
                        }
                        else{
                            outStr1 = '<img src="img/tx/'+jsonCell.savedFileName+'" >';
                            $("#user_saveFileName").html(outStr1);
                            outStr2 = '<a href="newcenter6.jsp?id='+jsonCell.userid+'">'+jsonCell.nickname+'</a>';
                            $("#user_nickName").html(outStr2);
                            useridid=jsonCell.userid;
                        }
                    })
                },
                error : function(){
                    /*var data =' {"list" : [{"nickname":"阿水","savedFileName":"t1.jpg","id":"1"}]}';
                    var jsonArray = JSON.parse(data).list;
                    var outStr1 = "";
                    var outStr2 = "";
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr1 = '<img src="img/tx/'+jsonCell.savedFileName+'" >';
                        $("#user_saveFileName").html(outStr1);
                        outStr2 = '<a href="newcenter6.jsp?id='+jsonCell.id+'">'+jsonCell.nickname+'</a>';
                        $("#user_nickName").html(outStr2);
                    })*/
                    console.log("服务器被天狗吃掉了，加载个人头像等失败~");
                }
            })



//置顶按钮
				
$('#scrolltop').on('click', function() {
				      var $w = $(window);
				      $w.smoothScroll({position: 0});
				});
