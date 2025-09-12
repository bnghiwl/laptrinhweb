<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- This page will be decorated by SiteMesh --%>
<sitemesh:write property="title" />
<h1>Welcome to Sitemesh Profile Demo</h1>
<p><a href="${pageContext.request.contextPath}/profile">Go to Profile</a></p>
