<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String name = request.getParameter("username");
%>
<html>
<head><title>Result</title></head>
<body>
<h2>Hello, <%= name %>!</h2>
<a href="index.jsp">Back</a>
</body>
</html>

