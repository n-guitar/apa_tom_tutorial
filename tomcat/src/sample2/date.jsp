<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<html>
<head>
<title>JSP: 現在の日時を示すサンプル</title>
</head>
<body>

<%
    Date d = new Date();
    DateFormat df = DateFormat.getDateTimeInstance();
%>

<p>
いまは
<br />
<%= df.format(d) %>
<br />です。
</p>

</body>
</html> 