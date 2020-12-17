<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html style="height: 100%">
<head>
    <title>Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
</head>
<body style="margin: 0; height: 100%">

<div class= "header">
    <p class= "header_p">
        Your Coffee House
    </p>
</div>

<div style="width: 100%; height: 100%; background: #f0f0f0">
    <div style="width: 25%; height: 550px; border-radius: 25px; border: 1px solid saddlebrown; margin-left: 37.5%; position: absolute; top: 50%;
  -ms-transform: translateY(-50%);transform: translateY(-50%);box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.4); background: white">
        <div style="width: 100%; height: 10%;  border-top-left-radius: 24px; border-top-right-radius: 25px;
            text-align: center; top: 0;color: #d70400; font-size: 20px; float: top;margin-top: 0;">
            <p>${info}</p>
        </div>
        <div style="width: 100%; height: 90%;text-align: center">
            <p style="color: #7A4F38; font-weight: bold; font-size: 30px; margin: 0">Registration</p>
            <form:form method="POST" modelAttribute="userForm">
                <div style="width: 100%">
                    <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Name</p>
                    <form:input class="welcome_input"
                                path="name" type="email" placeholder="Name" autofocus="true"/>
                </div>
                <div style="">
                    <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Email</p>
                    <form:input class="welcome_input"
                                path="email" type="text" placeholder="Email"/>
                </div>
                <div>
                    <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Password</p>
                    <form:input class="welcome_input"
                                path="password" type="password" placeholder="Password"/>
                </div>
                <div>
                    <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Confirm password</p>
                    <form:input class="welcome_input"
                                path="passwordConfirm" type="password" placeholder="Confirm password"/>
                </div>
                <div style="width: 100%; margin-top: 10px">
                    <button class="bt" type="submit">Enter
                    </button>
                </div>
            </form:form>
            <div style="width: 100%; margin-top: 10px">
                <a style="background: #7A4F38; font-size: 20px; color: #e2d9ce; border-radius: 5px; width: 70%;
                 height: 30px; padding-top: 5px;
                     display: inline-block; text-decoration:none; font-family: sans-serif;" href="${pageContext.request.contextPath}/login">Log in</a>
            </div>

        </div>
    </div>
</div>

<div class="footer">
</div>
</body>
</html>