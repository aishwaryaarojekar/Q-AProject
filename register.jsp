<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Register - QADSS</title>  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body class="bg-gray-100">
<div class="min-h-screen flex items-center justify-center">
  <div class="max-w-md w-full bg-white p-8 rounded shadow">
    <h1 class="text-2xl font-bold mb-4">Register</h1>
    <form action="/register" method="post" onsubmit="return validateRegister()">
      <div class="mb-4">
        <label class="block text-sm">Name</label>
        <input id="name" name="name" type="text" class="w-full border p-2 rounded" required />
      </div>
      <div class="mb-4">
        <label class="block text-sm">Email</label>
        <input id="email" name="email" type="email" class="w-full border p-2 rounded" required />
      </div>
      <div class="mb-4">
        <label class="block text-sm">Password</label>
        <input id="password" name="password" type="password" class="w-full border p-2 rounded" required minlength="6" />
      </div>
      <div class="flex items-center justify-between">
        <button class="bg-green-600 text-white px-4 py-2 rounded">Register</button>
        <a href="/login" class="text-sm text-blue-600">Login</a>
      </div>
    </form>
  </div>
</div>
<script src="/static/js/validation.js"></script>
</body>
</html>

