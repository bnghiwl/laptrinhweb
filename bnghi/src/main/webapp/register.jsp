<%-- 
    Document   : register
    Created on : Aug 25, 2025, 2:50:26 PM
    Author     : BaoNghi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="register" method="post">
            <h2>Đăng ký tài khoản</h2>
            <c:if test="${alert != null}">
              <h3 class="alert alert-danger">${alert}</h3>
            </c:if>
            <input type="text" name="username" placeholder="Tài khoản" /><br>
            <input type="password" name="password" placeholder="Mật khẩu" /><br>
            <input type="email" name="email" placeholder="Email" /><br>
            <input type="text" name="fullname" placeholder="Họ tên" /><br>
            <input type="text" name="phone" placeholder="Số điện thoại" /><br>
            <button type="submit">Đăng ký</button>
        </form>
    </body>
</html>
