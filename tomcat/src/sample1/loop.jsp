<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>JSP: for 文を使ったサンプル</title>
</head>

<body>
    <%
        for (int i = 1; i <= 5; i++) {
    %>
            <p>サンプル<%= i %></p>
    <%
        }
    %>
</body>
</html>