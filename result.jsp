<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.qadss.model.Decision" %>
<%
    Decision d = (Decision) request.getAttribute("decision");
    Boolean saved = (Boolean) request.getAttribute("saved");
%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Result - QADSS</title>  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body class="bg-gray-50 p-6">
  <h1 class="text-2xl font-bold mb-4">Decision Result</h1>
  <div class="bg-white p-4 rounded shadow">
    <div><strong>Total Score:</strong> <%= d != null ? d.getTotalScore() : "N/A" %></div>
    <div><strong>Result:</strong> <%= d != null ? d.getFinalResult() : "N/A" %></div>
    <div><strong>Level:</strong> <%= d != null ? d.getDecisionLevel() : "N/A" %></div>
    <div class="mt-3">Saved to history: <strong><%= saved != null && saved ? "Yes" : "No" %></strong></div>
  </div>
  <div class="mt-4">
    <a href="/dashboard" class="text-blue-600">Back to dashboard</a>
  </div>
</body>
</html>

