<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ע��ʧ�ܣ�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function redir(){ 
			window.location.href="register.jsp";
		}
		setTimeout("redir()",3000);
	</script>
  </head>
  
  <body bgcolor="#FF9966">
  <%
  	if("has".equals(request.getSession().getAttribute("hasuser"))){
  		out.print("<div align='center'>");
		out.print("<font size='2' color='#0000ff'> ���û���ע�ᣡע��ʧ�ܣ�������Զ���ת��ע��ҳ��<br>");
  	}else{
  		out.print("<div align='center'>");
		out.print("<font size='2' color='#0000ff'> ע��ʧ�ܣ�������Զ���ת��ע��ҳ��<br>");
  	}
  		out.print("<br> </font><font size='2'><a href='index.jsp'>���ֱ����ת���̳���ҳ</a>");
		out.print("<br>");
		out.print("<a href='userconsle.jsp'>���ֱ����ת���û��������</a>");
		out.print("</font>");
		out.print("<br>");
		out.print("</div>");
  %>
	</body>
</html>
