<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
  </head>
  
  <body>
  <form action="uploadServlet" method="post">
      <select name="filePath" size=3>
      <option selected value="d:/HelloWorld.java">E.java
      <option value="d:/HelloWorld.java">aa.java
      </select>
      <br><input type = "submit" value="提交">
  </form>
  </body>
</html>
