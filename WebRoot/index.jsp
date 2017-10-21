<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.www2.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Target</title>
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" href="css/somecss.css">
	<link rel="stylesheet" href="css/index_style.css">
 	<link rel='icon' href='img/logo.ico' type='image/x-ico' /> 
<style type="text/css">
	
</style>
</head>
<body>
<!-- 导航栏 -->
	<div id="nav">
		<div id="daohang">
			<span></span>
			<span></span>
			<span></span>
		</div>
		<div id="user">
			<a href="#" id="user_saveFileName"><img src="img/tx/moren.jpg"></a>
				<ul id="xlcd">
					<li id="user_nickName">

					</li>
					<li>	
						<a href="quitServlet">退出</a>
					</li>
				</ul>
		</div>
		<div id="searchcorn">
			<span class="am-icon-search am-icon-sm"></span>
		</div><a href="course_choose.jsp">
	    <form>
	    	<input id="search-input" type="text" value="请输入搜索内容..." onblur="if(this.value=='') value='请输入搜索内容...';" onclick="if(this.value=='请输入搜索内容...')value='';"/>
	    </form></a>
		<div id="log"><img src="img/logo1.png"></div>

	</div>

<!-- 导航菜单 -->
	<div id="menu">
			<ul>
				<li class="menu_list">学习</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">公告</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">分享</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
				<li class="menu_list">小组</li>
				<span class="menu_hg1" style="display: inline-block; background: rgba(1, 0, 1, 0); width: 1px;"></span>
			</ul>
	</div>

<!-- 轮播图 -->
	<div id="banner">
		<div class="pic">
			<ul>
				<li style="left:0px;">
					<a href="#"><img src="img/111.jpg"></a></li>
				<li>
					<a href="#"><img src="img/222.jpg"></a></li>
				<li>
					<a href="#"><img src="img/333.jpg"></a></li>
				<li>
					<a href="#"><img src="img/444.jpg"></a></li>
				<li>
					<a href="#"><img src="img/555.jpg"></a></li>
			</ul>
		</div>
		<nav class="nav-circlepop">
			<div class="prev">
				<span class="icon-wrap"></span>
			</div>
			<div class="next">
				<span class="icon-wrap"></span>
			</div>
		</nav>
		<div class="nav">
			<ul>
				<li class="bj"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>

<!-- 热门推荐 -->
	<div id="rmtj">
		<div id="rmtj_course">
			<div class="rmtj_course_list">
				<a href="coursev_show1.jsp">
					<div class="rmtj_course_list_img">
						<img src="img/2.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">HTML5基础一</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>18人已学习</li>
								<li>
									<span>9.5</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="coursev_show3.jsp">
					<div class="rmtj_course_list_img">
						<img src="img/1.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">初识jQuery</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>15人已学习</li>
								<li>
									<span>9.4</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="##">
					<div class="rmtj_course_list_img">
						<img src="img/3.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">JavaScript基础</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>14人已学习</li>
								<li>
									<span>9.2</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>
			<div class="rmtj_course_list">
				<a href="##">
					<div class="rmtj_course_list_img">
						<img src="img/4.jpg"></div>
					<div class="rmtj_course_list_con">
						<div class="rmtj_course_list_con_title">深入探索jQuery</div>
						<div class="rmtj_course_list_con_xq">
							<ul>
								<li>11人已学习</li>
								<li>
									<span>9.0</span>
									分
								</li>
							</ul>
						</div>
					</div>
				</a>
			</div>	
		</div>
		<div id="rmtj_more">
	    	more
	    	<a href="course_choose.jsp" style="display:none"></a>
	    </div>
	</div>

<!-- 四大模块 -->
	<div class="all_title">学习ING</div>
	<div id="sdmk">
	    <div id="sdmk_left"> 
	        <div class="left_content sdmkl_num">
	        	<div class="sdmk_corn"><span class="am-icon-html5" style="font-size:48px;"></span></div>
	        	<div class="sdmk_jianjie">前端开发，是网站的前台代码实现，包括基本的HTML和CSS以及JavaScript/ajax，现在最新的高级版本HTML5、CSS3，以及SVG等。</div>
	    	</div>
	    	<div class="left_content sdmkl_num">
	    		<div class="sdmk_corn"><span class="am-icon-mobile" style="font-size:60px;"></span></div>
	    		<div class="sdmk_jianjie">移动端开发，是指与服务器相对应，为客户提供本地服务的程序。一般安装在普通的客户机上，需要与服务端互相配合运行。</div>
	    	</div>  
	    </div>
	    <div id="sdmk_center">
	    	<div class="center_content" style="display:block;">
	          <div class="content_titile" style="width: 135px;">前端开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">HTML/CSS</a></li>
	              <li><a href="course_choose.jsp">JavaScript</a></li>
	              <li><a href="course_choose.jsp">HTML5</a></li>
	              <li><a href="course_choose.jsp">CSS3</a></li>
	              <li><a href="course_choose.jsp">jQuery</a></li>
	              <li><a href="course_choose.jsp">Boostrap</a></li>
	              <li><a href="course_choose.jsp">Node.js</a></li>
	              <li><a href="course_choose.jsp">Vue.js</a></li>
	              <li><a href="course_choose.jsp">AngularJS</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">基础</a></li>
	              <li><a href="course_choose.jsp">提高</a></li>
	              <li><a href="course_choose.jsp">图书</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 165px;">移动端开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">Android</a></li>
	              <li><a href="course_choose.jsp">iOS</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">基础</a></li>
	              <li><a href="course_choose.jsp">提高</a></li>
	              <li><a href="course_choose.jsp">图书</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 135px;">后台开发</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">C</a></li>
	              <li><a href="course_choose.jsp">C++</a></li>
	              <li><a href="course_choose.jsp">JAVA</a></li>
	              <li><a href="course_choose.jsp">PHP</a></li>
	              <li><a href="course_choose.jsp">Python</a></li>
	              <li><a href="course_choose.jsp">C#</a></li>
	            </ul>
	            <ul>
	             <span>类型：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">基础</a></li>
	              <li><a href="course_choose.jsp">提高</a></li>
	              <li><a href="course_choose.jsp">图书</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="center_content" style="display:none;">
	          <div class="content_titile" style="width: 100px;">数据库</div>
	          <div class="content_list">
	            <ul>
	              <span>分类：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">MySQL</a></li>
	              <li><a href="course_choose.jsp">Oracle</a></li>
	              <li><a href="course_choose.jsp">大数据</a></li>
	              <li><a href="course_choose.jsp">SQL Server</a></li>
	            </ul>
	            <ul>
	              <span>类型：</span>
	              <li><a href="course_choose.jsp">全部</a></li>
	              <li><a href="course_choose.jsp">基础</a></li>
	              <li><a href="course_choose.jsp">提高</a></li>
	              <li><a href="course_choose.jsp">图书</a></li>
	            </ul>
	          </div>
	        </div>    
	    </div>
	    <div id="sdmk_right">
	        <div class="right_content sdmkr_num">
	        	<div class="sdmk_corn"><span class="am-icon-desktop" style="font-size:40px;"></span></div>
	        	<div class="sdmk_jianjie">后台开发，后台就是通过一个做好的页面程序可以填加更新网站内容，在网站的页面上(也就是前台)显示。</div>
	    	</div>
	    	<div class="right_content sdmkr_num">
	    		<div class="sdmk_corn"><span class="am-icon-database" style="font-size:40px;"></span></div>
	    		<div class="sdmk_jianjie">数据库，是按照数据结构组织和管理数据的建立在计算机存储设备上的仓库，用户可对文件中的数据进行更新、删除等操作。</div>
	    	</div>
	    </div>
	</div>

<!-- 本站公告 -->
	<div class="all_title">本站公告</div>
	<div id="bzgg">
		<div id="bzgg_contain">
			<div id="bzgg_left">
				<ul>
					<li style="display:block;">
						<span class="am-icon-newspaper-o" style="font-size: 154px; margin: -12px 4%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-clock-o" style="font-size: 206px; margin: -54px 4%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-money" style="font-size: 162px; margin: -22px 5%;"></span>
					</li>
					<li style="display:none;">
						<span class="am-icon-user" style="font-size: 206px; margin: -54px 8%;"></span>
					</li>
				</ul>
			</div>
			<div id="bzgg_center">
				<ul>
					<li style="display:block;">
						<div class="bzgg_center_title bzggtype1"><a href="zhaopinxinxi.jsp?idzpxx=1">H5前端</a></div>
						<div class="bzgg_center_xg">9人已读 2017-04-24</div>
						<div class="bzgg_center_content"><p>岗位职责：1、负责魔库交互部分的前端设计，开发与实现2、负责web端相关产品的前端系统设计，开发与实现3、相关前端界面的编码和调试，定位和解决系统问题</p><p>任职要求：1、熟练掌握HTML/CSS3基础技能2、熟练掌握JavaScript（或者JQuery)脚本语言，Ajax、DOM等脚本技术3、熟悉W3C标准，对表现与数据分离能有自己的独到见解4、能站在用户体验，交互操作的角度上完成设计与开发5、善于沟通，懂得反馈7、至少了解一种服务器语言（Java,C#,PHP，VB等）</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title bzggtype2"><a href="dasaibaoming.jsp?iddsbm=1">第十五届“挑战杯”全国大学生课外学术科技作品竞赛</a></div>
						<div class="bzgg_center_xg">10人已读 2017-04-19</div>
						<div class="bzgg_center_content">具体内容：参赛作品围绕“一带一路”主题，针对“一带一路”沿线国家在经济和科技发展中面临的现实问题设计解决方案，进行技术开发，作品内容聚焦经济合作与发展、科技创新与共享两大方面。</p><p>经济发展与合作方面：在尊重国家主权和经济政策的基础上，可以就沿线国家间如何实现跨境贸易监管体系合作、如何实现跨国银行业务合作、如何实现跨境资本投资的监管、如何提高跨境资本流通的效率与安全、如何提高跨境贸易的效率与安全、如何进行跨境自贸区</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title bzggtype3"><a href="shixunrenwu.jsp?idsxrw=1">贷款超市（中介广告型）H5页面设计</a></div>
						<div class="bzgg_center_xg">6人已读 2017-04-27</div>
						<div class="bzgg_center_content"><p>需求简介:<br />H5页面收集整理各家金融机构的贷款产品的特性进行罗列，并可进行搜索。用户根据自身需要进行点击申请，申请页无需设计，为外链。</p><p>背景资料:<br />产品叫 &ldquo;现金大全&rdquo;，是为个人客户和中小企业主提供免费融资解决方案的网络平台。现金大全把贷款和互联网相结合，让资金需求方通过互联网去了解金融机构及贷款产品，并且通</p></div>
					</li>
					<li style="display:none;">
						<div class="bzgg_center_title bzggtype4"><a href="xueyuangushi.jsp?idxygs=1">浅谈我的前端学习心得</a></div>
						<div class="bzgg_center_xg">7人已读 2017-04-19</div>
						<div class="bzgg_center_content"><p>我开始接触前端是在一年前，那个时候对前端还完全不知，对前端的了解还是在学了一段时间的java以后，偶然在一个qq群里面看别人提起才开始关注前端的。那个时候还以为前端是一个和后端完全没什么关系的行业，直到我在网上了解了之后才发现当初的想法是有多么的无知。</p><p>后来我开始学习前端的东西，我发现前端的内容和后端正的很不一样。后端是专精，逻辑性和思维学相当强。而前端是广而宽泛，要学的知识很多，涉及的内容很多，但是真正</p></div>
					</li>
				</ul>
			</div>
			<div id="bzgg_right">
				<ul>
					<li style="color: #000;">01</li>
					<li style="color: rgba(1,0,1,0.4);">02</li>
					<li style="color: rgba(1,0,1,0.4);">03</li>
					<li style="color: rgba(1,0,1,0.4);">04</li>
				</ul>
				<div id="bzgg_right_shuxian"></div>
				<div id="bzgg_more">
					more
					<a href="zhaopinxinxilist.jsp" style="display:none"></a>
				</div>	
			</div>
		</div>
	</div>

<!-- 热门分享 -->
	<div class="all_title">热门分享</div>
	<div id="rmfx">
		<div id="rmfx_shuxian"></div>
		<div id="rmfx_center">
			<div id="rmfx_enter_article">
				<div class="rmfx_enter_article_list" style="display:block;">
					<div class="rmfx_enter_article_title">
						<a href="xianshifenx.jsp?idshare=13">JQUERY的父，子，兄弟节点查找方法总结</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>10</span>
						人已读
						<span>2017-05-05</span>
					</div>
					<div class="rmfx_enter_article_content">
						<P>jQuery.parent(expr)  找父亲节点，可以传入expr进行过滤，比如$("span").parent()或者$("span").parent(".class")jQuery.parents(expr),类似于jQuery.parents(expr),但是是查找所有祖先元素，不限于父元素jQuery.children(expr).返回所有子节点，这个方法只会返回直接的孩子节点，不会返回所有的子孙节点jQuery.contents(),返回下面的所有内容，包括节点和文本。这个方法和children()的区别就在于，包括空白文本，也会被作为一个jQuery对象返回，children()则只会返回节点jQuery.prev()，返回上一个兄弟节点，不是所有的兄弟节点jQuery.prevAll()，返回所有之前的兄弟节</P>
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="##">
							<img src="img/user3_hp.jpg"></a>
					</div>
				</div>
				<div class="rmfx_enter_article_list" style="display:none;">
					<div class="rmfx_enter_article_title">
						<a href="xianshifenx.jsp?idshare=16">GITHUB操作</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>5</span>
						人已读
						<span>2017-05-05</span>
					</div>
					<div class="rmfx_enter_article_content">
						1.创建一个Repository,创建一个名字，选择Public
						2.勾选Initialize this repository with a README
						3.选择Python,license选择APCHE2&nbsp;
						4.创建完毕后。在本地操作如下。
						5.本地克隆,创建一个目录，执行git clone [github地址]&nbsp;Cloning into 'peacetools'...remote: Counting objects: 5, done.remote: Compressing objects: 100% (4/4), done.remote: Total 5 (delta 0), reused 0 (delta 0), pack-reused 0Unpacking objects: 100% (5/5), done.把文件添加到代码库$ git add hello.py$ git commit -m &quot;comment&quot;git add是把想要提交的文件先提交到commit缓存中；git commit
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="##">
							<img src="img/user1_hp.jpg"></a>
					</div>
				</div>
				<div class="rmfx_enter_article_list" style="display:none;">
					<div class="rmfx_enter_article_title">
						<a href="xianshifenx.jsp?idshare=14">做完一个移动端项目的感想</a>
					</div>
					<div class="rmfx_enter_article_xg">
						<span>2</span>
						人已读
						<span>2017-05-05</span>
					</div>
					<div class="rmfx_enter_article_content">
						<p>任何事物都要从最简单、最基本的构架入手，理解复杂的。——接触学习新东西时的指导思路。做理论要做做想想，边停边走；做工程则要不断推进，因为不做不出来。工程就是靠时间堆出来的，不在于谁比谁聪明多少，而在于谁比谁用功了多少。做工程思路：不要挑刺钻牛角尖，能用就行。要实用主义而不是理想主义，忌追求完美(比如正确解调需要信噪比至少10dB，则前端的同步就无须追求在5dB下性能最佳)！该细则细，该粗则粗。不要死抠理论，太专注细节往往看不到整体(又如同步性能设计再好，解调不出正确数据也是白搭，还不如多分配些时间精力给解调模块)。不是做大</p>
					</div>
					<div class="rmfx_enter_article_fabuzhe">
						by
						<a href="##">
							<img src="img/user2_hp.jpg"></a>
					</div>
				</div>
			</div>
			<div id="rmfx_enter_option">
				<ul>
					<li style="background: rgba(153,204,255,0.7);"></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
		<div id="rmfx_img">
			<img src="img/yhfx1.jpg" style="display:block;">
			<img src="img/yhfx2.jpg" style="display:none;">
			<img src="img/yhfx3.jpg" style="display:none;">
		</div>
		<div id="rmfx_hengxian"></div>
		<div id="rmfx_more">
			more
			<a href="shares.jsp" style="display:none"></a>
		</div>
	</div>

<!-- 小组排名 -->
	<div class="all_title">小组排名</div>
	<div id="xzpm">
		<div id="xzpm_left">
			<div class="xzpm_left_img">
				<img src="img/tx/x22.jpg" style="display:block">		
				<img src="img/tx/x9.jpg" style="display:none">		
				<img src="img/tx/x19.jpg" style="display:none">
			</div>
		</div>
		<div id="xzpm_center">
			<div id="xzpm_center_no">NO.</div>
			<ul>
				<li class="xzpm_center_li2">1</li>
				<li class="xzpm_center_li1">2</li>
				<li class="xzpm_center_li1">3</li>
			</ul>
			<div id="xzpm_more">
				more
				<a href="teams.jsp"></a>
			</div>
		</div>
		<div id="xzpm_right">
			<div class="xzpm_right_contain">
				<div class="xzpm_right_contain_list" style="display:block">
					<div class="xzpm_right_contain_title"><a href="team1.jsp">攻城战队</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：四个怀揣着同样梦想的少年走到了一起，一步一步地，在梦的旅途上前进，虽然有时很慢，但却从不停下。我们不是神的孩子，但我们是有梦想的孩子。</div>
				</div>
				<div class="xzpm_right_contain_list" style="display:none">
					<div class="xzpm_right_contain_title"><a href="##">Thinking</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：爱笑、爱闹使我们的本性，但对于学习我们是认真的。我们虽然不能保证做到最好，但我们能做得更好。</div>
				</div>
				<div class="xzpm_right_contain_list" style="display:none">
					<div class="xzpm_right_contain_title"><a href="##">那些年的我们</a></div>
				    <div class="xzpm_right_contain_jianjie">简介：同一片天空，遇见，认识，陪伴，携手一起走过风雨，收获的是成长和友谊。</div>
				</div>	
			</div>
		</div>
	</div>

<!-- foot -->
	<div id="footer">
		<div id="footer_contain">
			<div id="footer_yqlj">
				友情链接：
				<a href="#">百度</a>
				<a href="#">慕课网</a>
				<a href="#">UI设计</a>
				<a href="#">网易云课堂</a>
				<a href="#">花瓣网</a>
				<a href="#">Bootstrap中文网</a>
			</div>
		</div>
	</div>

<script src="js/jquery.js"></script>
<script src="js/amazeui.min.js"></script> 
<script src="js/indexm_js.js"></script> 
<script type="text/javascript">

// 李晶开始1/2
	//导航栏头像的显示
        //用户的头像saveFileName,用户的昵称nickName,用户编号
            $.ajax({
                url : 'daohang',
                type : 'POST',
                success : function(data){
                    console.log("加载个人头像等成功~");
                    var jsonArray = JSON.parse(data).list;
                    var outStr1 = "";
                    var outStr2 = "";
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr1 = '<img src="img/tx/'+jsonCell.savedFileName+'" >';
                        $("#user_saveFileName").html(outStr1);
                        outStr2 = '<a href="newcenter6.jsp?id='+jsonCell.userid+'">'+jsonCell.nickname+'</a>';
                        $("#user_nickName").html(outStr2);
                    })
                },
                error : function(){
                    var data =' {"list" : [{"nickname":"阿水","savedFileName":"t1.jpg","id":"1"}]}';
                    var jsonArray = JSON.parse(data).list;
                    var outStr1 = "";
                    var outStr2 = "";
                    $.each(jsonArray,function(i,value){
                        var jsonCell = value;
                        outStr1 = '<img src="img/tx/'+jsonCell.savedFileName+'" >';
                        $("#user_saveFileName").html(outStr1);
                        outStr2 = '<a href="newcenter6.jsp?id='+jsonCell.userid+'">'+jsonCell.nickname+'</a>';
                        $("#user_nickName").html(outStr2);
                    })
                    console.log("服务器被天狗吃掉了，加载个人头像等失败~");
                }
            })
// 李晶结束

// 李晶开始2/2
			$("#user_saveFileName").mouseover(function(){
				$("#xlcd").css("display","block");
			});
			$("#user_saveFileName").mouseout(function(){
				$("#xlcd").css("display","none");
			});
			$("#xlcd").mouseover(function(){
				$("#xlcd").css("display","block");
			})
			$("#xlcd").mouseout(function(){
				$("#xlcd").css("display","none");
			})
// 李晶结束

//发送数据
	//热门推荐
		$('.rmtj_course_list a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("热门推荐成功~")
	            },
	            error : function(){
	                console.log("热门推荐服务器连接失败，数据更新失败")
	            }
	        });
        });
	//招聘信息
		$('.bzggtype1 a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("招聘信息成功~")
	            },
	            error : function(){
	                console.log("招聘信息服务器连接失败，数据更新失败")
	            }
	        });
        });
    //大赛报名
		$('.bzggtype2 a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("大赛报名成功~")
	            },
	            error : function(){
	                console.log("大赛报名服务器连接失败，数据更新失败")
	            }
	        });
        });
    //实训任务
		$('.bzggtype3 a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("实训任务成功~")
	            },
	            error : function(){
	                console.log("实训任务服务器连接失败，数据更新失败")
	            }
	        });
        });
	//学员故事
		$('.bzggtype4 a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("学员故事成功~")
	            },
	            error : function(){
	                console.log("学员故事服务器连接失败，数据更新失败")
	            }
	        });
        });
	//用户分享
		$('.rmfx_enter_article_title a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("用户分享成功~")
	            },
	            error : function(){
	                console.log("用户分享服务器连接失败，数据更新失败")
	            }
	        });
        });
	//用户分享
		$('.rmfx_enter_article_title a').click(function(){
            var canshu = window.location.search;
	        canshu = canshu.split("?");
	        canshu = canshu[1].split("=");
	        canshu = canshu[1];
	        var json = {};
	        json.parameter = canshu;
	        $.ajax({
	            url : 'aaa',
	            type : 'GET',
	            data : json,
	            success : function(){
	                console.log("用户分享成功~")
	            },
	            error : function(){
	                console.log("用户分享服务器连接失败，数据更新失败")
	            }
	        });
        });


</script>

</body>
</html>