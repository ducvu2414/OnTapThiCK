<%--
  Created by IntelliJ IDEA.
  User: my
  Date: 21/12/2024
  Time: 7:23 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>STT_06_VuNguyenMinhDuc_21095511</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

    </style>
</head>
<body>
<div>
    <c:if test="${not empty message}">
        <h1 style="color: green; text-align: center; font-size: xx-large">${message}</h1>
    </c:if>
</div>
<table>
    <thead>
    <tr>
        <th colspan="9" style="text-align: center">
            STT_06_VuNguyenMinhDuc_21095511
        </th>
    </tr>
    </thead>
    <tr>
        <th colspan="9" style="text-align: center; margin: 20px">
           <h1>Airline Reservation System</h1>
        </th>
    </tr>
    <tr>
        <th colspan="9" style="text-align: right; margin: 20px">
            <a href="<c:url value="/flights/add"/>">Add New Flight</a>
        </th>
    </tr>
    <tbody>
    <tr>
        <th>Id</th>
        <th>Airplane Name</th>
        <th>Departure Airport</th>
        <th>Arrival Airport</th>
        <th>Departure Date</th>
        <th>Arrival Date</th>
        <th>Seat Fare</th>
        <th>Flight Status</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${flights}" var="flight">
        <tr>
            <td>${flight.id}</td>
            <td>${flight.airplaneName}</td>
            <td>${flight.departureAirport}</td>
            <td>${flight.arrivalAirport}</td>
            <td>${flight.departureDate}</td>
            <td>${flight.arrivalDate}</td>
            <td>${flight.seatFare}</td>
            <td>
                <c:if test="${flight.flightStatus == 0}">
                    <p>NEW</p>
                </c:if>
                <c:if test="${flight.flightStatus == 1}">
                    <p>SCHEDULED</p>
                </c:if>
            </td>

            <td>
                <c:if test="${flight.flightStatus == 0}">
                    <a href="/flights/delete/${flight.id}" onclick="return confirm('Are you sure?')">Delete</a>
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
