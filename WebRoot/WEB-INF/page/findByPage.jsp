<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'findByPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <table border="1">
   <tr>
    <td>ID</td>
    <td>用户名：</td>
    <td>密码：</td>
    <td>操作</td>
   </tr>
   <c:forEach var="flag" items="${pager.pageList}">
     <tr>
    <td>${flag.id}</td>
    <td>${flag.name}</td>
    <td>${flag.pwd}</td>
    <td>删除</td>
   </tr>
   </c:forEach>
   <tr>
     <td width=400 colspan="4">
     <pg:pager items="${pager.totalNum}" maxPageItems="3" maxIndexPages="5" url="account/findByPage" export="currentPageNo=pageNumber">
      <pg:first><a href="${pageUrl}">首页</a></pg:first>
      <pg:prev><a href="${pageUrl}">上一页</a></pg:prev>
      <pg:pages>
      <c:choose>
      <c:when test="${currentPageNo eq pageNumber}">
      <front color="red"> ${pageNumber} </front>
      </c:when>
       <c:otherwise><a href="${pageUrl}">${pageNumber}</a></c:otherwise>
      </c:choose>
   
      </pg:pages>
      <pg:next><a href="${pageUrl}">下一页</a></pg:next>
      <pg:last><a href="${pageUrl}">尾页</a></pg:last>
     </pg:pager>
     </td>
   </tr>
   </table>
  </body>
</html>
