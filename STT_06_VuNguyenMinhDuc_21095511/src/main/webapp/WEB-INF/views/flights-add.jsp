<%--
  Created by IntelliJ IDEA.
  User: my
  Date: 21/12/2024
  Time: 7:34 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %><html>
<head>
    <title>STT_06_VuNguyenMinhDuc_21095511</title>
</head>
<body>
    <h1>Add New Flight</h1>
    <form:form method="post" modelAttribute="flight" action="/flights/add">
        <table>
            <tr>
                <td>Airplane</td>
                <td>
                    <form:select path="airplaneName">
                        <form:option value="" label="Select Airplane"/>
                        <form:option value="Airbus 0001" label="Airbus 0001"/>
                        <form:option value="Airbus 0002" label="Airbus 0002"/>
                        <form:option value="Boeing 0001" label="Boeing 0001"/>
                        <form:option value="Boeing 0002" label="Boeing 0002"/>
                    </form:select>
                    <form:errors path="airplaneName"/>
                </td>
            </tr>
            <tr>
                <td>Departure Airport*:</td>
                <td><form:input path="departureAirport" placeholder="Departure Airport"/>
                    <form:errors path="departureAirport"/>
                </td>
            </tr>
            <tr>
                <td>Arrival Airport*:</td>
                <td><form:input path="arrivalAirport" placeholder="Arrival Airport"/>
                    <form:errors path="arrivalAirport"/>
                </td>
            </tr>
            <tr>
                <td>Departure Date*:</td>
                <td><form:input path="departureDate" type="date"/>
                    <form:errors path="departureDate"/>
                </td>
            </tr>
            <tr>
                <td>Arrival Date*:</td>
                <td><form:input path="arrivalDate" type="date"/>
                    <form:errors path="arrivalDate"/>
                </td>
            </tr>
            <tr>
                <td>Seat Fare*:</td>
                <td><form:input path="seatFare" type="number"/>
                    <form:errors path="seatFare"/>
                </td>
            </tr>
            <tr>
                <td>Flight Status:</td>
                <td>
                    <form:select path="flightStatus">
                        <form:option value="0" label="NEW"/>
                        <form:option value="1" label="SCHEDULED"/>
                    </form:select>
                    <form:errors path="flightStatus"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Flight"/>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
