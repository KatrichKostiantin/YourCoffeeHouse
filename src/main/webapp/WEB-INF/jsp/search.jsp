<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html style="height: 100%">
<head>
    <title>Log in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
</head>
<body style="margin: 0; height: 100%">


<div class="header">
    <p class="header_p">
        Your Coffee House
    </p>
</div>

<div style="width: 100%; height: auto">
    <div id="left_menu">
        <div id="header_menu">
            <p class="header_p">
                Your Coffee House
            </p>
            <form:form method="POST" modelAttribute="searchCafeForm">
                <button type="submit">Search</button>
            </form:form>
        </div>
    </div>
    <div id="table">
        <c:forEach items="${allCard}" var="card">
            <div class="cafe_card">
                <div class="card_image">
                    <img src="<c:url value="/images/${card.getImageUrl()}"/>">
                </div>
                <div class="card_info">
                    <p class="card_name">${card.getName()}</p>
                    <div></div>
                    <p>open at ${card.getOpenHours()}</p>
                    <p>close at ${card.getCloseHours()}</p>
                    <p>description:${card.getDescription()}</p>
                </div>
            </div>
        </c:forEach>
    </div>
    <div id="footer_menu"></div>
</div>

<div class="footer"></div>

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
