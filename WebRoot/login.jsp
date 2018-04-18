<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>《Java程序设计》在线教学平台</title>
    <STYLE type=text/css>
        BODY{TEXT-ALIGN: center;padding-bottom:0px; background-size:cover;margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px}
        div,p,img,form,input,label,span,h3{margin:0;padding:0;}
        h3{color:#ACACAC; float: left; font-family:Microsoft JhengHei;}
        A:link {
            COLOR: #000000; TEXT-DECORATION: none
        }
        A:visited {
            COLOR: #000000; TEXT-DECORATION: none
        }
        A:hover {
            COLOR: #ff0000; TEXT-DECORATION: underline
        }
        A:active {
            TEXT-DECORATION: none
        }

        .input_control{
            width:360px;
            margin:10px auto;
        }
        input[type="text"],input[type="password"],select,#btn1{
            box-sizing: border-box;
            text-align:center;
            font-size:14px;
            height:2.5em;
            border-radius:4px;
            border:1px solid #c8cccf;
            color:#2D2D2D;
            -web-kit-appearance:none;
            -moz-appearance: none;
            display:block;
            outline:0;
            padding:0 1em;
            text-decoration:none;
            width:100%;
        }
        input[type="text"] input[type="password"]:focus{
            border:1px solid #ff7496;
        }


    </STYLE>

    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>

    <script language="javascript">
        function check1()
        {
            if(document.ThisForm.userName.value=="")
            {
                alert("请输入用户名");
                document.ThisForm.userName.focus();
                return false;
            }
            if(document.ThisForm.userPw.value=="")
            {
                alert("请输入密码");
                document.ThisForm.userPw.focus();
                return false;
            }
            if(document.ThisForm.userType.value=="-1")
            {
                alert("请选择登录身份");
                document.ThisForm.userType.focus();
                return false;
            }
            document.getElementById("indicator").style.display="block";
            loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
        }

        function callback(data)
        {
            document.getElementById("indicator").style.display="none";
            if(data=="no")
            {
                alert("用户名或密码错误");
            }
            if(data=="yes")
            {
                alert("通过验证,系统登录成功");
                window.location.href="<%=path %>/loginSuccess.jsp";
            }
        }
    </script>
</head>

<body background="images/a11.png">
<div style="MARGIN: 0px auto; WIDTH: 936px;margin-top: 150px;font-family:Microsoft JhengHei; font-weight:900;font-size: 35px;">
    《Java程序设计》在线教学平台
</div>

<div style="width:403px; margin:0 auto; height:400px; margin-top:80px;">
    <div style="background-image: url('/images/login_m_bg.png'); height:312px;">

    <form action="<%=path %>/admin/index.jsp" name="ThisForm" method="post">
        <div class="input_control">
            <h3 style="margin-top: 10px;">账号：</h3>
            <input type="text" name="userName" class="form_input"  placeholder="请输入用户名">
        </div>
        <div class="input_control">
            <h3 style="padding-top:0;">密码:</h3>
            <input type="password" name="userPw" class="form_input" placeholder="请输入密码">
        </div>
        <div class="input_control">
            <h3>身份：</h3>

            <select class="form_input"  name="userType" style="font-size:20" size="1" width="100">
                <option style="font-size:30 ;" value="0">管理员</option>
                <option style="font-size:30 ;"  value="1">老师</option>
            </select>
            <div align="left">
            <input type="button" id="btn1" class="sub_button" value="登录" style=" float:left;width: 150px;opacity: 0.7; margin-top: 10px; margin-left: 10px;" onclick='check1()'>
            <input type="button" id="btn1" class="sub_button" value="注册" style="width:150px;opacity: 0.7;float: right;margin-top: 10px; " gonclick='check2()'>
            </div>
            <img id="indicator" src="<%=path%>/images/loading.gif" style="display:none"/>
        </div>
    </form>
</div>
</div>

</body>
</html>
