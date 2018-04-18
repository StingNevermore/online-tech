<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	<script type="text/javascript">
	</script>

  </head>
  
  <body leftmargin="0" topmargin="0" rightmargin="0">
  <!--
  <object classid=clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95 codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,1,5,217"
		  id=MediaPlayer type=application/x-oleobject width=210 height=340 standby="Loading Microsoft Windows Media Player components..." VIEWASTEXT align=MIDDLE>
	  <param name=AudioStream value=-1>
	  <param name=AutoSize value=0>
	  <param name=AutoStart value=1>
	  <param name=AnimationAtStart value=0>
	  <param name=AllowScan value=-1>
	  <param name=AllowChangeDisplaySize value=0>
	  <param name=AutoRewind value=0>
	  <param name=Balance value=0>
	  <param name=BaseURL value="">
	  <param name=BufferingTime value=5>
	  <param name=CaptioningID value="">
	  <param name=ClickToPlay value=0>
	  <param name=CursorType value=32512>
	  <param name=CurrentPosition value=-1>
	  <param name=CurrentMarker value=0>
	  <param name=DefaultFrame value=1>
	  <param name=DisplayBackColor value=0>
	  <param name=DisplayForeColor value=16777215>
	  <param name=DisplayMode value=0>
	  <param name=DisplaySize value=0>
	  <param name=Enabled value=-1>
	  <param name=EnableContextMenu value=-1>
	  <param name=EnablePositionControls value=0>
	  <param name=EnableFullScreenControls value=0>
	  <param name=EnableTracker value=1>
	  <param name=Filename value="https://tv.sohu.com/20170605/n495734949.shtml">
	  <param name=InvokeURLs value=-1>
	  <param name=Language value=-1>
	  <param name=Mute value=0>
	  <param name=PlayCount value=1>
	  <param name=PreviewMode value=0>
	  <param name=Rate value=1>
	  <param name=SAMILang value="">
	  <param name=SAMIStyle value="">
	  <param name=SAMIFileName value="">
	  <param name=SelectionStart value=0>
	  <param name=SelectionEnd value=true>
	  <param name=SendOpenStateChangeEvents value=-1>
	  <param name=SendWarningEvents value=-1>
	  <param name=SendErrorEvents value=-1>
	  <param name=SendKeyboardEvents value=0>
	  <param name=SendMouseClickEvents value=0>
	  <param name=SendMouseMoveEvents value=0>
	  <param name=SendPlayStateChangeEvents value=-1>
	  <param name=ShowCaptioning value=0>
	  <param name=ShowControls value=1>
	  <param name=ShowAudioControls value=1>
	  <param name=ShowDisplay value=1>
	  <param name=ShowGotoBar value=1>
	  <param name=ShowPositionControls value=1>
	  <param name=ShowStatusBar value=1>
	  <param name=ShowTracker value=1>
	  <param name=TransparentAtStart value=0>
	  <param name=VideoBorderWidth value=0>
	  <param name=VideoBorderColor value=0>
	  <param name=VideoBorder3D value=0>
	  <param name=Volume value=-1070>
	  <param name=WindowlessVideo value=1>
  </object>
 -->

  <object id="player" height="598" width="698" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6">  <!--win10最新版的-->
      <param NAME="AutoStart" VALUE="-1">
      <!--是否自动播放  -1 表示默认自动播放 ；0：表示默认不自动播放-->

      <param NAME="Balance" VALUE="0">
      <!--调整左右声道平衡,同上面旧播放器代码    0表示“否” 1表示“是”-->

      <param name="enabled" value="-1">
      <!--播放器是否可人为控制-->

      <param NAME="EnableContextMenu" VALUE="-1">
      <!--是否启用上下文菜单-->

      <param NAME="url" VALUE="/xjzx/<%=request.getParameter("fujian") %>">
      <!--播放的文件地址-->

      <param NAME="PlayCount" VALUE="1">
      <!--播放次数控制,为整数-->

      <param name="rate" value="1">
      <!--播放速率控制,1为正常,允许小数,1.0-2.0-->

      <param name="ShowControls" value="-1">
      <!--是否显示控制,比如播放,停止,暂停-->

      <param name="currentPosition" value="0">
      <!--控件设置:当前位置-->

      <param name="currentMarker" value="0">
      <!--控件设置:当前标记-->

      <param name="defaultFrame" value="">
      <!--显示默认框架-->

      <param name="invokeURLs" value="0">
      <!--脚本命令设置:是否调用URL-->

      <param name="baseURL" value="">
      <!--脚本命令设置:被调用的URL-->

      <param name="stretchToFit" value="0">
      <!--是否按比例伸展-->

      <param name="volume" value="50">
      <!--默认声音大小0%-100%,50则为50%-->

      <param name="mute" value="0">
      <!--是否静音-->

      <param name="uiMode" value="mini">
      <!--播放器显示模式:Full显示全部;mini最简化;None不显示播放控制,只显示视频窗口;invisible全部不显示-->

      <param name="windowlessVideo" value="0">
      <!--如果是0可以允许全屏,否则只能在窗口中查看-->

      <param name="fullScreen" value="0">
      <!--开始播放是否自动全屏-->

      <param name="enableErrorDialogs" value="-1">
      <!--是否启用错误提示报告-->

      <param name="SAMIStyle" value>
      <!--SAMI样式-->

      <param name="SAMILang" value>
      <!--SAMI语言-->

      <param name="SAMIFilename" value>
      <!--字幕ID-->

  </object>

  </body>
</html>
