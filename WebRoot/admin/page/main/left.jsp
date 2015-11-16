<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="admin/js/global/jquery.js"></script>
		<script type="text/javascript" src="admin/js/global/chili-1.7.pack.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.easing.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.dimensions.js"></script>
		<script type="text/javascript" src="admin/js/global/jquery.accordion.js"></script>
		<script language="javascript">
			jQuery().ready(function(){
				jQuery('#navigation').accordion({
					header: '.head',
					navigation1: true, 
					event: 'click',
					fillSpace: true,
					animated: 'bounceslide'
				});
			});
		</script>
		<style type="text/css">
		<!--
		body {
			margin:0px;
			padding:0px;
			font-size: 12px;
		}
		#navigation {
			margin:0px;
			padding:0px;
			width:147px;
		}
		#navigation a.head {
			cursor:pointer;
			background:url(admin/imgs/global/main_34.gif) no-repeat scroll;
			display:block;
			font-weight:bold;
			margin:0px;
			padding:5px 0 5px;
			text-align:center;
			font-size:12px;
			text-decoration:none;
		}
		#navigation ul {
			border-width:0px;
			margin:0px;
			padding:0px;
			text-indent:0px;
		}
		#navigation li {
			list-style:none; display:inline;
		}
		#navigation li li a {
			display:block;
			font-size:12px;
			text-decoration: none;
			text-align:center;
			padding:3px;
		}
		#navigation li li a:hover {
			background:url(admin/imgs/global/tab_bg.gif) repeat-x;
				border:solid 1px #adb9c2;
		}
		-->
		</style>

  </head>
  
  <body>
    <div  style="height:100%;">
  <ul id="navigation">
    <li> <a class="head">首页</a>
      <ul>
        <li><a href="../index/welcome.html" target="rightFrame">欢迎页</a></li>
        <li><a href="../index/modifyInfo.html" target="rightFrame">个人资料</a></li>
      </ul>
    </li>
    <li> <a class="head">用户</a>
      <ul>
        <li><a href="../member/showMember.html" target="rightFrame">会员管理</a></li>
		<li><a href="../member/showMembers.html" target="rightFrame">会员组管理</a></li>
        <li><a href="../member/adminAll.html" target="rightFrame">管理员（全站）</a></li>
		<li><a href="../member/adminThis.html" target="rightFrame">管理员（本站）</a></li>
        <li><a href="../member/player.html" target="rightFrame">角色管理</a></li>
		<li><a href="../member/log.html" target="rightFrame">后台操作日志</a></li>
        <li><a href="../member/loginSuccess.html" target="rightFrame">登录成功日志</a></li>
		<li><a href="../member/loginFailed.html" target="rightFrame">登录失败日志</a></li>
        <li><a href="Kinds.php" target="rightFrame">站内信息管理</a></li>
      </ul>
    </li>
    <li> <a class="head">辅助</a>
      <ul>
        <li><a href="../assist/comments.html" target="rightFrame">评论管理</a></li>
        <li><a href="../assist/vote.html" target="rightFrame">投票管理</a></li>
        <li><a href="../assist/gbook.html" target="rightFrame">留言管理</a></li>
        <li><a href="../assist/category.html" target="rightFrame">留言类别</a></li>
        <li><a href="../assist/messages.html" target="rightFrame">广告管理</a></li>
        <li><a href="../assist/insertion.html" target="rightFrame">广告版位</a></li>
        <li><a href="../assist/Blogroll.html" target="rightFrame">友情链接管理</a></li>
        <li><a href="../assist/BlogCate.html" target="rightFrame">友情链接类别</a></li>
      </ul>
    </li>
    <li> <a class="head">维护</a>
      <ul>
        <li><a href="../maintenance/project.html" target="rightFrame">专题管理</a></li>
        <li><a href="../maintenance/tagman.html" target="rightFrame">TAG管理</a></li>
         <li><a href="../maintenance/keyman.html" target="rightFrame">关键词管理</a></li>
        <li><a href="../maintenance/sensitive.html" target="rightFrame">敏感词管理</a></li>
         <li><a href="../maintenance/recovery.html" target="rightFrame">内容回收站</a></li>
      </ul>
    </li>
     <li> <a class="head">生成</a>
      <ul>
        <li><a href="../produce/home.html" target="rightFrame">首页静态化</a></li>
        <li><a href="../produce/column.html" target="rightFrame">栏目页静态化</a></li>
         <li><a href="../produce/content.html" target="rightFrame">内容页静态化</a></li>
        <li><a href="../produce/search.html" target="rightFrame">全文检索</a></li>
         <li><a href="../produce/collect.html" target="rightFrame">采集管理</a></li>
         <li><a href="../produce/history.html" target="rightFrame">采集历史纪录</a></li>
         <li><a href="../produce/plan.html" target="rightFrame">查看采集进度</a></li>
      </ul>
    </li>
    <li> <a class="head">配置</a>
      <ul>
        <li><a href="../configuration/whole.html" target="rightFrame">全局设置</a></li>
        <li><a href="../configuration/site.html" target="rightFrame">站点设置</a></li>
         <li><a href="../configuration/model.html" target="rightFrame">模型管理</a></li>
        <li><a href="../configuration/matter.html" target="rightFrame">内容类型</a></li>
         <li><a href="../configuration/ftp.html" target="rightFrame">FTP管理</a></li>
         <li><a href="../configuration/website.html" target="rightFrame">站点管理</a></li>
        </ul>
    </li>
     <li> <a class="head">统计</a>
      <ul>
        <li><a href="../statistics/1.html" target="rightFrame">会员注册统计</a></li>
        <li><a href="../statistics/2.html" target="rightFrame">内容统计</a></li>
         <li><a href="../statistics/3.html" target="rightFrame">评论统计</a></li>
        <li><a href="../statistics/4.html" target="rightFrame">留言统计</a></li>
         <li><a href="../statistics/5.html" target="rightFrame">PV统计</a></li>
         <li><a href="../statistics/6.html" target="rightFrame">独立IP统计</a></li>
          <li><a href="../statistics/7.html" target="rightFrame">独立访客统计</a></li>
        <li><a href="../statistics/8.html" target="rightFrame">人均浏览次数统计</a></li>
         <li><a href="../statistics/9.html" target="rightFrame">来访网站</a></li>
        <li><a href="../statistics/10.html" target="rightFrame">来访页面</a></li>
         <li><a href="../statistics/11.html" target="rightFrame">来访关键字</a></li>
         <li><a href="../statistics/12.html" target="rightFrame">受访页面</a></li>
          <li><a href="../statistics/13.html" target="rightFrame">地区分布</a></li>
        <li><a href="../statistics/14.html" target="rightFrame">流量初始化</a></li>
        </ul>
    </li>
    <li> <a class="head">版本信息</a>
      <ul>
        <li><a href="http://" target="_blank">by Jessica(Skiyo.Cn)</a></li>
      </ul>
    </li>
  </ul>
</div>
  </body>
</html>
