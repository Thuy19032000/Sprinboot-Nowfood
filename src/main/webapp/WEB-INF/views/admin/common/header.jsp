<%@ page import="com.demo6.shop.utils.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
<div th:fragment="header">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="<c:url value="/admin/home"/>">
                <img src="<c:url value="/resource/admin/assets/img/logo.png"/>" alt="Klorofil Logo"
                 class="img-responsive logo" style="height: 68px; width: 68px;">
            </a>
        </div>
        <div class="container-fluid">
            <div id="navbar-menu">

                <form action="<c:url value="/admin/search"/>" method="post" class="navbar-form navbar-left">
                    <div class="input-group">
                        <input type="text" name="text" class="form-control"
                               placeholder="Search dashboard..."> <span
                            class="input-group-btn"><button type="button"
                                                            class="btn btn-primary">Go</button></span>
                    </div>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<c:url value="/admin/home"/>"> <i class="fa fa-home"
                                                                   style="font-size: 18px;"></i><span> Home</span>
                    </a></li>
                    <li style="list-style:none; margin-top: 10px;margin-right: 15px;"><span
                            style="margin-left:10px;margin-right:15px;color: #001c4a; font-size: 14px;font-weight: bold; ">
Login as: <%=SecurityUtils.getPrincipal().getRole().getRoleName()%></span>
                    </li>
                    <c:if test="${sessionScope.user == null}">

                        <sec:authorize access="isAuthenticated()">
                            <ul class="usermenu" style="display: flex;">
                                <li style="list-style:none; margin-top: 10px;margin-right: 15px;">
                                    <a href="<c:url value="/client/profile"/>">
                                    <img class="img-circle"
                                         src="https://bucketslhs.s3.amazonaws.com/<%=SecurityUtils.getPrincipal().getAvatar()%> "
                                         style="width: 26px;height:26px; margin-top: -4px;">
                                    </a>
                                    <span style="margin-left:10px;margin-right:15px;color: #001c4a; font-size: 14px;font-weight: bold; "><%=SecurityUtils.getPrincipal().getFullname()%></span>
                                </li>
                                <li style="list-style: none;margin-top: 6px;"><a href="<c:url value="/logout"/>"> <i
                                        class="material-icons"
                                        style="color: red;">&#xe8ac;</i></a></li>
                            </ul>
                        </sec:authorize></c:if>
                    <c:if test="${sessionScope.user != null}">
                        <ul class="usermenu" style="display: flex;">
                            <li style="list-style:none; margin-top: 10px;margin-right: 15px;"><a href="<c:url value="/client/profile"/>">
                                <img class="img-circle"
                                     src="https://bucketslhs.s3.amazonaws.com/${sessionScope.user.avatar}"
                                     style="width: 26px;height:26px; margin-top: -4px;"></a>
                                <span
                                        style="margin-left:10px;margin-right:15px;color: #001c4a; font-size: 14px;font-weight: bold; ">${sessionScope.user.fullname} </span>
                            </li>
                            <li style="list-style: none;margin-top: 6px;"><a href="<c:url value="/logout"/>"> <i
                                    class="material-icons"
                                    style="color: red;">&#xe8ac;</i></a></li>
                        </ul>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</div>
</body>
</html>