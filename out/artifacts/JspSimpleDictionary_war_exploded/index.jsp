<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: HaiNguyen
  Date: 10/19/2018
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
  <h2>Vietnamese Dictionary</h2>
  <form method="get" action="/index.jsp">
    <input type="text" name="search" placeholder="Enter your word: "/>
    <input type = "submit" id = "submit" value = "Search"/>
  </form>
  <%!
    Map<String,String> dic = new HashMap<>();
  %>

  <%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    String result = "";
    result = dic.get(search);
    if (result != null){
        out.println("Word: "+search);
        out.println("<br>Result: "+result);
    }else {
        out.println("Not found word");
    }
  %>
  </body>
</html>
