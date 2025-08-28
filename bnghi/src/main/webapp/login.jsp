<%-- 
    Document   : login
    Created on : Aug 25, 2025, 2:12:36 PM
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
        <form action="login" method="post">
            <h2>Đăng nhập</h2>
            <c:if test="${alert != null}">
              <h3 class="alert alert-danger">${alert}</h3>
            </c:if>
            <input type="text" name="username" placeholder="Tài khoản" /><br>
            <input type="password" name="password" placeholder="Mật khẩu" /><br>
            <button type="submit">Đăng nhập</button>
        </form>
    </body>
</html>
