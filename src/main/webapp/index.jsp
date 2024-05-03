<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<%@ include file="menu.jsp"%>

<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="bonjour">Bonjour</a>

<button type="button" class="btn btn-success" onclick="window.location.href='hello-servlet'">Hello Servlet</button>
<button type="button" class="btn btn-danger" onclick="window.location.href='bonjour'">Page Bonjour</button>
</body>
</html>