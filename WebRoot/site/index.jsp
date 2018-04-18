<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>

	<link rel="stylesheet" href="<%=path %>/css/qiantai.css" type="text/css" charset="utf-8" />
	<script type="text/javascript">
        var url="<%=path %>/docAll.action";
        window.location.href=url;
	</script>
</head>

<body>
<div id="wrapper">
	<div id="header"></div>
	<div id="left">
		<jsp:include flush="true" page="/site/left.jsp"></jsp:include>
	</div>
	<div id="right">

	</div>
	<div class="clear"> </div>
	<div id="footer">
		<div id="copyright">
		<a href="<%=path %>/login.jsp">系统后台登录</a>
		</div>
		<div id="footerline"></div>
	</div>
</div>
</body>
</html>

