<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card p-4 shadow-lg rounded">
    <h3 class="mb-3">Update Profile</h3>

    <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/profile/update">
        <div class="mb-3">
            <label class="form-label">Full Name</label>
            <input type="text" name="fullname" value="${user.fullname}" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" name="phone" value="${user.phone}" class="form-control"/>
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
    </form>
</div>
