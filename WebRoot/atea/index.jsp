<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <frameset rows="120,*,30" cols="*" framespacing="0" frameborder="no" border="0">
	  <frame src="<%=path %>/atea/top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
	  <frame src="<%=path %>/atea/center.jsp" name="mainFrame" id="mainFrame" />
	  <frame src="<%=path %>/atea/down.jsp" name="bottomFrame" scrolling="no" noresize="noresize" id="bottomFrame" />
  </frameset>
</html>
