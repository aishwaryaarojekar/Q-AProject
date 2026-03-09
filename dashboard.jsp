<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.qadss.model.User" %>
<%
    User u = (User) session.getAttribute("user");
    if (u == null) { response.sendRedirect("/login"); return; }
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Dashboard - QADSS</title>  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body class="bg-gray-50">
  <div class="p-6">
    <div class="flex justify-between items-center">
      <h1 class="text-2xl font-bold">Welcome, <%= u.getName() %></h1>
      <a href="/logout" class="text-sm text-red-600">Logout</a>
    </div>
    <div class="mt-6 grid grid-cols-1 md:grid-cols-3 gap-4">
      <div class="bg-white p-4 rounded shadow">Total Tests Attempted<br/><strong>0</strong></div>
      <div class="bg-white p-4 rounded shadow">Last Decision Result<br/><strong>N/A</strong></div>
      <div class="bg-white p-4 rounded shadow">Highest Score<br/><strong>0</strong></div>
    </div>
  </div>
</body>
</html>

