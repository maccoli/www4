<%@page import="com.www2.bean.Search"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
   <form action="SearchServlet" method="post">
   <input type="text" name="keyword">
   <input type="submit" value="搜索">
   </form>
   <%List<Search> searchs=(List<Search>)request.getAttribute("articles");
   List<Search> arts=(List<Search>)request.getAttribute("arts");
    %>
    <c:forEach var="search" items="${requestScope.articles}">
      <td>${search.vname}<br></td>
    </c:forEach>
      <c:forEach var="search" items="${requestScope.arts}">
      <td>${search.coarticle}<br></td>
    </c:forEach>
  </body>
</html>
