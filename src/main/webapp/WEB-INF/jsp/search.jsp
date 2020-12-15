<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html style="height: 100%">
<head>
    <title>Log in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body style="margin: 0; height: 100%">


<div style="width: 100%;    top: 0;    height: 50px;    float: top;    background: #7A4F38;    z-index: 5;    color: white;">
    <p style="font-size: 35px; width: 400px;height: 100%; color: #e2d9ce; float: left; text-align: center; font-weight: bold; margin: 0">
        Your Coffee House
    </p>
</div>

<div style="width: 100%; height: auto">
    <div></div>
    <button onclick="getLocation()">Try It</button>
    <p id="demo"></p>
    <img src="<c:url value="/images/a.jpg" />" alt="image" />
</div>

<div style="width: 100%;        height: 50px;     position: fixed; left: 0; bottom: 0; padding: 10px;
            background: #7A4F38;    z-index: 5;    color: white;"></div>

<script>
    var x = document.getElementById("demo");

    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.innerHTML = "Latitude: " + position.coords.latitude +
            "<br>Longitude: " + position.coords.longitude;
    }
</script>
</body>
</html>
