<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css"> <!-- nếu có CSS -->
</head>
<body>
    <h2>Login</h2>

    <!-- Hiển thị message từ Servlet (nếu có) -->
    <c:if test="${not empty message}">
        <p style="color:red">${message}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <div>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
        </div>
        <div>
            <input type="checkbox" name="rememberMe" id="rememberMe">
            <label for="rememberMe">Remember Me</label>
        </div>
        <div>
            <button type="submit">Login</button>
        </div>
    </form>
</body>
</html>
