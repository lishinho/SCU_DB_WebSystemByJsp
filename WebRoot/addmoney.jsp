<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"%>

<%@ page import="entity.money"%>
<%@ page import="dao.MoneyDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
    
    <title>充值界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	   div{
	      float:left;
	      margin: 10px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
  </head>
  
  <body bgcolor="#EBEBEB">
    <h1>充值界面  </h1>
    <h2> hi  <%= session.getAttribute("username")%>,you got ￥<%= session.getAttribute("amount") %> </h2>
    <hr>
  
    <center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td>
          
          <!-- 商品循环开始 -->
           <% 
               MoneyDAO moneyDao = new MoneyDAO();         
               ArrayList<money> list = moneyDao.getAllItems();
               if(list!=null&&list.size()>0)
               {
	               for(int i=0;i<list.size();i++)
	               {
	                  money money = list.get(i);
           %>   
          <div>
             <dl>
               <dt>
                 <a href="rechargeover.jsp?id=<%=money.getId()%>"><img src="images/<%=money.getPicture()%>" width="120" height="90" border="1"/>
                 </a>
               </dt>
            <dd>充值:￥ <%=money.getMoney() %></dd>
             </dl>
          </div>
          
          <!-- 商品循环结束 -->
        
          <%
                   }
              } 
          %>
          
        </td>
      </tr>
    </table>
    </center>
    <br><br>
    <form action="index.jsp" method="post">
			<p class="space">
				<input type="submit" value="返回商品界面" class="login" style="cursor: pointer;"/>
			</p>
			</form>
  </body>
</html>
