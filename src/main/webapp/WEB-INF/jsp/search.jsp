<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Log in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
</head>
<body>


<div class="header">
    <p class="header_p">
        Your Coffee House
        <a href="/logout" id="logout">Logout</a>
    </p>
</div>

<div style="width: 100%; height: auto">
    <div id="left_menu">
        <div id="header_menu">
            <p class="header_p">
                Your Coffee House
            </p>
        </div>
        <div id="search_div">
            <%--@elvariable id="searchCafeForm" type="com.example.ych.utils.SearchCafe"--%>
            <form:form method="POST" modelAttribute="searchCafeForm">

                <h1>Search by</h1>
                <div>
                    <h3>Price range </h3>
                    <form:label path="price" for="price">Price:</form:label>
                    <select name="price" id="price">
                        <option value="all" <c:if test="${searchCafeForm.price.equals('all')}">selected</c:if>>all</option>
                        <option value="cheap" <c:if test="${searchCafeForm.price.equals('cheap')}">selected</c:if>>cheap</option>
                        <option value="average" <c:if test="${searchCafeForm.price.equals('average')}">selected</c:if>>average</option>
                        <option value="expensive" <c:if test="${searchCafeForm.price.equals('expensive')}">selected</c:if>>expensive</option>
                    </select>
                </div>
                <div>
                    <h3>Working hours</h3>
                    Open at: <form:input path="openHours" type="number" min="0" max="24" value="${searchCafeForm.openHours}"/>
                    Close at: <form:input path="closeHours" type="number" min="0" max="24" value="${searchCafeForm.closeHours}"/>
                </div>
                <div>
                    <h3>Location</h3>
                    <form:label path="distance" for="distance">Within radius:</form:label>
                    <select name="distance" id="distance">
                        <option value="0" <c:if test="${searchCafeForm.distance == 0}">selected</c:if>>all</option>
                        <option value="2" <c:if test="${searchCafeForm.distance == 2}">selected</c:if>>2km</option>
                        <option value="5" <c:if test="${searchCafeForm.distance == 5}">selected</c:if>>5km</option>
                        <option value="10" <c:if test="${searchCafeForm.distance == 10}">selected</c:if>>10km</option>
                        <option value="25" <c:if test="${searchCafeForm.distance == 25}">selected</c:if>>25km</option>
                        <option value="50" <c:if test="${searchCafeForm.distance == 50}">selected</c:if>>50km</option>
                    </select>
                </div>
                <div>
                    <h3>Attributes</h3>
                    <div>Local Food<form:checkbox path="attributes" value="localFood"/></div>
                    <div>Takeaway Food<form:checkbox path="attributes" value="takeawayFood"/></div>
                    <div>Delivery<form:checkbox path="attributes" value="delivery"/></div>
                    <div>Street Food<form:checkbox path="attributes" value="streetFood"/></div>
                    <div>Coffee<form:checkbox path="attributes" value="coffee"/></div>
                    <div>Croissants<form:checkbox path="attributes" value="croissants"/></div>
                </div>
                <form:input path="location" id="location" type="text"/>
                <button type="submit" id="search">Search</button>
            </form:form>
        </div>
        <div id="footer_menu"></div>
    </div>
    <div id="table">
        <c:forEach items="${allCard}" var="card">
            <div class="cafe_card">
                <div class="card_image">
                    <img class="card_img" src="<c:url value="/images/${card.getImageUrl()}"/>">
                </div>
                <div class="card_info">
                    <div class="card_name">
                        <p class="p">${card.getName()}</p>
                    </div>
                    <div class="card_description">
                        <span>Price: ${card.getPrice()} </span>
                        <span> Word at ${card.getOpenHours()}:00 - ${card.getCloseHours()}:00</span>
                        <span>description: ${card.getDescription()}
                           attributes: ${card.getAttributesStr()}
                        </span>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</div>

<div class="footer"></div>

<script>

    var x = document.getElementById("location");
    window.onload = function () {
        getLocation()
    };

    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.value = position.coords.latitude + "," + position.coords.longitude;
    }
</script>
</body>
</html>
