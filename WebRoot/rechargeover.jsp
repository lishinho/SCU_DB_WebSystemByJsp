<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="entity.money"%>
<%@ page import="dao.MoneyDAO"%>
<html>
<head>

<title>充值成功</title>
</head>
<% 	 MoneyDAO moneyDao = new MoneyDAO();
     money money = moneyDao.getmoneyById(Integer.parseInt(request.getParameter("id")));
     int m = money.getMoney();
		Integer t =Integer.parseInt(session.getAttribute("amount").toString());
		session.setAttribute("amount", t+m);										//session转换方法
     %>
 <body bgcolor="#EBEBEB">
    <h1>充值成功</h1>
 <br><br>
 <font size="2" color="#0000ff">
		<form action="index.jsp" method="post">
			<p class="space">
				<input type="submit" value="返回首页" class="login" style="cursor: pointer;"/>
			</p>
			</form>
		
	</font>
   

</body>
</html>