<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <script type="text/javascript">
           <s:if test="message!=null">
               alert("<s:property value='message'/>");     //该标签在作用域里面的映射的是usename 变量值
           </s:if>
           
           <s:if test="path!=null">
              document.location.href="<%=path%>/<s:property value='path'/>";
           </s:if>
       </script>
  </head>
  
  <body>
       
  </body>
</html>
