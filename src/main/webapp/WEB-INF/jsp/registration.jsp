<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html style="height: 100%">
<head>
    <title>Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body style="margin: 0; height: 100%">

<div style="width: 100%;    top: 0;    height: 50px;    position: fixed;    background: #7A4F38;    z-index: 5;    color: white;">
    <p style="font-size: 35px; width: 400px;height: 100%; color: #e2d9ce; float: left; text-align: center; font-weight: bold; margin: 0">
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
                <form:input style="width: 80%; height: 30px; border-radius: 2px; padding-left: 10px;
                 background: #fde7dc; border: 1px solid saddlebrown;"
                            path="name" type="text" placeholder="Name" autofocus="true"/>
            </div>
            <div style="">
                <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Email</p>
                <form:input style="width: 80%; height: 30px; border-radius: 2px; padding-left: 10px;
                 background: #fde7dc; border: 1px solid saddlebrown;"
                            path="email" type="text" placeholder="Email"/>
            </div>
            <div>
                <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Password</p>
                <form:input style="width: 80%; height: 30px; border-radius: 2px; padding-left: 10px;
                background: #fde7dc; border: 1px solid saddlebrown;"
                       path="password" type="password" placeholder="Password"/>
            </div>
            <div>
                <p style="color: #7A4F38; font-weight: bold; font-size: 15px;">Confirm password</p>
                <form:input style="width: 80%; height: 30px; border-radius: 2px; padding-left: 10px;
                background: #fde7dc; border: 1px solid saddlebrown;"
                       path="passwordConfirm" type="password" placeholder="Confirm password"/>
            </div>
            <div style="width: 100%; margin-top: 10px">
                <button style="background: #7A4F38; font-size: 20px; color: #e2d9ce; width: 70%; border-radius: 5px;
                height: 30px;
                display: inline-block; font-family: sans-serif;" type="submit">Enter
                </button>
            </div>
            </form:form>
            <div style="width: 100%; margin-top: 10px">
                <a style="background: #7A4F38; font-size: 20px; color: #e2d9ce; border-radius: 5px; width: 70%;
                 height: 30px; padding-top: 5px;
                     display: inline-block; text-decoration:none; font-family: sans-serif;" href="/login">Log in</a>
            </div>

        </div>
    </div>
</div>

<div style="width: 100%;    bottom: 0;    height: 50px;    position: fixed;    background: #7A4F38;    z-index: 5;    color: white;">
</div>
</body>
</html>