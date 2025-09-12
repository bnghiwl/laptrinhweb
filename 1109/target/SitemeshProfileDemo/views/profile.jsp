<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="card p-4 shadow-lg rounded">
    <h3 class="mb-3">Update Profile</h3>

    <form:form method="post" modelAttribute="user" enctype="multipart/form-data" action="${pageContext.request.contextPath}/profile/update">
        <div class="mb-3">
            <label class="form-label">Full Name</label>
            <form:input path="fullname" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Phone</label>
            <form:input path="phone" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Profile Image</label>
            <input type="file" name="imageFile" class="form-control"/>
            <c:if test="${not empty user.image}">
                <div class="mt-2">
                    <img src="${pageContext.request.contextPath}${user.image}" alt="avatar" style="max-width:150px;"/>
                </div>
            </c:if>
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form:form>
</div>
